db2 -t -v <<-END 2>&1 | tee delNdrop.log
CONNECT TO cs421;

DROP TABLE Links;
DROP TABLE Evaluation;
DROP TABLE Topics;
DROP TABLE WebPages;

QUIT;
END
