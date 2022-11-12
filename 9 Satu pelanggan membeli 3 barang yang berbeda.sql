use hafi_store;

INSERT INTO keranjang (id_keranjang, id_pengguna, id_barang, kuantitas, sub_total) VALUES
("11", "1", "1", "1", "11000"),
("11", "1", "2", "1", "7000"),
("11", "1", "3", "1", "13000")
;

-- Tambah data keranjang ke riwayat transaksi
INSERT INTO riwayat_transaksi (id_keranjang, total, createdAt) VALUES
("11", "31000", "2022-11-12")
;
  