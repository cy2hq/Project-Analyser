/* message catalog entries in component properties */
SELECT * FROM PSPNLGRPDEFN WHERE ADDLINKMSGSET > 20000 OR SRCHLINKMSGSET > 20000 OR  SRCHTEXTMSGSET > 20000;
SELECT * FROM PSPNLGRPDEFNEXT WHERE PTKEYWDSRCHMSGSET  > 20000 OR  PTRTSRCHLINKMSGSET > 20000;
   