SELECT [62304_5338].*, [5338_guidelines].guide_id, [5338_guidelines].guide_name, [5338_guidelines].guide_description
FROM 5338_guidelines INNER JOIN 62304_5338 ON [5338_guidelines].process_3_id = [62304_5338].process_3_id_5338;
