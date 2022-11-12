use hafi_store;

SELECT  kategori_barang.id_kategori_barang, kategori_barang.nama_kategori, 
COUNT(barang.id_kategori_barang) AS banyak_barang FROM barang
INNER JOIN kategori_barang ON
barang.id_kategori_barang = kategori_barang.id_kategori_barang
GROUP BY barang.id_kategori_barang ORDER BY count(*)
;

select barang.id_kategori_barang, kategori_barang.nama_kategori, count(barang.id_kategori_barang) as jumlah from barang
INNER JOIN kategori_barang ON 
barang.id_kategori_barang = kategori_barang.id_kategori_barang
group by barang.id_kategori_barang
having count(*) = (select max(jumlah) from 
(select count(*) as jumlah from barang group by id_kategori_barang) barang)