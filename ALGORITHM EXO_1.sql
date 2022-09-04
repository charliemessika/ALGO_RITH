ALGORITHM EXO_1
VAR
    nbC : Integer := 0
    nbW : Integer := 1
    nbV : Integer := 0
    C : Char
BEGIN
    read (C)
WHILE (C <> ".") DO
    nbC = nbC+1
IF (C in ["A","U","I","E","Y","O","a","u","i","e","y","o"] THEN
    nbV = nbV+1
ELSE IF ( C =" ") THEN
    nbW = nbW+1 

END_IF
END_WHILE
 write (nbC)
 write (nbW)
 write (nbV)

END


ALGORITHM eXO_2
VAR
    setOne : ARRAY_OF INTEGER[4];
    setTwo : ARRAY_OF INTEGER[4];
    i,j,sum : INTEGER := 0;
    dublicated : BOOLEAN;
BEGIN

    setOne := [12, 13, 6, 10];
    setTwo := [13, 10, 16,15];


    FOR i FROM 0 TO setOne.length DO 
        dublicated := false;
        FOR j FROM 0 TO setTwo.length-1 DO
            IF setOne[i] = setTwo[j] THEN 
                dublicated := true;
            END_IF
        END_FOR
        IF NOT dublicated THEN 
            sum := sum + setOne[i];
        END_IF

    END_FOR

    FOR i FROM 0 TO setTwo.length DO 
        dublicated := false;
        FOR j FROM 0 TO setOne.length DO
            IF setTwo[i] = setOne[j] THEN 
                dublicated := true;
            END_IF
        END_FOR
        IF NOT dublicated THEN 
            sum := sum + setOne[i];
        END_IF

    END_FOR

    Write("sum of all distinct elements : ", sum);

END