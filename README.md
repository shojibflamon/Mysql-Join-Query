# Mysql-Join-Query
Practice about MySql Join Query

MySql Join (Inner)
  SELECT column_name(s)
  FROM table1
  JOIN table2 ON 
  ON table1.column_name = table2.column_name;
  
  
  
MySql LEFT JOIN (OUTER)
  SELECT column_name(s)
  FROM table1
  LEFT JOIN table2 ON 
  ON table1.column_name = table2.column_name; 
  
  
  
MySql RIGHT JOIN (OUTER)
  SELECT column_name(s)
  FROM table1
  RIGHT JOIN table2 ON 
  ON table1.column_name = table2.column_name;
  
  
  
MySql FULL JOIN (OUTER)
  SELECT column_name(s)
  FROM table1
  LEFT JOIN table2 ON 
  ON table1.column_name = table2.column_name; 
  UNION
  SELECT column_name(s)
  FROM table1
  RIGHT JOIN table2 ON 
  ON table1.column_name = table2.column_name; 
