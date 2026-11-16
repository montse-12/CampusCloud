use campuscloud;
print("--- ANTES DE ELIMINAR (SVC-207) ---");
print("Total documentos:", db.detalles_servicios.countDocuments());
printjson(db.detalles_servicios.findOne({ servicio_id: "SVC-207" }, { _id: 0 }));
printjson(db.detalles_servicios.deleteOne({ servicio_id: "SVC-207" }));
print("--- DESPUES DE ELIMINAR ---");
print("Total documentos:", db.detalles_servicios.countDocuments());
