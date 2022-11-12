use hafi_store;

DELETE FROM desa WHERE id_desa="11";
DELETE FROM kecamatan WHERE id_kecamatan="11";
DELETE FROM kabupaten WHERE id_kabupaten="11";
DELETE FROM provinsi WHERE id_provinsi="11";
DELETE FROM pengguna WHERE id_pengguna="10";
DELETE FROM asal WHERE id_asal="11";
DELETE FROM kategori_barang WHERE id_kategori_barang="5";
DELETE FROM barang WHERE id_barang="5";
DELETE FROM keranjang WHERE id_keranjang="10" AND id_barang="1";
DELETE FROM riwayat_transaksi WHERE id_riwayat_transaksi="10";