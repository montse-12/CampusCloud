use campuscloud;
db.detalles_servicios.insertMany([
  { servicio_id: "SVC-201", nombre: "DeepLearning Cluster A100", tipo_servicio: "computo_avanzado", activo: true, etiquetas: ["ia", "pytorch", "gpu"], especificaciones_tecnicas: { vcpu: 12, ram_gb: 64, acelerador: "NVIDIA A100" } },
  { servicio_id: "SVC-202", nombre: "DataScience Studio", tipo_servicio: "computo_avanzado", activo: true, etiquetas: ["analitica", "python", "jupyter"], especificaciones_tecnicas: { vcpu: 4, ram_gb: 16, acelerador: "ninguno" } },
  { servicio_id: "SVC-203", nombre: "EduVault Object Storage", tipo_servicio: "almacenamiento", activo: true, etiquetas: ["s3-compatible", "datasets"], especificaciones_tecnicas: { cuota_base_gb: 250, versionado: true } },
  { servicio_id: "SVC-204", nombre: "ThesisArchive Glacier", tipo_servicio: "almacenamiento", activo: true, etiquetas: ["historico", "investigacion"], especificaciones_tecnicas: { cuota_base_gb: 1000, tiempo_recuperacion_min: 10 } },
  { servicio_id: "SVC-205", nombre: "NetSec Sandbox", tipo_servicio: "laboratorio_virtual", activo: true, etiquetas: ["pentesting", "redes", "linux"], especificaciones_tecnicas: { vcpu: 8, ram_gb: 32, redes_aisladas: 4 } },
  { servicio_id: "SVC-206", nombre: "DevOps Runner Pro", tipo_servicio: "desarrollo", activo: true, etiquetas: ["git", "ci-cd", "devops"], especificaciones_tecnicas: { runners_concurrentes: 4, minutos_mes: 3500 } },
  { servicio_id: "SVC-207", nombre: "OldWebDAV Server", tipo_servicio: "almacenamiento", activo: false, etiquetas: ["deprecado", "webdav"], especificaciones_tecnicas: { cuota_base_gb: 20, cifrado: false } }
]);
print("Total documentos:", db.detalles_servicios.countDocuments());
