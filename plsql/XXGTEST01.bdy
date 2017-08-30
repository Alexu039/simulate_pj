CREATE OR REPLACE PACKAGE BODY XXGTEST01 AS
  PROCEDURE hanoi(n IN NUMBER,
                  x IN VARCHAR2,
                  y IN VARCHAR2,
                  z IN VARCHAR2)
  IS
  BEGIN
  -- test03
    IF n = 1 THEN
      -- 直接从x移动到z
      dbms_output.put_line(x || '->' || z);
    ELSE
      -- 将n-1个盘子从x移动到y
      hanoi(n-1, x, z, y);
      -- 将第n个盘子从x移动到z
      dbms_output.put_line(x || '->' || z);
      -- 将n-1个盘子从y移动到z
      hanoi(n-1, y, x, z);
    END IF;
  END hanoi;
END XXGTEST01;