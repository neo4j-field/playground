// ─── Employee → Department ────────────────────────────────────────────────────
MATCH (e:Employee {id: "emp001"}), (d:Department {name: "Sales"})             MERGE (e)-[:WORKS_IN]->(d);
MATCH (e:Employee {id: "emp002"}), (d:Department {name: "Customer Success"})  MERGE (e)-[:WORKS_IN]->(d);
MATCH (e:Employee {id: "emp003"}), (d:Department {name: "Customer Success"})  MERGE (e)-[:WORKS_IN]->(d);
MATCH (e:Employee {id: "emp004"}), (d:Department {name: "Sales Engineering"}) MERGE (e)-[:WORKS_IN]->(d);
MATCH (e:Employee {id: "emp005"}), (d:Department {name: "Sales"})             MERGE (e)-[:WORKS_IN]->(d);
MATCH (e:Employee {id: "emp006"}), (d:Department {name: "Customer Success"})  MERGE (e)-[:WORKS_IN]->(d);
MATCH (e:Employee {id: "emp007"}), (d:Department {name: "Human Resources"})   MERGE (e)-[:WORKS_IN]->(d);
MATCH (e:Employee {id: "emp008"}), (d:Department {name: "Customer Success"})  MERGE (e)-[:WORKS_IN]->(d);
MATCH (e:Employee {id: "emp009"}), (d:Department {name: "Sales"})             MERGE (e)-[:WORKS_IN]->(d);

// ─── Employee → Location ──────────────────────────────────────────────────────
MATCH (e:Employee {id: "emp001"}), (l:Location {name: "San Francisco, CA"}) MERGE (e)-[:LOCATED_IN]->(l);
MATCH (e:Employee {id: "emp002"}), (l:Location {name: "Austin, TX"})        MERGE (e)-[:LOCATED_IN]->(l);
MATCH (e:Employee {id: "emp003"}), (l:Location {name: "New York, NY"})      MERGE (e)-[:LOCATED_IN]->(l);
MATCH (e:Employee {id: "emp004"}), (l:Location {name: "San Francisco, CA"}) MERGE (e)-[:LOCATED_IN]->(l);
MATCH (e:Employee {id: "emp005"}), (l:Location {name: "San Francisco, CA"}) MERGE (e)-[:LOCATED_IN]->(l);
MATCH (e:Employee {id: "emp006"}), (l:Location {name: "Austin, TX"})        MERGE (e)-[:LOCATED_IN]->(l);
MATCH (e:Employee {id: "emp007"}), (l:Location {name: "Remote"})            MERGE (e)-[:LOCATED_IN]->(l);
MATCH (e:Employee {id: "emp008"}), (l:Location {name: "Austin, TX"})        MERGE (e)-[:LOCATED_IN]->(l);
MATCH (e:Employee {id: "emp009"}), (l:Location {name: "New York, NY"})      MERGE (e)-[:LOCATED_IN]->(l);

// ─── Employee → REPORTS_TO ────────────────────────────────────────────────────
MATCH (e:Employee {id: "emp001"}), (m:Employee {id: "emp005"}) MERGE (e)-[:REPORTS_TO]->(m);
MATCH (e:Employee {id: "emp002"}), (m:Employee {id: "emp006"}) MERGE (e)-[:REPORTS_TO]->(m);
MATCH (e:Employee {id: "emp003"}), (m:Employee {id: "emp006"}) MERGE (e)-[:REPORTS_TO]->(m);
MATCH (e:Employee {id: "emp004"}), (m:Employee {id: "emp005"}) MERGE (e)-[:REPORTS_TO]->(m);
MATCH (e:Employee {id: "emp008"}), (m:Employee {id: "emp006"}) MERGE (e)-[:REPORTS_TO]->(m);
MATCH (e:Employee {id: "emp009"}), (m:Employee {id: "emp005"}) MERGE (e)-[:REPORTS_TO]->(m);

// ─── Employee → MANAGES ───────────────────────────────────────────────────────
MATCH (m:Employee {id: "emp005"}), (e:Employee {id: "emp001"}) MERGE (m)-[:MANAGES]->(e);
MATCH (m:Employee {id: "emp005"}), (e:Employee {id: "emp004"}) MERGE (m)-[:MANAGES]->(e);
MATCH (m:Employee {id: "emp005"}), (e:Employee {id: "emp009"}) MERGE (m)-[:MANAGES]->(e);
MATCH (m:Employee {id: "emp006"}), (e:Employee {id: "emp002"}) MERGE (m)-[:MANAGES]->(e);
MATCH (m:Employee {id: "emp006"}), (e:Employee {id: "emp003"}) MERGE (m)-[:MANAGES]->(e);
MATCH (m:Employee {id: "emp006"}), (e:Employee {id: "emp008"}) MERGE (m)-[:MANAGES]->(e);

// ─── Employee → HAS_SKILL ─────────────────────────────────────────────────────
MATCH (e:Employee {id: "emp001"}), (s:Skill {name: "Enterprise Sales"})      MERGE (e)-[:HAS_SKILL]->(s);
MATCH (e:Employee {id: "emp001"}), (s:Skill {name: "Salesforce CRM"})        MERGE (e)-[:HAS_SKILL]->(s);
MATCH (e:Employee {id: "emp001"}), (s:Skill {name: "Negotiation"})           MERGE (e)-[:HAS_SKILL]->(s);
MATCH (e:Employee {id: "emp001"}), (s:Skill {name: "QBR Facilitation"})      MERGE (e)-[:HAS_SKILL]->(s);
MATCH (e:Employee {id: "emp001"}), (s:Skill {name: "Contract Management"})   MERGE (e)-[:HAS_SKILL]->(s);

MATCH (e:Employee {id: "emp002"}), (s:Skill {name: "Python"})                MERGE (e)-[:HAS_SKILL]->(s);
MATCH (e:Employee {id: "emp002"}), (s:Skill {name: "AWS"})                   MERGE (e)-[:HAS_SKILL]->(s);
MATCH (e:Employee {id: "emp002"}), (s:Skill {name: "Kubernetes"})            MERGE (e)-[:HAS_SKILL]->(s);
MATCH (e:Employee {id: "emp002"}), (s:Skill {name: "API Integration"})       MERGE (e)-[:HAS_SKILL]->(s);
MATCH (e:Employee {id: "emp002"}), (s:Skill {name: "SLA Management"})        MERGE (e)-[:HAS_SKILL]->(s);
MATCH (e:Employee {id: "emp002"}), (s:Skill {name: "Troubleshooting"})       MERGE (e)-[:HAS_SKILL]->(s);

MATCH (e:Employee {id: "emp003"}), (s:Skill {name: "Account Management"})    MERGE (e)-[:HAS_SKILL]->(s);
MATCH (e:Employee {id: "emp003"}), (s:Skill {name: "Renewal Strategy"})      MERGE (e)-[:HAS_SKILL]->(s);
MATCH (e:Employee {id: "emp003"}), (s:Skill {name: "Salesforce"})            MERGE (e)-[:HAS_SKILL]->(s);
MATCH (e:Employee {id: "emp003"}), (s:Skill {name: "Executive Communication"}) MERGE (e)-[:HAS_SKILL]->(s);
MATCH (e:Employee {id: "emp003"}), (s:Skill {name: "Churn Prevention"})      MERGE (e)-[:HAS_SKILL]->(s);

MATCH (e:Employee {id: "emp004"}), (s:Skill {name: "Demo Engineering"})      MERGE (e)-[:HAS_SKILL]->(s);
MATCH (e:Employee {id: "emp004"}), (s:Skill {name: "Python"})                MERGE (e)-[:HAS_SKILL]->(s);
MATCH (e:Employee {id: "emp004"}), (s:Skill {name: "Docker"})                MERGE (e)-[:HAS_SKILL]->(s);
MATCH (e:Employee {id: "emp004"}), (s:Skill {name: "API"})                   MERGE (e)-[:HAS_SKILL]->(s);
MATCH (e:Employee {id: "emp004"}), (s:Skill {name: "Pre-sales"})             MERGE (e)-[:HAS_SKILL]->(s);
MATCH (e:Employee {id: "emp004"}), (s:Skill {name: "System Design"})         MERGE (e)-[:HAS_SKILL]->(s);

MATCH (e:Employee {id: "emp005"}), (s:Skill {name: "Sales Leadership"})      MERGE (e)-[:HAS_SKILL]->(s);
MATCH (e:Employee {id: "emp005"}), (s:Skill {name: "Pipeline Management"})   MERGE (e)-[:HAS_SKILL]->(s);
MATCH (e:Employee {id: "emp005"}), (s:Skill {name: "Forecasting"})           MERGE (e)-[:HAS_SKILL]->(s);
MATCH (e:Employee {id: "emp005"}), (s:Skill {name: "Enterprise Sales"})      MERGE (e)-[:HAS_SKILL]->(s);
MATCH (e:Employee {id: "emp005"}), (s:Skill {name: "Board Reporting"})       MERGE (e)-[:HAS_SKILL]->(s);

MATCH (e:Employee {id: "emp006"}), (s:Skill {name: "Customer Success Strategy"}) MERGE (e)-[:HAS_SKILL]->(s);
MATCH (e:Employee {id: "emp006"}), (s:Skill {name: "Team Leadership"})       MERGE (e)-[:HAS_SKILL]->(s);
MATCH (e:Employee {id: "emp006"}), (s:Skill {name: "Churn Prevention"})      MERGE (e)-[:HAS_SKILL]->(s);
MATCH (e:Employee {id: "emp006"}), (s:Skill {name: "Renewal Forecasting"})   MERGE (e)-[:HAS_SKILL]->(s);
MATCH (e:Employee {id: "emp006"}), (s:Skill {name: "Executive QBR"})         MERGE (e)-[:HAS_SKILL]->(s);

MATCH (e:Employee {id: "emp007"}), (s:Skill {name: "Recruiting"})            MERGE (e)-[:HAS_SKILL]->(s);
MATCH (e:Employee {id: "emp007"}), (s:Skill {name: "Performance Management"}) MERGE (e)-[:HAS_SKILL]->(s);
MATCH (e:Employee {id: "emp007"}), (s:Skill {name: "HRIS"})                  MERGE (e)-[:HAS_SKILL]->(s);
MATCH (e:Employee {id: "emp007"}), (s:Skill {name: "Compliance"})            MERGE (e)-[:HAS_SKILL]->(s);
MATCH (e:Employee {id: "emp007"}), (s:Skill {name: "Talent Development"})    MERGE (e)-[:HAS_SKILL]->(s);

MATCH (e:Employee {id: "emp008"}), (s:Skill {name: "Terraform"})             MERGE (e)-[:HAS_SKILL]->(s);
MATCH (e:Employee {id: "emp008"}), (s:Skill {name: "GCP"})                   MERGE (e)-[:HAS_SKILL]->(s);
MATCH (e:Employee {id: "emp008"}), (s:Skill {name: "Python"})                MERGE (e)-[:HAS_SKILL]->(s);
MATCH (e:Employee {id: "emp008"}), (s:Skill {name: "SLA Management"})        MERGE (e)-[:HAS_SKILL]->(s);
MATCH (e:Employee {id: "emp008"}), (s:Skill {name: "Incident Response"})     MERGE (e)-[:HAS_SKILL]->(s);

MATCH (e:Employee {id: "emp009"}), (s:Skill {name: "Mid-Market Sales"})      MERGE (e)-[:HAS_SKILL]->(s);
MATCH (e:Employee {id: "emp009"}), (s:Skill {name: "Salesforce CRM"})        MERGE (e)-[:HAS_SKILL]->(s);
MATCH (e:Employee {id: "emp009"}), (s:Skill {name: "Cold Outreach"})         MERGE (e)-[:HAS_SKILL]->(s);
MATCH (e:Employee {id: "emp009"}), (s:Skill {name: "Pipeline Development"})  MERGE (e)-[:HAS_SKILL]->(s);

// ─── Employee → MANAGES_ACCOUNT / SUPPORTS ───────────────────────────────────
// Acme Corporation (cust001)
MATCH (e:Employee {id: "emp001"}), (c:Customer {id: "cust001"}) MERGE (e)-[:MANAGES_ACCOUNT {role: "AE"}]->(c);
MATCH (e:Employee {id: "emp003"}), (c:Customer {id: "cust001"}) MERGE (e)-[:MANAGES_ACCOUNT {role: "CSM"}]->(c);
MATCH (e:Employee {id: "emp004"}), (c:Customer {id: "cust001"}) MERGE (e)-[:MANAGES_ACCOUNT {role: "SE"}]->(c);
MATCH (e:Employee {id: "emp002"}), (c:Customer {id: "cust001"}) MERGE (e)-[:SUPPORTS]->(c);

// TechNova Inc. (cust002)
MATCH (e:Employee {id: "emp001"}), (c:Customer {id: "cust002"}) MERGE (e)-[:MANAGES_ACCOUNT {role: "AE"}]->(c);
MATCH (e:Employee {id: "emp003"}), (c:Customer {id: "cust002"}) MERGE (e)-[:MANAGES_ACCOUNT {role: "CSM"}]->(c);
MATCH (e:Employee {id: "emp002"}), (c:Customer {id: "cust002"}) MERGE (e)-[:SUPPORTS]->(c);
MATCH (e:Employee {id: "emp008"}), (c:Customer {id: "cust002"}) MERGE (e)-[:SUPPORTS]->(c);

// HealthFirst Systems (cust003)
MATCH (e:Employee {id: "emp001"}), (c:Customer {id: "cust003"}) MERGE (e)-[:MANAGES_ACCOUNT {role: "AE"}]->(c);
MATCH (e:Employee {id: "emp003"}), (c:Customer {id: "cust003"}) MERGE (e)-[:MANAGES_ACCOUNT {role: "CSM"}]->(c);
MATCH (e:Employee {id: "emp002"}), (c:Customer {id: "cust003"}) MERGE (e)-[:SUPPORTS]->(c);

// GlobalRetail Co. (cust004)
MATCH (e:Employee {id: "emp001"}), (c:Customer {id: "cust004"}) MERGE (e)-[:MANAGES_ACCOUNT {role: "AE"}]->(c);
MATCH (e:Employee {id: "emp003"}), (c:Customer {id: "cust004"}) MERGE (e)-[:MANAGES_ACCOUNT {role: "CSM"}]->(c);
MATCH (e:Employee {id: "emp002"}), (c:Customer {id: "cust004"}) MERGE (e)-[:SUPPORTS]->(c);
MATCH (e:Employee {id: "emp008"}), (c:Customer {id: "cust004"}) MERGE (e)-[:SUPPORTS]->(c);

// Meridian Logistics (cust005)
MATCH (e:Employee {id: "emp009"}), (c:Customer {id: "cust005"}) MERGE (e)-[:MANAGES_ACCOUNT {role: "AE"}]->(c);
MATCH (e:Employee {id: "emp004"}), (c:Customer {id: "cust005"}) MERGE (e)-[:MANAGES_ACCOUNT {role: "SE"}]->(c);

// ─── Employee → OWNS Opportunity ─────────────────────────────────────────────
MATCH (e:Employee {id: "emp001"}), (o:Opportunity {id: "opp001"}) MERGE (e)-[:OWNS]->(o);
MATCH (e:Employee {id: "emp001"}), (o:Opportunity {id: "opp002"}) MERGE (e)-[:OWNS]->(o);
MATCH (e:Employee {id: "emp009"}), (o:Opportunity {id: "opp003"}) MERGE (e)-[:OWNS]->(o);
MATCH (e:Employee {id: "emp001"}), (o:Opportunity {id: "opp004"}) MERGE (e)-[:OWNS]->(o);
MATCH (e:Employee {id: "emp001"}), (o:Opportunity {id: "opp005"}) MERGE (e)-[:OWNS]->(o);

// ─── Customer → HAS_OPPORTUNITY ──────────────────────────────────────────────
MATCH (c:Customer {id: "cust001"}), (o:Opportunity {id: "opp001"}) MERGE (c)-[:HAS_OPPORTUNITY]->(o);
MATCH (c:Customer {id: "cust002"}), (o:Opportunity {id: "opp002"}) MERGE (c)-[:HAS_OPPORTUNITY]->(o);
MATCH (c:Customer {id: "cust005"}), (o:Opportunity {id: "opp003"}) MERGE (c)-[:HAS_OPPORTUNITY]->(o);
MATCH (c:Customer {id: "cust003"}), (o:Opportunity {id: "opp004"}) MERGE (c)-[:HAS_OPPORTUNITY]->(o);
MATCH (c:Customer {id: "cust004"}), (o:Opportunity {id: "opp005"}) MERGE (c)-[:HAS_OPPORTUNITY]->(o);
