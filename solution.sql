create database mithun;
use mithun;
CREATE OR REPLACE PROCEDURE Insert_Student (
    p_StudentID     IN NUMBER,
    p_StudentName   IN VARCHAR2,
    p_DepartmentID  IN NUMBER
)
IS
BEGIN
    INSERT INTO Student (StudentID, StudentName, DepartmentID)
    VALUES (p_StudentID, p_StudentName, p_DepartmentID);

    COMMIT;

    DBMS_OUTPUT.PUT_LINE('Student record inserted successfully.');
END;
/
