MATCH (s:Servicio {servicio_id: "SVC-202"})
RETURN s.servicio_id AS ID, s.nombre AS Servicio, s.ram_gb AS RAM_Antes;

MATCH (s:Servicio {servicio_id: "SVC-202"})
SET s.ram_gb = 32, s.ultima_revision = "2026-11-16"
RETURN s.servicio_id AS ID, s.nombre AS Servicio, s.ram_gb AS RAM_Despues, s.ultima_revision AS Revision;

CREATE (tmp:Servicio {servicio_id: "SVC-999", nombre: "Nodo Experimental Temporal"})
RETURN tmp.servicio_id AS NodoTemporalCreado;

MATCH (tmp:Servicio {servicio_id: "SVC-999"})
DETACH DELETE tmp;

MATCH (s:Servicio)
RETURN count(s) AS TotalServiciosFinales;
