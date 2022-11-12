use hafi_store;

-- id pengguna, nama pengguna, total belanja, total rata-rata belanja dalam waktu 30 hari kebelakang 
SELECT pengguna.id_pengguna, pengguna.nama_pengguna, SUM(riwayat_transaksi.total) AS total, 
SUM(riwayat_transaksi.total)/count(distinct(keranjang.id_keranjang)) AS rata_rata, 
count(distinct(keranjang.id_keranjang)) AS jumlah_transaksi FROM keranjang
INNER JOIN riwayat_transaksi ON
keranjang.id_keranjang = riwayat_transaksi.id_keranjang
INNER JOIN pengguna ON
keranjang.id_pengguna = pengguna.id_pengguna
WHERE riwayat_transaksi.createdAt > (DATE_SUB(CURDATE(),INTERVAL 1 MONTH))
GROUP BY pengguna.id_pengguna
;