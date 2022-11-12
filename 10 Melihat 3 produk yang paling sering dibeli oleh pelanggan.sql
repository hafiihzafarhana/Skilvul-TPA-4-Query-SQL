use hafi_store;

SELECT keranjang.id_barang, SUM(keranjang.kuantitas) AS jumlah_barang, barang.nama_barang FROM keranjang
INNER JOIN barang ON
keranjang.id_barang = barang.id_barang
GROUP BY id_barang
ORDER BY SUM(keranjang.kuantitas) DESC
LIMIT 3
;