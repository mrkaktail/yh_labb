Yh_labb is a database design lab

This repo contains a database design models and implementations for a vocational school system called YrkesCo.
The goal of this lab is to design a database that tracks students, courses, programs, educators etc (will add more later)

------------------------------------------------------------------------------------------------------
Folder structure and usage: (llm pasted boilerplate to iterate on later) 
yh_labb/
│
├── README.md                 # readme
├── sql/                      # SQs scripts 
│   ├── create_tables.sql
│   ├── insert_data.sql
│   └── queries.sql
├── docs/                     # Documentation
│   └── presentation.pdf
├── videos/                   # Optional: link to video or placeholder
│   └── pitch_link.txt
└── data/                     # Optional: CSV or fake data if needed

How to use:
1. Install PostgreSQL (if not already installed)
2. Run `create_tables.sql` to create all tables
3. Run `insert_data.sql` to populate sample data
4. Run `queries.sql` to test sample queries
------------------------------------------------------------------------------------------------------


Features of this repo: 
- normalized data in 3nf
- separate tables for sensetive/personal data
- handles multiple locations goteborg/stockholm
- supports both permamnent educators and consultants
- includes sample queries demonstrating joins


