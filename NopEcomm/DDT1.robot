*** Settings ***
Library    DatabaseLibrary
Library    OperatingSystem

Suite Setup       Connect To MySQL
Suite Teardown    Disconnect From Database


*** Variables ***
${DB_NAME}      your_db_name
${DB_USER}      root
${DB_PASSWORD}  root
${DB_HOST}      localhost
${DB_PORT}      3306

*** Test Cases ***
Verify User Exists In DB
    Connect To MySQL
    ${count}=    Row Count    SELECT * FROM users WHERE email='admin@yourStore.com';
    ${count}=    Row Count    SELECT * FROM orders;
    Should Be Equal As Integers    ${count}    10
    ${result}=    Query    SELECT firstname FROM users WHERE id=1;
    Log    ${result}
    Execute Sql String    INSERT INTO users(name,email) VALUES ('TestUser','test@gmail.com');
    ${count}=    Row Count    SELECT * FROM users WHERE email='test@gmail.com';
    Should Be True    ${count} > 0



    Should Be True    ${count} > 0
    Disconnect From Database

*** Keywords ***
Connect To MySQL
    Connect To Database Using Custom Params
    ...    pymysql
    ...    ${DB_NAME}
    ...    ${DB_USER}
    ...    ${DB_PASSWORD}
    ...    ${DB_HOST}
    ...    ${DB_PORT}

