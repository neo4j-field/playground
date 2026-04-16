// ─── Constraints & Indexes ────────────────────────────────────────────────────
CREATE CONSTRAINT employee_id   IF NOT EXISTS FOR (e:Employee)    REQUIRE e.id IS UNIQUE;
CREATE CONSTRAINT customer_id   IF NOT EXISTS FOR (c:Customer)    REQUIRE c.id IS UNIQUE;
CREATE CONSTRAINT opportunity_id IF NOT EXISTS FOR (o:Opportunity) REQUIRE o.id IS UNIQUE;
CREATE CONSTRAINT department_name IF NOT EXISTS FOR (d:Department) REQUIRE d.name IS UNIQUE;
CREATE CONSTRAINT skill_name     IF NOT EXISTS FOR (s:Skill)       REQUIRE s.name IS UNIQUE;
CREATE CONSTRAINT location_name  IF NOT EXISTS FOR (l:Location)    REQUIRE l.name IS UNIQUE;
