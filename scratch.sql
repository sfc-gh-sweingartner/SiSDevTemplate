-- Query to show all databases in the Snowflake environment
SHOW DATABASES;

-- Alternative query to get database information with more details
SELECT 
    DATABASE_NAME,
    DATABASE_OWNER,
    IS_DEFAULT,
    IS_CURRENT,
    ORIGIN,
    RETENTION_TIME,
    CREATED,
    LAST_ALTERED,
    COMMENT
FROM INFORMATION_SCHEMA.DATABASES
ORDER BY DATABASE_NAME;

