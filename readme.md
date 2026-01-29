Yh_labb for Data Modeling lab.

This repo contains a database models and implementations for a vocational school system called YrkesCo.
The goal of this lab is to design a database that tracks students, courses, programs, educators etc (will add more later)

------------------------------------------------------------------------------------------------------
Folder structure and usage: (llm pasted boilerplate to iterate on later) 
yh_labb/
│
├── README.md                 
├── sql/                      
│   ├── schema.sql
│   ├── insert.sql
│   └── queries.sql
├── docs/                    
│   └── presentation.pdf
├── videos/                   
│   └── pitch_link.txt

How to use:
1. Set up docker and postgres
2. Copy the files into the container:
   2.1 copy schema.sql: docker cp /path/to/schema.sql yrkesco-postgres:/schema.sql
   2.2 copy insert.sql: docker cp /path/to/sql/insert.sql yrkesco-postgres:/insert.sql
   2.3 copy the queries.sql (if you want to use the query file): docker cp /path/to/sql/queries.sql yrkesco-postgres:/queries.sql
(if you update any of the file contents later you will need to copy the updated files into the container again)

4. run this from terminal(bash):docker exec -it yrkesco-postgres psql -U postgres

Then in postgres instance (terminal):
Do this: DROP SCHEMA IF EXISTS skola_info CASCADE;
4. Run `\i /schema.sql` to create all tables
5. Enter the correct schema: SET search_path TO skol_info;
6. Run `\i /insert_data.sql` to populate sample data
7. Run `\i /queries.sql` to test sample queries

Check to see if everything works:
Check to see available schemas: /dn
Check to see tables: /dt
SELECT * FROM skol_info.person; or SELECT * FROM skol_info.*Any Table*;

------------------------------------------------------------------------------------------------------**


Features of this repo: 
- normalized data in 3nf
- separate table for sensetive/personal data
- handles multiple locations goteborg/stockholm
- supports both local educators and consultants
- includes sample queries demonstrating joins




