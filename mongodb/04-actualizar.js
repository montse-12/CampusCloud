use campuscloud;
printjson(db.detalles_servicios.findOne({ servicio_id: "SVC-202" }, { _id: 0 }));
db.detalles_servicios.updateOne({ servicio_id: "SVC-202" }, { $set: { "especificaciones_tecnicas.ram_gb": 32 }, $push: { etiquetas: "ram-expandida" } });
printjson(db.detalles_servicios.findOne({ servicio_id: "SVC-202" }, { _id: 0 }));
