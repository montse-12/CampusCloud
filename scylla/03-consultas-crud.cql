USE campuscloud_telemetria;
SELECT servicio_id, fecha_evento, cpu_porcentaje, ram_usada_gb, estado_nodo FROM metricas_servicios WHERE servicio_id = 'SVC-201';
SELECT matricula, fecha_evento, servicio_id, accion FROM bitacora_accesos WHERE matricula = '2025101' AND fecha_evento >= '2026-11-16 09:00:00+0000';
SELECT COUNT(*) AS lecturas_svc201, AVG(cpu_porcentaje) AS cpu_promedio, MAX(ram_usada_gb) AS pico_ram_gb FROM metricas_servicios WHERE servicio_id = 'SVC-201';
UPDATE metricas_servicios SET estado_nodo = 'ESTABILIZADO', cpu_porcentaje = 62.5 WHERE servicio_id = 'SVC-201' AND fecha_evento = '2026-11-16 09:20:00+0000';
DELETE FROM metricas_servicios WHERE servicio_id = 'SVC-205' AND fecha_evento = '2026-11-16 09:30:00+0000';
SELECT * FROM metricas_servicios;
