[09.49, 15/8/2022] NURUL: Setting environment for using XAMPP for Windows.
MyBook14H@NUR.NUR c:\xampp
# mysql -u root -p
Enter password:
Welcome to the MariaDB monitor.  Commands end with ; or \g.
Your MariaDB connection id is 10
Server version: 10.4.24-MariaDB mariadb.org binary distribution

Copyright (c) 2000, 2018, Oracle, MariaDB Corporation Ab and others.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

MariaDB [(none)]> show databases;
+--------------------+
| Database           |
+--------------------+
| datadiri           |
| datasiswa          |        
| information_schema |
| mysql              |
| performance_schema |
| phpmyadmin         |
| test               |
+--------------------+
8 rows in set (0.002 sec)

MariaDB [(none)]> use datasiswa;
Database changed
MariaDB [datasiswa]> show tables;
[09.49, 15/8/2022] evi: MariaDB [(none)]> CREATE DATABASE sekolah;
Query OK, 1 row affected (0.007 sec)
MariaDB [sekolah]> CREATE TABLE siswa(
    ->     -> nis CHAR(8) PRIMARY KEY,
    ->     -> nama VARCHAR(100),
    ->     -> jenis_kelamin CHAR(1),
    ->     -> tempat_lahir VARCHAR(50),
    ->     -> tanggal_lahir DATE,
    ->     -> alamat TEXT,
    ->     -> kelas VARCHAR(10),
    ->     -> nilai FLOAT);
Query OK, 1 row affected (0.019 sec)
MariaDB [(none)]> SHOW DATABASES;
+--------------------+
| Database           |
+--------------------+
| datadiri           |
| datasiswa          |     |
| information_schema |
| mysql              |
| performance_schema |
| phpmyadmin         |
| sekolah            |
| test               |
+--------------------+
9 rows in set (0.002 sec)
MariaDB [sekolah]> DESCRIBE siswa;
+---------------+--------------+------+-----+---------+-------+
| Field         | Type         | Null | Key | Default | Extra |
+---------------+--------------+------+-----+---------+-------+
| nis           | char(8)      | NO   | PRI | NULL    |       |
| nama          | varchar(100) | YES  |     | NULL    |       |
| jenis_kelamin | char(1)      | YES  |     | NULL    |       |
| tempat_lahir  | varchar(50)  | YES  |     | NULL    |       |
| tanggal_lahir | date         | YES  |     | NULL    |       |
| alamat        | text         | YES  |     | NULL    |       |
| kelas         | varchar(10)  | YES  |     | NULL    |       |
| nilai         | float        | YES  |     | NULL    |       |
+---------------+--------------+------+-----+---------+-------+
8 rows in set (0.020 sec)
MariaDB [(none)]> USE sekolah;
Database changed
MariaDB [sekolah]> INSERT INTO siswa VALUES(
    -> '12100274',
    -> 'FIRDAUS WIGUNA',
    -> 'L',
    -> 'SUBANG',
    -> '2005-08-17',
    -> 'KALIJATI',
    -> '11-RPL-1',
    -> '70.97');
Query OK, 1 row affected (0.018 sec)

MariaDB [sekolah]> INSERT INTO siswa VALUES(
    -> '12100956',
    -> 'SELLY RIZKI APRILA',
    -> 'P',
    -> 'SUBANG',
    -> '2006-04-14',
    -> 'CIJAMBE',
    -> '11-RPL-1',
    -> '80.89');
Query OK, 1 row affected (0.011 sec)

MariaDB [sekolah]> INSERT INTO siswa VALUES(
    -> '12100561',
    -> 'EVI HALIMAH',
    -> 'P',
    -> 'BANDUNG',
    -> '2006-06-02',
    -> 'SUBANG',
    -> '11-RPL-1',
    -> '99.99');
Query OK, 1 row affected (0.011 sec)

MariaDB [sekolah]>  INSERT INTO siswa VALUES(
    -> '12100451',
    -> 'MOHAMAD INDRA ERDIN',
    -> 'L',
    -> 'SUBANG',
    -> '2005-09-22',
    -> 'GEMBOR',
    ->  '11-RPL-1',
    -> '90.88');
Query OK, 1 row affected (0.012 sec)

MariaDB [sekolah]> INSERT INTO siswa VALUES(
    -> '12100418',
    -> 'M DZAKY FIRDAUS',
    -> 'L',
    -> 'PANGALENGAN',
    -> '2006-07-21',
    -> 'BANDUNG',
    -> '11-RPL-1',
    -> '87.90');
Query OK, 1 row affected (0.011 sec)
MariaDB [sekolah]> UPDATE siswa SET
    -> tempat_lahir ="BANDUNG"
    -> WHERE
    -> nis ="12100274";
Query OK, 1 row affected (0.024 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [sekolah]> UPDATE siswa SET
    -> tanggal_lahir ="2005-05-05",
    -> alamat ="BINONG"
    -> WHERE
    -> nis ="12100274";
Query OK, 1 row affected (0.012 sec)
Rows matched: 1  Changed: 1  Warnings: 0
MariaDB [sekolah]> DELETE FROM
    -> siswa WHERE
    -> nis =" 12100274";
Query OK, 0 rows affected (0.010 sec)
MariaDB [sekolah]> select * from siswa;
+----------+---------------------+---------------+--------------+---------------+---------+----------+-------+
| nis      | nama                | jenis_kelamin | tempat_lahir | tanggal_lahir | alamat  | kelas    | nilai |
+----------+---------------------+---------------+--------------+---------------+---------+----------+-------+
| 12100274 | FIRDAUS WIGUNA      | L             | BANDUNG      | 2005-05-05    | BINONG  | 11-RPL-1 | 70.97 |
| 12100418 | M DZAKY FIRDAUS     | L             | PANGALENGAN  | 2006-07-21    | BANDUNG | 11-RPL-1 |  87.9 |
| 12100451 | MOHAMAD INDRA ERDIN | L             | SUBANG       | 2005-09-22    | GEMBOR  | 11-RPL-1 | 90.88 |
| 12100561 | EVI HALIMAH         | P             | BANDUNG      | 2006-06-02    | SUBANG  | 11-RPL-1 | 99.99 |
| 12100712 | SELLY RIZKI APRILA  | P             | SUBANG       | 2006-04-14    | CIJAMBE | 11-RPL-1 | 80.89 |
+----------+---------------------+---------------+--------------+---------------+---------+----------+-------+
5 rows in set (0.009 sec)
Footer
© 2022 GitHub, Inc.
Footer navigation
Terms
Privacy
Security
Status
Docs
Contact GitHub
Pricing
API
Training
Blog
About