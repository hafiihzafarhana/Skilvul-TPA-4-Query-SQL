use hafi_store;

UPDATE provinsi SET nama_provinsi="Gorontalo" WHERE id_provinsi="11";
UPDATE kabupaten SET nama_kabupaten="Gorontalo", id_provinsi="11" WHERE id_kabupaten="11";
UPDATE kecamatan SET id_kabupaten="11", nama_kecamatan="Asparaga", kode_pos="96221" WHERE id_kecamatan="11";