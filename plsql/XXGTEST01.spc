CREATE OR REPLACE PACKAGE XXGTEST01 AS
  -- test03
  PROCEDURE hanoi(n IN NUMBER,
                  x IN VARCHAR2,
                  y IN VARCHAR2,
                  z IN VARCHAR2);
END XXGTEST01;
/
