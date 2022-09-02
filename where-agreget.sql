SELECT * FROM `siswa` LIMIT 10;
*************************************************************
WHERE alamat = 'KALIJATI' OR tempat_lahir = 'SUBANG';
************************************************************
SELECT * FROM `siswa`
WHERE nilai >= 78;
************************************************************
SELECT * FROM `siswa` WHERE tempat_lahir != 'SUBANG';
*************************************************************
SELECT * FROM `siswa` WHERE tempat_lahir != 'SUBANG'AND nilai >= '80';
**********************************************************
SELECT * FROM `siswa`
WHERE tempat_lahir != 'SUBANG'
AND nilai >= '80' 
AND alamat = 'CIJAMBE';
************************************************************
SELECT * FROM `siswa`
WHERE tanggal_lahir BETWEEN '2005-3-1' AND '2005-10-1'
***************************************************************
SELECT * FROM `siswa` 
WHERE jenis_kelamin = 'P' AND nilai BETWEEN 50 AND  70  ORDER BY nilai DESC;
***************************************************************
SELECT * FROM `siswa` 
WHERE nama LIKE 'A%';
******************************************************************
SELECT * FROM `siswa` 
WHERE nama LIKE '%I';
********************************************************************
SELECT * FROM `siswa` 
WHERE nama LIKE 'A%A';
***********************************************************************
SELECT * FROM `siswa`
WHERE nama LIKE '%PU%';
*******************************************************************
SELECT tempat_lahir FROM `siswa`
GROUP BY tempat_lahir;
**********************************************************************8
SELECT  tempat_lahir, COUNT(tempat_lahir) FROM `siswa`
GROUP BY  tempat_lahir;
***************************************************************
SELECT tempat_lahir, COUNT(tempat_lahir) AS jumlah_orang FROM `siswa` GROUP BY tempat_lahir;
********************************************************************
SELECT jenis_kelamin,
max(nilai) AS nilai_tertinggi ,
MIN(nilai)  AS nilai_tertinggi 
FROM `siswa`
GROUP BY   jenis_kelamin;
********************************************************************
SELECT jenis_kelamin, max(nilai) AS nilai_tertinggi , MIN(nilai) AS nilai_tertinggi , AVG(NILAI) AS nilai_rerata, SUM(nilai) AS nilai_total FROM `siswa` GROUP BY jenis_kelamin;
********************************************************************************
SELECT * FROM siswa WHERE MONTH(tanggal_lahir) = "09";
****************************************************************
SELECT * FROM siswa WHERE YEAR(tanggal_lahir) = "2006";