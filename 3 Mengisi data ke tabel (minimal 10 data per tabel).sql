use hafi_store;

INSERT INTO provinsi (nama_provinsi, createdAt) VALUES
("Jawa Timur", "2022-11-11"),
("Jawa Tengah", "2022-11-11"),
("Jawa Barat", "2022-11-11"),
("Aceh", "2022-11-11"),
("Riau", "2022-11-11"),
("Jambi", "2022-11-11"),
("Bengkulu", "2022-11-11"),
("Lampung", "2022-11-11"),
("Banten", "2022-11-11"),
("Maluku", "2022-11-11"),
("Papua", "2022-11-11")
;

INSERT INTO kabupaten (id_provinsi, nama_kabupaten, createdAt) VALUES
("1", "Sidoarjo", "2022-11-11"),
("2", "Pati", "2022-11-11"),
("1", "Mojokerto", "2022-11-11"),
("1", "Gresik", "2022-11-11"),
("2", "Jepara", "2022-11-11"),
("3", "Bandung", "2022-11-11"),
("4", "Pidie", "2022-11-11"),
("1", "Blitar", "2022-11-11"),
("2", "Kudus", "2022-11-11"),
("3", "Bekasi", "2022-11-11"),
("3", "Bogor", "2022-11-11")
;

INSERT INTO kecamatan (id_kabupaten, nama_kecamatan, kode_pos, createdAt) VALUES
("1", "Krian", "61262", "2022-11-11"),
("2", "Batangan", "59186", "2022-11-11"),
("1", "Balongbendo", "61263", "2022-11-11"),
("3", "Dawarblandong", "61354", "2022-11-11"),
("1", "	Buduran", "61252", "2022-11-11"),
("1", "Candi", "61271", "2022-11-11"),
("1", "Gedangan", "61254", "2022-11-11"),
("1", "Krembung", "61275", "2022-11-11"),
("1", "Prambon", "61264", "2022-11-11"),
("1", "Porong", "61274", "2022-11-11"),
("1", "Sedati", "61253", "2022-11-11")
;

INSERT INTO desa (id_kecamatan, nama_desa, createdAt) VALUES
("1", "Watugolong", "2022-11-11"),
("1", "Sidorejo", "2022-11-11"),
("1", "Tropodo", "2022-11-11"),
("1", "Terungwetan", "2022-11-11"),
("1", "Terik", "2022-11-11"),
("1", "Tempel", "2022-11-11"),
("1", "Sidomojo", "2022-11-11"),
("1", "Ponokawan", "2022-11-11"),
("1", "Kraton", "2022-11-11"),
("1", "Gamping", "2022-11-11"),
("1", "Junwangi", "2022-11-11")
;

INSERT INTO asal (id_provinsi, id_kabupaten, id_kecamatan, id_desa, createdAt) VALUES
("1", "1", "1", "1", "2022-11-11"),
("1", "1", "1", "2", "2022-11-11"),
("1", "1", "1", "3", "2022-11-11"),
("1", "1", "1", "4", "2022-11-11"),
("1", "1", "1", "5", "2022-11-11"),
("1", "1", "1", "6", "2022-11-11"),
("1", "1", "1", "7", "2022-11-11"),
("1", "1", "1", "8", "2022-11-11"),
("1", "1", "1", "9", "2022-11-11"),
("1", "1", "1", "10", "2022-11-11"),
("1", "1", "1", "11", "2022-11-11")
;

INSERT INTO pengguna (id_asal, nama_pengguna, createdAt) VALUES
("1", "Joko", "2022-11-11"),
("2", "Ilham", "2022-11-11"),
("3", "Putra", "2022-11-11"),
("4", "Putri", "2022-11-11"),
("5", "Jamal", "2022-11-11"),
("6", "Ana", "2022-11-11"),
("7", "Karis", "2022-11-11"),
("8", "Udin", "2022-11-11"),
("9", "Melia", "2022-11-11"),
("10", "Abi", "2022-11-11")
;

INSERT INTO kategori_barang (nama_kategori, catatan, createdAt) VALUES
("Makanan", "Khusus untuk makanan ringat dan berat", "2022-11-11"),
("Minuman", "Khusus untuk minuman gelas dan botol", "2022-11-11"),
("Buah", "Khusus untuk buah-buahan", "2022-11-11"),
("Sayur", "Khusus untuk sayur mayur", "2022-11-11"),
("Obat", "Khusus untuk obat anak dan dewasa", "2022-11-11"),
("Elektronik", "Khusus alat elektronik", "2022-11-11"),
("Perawatan Pria", "Khusus untuk alat merawat tubuh pria", "2022-11-11"),
("Perawatan Wanita", "Khusus untuk alat merawat tubuh wanita", "2022-11-11"),
("Peralatan Sekolah", "Khusus untuk alat belajar siswa dan guru", "2022-11-11"),
("Peralatan Bayu", "Khusus untuk barang kebutuhan bayi", "2022-11-11")
;

INSERT INTO barang (id_kategori_barang, nama_barang, stok, harga, createdAt) VALUES
("1", "Chitato Sapi Panggang", "100", "11000", "2022-11-11"),
("2", "Teh Pucuk", "100", "7000", "2022-11-11"),
("1", "Lays Rumput Laut", "100", "13000", "2022-11-11"),
("3", "Pisang Ambon 1 Kg", "100", "15000", "2022-11-11"),
("9", "Buku Sidu", "100", "3000", "2022-11-11"),
("4", "Wortel 1 Kg", "100", "9000", "2022-11-11"),
("5", "Promag", "100", "13000", "2022-11-11"),
("2", "Teh Koak", "100", "6000", "2022-11-11"),
("1", "Oishi", "100", "11000", "2022-11-11"),
("1", "Potatoes", "100", "11000", "2022-11-11")
;

INSERT INTO barang (id_kategori_barang, nama_barang, stok, harga, createdAt) VALUES
("2", "Cincau", "100", "6000", "2022-11-11"),
("2", "Indomilk", "100", "5000", "2022-11-11")
;

INSERT INTO keranjang (id_keranjang, id_pengguna, id_barang, kuantitas, sub_total) VALUES
("1", "1", "1", "2", "22000"),
("2", "2", "2", "3", "21000"),
("3", "1", "1", "3", "33000"),
("3", "1", "2", "1", "7000"),
("4", "4", "5", "2", "6000"),
("5", "1", "7", "1", "13000"),
("6", "5", "10", "1", "11000"),
("7", "1", "9", "1", "11000"),
("8", "6", "4", "1", "15000"),
("9", "7", "6", "1", "9000"),
("10", "1", "3", "1", "13000")
;

INSERT INTO keranjang (id_keranjang, id_pengguna, id_barang, kuantitas, sub_total) VALUES
("12", "1", "1", "2", "22000")
;

INSERT INTO riwayat_transaksi (id_keranjang, total, createdAt) VALUES
("1", "22000", "2022-11-11"),
("2", "21000", "2022-11-11"),
("3", "40000", "2022-11-11"),
("4", "6000", "2022-11-11"),
("5", "13000", "2022-11-11"),
("6", "11000", "2022-11-11"),
("7", "11000", "2022-11-11"),
("8", "15000", "2022-11-11"),
("9", "9000", "2022-11-11"),
("10", "13000", "2022-11-11")
;

INSERT INTO riwayat_transaksi (id_keranjang, total, createdAt) VALUES
("12", "22000", "2022-04-11")
;