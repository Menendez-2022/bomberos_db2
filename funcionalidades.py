import psycopg2
from psycopg2 import Error

HOST = 'localhost'

conexion = psycopg2.connect(
        user="postgres",
        password="mendoza",
        host="localhost",
        port="5432"
    )


def añadirUsuario():
    try:
        usuario = input("Ingresa el nombre del usuario: ")
        contraseña = input("Ingresa la contraseña: ")
        cursor = conexion.cursor()
        sentencia = f"CREATE USER {usuario} WITH PASSWORD '{contraseña}';"
        cursor.execute(sentencia)

        conexion.commit()
        print("Usuario añadido correctamente.")
    
    except Exception  as error:
        print("Error al añadir usuario:", error)

    finally:
        cursor.close()
        print("Cursor cerrado.")



def actualizarUsuario():
    try:
        usuario = input("Ingresa el nombre del usuario que quiere actualizar: ")
        contraseña = input("Ingresa la nueva contraseña: ")
        cursor = conexion.cursor()
        
        sentencia = f"ALTER USER {usuario} WITH PASSWORD '{contraseña}';"
        cursor.execute(sentencia)
        
        conexion.commit()
        print("Usuario actualizado correctamente.")
    
    except Exception  as error:
        print("Error al actualizar usuario:", error)

    finally:
        cursor.close()
        print("Cursor cerrado.")


def eliminarUsuario():
    try: 
        usuario = input("Ingresa el nombre del usuario a ser eliminado: ")
        cursor = conexion.cursor()
        sentencia = f"DROP USER {usuario};"
        cursor.execute(sentencia)
        
        conexion.commit()
        print("Usuario eliminado correctamente.")
    
    except Exception  as error:
        print("Error al eliminar usuario:", error)

    finally:
        cursor.close()
        print("Cursor cerrado.")


def obtenerUsuarios():
    try:
        cursor = conexion.cursor()
        sentencia = f"SELECT usename FROM pg_user;"
        cursor.execute(sentencia)
        resultados = cursor.fetchall()

        for fila in resultados:
            print(fila)
        print("Presione enter para continuar")
        input()

    
    except Exception  as error:
        print("Error al obtener usuarios:", error)

    finally:
        cursor.close()
        print("Cursor cerrado.")

def añadirRol():
    try:
        rol = input("Ingresa el nombre de su nuevo rol: ")
        cursor = conexion.cursor()
        sentencia = f"CREATE ROLE {rol};"
        cursor.execute(sentencia)

        conexion.commit()
        print("Rol añadido correctamente.")
    
    except Exception  as error:
        print("Error al añadir rol:", error)

    finally:
        cursor.close()
        print("Cursor cerrado.")
        
        
def asignarRol():
    try:
        usuario = input("Ingresa el nombre del usuario al que le quiere agregar un rol: ")
        rol = input("Ingresa el nombre del rol para el usuario: ")
        cursor = conexion.cursor()
        sentencia = f"GRANT {rol} TO {usuario};"
        cursor.execute(sentencia)

        conexion.commit()
        print("Rol asignado al usuario correctamente.")
    
    except Exception  as error:
        print("Error al asignar rol:", error)

    finally:
        cursor.close()
        print("Cursor cerrado.")


def obtenerRoles():
    try:
        cursor = conexion.cursor()
        sentencia = f"SELECT rolname FROM pg_roles;"

        cursor.execute(sentencia)
        resultados = cursor.fetchall()

        for fila in resultados:
            print(fila)
        print("Presione enter para continuar")
        input()
    
    except Exception  as error:
        print("Error al agregar usuario:", error)

    finally:
        cursor.close()
        print("Cursor cerrado.")


def procedimientosAlmacenados():
    conexion = psycopg2.connect(
        dbname='bomberos.db',
        user='postgres',
        password='mendoza',
        host='localhost'
    )
    try:
        cursor = conexion.cursor()
        cursor.execute("SELECT table_name FROM information_schema.tables WHERE table_schema='public' AND table_type='BASE TABLE';")
        tablas = cursor.fetchall()

        with open('procedimientoAlmacenado.sql', 'w') as archivo:
            for tabla in tablas:
                nombre_tabla = tabla[0]
                cursor.execute(f"SELECT column_name, data_type, column_default FROM information_schema.columns WHERE table_name = '{nombre_tabla}'")
                columnas = cursor.fetchall()
                
                primary_key = None
                columnas_nombres = []
                columnas_parametros = []
                columnas_update = []
                
                for columna in columnas:
                    col_name = columna[0]
                    col_type = columna[1]
                    if columna[2] is not None and 'nextval' in columna[2]:  # Si la columna es de autoincremento
                        primary_key = col_name
                    else:
                        columnas_nombres.append(col_name)
                        columnas_parametros.append(f"IN p_{col_name} {col_type}")
                        columnas_update.append(f"{col_name} = p_{col_name}")

                columnas_insert = ", ".join(columnas_nombres)
                columnas_parametros = ", ".join(columnas_parametros)
                
                archivo.write(f"CREATE OR REPLACE FUNCTION Insertar_{nombre_tabla} ({columnas_parametros}) RETURNS VOID AS $$\n")
                archivo.write(f"BEGIN\n")
                archivo.write(f"    INSERT INTO {nombre_tabla} ({columnas_insert}) VALUES ({', '.join([f'p_{col}' for col in columnas_nombres])});\n")
                archivo.write(f"END;\n$$ LANGUAGE plpgsql;\n\n")
                
                if primary_key:
                    archivo.write(f"CREATE OR REPLACE FUNCTION Actualizar_{nombre_tabla} (IN p_{primary_key} {columnas[0][1]}, {columnas_parametros}) RETURNS VOID AS $$\n")
                    archivo.write(f"BEGIN\n")
                    archivo.write(f"    UPDATE {nombre_tabla} SET {', '.join(columnas_update)} WHERE {primary_key} = p_{primary_key};\n")
                    archivo.write(f"END;\n$$ LANGUAGE plpgsql;\n\n")
                
                if primary_key:
                    archivo.write(f"CREATE OR REPLACE FUNCTION Eliminar_{nombre_tabla} (IN p_{primary_key} {columnas[0][1]}) RETURNS VOID AS $$\n")
                    archivo.write(f"BEGIN\n")
                    archivo.write(f"    DELETE FROM {nombre_tabla} WHERE {primary_key} = p_{primary_key};\n")
                    archivo.write(f"END;\n$$ LANGUAGE plpgsql;\n\n")
                
                archivo.write(f"CREATE OR REPLACE FUNCTION ObtenerTodos_{nombre_tabla} () RETURNS SETOF {nombre_tabla} AS $$\n")
                archivo.write(f"BEGIN\n")
                archivo.write(f"    RETURN QUERY SELECT * FROM {nombre_tabla};\n")
                archivo.write(f"END;\n$$ LANGUAGE plpgsql;\n\n")
    
        print("Scripts de procedimientos almacenados generados satisfactoriamente.")
    
    except psycopg2.Error as error:
        print("Error al generar script: ", error)

    finally:
        cursor.close()
        conexion.close()
        print("Cursor y conexión cerrados.")
        
        
        
        
        

def generacionDisparadores():
    conexion = psycopg2.connect(
        dbname='bomberos.db',
        user='postgres',
        password='mendoza',
        host='localhost'
    )
    try:
        operador = conexion.cursor()
        
        operador2 = conexion.cursor()
        operador2.execute("""SELECT 
                                table_name AS "Tabla",
                                column_name AS "Columna"
                            FROM
                                information_schema.columns
                            WHERE
                                table_schema = 'public'
                                AND table_catalog = 'bomberos.db'
                            ORDER BY table_name, ordinal_position;""")
        columnas = operador2.fetchall()
        for columna in columnas:
            print(columna)
        print("Presione enter para continuar")
        input()


        operador.execute("SELECT table_name FROM information_schema.tables WHERE table_schema = 'public'")
        tablas = operador.fetchall()

        with open('triggers.sql', 'w') as archivo:
            archivo.write("BEGIN;\n\n")
            
            for tabla in tablas:
                nombre_tabla = tabla[0]
                
                if nombre_tabla.lower() == 'auditoria':
                    continue
                
                # Function para INSERT
                archivo.write(f"CREATE OR REPLACE FUNCTION trg_insert_{nombre_tabla}_func() \n")
                archivo.write(f"RETURNS TRIGGER AS $$ \n")
                archivo.write(f"BEGIN \n")
                archivo.write(f"    INSERT INTO auditoria (nombre_de_la_tabla, usuario_actual, detalle_de_la_accion) \n")
                archivo.write(f"    VALUES ('{nombre_tabla}', current_user, 'Insertado registro en {nombre_tabla}'); \n")
                archivo.write(f"    RETURN NEW; \n")
                archivo.write(f"END; \n")
                archivo.write(f"$$ LANGUAGE plpgsql;\n\n")
                
                # Trigger para INSERT
                archivo.write(f"CREATE TRIGGER trg_insert_{nombre_tabla} \n")
                archivo.write(f"AFTER INSERT ON {nombre_tabla} \n")
                archivo.write(f"FOR EACH ROW \n")
                archivo.write(f"EXECUTE FUNCTION trg_insert_{nombre_tabla}_func();\n\n")
                
                # Function para UPDATE
                archivo.write(f"CREATE OR REPLACE FUNCTION trg_update_{nombre_tabla}_func() \n")
                archivo.write(f"RETURNS TRIGGER AS $$ \n")
                archivo.write(f"BEGIN \n")
                archivo.write(f"    INSERT INTO auditoria (nombre_de_la_tabla, usuario_actual, detalle_de_la_accion) \n")
                archivo.write(f"    VALUES ('{nombre_tabla}', current_user, 'Actualizado registro en {nombre_tabla}'); \n")
                archivo.write(f"    RETURN NEW; \n")
                archivo.write(f"END; \n")
                archivo.write(f"$$ LANGUAGE plpgsql;\n\n")
                
                # Trigger para UPDATE
                archivo.write(f"CREATE TRIGGER trg_update_{nombre_tabla} \n")
                archivo.write(f"AFTER UPDATE ON {nombre_tabla} \n")
                archivo.write(f"FOR EACH ROW \n")
                archivo.write(f"EXECUTE FUNCTION trg_update_{nombre_tabla}_func();\n\n")
                
                # Function para DELETE
                archivo.write(f"CREATE OR REPLACE FUNCTION trg_delete_{nombre_tabla}_func() \n")
                archivo.write(f"RETURNS TRIGGER AS $$ \n")
                archivo.write(f"BEGIN \n")
                archivo.write(f"    INSERT INTO auditoria (nombre_de_la_tabla, usuario_actual, detalle_de_la_accion) \n")
                archivo.write(f"    VALUES ('{nombre_tabla}', current_user, 'Eliminado registro en {nombre_tabla}'); \n")
                archivo.write(f"    RETURN OLD; \n")
                archivo.write(f"END; \n")
                archivo.write(f"$$ LANGUAGE plpgsql;\n\n")
                
                # Trigger para DELETE
                archivo.write(f"CREATE TRIGGER trg_delete_{nombre_tabla} \n")
                archivo.write(f"AFTER DELETE ON {nombre_tabla} \n")
                archivo.write(f"FOR EACH ROW \n")
                archivo.write(f"EXECUTE FUNCTION trg_delete_{nombre_tabla}_func();\n\n")
            
            archivo.write("COMMIT;\n")
        
        print("Los disparadores fueron creados satisfactoriamente. Presione enter para continuar")
        input()
    
    except psycopg2.Error as error:
        print("Error al generar script: ", error)
    
    finally:
        if conexion:
            operador.close()
            conexion.close()
            print("Conexión cerrada.")
            
            
def ejecutarProcedimiento():
    try:
        # Conexión a PostgreSQL
        conexion = psycopg2.connect(
            host='localhost',
            user='postgres',
            password='mendoza',
            database='bomberos.db'
        )

        # Pedir al usuario los datos necesarios
        incidencia = input("Ingresa el id de la incidencia: ")
        vehiculo = input("Ingresa el id del vehiculo: ")

        # Crear un cursor para ejecutar el procedimiento almacenado
        cursor = conexion.cursor()
        cursor.callproc('CrearyAsignarSalidaEmergencia', (
            incidencia,
            vehiculo,
            '2024-07-11',
            '2024-07-11 08:00:00',
            '2024-07-11 12:00:00',
        ))

        # Confirmar la transacción
        conexion.commit()

        # Obtener resultados del procedimiento almacenado (si hay)
        for result in cursor.fetchall():
            print(result)

        print("Proceso ejecutado correctamente. Presione enter para continuar")
        input()

    except Error as e:
        print("Error al ejecutar el proceso:", e)

    finally:
        if conexion:
            cursor.close()
            conexion.close()
            print("Conexión cerrada.")

            
        
def cerrarMenu():
    print(conexion.isexecuting())
    if conexion.isexecuting():
        conexion.close()
        print("Conexión cerrada.")
        print("Hasta luego.")
    else: 
        print("Saliendo del gestor.")