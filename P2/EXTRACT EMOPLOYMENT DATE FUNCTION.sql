CREATE FUNCTION EMPLOYMENTDATEEXTRACT(myEID INT)
  RETURNS DATE
  BEGIN
    RETURN (SELECT EMPLOYMENTDATE from EMPLOYEE WHERE EMPLOYEE.EID = myEID);
  END;