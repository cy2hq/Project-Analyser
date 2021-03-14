SELECT B.REFNAME, A.OBJECTVALUE1, A.OBJECTVALUE2, A.OBJECTVALUE3, A.OBJECTVALUE4
  FROM PSPROJECTITEM A, PSPCMNAME B
  WHERE A.OBJECTVALUE1 = B.OBJECTVALUE1
     AND A.OBJECTVALUE2 = B.OBJECTVALUE2
     AND ( A.OBJECTVALUE3 = B.OBJECTVALUE3
     OR A.OBJECTVALUE3 = ' ')
     AND ( A.OBJECTVALUE4 = B.OBJECTVALUE4
     OR A.OBJECTVALUE4 = ' ')
     AND A.OBJECTID1 = B.OBJECTID1
     AND A.OBJECTID2 = B.OBJECTID2
     AND ( A.OBJECTID3 = B.OBJECTID3
     OR A.OBJECTID3 = 0)
     AND ( A.OBJECTID4 = B.OBJECTID4
     OR A.OBJECTID4 = 0)
   AND B.RECNAME= 'PANELGROUP'
   --AND A.PROJECTNAME = 'XXXXXXXXXXX'
   AND NOT EXISTS(SELECT 'X' FROM PSPNLGRPDEFN C WHERE B.REFNAME = C.PNLGRPNAME) 