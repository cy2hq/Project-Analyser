/* STAND ALONE SQL IN PROJECT BUT NOT USED IN PEOPLECODE IN PROJECT */
SELECT A.PROJECTNAME, A.OBJECTVALUE1
  FROM PSPROJECTITEM A
  WHERE A.OBJECTTYPE = 30
     AND A.OBJECTID1 = 65
     AND A.OBJECTVALUE2 = 0
   AND A.PROJECTNAME LIKE 'CY2_CONFIG%'
     AND NOT EXISTS(SELECT 'X'
  FROM PSPROJECTITEM B, PSPCMNAME C
  WHERE C.REFNAME = A.OBJECTVALUE1
  AND B.PROJECTNAME =  A.PROJECTNAME
 AND B.OBJECTVALUE1 = C.OBJECTVALUE1
     AND B.OBJECTVALUE2 = C.OBJECTVALUE2
     AND ( B.OBJECTVALUE3 = C.OBJECTVALUE3
     OR B.OBJECTVALUE3 = ' ')
     AND ( B.OBJECTVALUE4 = C.OBJECTVALUE4
     OR B.OBJECTVALUE4 = ' ')
     AND B.OBJECTID1 = C.OBJECTID1
     AND B.OBJECTID2 = C.OBJECTID2
     AND ( B.OBJECTID3 = C.OBJECTID3
     OR B.OBJECTID3 = 0)
     AND ( B.OBJECTID4 = C.OBJECTID4
     OR B.OBJECTID4 = 0)
   AND C.RECNAME= 'SQL');
