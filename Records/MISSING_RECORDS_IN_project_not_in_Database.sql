     /* records in the project that are not in the database */
      SELECT DISTINCT A.PROJECTNAME, A.OBJECTVALUE1
  FROM PSPROJECTITEM A
  WHERE  A.OBJECTTYPE = 0
     AND A.PROJECTNAME = 'CY2_CONFIG_001' 
     AND NOT EXISTS(SELECT 'X' FROM psrecdefn B WHERE B.RECNAME = A.OBJECTVALUE1);