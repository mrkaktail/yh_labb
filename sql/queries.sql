--Vilken utbildningsledare har den har klassen?
SELECT 
skol_info.person.fornamn,
skol_info.person.efternamn,
skol_info.klass.klass_id
FROM  
skol_info.klass

JOIN 
skol_info.utbildningsledare
ON skol_info.klass.utbildningsledare_id = skol_info.utbildningsledare.utbildningsledare_id

JOIN
skol_info.person
ON skol_info.person.person_id = skol_info.utbildningsledare.person_id

WHERE skol_info.klass.klass_id = 1;
