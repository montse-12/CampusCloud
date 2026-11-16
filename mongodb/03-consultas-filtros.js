use campuscloud;
db.detalles_servicios.find({ tipo_servicio: "computo_avanzado", "especificaciones_tecnicas.ram_gb": { $gte: 32 } }, { _id: 0, servicio_id: 1, nombre: 1, especificaciones_tecnicas: 1 }).forEach(printjson);
db.detalles_servicios.find({ activo: true, etiquetas: { $in: ["ia", "devops"] } }, { _id: 0, servicio_id: 1, nombre: 1, etiquetas: 1 }).forEach(printjson);
db.detalles_servicios.find({ tipo_servicio: "almacenamiento", "especificaciones_tecnicas.cuota_base_gb": { $gt: 100 } }, { _id: 0, servicio_id: 1, nombre: 1, "especificaciones_tecnicas.cuota_base_gb": 1 }).forEach(printjson);
