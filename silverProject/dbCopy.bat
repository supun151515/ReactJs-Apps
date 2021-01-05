mysql.exe -uroot -s -N -e "SHOW DATABASES" || for /F "usebackq" %%D in (`findstr /V "information_schema performance_schema"`)
    do mysqldump %%D -uroot > C:\xampp8\htdocs\silverProject\%%D.sql