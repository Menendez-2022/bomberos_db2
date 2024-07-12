BEGIN;

CREATE OR REPLACE FUNCTION trg_insert_rangos_func() 
RETURNS TRIGGER AS $$ 
BEGIN 
    INSERT INTO auditoria (nombre_de_la_tabla, usuario_actual, detalle_de_la_accion) 
    VALUES ('rangos', current_user, 'Insertado registro en rangos'); 
    RETURN NEW; 
END; 
$$ LANGUAGE plpgsql;

CREATE TRIGGER trg_insert_rangos 
AFTER INSERT ON rangos 
FOR EACH ROW 
EXECUTE FUNCTION trg_insert_rangos_func();

CREATE OR REPLACE FUNCTION trg_update_rangos_func() 
RETURNS TRIGGER AS $$ 
BEGIN 
    INSERT INTO auditoria (nombre_de_la_tabla, usuario_actual, detalle_de_la_accion) 
    VALUES ('rangos', current_user, 'Actualizado registro en rangos'); 
    RETURN NEW; 
END; 
$$ LANGUAGE plpgsql;

CREATE TRIGGER trg_update_rangos 
AFTER UPDATE ON rangos 
FOR EACH ROW 
EXECUTE FUNCTION trg_update_rangos_func();

CREATE OR REPLACE FUNCTION trg_delete_rangos_func() 
RETURNS TRIGGER AS $$ 
BEGIN 
    INSERT INTO auditoria (nombre_de_la_tabla, usuario_actual, detalle_de_la_accion) 
    VALUES ('rangos', current_user, 'Eliminado registro en rangos'); 
    RETURN OLD; 
END; 
$$ LANGUAGE plpgsql;

CREATE TRIGGER trg_delete_rangos 
AFTER DELETE ON rangos 
FOR EACH ROW 
EXECUTE FUNCTION trg_delete_rangos_func();

CREATE OR REPLACE FUNCTION trg_insert_bomberos_func() 
RETURNS TRIGGER AS $$ 
BEGIN 
    INSERT INTO auditoria (nombre_de_la_tabla, usuario_actual, detalle_de_la_accion) 
    VALUES ('bomberos', current_user, 'Insertado registro en bomberos'); 
    RETURN NEW; 
END; 
$$ LANGUAGE plpgsql;

CREATE TRIGGER trg_insert_bomberos 
AFTER INSERT ON bomberos 
FOR EACH ROW 
EXECUTE FUNCTION trg_insert_bomberos_func();

CREATE OR REPLACE FUNCTION trg_update_bomberos_func() 
RETURNS TRIGGER AS $$ 
BEGIN 
    INSERT INTO auditoria (nombre_de_la_tabla, usuario_actual, detalle_de_la_accion) 
    VALUES ('bomberos', current_user, 'Actualizado registro en bomberos'); 
    RETURN NEW; 
END; 
$$ LANGUAGE plpgsql;

CREATE TRIGGER trg_update_bomberos 
AFTER UPDATE ON bomberos 
FOR EACH ROW 
EXECUTE FUNCTION trg_update_bomberos_func();

CREATE OR REPLACE FUNCTION trg_delete_bomberos_func() 
RETURNS TRIGGER AS $$ 
BEGIN 
    INSERT INTO auditoria (nombre_de_la_tabla, usuario_actual, detalle_de_la_accion) 
    VALUES ('bomberos', current_user, 'Eliminado registro en bomberos'); 
    RETURN OLD; 
END; 
$$ LANGUAGE plpgsql;

CREATE TRIGGER trg_delete_bomberos 
AFTER DELETE ON bomberos 
FOR EACH ROW 
EXECUTE FUNCTION trg_delete_bomberos_func();

CREATE OR REPLACE FUNCTION trg_insert_participantes_incidencias_func() 
RETURNS TRIGGER AS $$ 
BEGIN 
    INSERT INTO auditoria (nombre_de_la_tabla, usuario_actual, detalle_de_la_accion) 
    VALUES ('participantes_incidencias', current_user, 'Insertado registro en participantes_incidencias'); 
    RETURN NEW; 
END; 
$$ LANGUAGE plpgsql;

CREATE TRIGGER trg_insert_participantes_incidencias 
AFTER INSERT ON participantes_incidencias 
FOR EACH ROW 
EXECUTE FUNCTION trg_insert_participantes_incidencias_func();

CREATE OR REPLACE FUNCTION trg_update_participantes_incidencias_func() 
RETURNS TRIGGER AS $$ 
BEGIN 
    INSERT INTO auditoria (nombre_de_la_tabla, usuario_actual, detalle_de_la_accion) 
    VALUES ('participantes_incidencias', current_user, 'Actualizado registro en participantes_incidencias'); 
    RETURN NEW; 
END; 
$$ LANGUAGE plpgsql;

CREATE TRIGGER trg_update_participantes_incidencias 
AFTER UPDATE ON participantes_incidencias 
FOR EACH ROW 
EXECUTE FUNCTION trg_update_participantes_incidencias_func();

CREATE OR REPLACE FUNCTION trg_delete_participantes_incidencias_func() 
RETURNS TRIGGER AS $$ 
BEGIN 
    INSERT INTO auditoria (nombre_de_la_tabla, usuario_actual, detalle_de_la_accion) 
    VALUES ('participantes_incidencias', current_user, 'Eliminado registro en participantes_incidencias'); 
    RETURN OLD; 
END; 
$$ LANGUAGE plpgsql;

CREATE TRIGGER trg_delete_participantes_incidencias 
AFTER DELETE ON participantes_incidencias 
FOR EACH ROW 
EXECUTE FUNCTION trg_delete_participantes_incidencias_func();

CREATE OR REPLACE FUNCTION trg_insert_registro_asistencias_func() 
RETURNS TRIGGER AS $$ 
BEGIN 
    INSERT INTO auditoria (nombre_de_la_tabla, usuario_actual, detalle_de_la_accion) 
    VALUES ('registro_asistencias', current_user, 'Insertado registro en registro_asistencias'); 
    RETURN NEW; 
END; 
$$ LANGUAGE plpgsql;

CREATE TRIGGER trg_insert_registro_asistencias 
AFTER INSERT ON registro_asistencias 
FOR EACH ROW 
EXECUTE FUNCTION trg_insert_registro_asistencias_func();

CREATE OR REPLACE FUNCTION trg_update_registro_asistencias_func() 
RETURNS TRIGGER AS $$ 
BEGIN 
    INSERT INTO auditoria (nombre_de_la_tabla, usuario_actual, detalle_de_la_accion) 
    VALUES ('registro_asistencias', current_user, 'Actualizado registro en registro_asistencias'); 
    RETURN NEW; 
END; 
$$ LANGUAGE plpgsql;

CREATE TRIGGER trg_update_registro_asistencias 
AFTER UPDATE ON registro_asistencias 
FOR EACH ROW 
EXECUTE FUNCTION trg_update_registro_asistencias_func();

CREATE OR REPLACE FUNCTION trg_delete_registro_asistencias_func() 
RETURNS TRIGGER AS $$ 
BEGIN 
    INSERT INTO auditoria (nombre_de_la_tabla, usuario_actual, detalle_de_la_accion) 
    VALUES ('registro_asistencias', current_user, 'Eliminado registro en registro_asistencias'); 
    RETURN OLD; 
END; 
$$ LANGUAGE plpgsql;

CREATE TRIGGER trg_delete_registro_asistencias 
AFTER DELETE ON registro_asistencias 
FOR EACH ROW 
EXECUTE FUNCTION trg_delete_registro_asistencias_func();

CREATE OR REPLACE FUNCTION trg_insert_participantes_formaciones_func() 
RETURNS TRIGGER AS $$ 
BEGIN 
    INSERT INTO auditoria (nombre_de_la_tabla, usuario_actual, detalle_de_la_accion) 
    VALUES ('participantes_formaciones', current_user, 'Insertado registro en participantes_formaciones'); 
    RETURN NEW; 
END; 
$$ LANGUAGE plpgsql;

CREATE TRIGGER trg_insert_participantes_formaciones 
AFTER INSERT ON participantes_formaciones 
FOR EACH ROW 
EXECUTE FUNCTION trg_insert_participantes_formaciones_func();

CREATE OR REPLACE FUNCTION trg_update_participantes_formaciones_func() 
RETURNS TRIGGER AS $$ 
BEGIN 
    INSERT INTO auditoria (nombre_de_la_tabla, usuario_actual, detalle_de_la_accion) 
    VALUES ('participantes_formaciones', current_user, 'Actualizado registro en participantes_formaciones'); 
    RETURN NEW; 
END; 
$$ LANGUAGE plpgsql;

CREATE TRIGGER trg_update_participantes_formaciones 
AFTER UPDATE ON participantes_formaciones 
FOR EACH ROW 
EXECUTE FUNCTION trg_update_participantes_formaciones_func();

CREATE OR REPLACE FUNCTION trg_delete_participantes_formaciones_func() 
RETURNS TRIGGER AS $$ 
BEGIN 
    INSERT INTO auditoria (nombre_de_la_tabla, usuario_actual, detalle_de_la_accion) 
    VALUES ('participantes_formaciones', current_user, 'Eliminado registro en participantes_formaciones'); 
    RETURN OLD; 
END; 
$$ LANGUAGE plpgsql;

CREATE TRIGGER trg_delete_participantes_formaciones 
AFTER DELETE ON participantes_formaciones 
FOR EACH ROW 
EXECUTE FUNCTION trg_delete_participantes_formaciones_func();

CREATE OR REPLACE FUNCTION trg_insert_reportes_incidencias_func() 
RETURNS TRIGGER AS $$ 
BEGIN 
    INSERT INTO auditoria (nombre_de_la_tabla, usuario_actual, detalle_de_la_accion) 
    VALUES ('reportes_incidencias', current_user, 'Insertado registro en reportes_incidencias'); 
    RETURN NEW; 
END; 
$$ LANGUAGE plpgsql;

CREATE TRIGGER trg_insert_reportes_incidencias 
AFTER INSERT ON reportes_incidencias 
FOR EACH ROW 
EXECUTE FUNCTION trg_insert_reportes_incidencias_func();

CREATE OR REPLACE FUNCTION trg_update_reportes_incidencias_func() 
RETURNS TRIGGER AS $$ 
BEGIN 
    INSERT INTO auditoria (nombre_de_la_tabla, usuario_actual, detalle_de_la_accion) 
    VALUES ('reportes_incidencias', current_user, 'Actualizado registro en reportes_incidencias'); 
    RETURN NEW; 
END; 
$$ LANGUAGE plpgsql;

CREATE TRIGGER trg_update_reportes_incidencias 
AFTER UPDATE ON reportes_incidencias 
FOR EACH ROW 
EXECUTE FUNCTION trg_update_reportes_incidencias_func();

CREATE OR REPLACE FUNCTION trg_delete_reportes_incidencias_func() 
RETURNS TRIGGER AS $$ 
BEGIN 
    INSERT INTO auditoria (nombre_de_la_tabla, usuario_actual, detalle_de_la_accion) 
    VALUES ('reportes_incidencias', current_user, 'Eliminado registro en reportes_incidencias'); 
    RETURN OLD; 
END; 
$$ LANGUAGE plpgsql;

CREATE TRIGGER trg_delete_reportes_incidencias 
AFTER DELETE ON reportes_incidencias 
FOR EACH ROW 
EXECUTE FUNCTION trg_delete_reportes_incidencias_func();

CREATE OR REPLACE FUNCTION trg_insert_jornadas_trabajo_func() 
RETURNS TRIGGER AS $$ 
BEGIN 
    INSERT INTO auditoria (nombre_de_la_tabla, usuario_actual, detalle_de_la_accion) 
    VALUES ('jornadas_trabajo', current_user, 'Insertado registro en jornadas_trabajo'); 
    RETURN NEW; 
END; 
$$ LANGUAGE plpgsql;

CREATE TRIGGER trg_insert_jornadas_trabajo 
AFTER INSERT ON jornadas_trabajo 
FOR EACH ROW 
EXECUTE FUNCTION trg_insert_jornadas_trabajo_func();

CREATE OR REPLACE FUNCTION trg_update_jornadas_trabajo_func() 
RETURNS TRIGGER AS $$ 
BEGIN 
    INSERT INTO auditoria (nombre_de_la_tabla, usuario_actual, detalle_de_la_accion) 
    VALUES ('jornadas_trabajo', current_user, 'Actualizado registro en jornadas_trabajo'); 
    RETURN NEW; 
END; 
$$ LANGUAGE plpgsql;

CREATE TRIGGER trg_update_jornadas_trabajo 
AFTER UPDATE ON jornadas_trabajo 
FOR EACH ROW 
EXECUTE FUNCTION trg_update_jornadas_trabajo_func();

CREATE OR REPLACE FUNCTION trg_delete_jornadas_trabajo_func() 
RETURNS TRIGGER AS $$ 
BEGIN 
    INSERT INTO auditoria (nombre_de_la_tabla, usuario_actual, detalle_de_la_accion) 
    VALUES ('jornadas_trabajo', current_user, 'Eliminado registro en jornadas_trabajo'); 
    RETURN OLD; 
END; 
$$ LANGUAGE plpgsql;

CREATE TRIGGER trg_delete_jornadas_trabajo 
AFTER DELETE ON jornadas_trabajo 
FOR EACH ROW 
EXECUTE FUNCTION trg_delete_jornadas_trabajo_func();

CREATE OR REPLACE FUNCTION trg_insert_vehiculos_func() 
RETURNS TRIGGER AS $$ 
BEGIN 
    INSERT INTO auditoria (nombre_de_la_tabla, usuario_actual, detalle_de_la_accion) 
    VALUES ('vehiculos', current_user, 'Insertado registro en vehiculos'); 
    RETURN NEW; 
END; 
$$ LANGUAGE plpgsql;

CREATE TRIGGER trg_insert_vehiculos 
AFTER INSERT ON vehiculos 
FOR EACH ROW 
EXECUTE FUNCTION trg_insert_vehiculos_func();

CREATE OR REPLACE FUNCTION trg_update_vehiculos_func() 
RETURNS TRIGGER AS $$ 
BEGIN 
    INSERT INTO auditoria (nombre_de_la_tabla, usuario_actual, detalle_de_la_accion) 
    VALUES ('vehiculos', current_user, 'Actualizado registro en vehiculos'); 
    RETURN NEW; 
END; 
$$ LANGUAGE plpgsql;

CREATE TRIGGER trg_update_vehiculos 
AFTER UPDATE ON vehiculos 
FOR EACH ROW 
EXECUTE FUNCTION trg_update_vehiculos_func();

CREATE OR REPLACE FUNCTION trg_delete_vehiculos_func() 
RETURNS TRIGGER AS $$ 
BEGIN 
    INSERT INTO auditoria (nombre_de_la_tabla, usuario_actual, detalle_de_la_accion) 
    VALUES ('vehiculos', current_user, 'Eliminado registro en vehiculos'); 
    RETURN OLD; 
END; 
$$ LANGUAGE plpgsql;

CREATE TRIGGER trg_delete_vehiculos 
AFTER DELETE ON vehiculos 
FOR EACH ROW 
EXECUTE FUNCTION trg_delete_vehiculos_func();

CREATE OR REPLACE FUNCTION trg_insert_salidas_emergencia_func() 
RETURNS TRIGGER AS $$ 
BEGIN 
    INSERT INTO auditoria (nombre_de_la_tabla, usuario_actual, detalle_de_la_accion) 
    VALUES ('salidas_emergencia', current_user, 'Insertado registro en salidas_emergencia'); 
    RETURN NEW; 
END; 
$$ LANGUAGE plpgsql;

CREATE TRIGGER trg_insert_salidas_emergencia 
AFTER INSERT ON salidas_emergencia 
FOR EACH ROW 
EXECUTE FUNCTION trg_insert_salidas_emergencia_func();

CREATE OR REPLACE FUNCTION trg_update_salidas_emergencia_func() 
RETURNS TRIGGER AS $$ 
BEGIN 
    INSERT INTO auditoria (nombre_de_la_tabla, usuario_actual, detalle_de_la_accion) 
    VALUES ('salidas_emergencia', current_user, 'Actualizado registro en salidas_emergencia'); 
    RETURN NEW; 
END; 
$$ LANGUAGE plpgsql;

CREATE TRIGGER trg_update_salidas_emergencia 
AFTER UPDATE ON salidas_emergencia 
FOR EACH ROW 
EXECUTE FUNCTION trg_update_salidas_emergencia_func();

CREATE OR REPLACE FUNCTION trg_delete_salidas_emergencia_func() 
RETURNS TRIGGER AS $$ 
BEGIN 
    INSERT INTO auditoria (nombre_de_la_tabla, usuario_actual, detalle_de_la_accion) 
    VALUES ('salidas_emergencia', current_user, 'Eliminado registro en salidas_emergencia'); 
    RETURN OLD; 
END; 
$$ LANGUAGE plpgsql;

CREATE TRIGGER trg_delete_salidas_emergencia 
AFTER DELETE ON salidas_emergencia 
FOR EACH ROW 
EXECUTE FUNCTION trg_delete_salidas_emergencia_func();

CREATE OR REPLACE FUNCTION trg_insert_intervenciones_emergencia_func() 
RETURNS TRIGGER AS $$ 
BEGIN 
    INSERT INTO auditoria (nombre_de_la_tabla, usuario_actual, detalle_de_la_accion) 
    VALUES ('intervenciones_emergencia', current_user, 'Insertado registro en intervenciones_emergencia'); 
    RETURN NEW; 
END; 
$$ LANGUAGE plpgsql;

CREATE TRIGGER trg_insert_intervenciones_emergencia 
AFTER INSERT ON intervenciones_emergencia 
FOR EACH ROW 
EXECUTE FUNCTION trg_insert_intervenciones_emergencia_func();

CREATE OR REPLACE FUNCTION trg_update_intervenciones_emergencia_func() 
RETURNS TRIGGER AS $$ 
BEGIN 
    INSERT INTO auditoria (nombre_de_la_tabla, usuario_actual, detalle_de_la_accion) 
    VALUES ('intervenciones_emergencia', current_user, 'Actualizado registro en intervenciones_emergencia'); 
    RETURN NEW; 
END; 
$$ LANGUAGE plpgsql;

CREATE TRIGGER trg_update_intervenciones_emergencia 
AFTER UPDATE ON intervenciones_emergencia 
FOR EACH ROW 
EXECUTE FUNCTION trg_update_intervenciones_emergencia_func();

CREATE OR REPLACE FUNCTION trg_delete_intervenciones_emergencia_func() 
RETURNS TRIGGER AS $$ 
BEGIN 
    INSERT INTO auditoria (nombre_de_la_tabla, usuario_actual, detalle_de_la_accion) 
    VALUES ('intervenciones_emergencia', current_user, 'Eliminado registro en intervenciones_emergencia'); 
    RETURN OLD; 
END; 
$$ LANGUAGE plpgsql;

CREATE TRIGGER trg_delete_intervenciones_emergencia 
AFTER DELETE ON intervenciones_emergencia 
FOR EACH ROW 
EXECUTE FUNCTION trg_delete_intervenciones_emergencia_func();

CREATE OR REPLACE FUNCTION trg_insert_organizacion_mantenimiento_func() 
RETURNS TRIGGER AS $$ 
BEGIN 
    INSERT INTO auditoria (nombre_de_la_tabla, usuario_actual, detalle_de_la_accion) 
    VALUES ('organizacion_mantenimiento', current_user, 'Insertado registro en organizacion_mantenimiento'); 
    RETURN NEW; 
END; 
$$ LANGUAGE plpgsql;

CREATE TRIGGER trg_insert_organizacion_mantenimiento 
AFTER INSERT ON organizacion_mantenimiento 
FOR EACH ROW 
EXECUTE FUNCTION trg_insert_organizacion_mantenimiento_func();

CREATE OR REPLACE FUNCTION trg_update_organizacion_mantenimiento_func() 
RETURNS TRIGGER AS $$ 
BEGIN 
    INSERT INTO auditoria (nombre_de_la_tabla, usuario_actual, detalle_de_la_accion) 
    VALUES ('organizacion_mantenimiento', current_user, 'Actualizado registro en organizacion_mantenimiento'); 
    RETURN NEW; 
END; 
$$ LANGUAGE plpgsql;

CREATE TRIGGER trg_update_organizacion_mantenimiento 
AFTER UPDATE ON organizacion_mantenimiento 
FOR EACH ROW 
EXECUTE FUNCTION trg_update_organizacion_mantenimiento_func();

CREATE OR REPLACE FUNCTION trg_delete_organizacion_mantenimiento_func() 
RETURNS TRIGGER AS $$ 
BEGIN 
    INSERT INTO auditoria (nombre_de_la_tabla, usuario_actual, detalle_de_la_accion) 
    VALUES ('organizacion_mantenimiento', current_user, 'Eliminado registro en organizacion_mantenimiento'); 
    RETURN OLD; 
END; 
$$ LANGUAGE plpgsql;

CREATE TRIGGER trg_delete_organizacion_mantenimiento 
AFTER DELETE ON organizacion_mantenimiento 
FOR EACH ROW 
EXECUTE FUNCTION trg_delete_organizacion_mantenimiento_func();

CREATE OR REPLACE FUNCTION trg_insert_mantenimientos_func() 
RETURNS TRIGGER AS $$ 
BEGIN 
    INSERT INTO auditoria (nombre_de_la_tabla, usuario_actual, detalle_de_la_accion) 
    VALUES ('mantenimientos', current_user, 'Insertado registro en mantenimientos'); 
    RETURN NEW; 
END; 
$$ LANGUAGE plpgsql;

CREATE TRIGGER trg_insert_mantenimientos 
AFTER INSERT ON mantenimientos 
FOR EACH ROW 
EXECUTE FUNCTION trg_insert_mantenimientos_func();

CREATE OR REPLACE FUNCTION trg_update_mantenimientos_func() 
RETURNS TRIGGER AS $$ 
BEGIN 
    INSERT INTO auditoria (nombre_de_la_tabla, usuario_actual, detalle_de_la_accion) 
    VALUES ('mantenimientos', current_user, 'Actualizado registro en mantenimientos'); 
    RETURN NEW; 
END; 
$$ LANGUAGE plpgsql;

CREATE TRIGGER trg_update_mantenimientos 
AFTER UPDATE ON mantenimientos 
FOR EACH ROW 
EXECUTE FUNCTION trg_update_mantenimientos_func();

CREATE OR REPLACE FUNCTION trg_delete_mantenimientos_func() 
RETURNS TRIGGER AS $$ 
BEGIN 
    INSERT INTO auditoria (nombre_de_la_tabla, usuario_actual, detalle_de_la_accion) 
    VALUES ('mantenimientos', current_user, 'Eliminado registro en mantenimientos'); 
    RETURN OLD; 
END; 
$$ LANGUAGE plpgsql;

CREATE TRIGGER trg_delete_mantenimientos 
AFTER DELETE ON mantenimientos 
FOR EACH ROW 
EXECUTE FUNCTION trg_delete_mantenimientos_func();

CREATE OR REPLACE FUNCTION trg_insert_equipos_estacion_func() 
RETURNS TRIGGER AS $$ 
BEGIN 
    INSERT INTO auditoria (nombre_de_la_tabla, usuario_actual, detalle_de_la_accion) 
    VALUES ('equipos_estacion', current_user, 'Insertado registro en equipos_estacion'); 
    RETURN NEW; 
END; 
$$ LANGUAGE plpgsql;

CREATE TRIGGER trg_insert_equipos_estacion 
AFTER INSERT ON equipos_estacion 
FOR EACH ROW 
EXECUTE FUNCTION trg_insert_equipos_estacion_func();

CREATE OR REPLACE FUNCTION trg_update_equipos_estacion_func() 
RETURNS TRIGGER AS $$ 
BEGIN 
    INSERT INTO auditoria (nombre_de_la_tabla, usuario_actual, detalle_de_la_accion) 
    VALUES ('equipos_estacion', current_user, 'Actualizado registro en equipos_estacion'); 
    RETURN NEW; 
END; 
$$ LANGUAGE plpgsql;

CREATE TRIGGER trg_update_equipos_estacion 
AFTER UPDATE ON equipos_estacion 
FOR EACH ROW 
EXECUTE FUNCTION trg_update_equipos_estacion_func();

CREATE OR REPLACE FUNCTION trg_delete_equipos_estacion_func() 
RETURNS TRIGGER AS $$ 
BEGIN 
    INSERT INTO auditoria (nombre_de_la_tabla, usuario_actual, detalle_de_la_accion) 
    VALUES ('equipos_estacion', current_user, 'Eliminado registro en equipos_estacion'); 
    RETURN OLD; 
END; 
$$ LANGUAGE plpgsql;

CREATE TRIGGER trg_delete_equipos_estacion 
AFTER DELETE ON equipos_estacion 
FOR EACH ROW 
EXECUTE FUNCTION trg_delete_equipos_estacion_func();

CREATE OR REPLACE FUNCTION trg_insert_estaciones_func() 
RETURNS TRIGGER AS $$ 
BEGIN 
    INSERT INTO auditoria (nombre_de_la_tabla, usuario_actual, detalle_de_la_accion) 
    VALUES ('estaciones', current_user, 'Insertado registro en estaciones'); 
    RETURN NEW; 
END; 
$$ LANGUAGE plpgsql;

CREATE TRIGGER trg_insert_estaciones 
AFTER INSERT ON estaciones 
FOR EACH ROW 
EXECUTE FUNCTION trg_insert_estaciones_func();

CREATE OR REPLACE FUNCTION trg_update_estaciones_func() 
RETURNS TRIGGER AS $$ 
BEGIN 
    INSERT INTO auditoria (nombre_de_la_tabla, usuario_actual, detalle_de_la_accion) 
    VALUES ('estaciones', current_user, 'Actualizado registro en estaciones'); 
    RETURN NEW; 
END; 
$$ LANGUAGE plpgsql;

CREATE TRIGGER trg_update_estaciones 
AFTER UPDATE ON estaciones 
FOR EACH ROW 
EXECUTE FUNCTION trg_update_estaciones_func();

CREATE OR REPLACE FUNCTION trg_delete_estaciones_func() 
RETURNS TRIGGER AS $$ 
BEGIN 
    INSERT INTO auditoria (nombre_de_la_tabla, usuario_actual, detalle_de_la_accion) 
    VALUES ('estaciones', current_user, 'Eliminado registro en estaciones'); 
    RETURN OLD; 
END; 
$$ LANGUAGE plpgsql;

CREATE TRIGGER trg_delete_estaciones 
AFTER DELETE ON estaciones 
FOR EACH ROW 
EXECUTE FUNCTION trg_delete_estaciones_func();

CREATE OR REPLACE FUNCTION trg_insert_tipo_vehiculos_func() 
RETURNS TRIGGER AS $$ 
BEGIN 
    INSERT INTO auditoria (nombre_de_la_tabla, usuario_actual, detalle_de_la_accion) 
    VALUES ('tipo_vehiculos', current_user, 'Insertado registro en tipo_vehiculos'); 
    RETURN NEW; 
END; 
$$ LANGUAGE plpgsql;

CREATE TRIGGER trg_insert_tipo_vehiculos 
AFTER INSERT ON tipo_vehiculos 
FOR EACH ROW 
EXECUTE FUNCTION trg_insert_tipo_vehiculos_func();

CREATE OR REPLACE FUNCTION trg_update_tipo_vehiculos_func() 
RETURNS TRIGGER AS $$ 
BEGIN 
    INSERT INTO auditoria (nombre_de_la_tabla, usuario_actual, detalle_de_la_accion) 
    VALUES ('tipo_vehiculos', current_user, 'Actualizado registro en tipo_vehiculos'); 
    RETURN NEW; 
END; 
$$ LANGUAGE plpgsql;

CREATE TRIGGER trg_update_tipo_vehiculos 
AFTER UPDATE ON tipo_vehiculos 
FOR EACH ROW 
EXECUTE FUNCTION trg_update_tipo_vehiculos_func();

CREATE OR REPLACE FUNCTION trg_delete_tipo_vehiculos_func() 
RETURNS TRIGGER AS $$ 
BEGIN 
    INSERT INTO auditoria (nombre_de_la_tabla, usuario_actual, detalle_de_la_accion) 
    VALUES ('tipo_vehiculos', current_user, 'Eliminado registro en tipo_vehiculos'); 
    RETURN OLD; 
END; 
$$ LANGUAGE plpgsql;

CREATE TRIGGER trg_delete_tipo_vehiculos 
AFTER DELETE ON tipo_vehiculos 
FOR EACH ROW 
EXECUTE FUNCTION trg_delete_tipo_vehiculos_func();

CREATE OR REPLACE FUNCTION trg_insert_materiales_func() 
RETURNS TRIGGER AS $$ 
BEGIN 
    INSERT INTO auditoria (nombre_de_la_tabla, usuario_actual, detalle_de_la_accion) 
    VALUES ('materiales', current_user, 'Insertado registro en materiales'); 
    RETURN NEW; 
END; 
$$ LANGUAGE plpgsql;

CREATE TRIGGER trg_insert_materiales 
AFTER INSERT ON materiales 
FOR EACH ROW 
EXECUTE FUNCTION trg_insert_materiales_func();

CREATE OR REPLACE FUNCTION trg_update_materiales_func() 
RETURNS TRIGGER AS $$ 
BEGIN 
    INSERT INTO auditoria (nombre_de_la_tabla, usuario_actual, detalle_de_la_accion) 
    VALUES ('materiales', current_user, 'Actualizado registro en materiales'); 
    RETURN NEW; 
END; 
$$ LANGUAGE plpgsql;

CREATE TRIGGER trg_update_materiales 
AFTER UPDATE ON materiales 
FOR EACH ROW 
EXECUTE FUNCTION trg_update_materiales_func();

CREATE OR REPLACE FUNCTION trg_delete_materiales_func() 
RETURNS TRIGGER AS $$ 
BEGIN 
    INSERT INTO auditoria (nombre_de_la_tabla, usuario_actual, detalle_de_la_accion) 
    VALUES ('materiales', current_user, 'Eliminado registro en materiales'); 
    RETURN OLD; 
END; 
$$ LANGUAGE plpgsql;

CREATE TRIGGER trg_delete_materiales 
AFTER DELETE ON materiales 
FOR EACH ROW 
EXECUTE FUNCTION trg_delete_materiales_func();

CREATE OR REPLACE FUNCTION trg_insert_mantenimiento_tipo_func() 
RETURNS TRIGGER AS $$ 
BEGIN 
    INSERT INTO auditoria (nombre_de_la_tabla, usuario_actual, detalle_de_la_accion) 
    VALUES ('mantenimiento_tipo', current_user, 'Insertado registro en mantenimiento_tipo'); 
    RETURN NEW; 
END; 
$$ LANGUAGE plpgsql;

CREATE TRIGGER trg_insert_mantenimiento_tipo 
AFTER INSERT ON mantenimiento_tipo 
FOR EACH ROW 
EXECUTE FUNCTION trg_insert_mantenimiento_tipo_func();

CREATE OR REPLACE FUNCTION trg_update_mantenimiento_tipo_func() 
RETURNS TRIGGER AS $$ 
BEGIN 
    INSERT INTO auditoria (nombre_de_la_tabla, usuario_actual, detalle_de_la_accion) 
    VALUES ('mantenimiento_tipo', current_user, 'Actualizado registro en mantenimiento_tipo'); 
    RETURN NEW; 
END; 
$$ LANGUAGE plpgsql;

CREATE TRIGGER trg_update_mantenimiento_tipo 
AFTER UPDATE ON mantenimiento_tipo 
FOR EACH ROW 
EXECUTE FUNCTION trg_update_mantenimiento_tipo_func();

CREATE OR REPLACE FUNCTION trg_delete_mantenimiento_tipo_func() 
RETURNS TRIGGER AS $$ 
BEGIN 
    INSERT INTO auditoria (nombre_de_la_tabla, usuario_actual, detalle_de_la_accion) 
    VALUES ('mantenimiento_tipo', current_user, 'Eliminado registro en mantenimiento_tipo'); 
    RETURN OLD; 
END; 
$$ LANGUAGE plpgsql;

CREATE TRIGGER trg_delete_mantenimiento_tipo 
AFTER DELETE ON mantenimiento_tipo 
FOR EACH ROW 
EXECUTE FUNCTION trg_delete_mantenimiento_tipo_func();

CREATE OR REPLACE FUNCTION trg_insert_llamadas_usuario_func() 
RETURNS TRIGGER AS $$ 
BEGIN 
    INSERT INTO auditoria (nombre_de_la_tabla, usuario_actual, detalle_de_la_accion) 
    VALUES ('llamadas_usuario', current_user, 'Insertado registro en llamadas_usuario'); 
    RETURN NEW; 
END; 
$$ LANGUAGE plpgsql;

CREATE TRIGGER trg_insert_llamadas_usuario 
AFTER INSERT ON llamadas_usuario 
FOR EACH ROW 
EXECUTE FUNCTION trg_insert_llamadas_usuario_func();

CREATE OR REPLACE FUNCTION trg_update_llamadas_usuario_func() 
RETURNS TRIGGER AS $$ 
BEGIN 
    INSERT INTO auditoria (nombre_de_la_tabla, usuario_actual, detalle_de_la_accion) 
    VALUES ('llamadas_usuario', current_user, 'Actualizado registro en llamadas_usuario'); 
    RETURN NEW; 
END; 
$$ LANGUAGE plpgsql;

CREATE TRIGGER trg_update_llamadas_usuario 
AFTER UPDATE ON llamadas_usuario 
FOR EACH ROW 
EXECUTE FUNCTION trg_update_llamadas_usuario_func();

CREATE OR REPLACE FUNCTION trg_delete_llamadas_usuario_func() 
RETURNS TRIGGER AS $$ 
BEGIN 
    INSERT INTO auditoria (nombre_de_la_tabla, usuario_actual, detalle_de_la_accion) 
    VALUES ('llamadas_usuario', current_user, 'Eliminado registro en llamadas_usuario'); 
    RETURN OLD; 
END; 
$$ LANGUAGE plpgsql;

CREATE TRIGGER trg_delete_llamadas_usuario 
AFTER DELETE ON llamadas_usuario 
FOR EACH ROW 
EXECUTE FUNCTION trg_delete_llamadas_usuario_func();

CREATE OR REPLACE FUNCTION trg_insert_sesiones_formacion_func() 
RETURNS TRIGGER AS $$ 
BEGIN 
    INSERT INTO auditoria (nombre_de_la_tabla, usuario_actual, detalle_de_la_accion) 
    VALUES ('sesiones_formacion', current_user, 'Insertado registro en sesiones_formacion'); 
    RETURN NEW; 
END; 
$$ LANGUAGE plpgsql;

CREATE TRIGGER trg_insert_sesiones_formacion 
AFTER INSERT ON sesiones_formacion 
FOR EACH ROW 
EXECUTE FUNCTION trg_insert_sesiones_formacion_func();

CREATE OR REPLACE FUNCTION trg_update_sesiones_formacion_func() 
RETURNS TRIGGER AS $$ 
BEGIN 
    INSERT INTO auditoria (nombre_de_la_tabla, usuario_actual, detalle_de_la_accion) 
    VALUES ('sesiones_formacion', current_user, 'Actualizado registro en sesiones_formacion'); 
    RETURN NEW; 
END; 
$$ LANGUAGE plpgsql;

CREATE TRIGGER trg_update_sesiones_formacion 
AFTER UPDATE ON sesiones_formacion 
FOR EACH ROW 
EXECUTE FUNCTION trg_update_sesiones_formacion_func();

CREATE OR REPLACE FUNCTION trg_delete_sesiones_formacion_func() 
RETURNS TRIGGER AS $$ 
BEGIN 
    INSERT INTO auditoria (nombre_de_la_tabla, usuario_actual, detalle_de_la_accion) 
    VALUES ('sesiones_formacion', current_user, 'Eliminado registro en sesiones_formacion'); 
    RETURN OLD; 
END; 
$$ LANGUAGE plpgsql;

CREATE TRIGGER trg_delete_sesiones_formacion 
AFTER DELETE ON sesiones_formacion 
FOR EACH ROW 
EXECUTE FUNCTION trg_delete_sesiones_formacion_func();

CREATE OR REPLACE FUNCTION trg_insert_llamada_tipo_func() 
RETURNS TRIGGER AS $$ 
BEGIN 
    INSERT INTO auditoria (nombre_de_la_tabla, usuario_actual, detalle_de_la_accion) 
    VALUES ('llamada_tipo', current_user, 'Insertado registro en llamada_tipo'); 
    RETURN NEW; 
END; 
$$ LANGUAGE plpgsql;

CREATE TRIGGER trg_insert_llamada_tipo 
AFTER INSERT ON llamada_tipo 
FOR EACH ROW 
EXECUTE FUNCTION trg_insert_llamada_tipo_func();

CREATE OR REPLACE FUNCTION trg_update_llamada_tipo_func() 
RETURNS TRIGGER AS $$ 
BEGIN 
    INSERT INTO auditoria (nombre_de_la_tabla, usuario_actual, detalle_de_la_accion) 
    VALUES ('llamada_tipo', current_user, 'Actualizado registro en llamada_tipo'); 
    RETURN NEW; 
END; 
$$ LANGUAGE plpgsql;

CREATE TRIGGER trg_update_llamada_tipo 
AFTER UPDATE ON llamada_tipo 
FOR EACH ROW 
EXECUTE FUNCTION trg_update_llamada_tipo_func();

CREATE OR REPLACE FUNCTION trg_delete_llamada_tipo_func() 
RETURNS TRIGGER AS $$ 
BEGIN 
    INSERT INTO auditoria (nombre_de_la_tabla, usuario_actual, detalle_de_la_accion) 
    VALUES ('llamada_tipo', current_user, 'Eliminado registro en llamada_tipo'); 
    RETURN OLD; 
END; 
$$ LANGUAGE plpgsql;

CREATE TRIGGER trg_delete_llamada_tipo 
AFTER DELETE ON llamada_tipo 
FOR EACH ROW 
EXECUTE FUNCTION trg_delete_llamada_tipo_func();

COMMIT;
