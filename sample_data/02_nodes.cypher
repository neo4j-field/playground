// ─── Departments ──────────────────────────────────────────────────────────────
MERGE (:Department {name: "Sales"});
MERGE (:Department {name: "Customer Success"});
MERGE (:Department {name: "Sales Engineering"});
MERGE (:Department {name: "Human Resources"});

// ─── Locations ────────────────────────────────────────────────────────────────
MERGE (:Location {name: "San Francisco, CA"});
MERGE (:Location {name: "Austin, TX"});
MERGE (:Location {name: "New York, NY"});
MERGE (:Location {name: "Remote"});

// ─── Skills ───────────────────────────────────────────────────────────────────
MERGE (:Skill {name: "Enterprise Sales"});
MERGE (:Skill {name: "Salesforce CRM"});
MERGE (:Skill {name: "Negotiation"});
MERGE (:Skill {name: "QBR Facilitation"});
MERGE (:Skill {name: "Contract Management"});
MERGE (:Skill {name: "Python"});
MERGE (:Skill {name: "AWS"});
MERGE (:Skill {name: "Kubernetes"});
MERGE (:Skill {name: "API Integration"});
MERGE (:Skill {name: "SLA Management"});
MERGE (:Skill {name: "Troubleshooting"});
MERGE (:Skill {name: "Account Management"});
MERGE (:Skill {name: "Renewal Strategy"});
MERGE (:Skill {name: "Salesforce"});
MERGE (:Skill {name: "Executive Communication"});
MERGE (:Skill {name: "Churn Prevention"});
MERGE (:Skill {name: "Demo Engineering"});
MERGE (:Skill {name: "Docker"});
MERGE (:Skill {name: "API"});
MERGE (:Skill {name: "Pre-sales"});
MERGE (:Skill {name: "System Design"});
MERGE (:Skill {name: "Sales Leadership"});
MERGE (:Skill {name: "Pipeline Management"});
MERGE (:Skill {name: "Forecasting"});
MERGE (:Skill {name: "Board Reporting"});
MERGE (:Skill {name: "Customer Success Strategy"});
MERGE (:Skill {name: "Team Leadership"});
MERGE (:Skill {name: "Renewal Forecasting"});
MERGE (:Skill {name: "Executive QBR"});
MERGE (:Skill {name: "Recruiting"});
MERGE (:Skill {name: "Performance Management"});
MERGE (:Skill {name: "HRIS"});
MERGE (:Skill {name: "Compliance"});
MERGE (:Skill {name: "Talent Development"});
MERGE (:Skill {name: "Terraform"});
MERGE (:Skill {name: "GCP"});
MERGE (:Skill {name: "Incident Response"});
MERGE (:Skill {name: "Mid-Market Sales"});
MERGE (:Skill {name: "Cold Outreach"});
MERGE (:Skill {name: "Pipeline Development"});

// ─── Employees ────────────────────────────────────────────────────────────────
MERGE (e:Employee {id: "emp001"}) SET e += {
  name: "Sarah Chen", title: "Senior Account Executive",
  dept: "Sales", location: "San Francisco, CA", email: "s.chen@corp.io",
  startDate: "2021-03-15", status: "Active", performanceScore: 4.5,
  bamboohr_url: "https://acme.bamboohr.com/employees/001",
  fifteenfive_url: "https://app.15five.com/profile/001",
  gong_url: "https://app.gong.io/calls?user=sarah.chen"
};
MERGE (e:Employee {id: "emp002"}) SET e += {
  name: "Raj Patel", title: "Senior Support Engineer",
  dept: "Customer Success", location: "Austin, TX", email: "r.patel@corp.io",
  startDate: "2020-07-01", status: "Active", performanceScore: 4.8,
  bamboohr_url: "https://acme.bamboohr.com/employees/002",
  fifteenfive_url: "https://app.15five.com/profile/002",
  greenhouse_url: "https://app.greenhouse.io/people/002"
};
MERGE (e:Employee {id: "emp003"}) SET e += {
  name: "Maria Gonzalez", title: "Customer Success Manager",
  dept: "Customer Success", location: "New York, NY", email: "m.gonzalez@corp.io",
  startDate: "2019-11-20", status: "Active", performanceScore: 4.6,
  bamboohr_url: "https://acme.bamboohr.com/employees/003",
  fifteenfive_url: "https://app.15five.com/profile/003"
};
MERGE (e:Employee {id: "emp004"}) SET e += {
  name: "James Wu", title: "Solutions Engineer",
  dept: "Sales Engineering", location: "San Francisco, CA", email: "j.wu@corp.io",
  startDate: "2022-01-10", status: "Active", performanceScore: 4.3,
  bamboohr_url: "https://acme.bamboohr.com/employees/004",
  greenhouse_url: "https://app.greenhouse.io/people/004"
};
MERGE (e:Employee {id: "emp005"}) SET e += {
  name: "Mike Torres", title: "VP of Sales",
  dept: "Sales", location: "San Francisco, CA", email: "m.torres@corp.io",
  startDate: "2018-06-01", status: "Active", performanceScore: 4.7,
  bamboohr_url: "https://acme.bamboohr.com/employees/005",
  fifteenfive_url: "https://app.15five.com/profile/005"
};
MERGE (e:Employee {id: "emp006"}) SET e += {
  name: "Priya Sharma", title: "VP of Customer Success",
  dept: "Customer Success", location: "Austin, TX", email: "p.sharma@corp.io",
  startDate: "2019-03-01", status: "Active", performanceScore: 4.9,
  bamboohr_url: "https://acme.bamboohr.com/employees/006",
  fifteenfive_url: "https://app.15five.com/profile/006"
};
MERGE (e:Employee {id: "emp007"}) SET e += {
  name: "Alex Kim", title: "HR Business Partner",
  dept: "Human Resources", location: "Remote", email: "a.kim@corp.io",
  startDate: "2021-09-01", status: "Active", performanceScore: 4.4,
  bamboohr_url: "https://acme.bamboohr.com/employees/007",
  greenhouse_url: "https://app.greenhouse.io/people/007"
};
MERGE (e:Employee {id: "emp008"}) SET e += {
  name: "Diana Prince", title: "Enterprise Support Engineer",
  dept: "Customer Success", location: "Austin, TX", email: "d.prince@corp.io",
  startDate: "2023-02-14", status: "Active", performanceScore: 4.1,
  bamboohr_url: "https://acme.bamboohr.com/employees/008",
  greenhouse_url: "https://app.greenhouse.io/people/008"
};
MERGE (e:Employee {id: "emp009"}) SET e += {
  name: "Tom Bradley", title: "Account Executive",
  dept: "Sales", location: "New York, NY", email: "t.bradley@corp.io",
  startDate: "2023-05-01", status: "Active", performanceScore: 3.9,
  bamboohr_url: "https://acme.bamboohr.com/employees/009",
  fifteenfive_url: "https://app.15five.com/profile/009",
  gong_url: "https://app.gong.io/calls?user=tom.bradley"
};

// ─── Customers ────────────────────────────────────────────────────────────────
MERGE (c:Customer {id: "cust001"}) SET c += {
  name: "Acme Corporation", industry: "Manufacturing",
  arr: 485000, stage: "Customer", healthScore: 85,
  location: "Chicago, IL", website: "acme.com",
  renewalDate: "2025-12-31",
  salesforce_url: "https://na1.salesforce.com/0016g00002KLMno"
};
MERGE (c:Customer {id: "cust002"}) SET c += {
  name: "TechNova Inc.", industry: "Technology",
  arr: 1200000, stage: "Customer", healthScore: 92,
  location: "Seattle, WA", website: "technova.io",
  renewalDate: "2025-09-30",
  salesforce_url: "https://na1.salesforce.com/0016g00002KLMpq"
};
MERGE (c:Customer {id: "cust003"}) SET c += {
  name: "HealthFirst Systems", industry: "Healthcare",
  arr: 320000, stage: "Customer", healthScore: 71,
  location: "Boston, MA", website: "healthfirst.com",
  renewalDate: "2026-03-31",
  salesforce_url: "https://na1.salesforce.com/0016g00002KLMrs"
};
MERGE (c:Customer {id: "cust004"}) SET c += {
  name: "GlobalRetail Co.", industry: "Retail",
  arr: 750000, stage: "Customer", healthScore: 88,
  location: "Dallas, TX", website: "globalretail.com",
  renewalDate: "2025-06-30",
  salesforce_url: "https://na1.salesforce.com/0016g00002KLMtu"
};
MERGE (c:Customer {id: "cust005"}) SET c += {
  name: "Meridian Logistics", industry: "Logistics",
  arr: 190000, stage: "Prospect", healthScore: 0,
  location: "Phoenix, AZ", website: "meridian.com",
  renewalDate: null,
  salesforce_url: "https://na1.salesforce.com/0016g00002KLMvw"
};

// ─── Opportunities ────────────────────────────────────────────────────────────
MERGE (o:Opportunity {id: "opp001"}) SET o += {
  name: "Acme Corp – Platform Expansion",
  stage: "Negotiation", amount: 185000, closeDate: "2025-06-30", probability: 75,
  salesforce_url: "https://na1.salesforce.com/0066g00002OPQst"
};
MERGE (o:Opportunity {id: "opp002"}) SET o += {
  name: "TechNova – Security Module Upsell",
  stage: "Proposal Sent", amount: 240000, closeDate: "2025-07-15", probability: 60,
  salesforce_url: "https://na1.salesforce.com/0066g00002OPQpo"
};
MERGE (o:Opportunity {id: "opp003"}) SET o += {
  name: "Meridian Corp – New Business",
  stage: "Discovery", amount: 95000, closeDate: "2025-09-30", probability: 30,
  salesforce_url: "https://na1.salesforce.com/0066g00002OPQwx"
};
MERGE (o:Opportunity {id: "opp004"}) SET o += {
  name: "HealthFirst – Analytics Add-on",
  stage: "Demo Scheduled", amount: 55000, closeDate: "2025-08-01", probability: 45,
  salesforce_url: "https://na1.salesforce.com/0066g00002OPQyz"
};
MERGE (o:Opportunity {id: "opp005"}) SET o += {
  name: "GlobalRetail – Enterprise Renewal + Expansion",
  stage: "Renewal", amount: 820000, closeDate: "2025-06-15", probability: 85,
  salesforce_url: "https://na1.salesforce.com/0066g00002OPQab"
};
