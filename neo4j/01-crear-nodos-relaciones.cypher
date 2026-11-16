CREATE CONSTRAINT estudiante_matricula IF NOT EXISTS FOR (e:Estudiante) REQUIRE e.matricula IS UNIQUE;
CREATE CONSTRAINT servicio_id IF NOT EXISTS FOR (s:Servicio) REQUIRE s.servicio_id IS UNIQUE;
CREATE CONSTRAINT curso_codigo IF NOT EXISTS FOR (c:Curso) REQUIRE c.codigo IS UNIQUE;
CREATE CONSTRAINT categoria_nombre IF NOT EXISTS FOR (cat:Categoria) REQUIRE cat.nombre IS UNIQUE;

MERGE (catIA:Categoria {nombre: "Computo Avanzado"})
MERGE (catAlm:Categoria {nombre: "Almacenamiento"})
MERGE (catLab:Categoria {nombre: "Laboratorio Virtual"})
MERGE (catDev:Categoria {nombre: "Desarrollo"})

MERGE (s1:Servicio {servicio_id: "SVC-201"}) SET s1.nombre = "DeepLearning Cluster A100", s1.ram_gb = 64
MERGE (s2:Servicio {servicio_id: "SVC-202"}) SET s2.nombre = "DataScience Studio", s2.ram_gb = 16
MERGE (s3:Servicio {servicio_id: "SVC-203"}) SET s3.nombre = "EduVault Object Storage", s3.cuota_gb = 250
MERGE (s4:Servicio {servicio_id: "SVC-205"}) SET s4.nombre = "NetSec Sandbox", s4.ram_gb = 32
MERGE (s5:Servicio {servicio_id: "SVC-206"}) SET s5.nombre = "DevOps Runner Pro", s5.runners = 4

MERGE (c1:Curso {codigo: "CLOUD-301"}) SET c1.nombre = "Arquitectura de Datos en la Nube"
MERGE (c2:Curso {codigo: "ML-405"}) SET c2.nombre = "Aprendizaje Profundo"
MERGE (c3:Curso {codigo: "CIBER-302"}) SET c3.nombre = "Ciberseguridad Aplicada"

MERGE (e1:Estudiante {matricula: "2025101"}) SET e1.nombre = "Sofia Navarro", e1.carrera = "Ingenieria en Software"
MERGE (e2:Estudiante {matricula: "2025102"}) SET e2.nombre = "Diego Mendoza", e2.carrera = "Ciencia de Datos"
MERGE (e3:Estudiante {matricula: "2025103"}) SET e3.nombre = "Camila Ortega", e3.carrera = "Redes y Seguridad"

MERGE (s1)-[:PERTENECE_A]->(catIA)
MERGE (s2)-[:PERTENECE_A]->(catIA)
MERGE (s3)-[:PERTENECE_A]->(catAlm)
MERGE (s4)-[:PERTENECE_A]->(catLab)
MERGE (s5)-[:PERTENECE_A]->(catDev)

MERGE (s1)-[:DEPENDE_DE {tipo: "almacenamiento_modelos"}]->(s3)
MERGE (s2)-[:DEPENDE_DE {tipo: "respaldo_notebooks"}]->(s3)
MERGE (s4)-[:DEPENDE_DE {tipo: "imagenes_base"}]->(s5)

MERGE (c1)-[:UTILIZA]->(s2)
MERGE (c1)-[:UTILIZA]->(s5)
MERGE (c2)-[:UTILIZA]->(s1)
MERGE (c3)-[:UTILIZA]->(s4)

MERGE (e1)-[:INSCRITO_EN]->(c1)
MERGE (e1)-[:INSCRITO_EN]->(c2)
MERGE (e2)-[:INSCRITO_EN]->(c2)
MERGE (e3)-[:INSCRITO_EN]->(c3)

MERGE (e1)-[:USA_SERVICIO {horas_mes: 20}]->(s2)
MERGE (e2)-[:USA_SERVICIO {horas_mes: 30}]->(s1)
MERGE (e3)-[:USA_SERVICIO {horas_mes: 16}]->(s4);
