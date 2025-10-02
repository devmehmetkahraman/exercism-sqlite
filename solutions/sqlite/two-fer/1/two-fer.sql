UPDATE twofer
SET response = 
    CASE
        WHEN input IS NULL OR TRIM(input) = '' THEN 'One for you, one for me.'
        ELSE 'One for ' || input || ', one for me.'
    END;