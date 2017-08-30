CREATE OR REPLACE PACKAGE BODY XXGTEST01 AS
  PROCEDURE hanoi(n IN NUMBER,
                  x IN VARCHAR2,
                  y IN VARCHAR2,
                  z IN VARCHAR2)
  IS
  BEGIN
  -- test05
    IF n = 1 THEN
      dbms_output.put_line(x || '->' || z);
    ELSE
      hanoi(n-1, x, z, y);
      dbms_output.put_line(x || '->' || z);
      hanoi(n-1, y, x, z);
    END IF;
  END hanoi;
END XXGTEST01;
/
