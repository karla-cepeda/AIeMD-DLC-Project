SELECT 

[62304_to_12207_2017].activity_id_62304,
[62304_to_12207_2017].activity_62304,
[62304_to_12207_2017].purpose AS purpose_62304,

[5338].process_3_id AS process_3_id_5338,
[5338].process_3_name AS process_3_name_5338,

[5338].purpose AS purpose_5338,

[62304_to_12207_2017].id_1,
[62304_to_12207_2017].id_2

FROM 5338
INNER JOIN 62304_to_12207_2017 ON [5338].reference_to_12207_2017 = [62304_to_12207_2017].process_2_id_12207_2017

UNION 

SELECT
[62304_to_12207_2017].activity_id_62304,
[62304_to_12207_2017].activity_62304,
[62304_to_12207_2017].purpose AS purpose_62304,

[5338].process_3_id AS process_3_id_5338,
[5338].process_3_name AS process_3_name_5338,

[5338].purpose AS purpose_5338,

[62304_to_12207_2017].id_1,
[62304_to_12207_2017].id_2

FROM 5338
LEFT JOIN 62304_to_12207_2017 ON [5338].reference_to_12207_2017 = [62304_to_12207_2017].process_2_id_12207_2017
WHERE [5338].process_3_id NOT IN (SELECT [5338].process_3_id FROM 5338 INNER JOIN 62304_to_12207_2017 ON [5338].reference_to_12207_2017 = [62304_to_12207_2017].process_2_id_12207_2017)

UNION SELECT 
[62304_to_12207_2017].activity_id_62304,
[62304_to_12207_2017].activity_62304,
[62304_to_12207_2017].purpose AS purpose_62304,

[5338].process_3_id AS process_3_id_5338,
[5338].process_3_name AS process_3_name_5338,

[5338].purpose AS purpose_5338,

[62304_to_12207_2017].id_1,
[62304_to_12207_2017].id_2

FROM 62304_to_12207_2017
LEFT JOIN 5338 ON [5338].reference_to_12207_2017 = [62304_to_12207_2017].process_2_id_12207_2017

WHERE [62304_TO_12207_2017].task_id_62304 NOT IN (SELECT [62304_TO_12207_2017].task_id_62304 FROM 5338 INNER JOIN 62304_to_12207_2017 ON [5338].reference_to_12207_2017 = [62304_to_12207_2017].process_2_id_12207_2017)
ORDER BY [62304_to_12207_2017].id_1, [62304_to_12207_2017].id_2;
