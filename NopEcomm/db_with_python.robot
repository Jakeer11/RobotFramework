*** Settings ***
Library    dbkeywords.py

*** Test Cases ***
DB Test Using Python Library
    Connect Mysql    localhost    root    root    your_db_name    3306
    ${name}=    Fetch One Value    SELECT name FROM users WHERE id=1;
    Should Not Be Empty    ${name}
    Close Connection
