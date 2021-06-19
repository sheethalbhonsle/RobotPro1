*** Settings ***

Library     DatabaseLibrary
Library     OperatingSystem

Suite Setup     Connect To Database     pymysql     ${DBName}   ${DBUser}   ${DBPass}   ${DBHost}   ${DBPort}
Suite Teardown      Disconnect From Database


*** Variables ***
${DBName}       ibmcomp
${DBUser}       root
${DBPass}       1234
${DBHost}       127.0.0.1
${DBPort}       3306

*** Test Cases ***
#Create dbperson table
#    ${output}=  execute sql string      create table GoldClass(id integer,first_name varchar(20),last_name varchar(20))
#    log to console      ${output}
#    should be equal as strings       ${output}   None
Inseting data in Goldclass table
    ${output}=  execute sql string      insert into GoldClass values(101,"John","Kennady")
    log to console      ${output}
    should be equal as strings       ${output}   None