use hafi_store;

UPDATE provinsi SET nama_provinsi="Gorontalo" WHERE id_provinsi="11";
UPDATE kabupaten SET nama_kabupaten="Gorontalo", id_provinsi="11" WHERE id_kabupaten="11";
UPDATE kecamatan SET id_kabupaten="11", nama_kecamatan="Asparaga", kode_pos="96221" WHERE id_kecamatan="11";
UPDATE desa SET id_kecamatan="11", nama_desa="Prima" WHERE id_desa="11";
UPDATE asal SET id_provinsi="11", id_kabupaten="11", id_kecamatan="11", id_desa="11" WHERE id_asal="11";
UPDATE pengguna SET id_asal="11", nama_pengguna="Hafi Ihza Farhana" WHERE id_pengguna="10";
UPDATE kategori_barang SET nama_kategori="Obat-Obatan" WHERE id_kategori_barang="5";
UPDATE barang SET nama_barang="Teh Onglong", stok="85" WHERE id_barang="2";
UPDATE keranjang SET id_barang="1", kuantitas="2", sub_total="22000" WHERE id_keranjang="10" AND id_barang="3";
UPDATE riwayat_transaksi SET total="22000" WHERE id_riwayat_transaksi="10";
