use hafi_store;

CREATE TABLE provinsi(
	id_provinsi int NOT NULL AUTO_INCREMENT,
    nama_provinsi varchar(40) NOT NULL,
    createdAt DATE NOT NULL,
    PRIMARY KEY (id_provinsi)
);

CREATE TABLE kabupaten(
	id_kabupaten int NOT NULL AUTO_INCREMENT,
    id_provinsi int NOT NULL,
    nama_kabupaten varchar(40) NOT NULL,
    createdAt DATE NOT NULL,
    PRIMARY KEY (id_kabupaten),
    FOREIGN KEY (id_provinsi) REFERENCES provinsi(id_provinsi)
);

CREATE TABLE kecamatan(
	id_kecamatan int NOT NULL AUTO_INCREMENT,
    id_kabupaten int NOT NULL,
    nama_kecamatan varchar(40) NOT NULL,
    kode_pos int NOT NULL,
    createdAt DATE NOT NULL,
    PRIMARY KEY (id_kecamatan),
    FOREIGN KEY (id_kabupaten) REFERENCES kabupaten(id_kabupaten)
);

CREATE TABLE desa(
	id_desa int NOT NULL AUTO_INCREMENT,
    id_kecamatan int NOT NULL,
    nama_desa varchar(40) NOT NULL,
    createdAt DATE NOT NULL,
    PRIMARY KEY (id_desa),
    FOREIGN KEY (id_kecamatan) REFERENCES kecamatan(id_kecamatan)
);

CREATE TABLE asal(
	id_asal int NOT NULL AUTO_INCREMENT,
    id_provinsi int NOT NULL,
    id_kabupaten int NOT NULL,
    id_kecamatan int NOT NULL,
    id_desa int NOT NULL,
    createdAt DATE NOT NULL,
    PRIMARY KEY (id_asal),
    FOREIGN KEY (id_provinsi) REFERENCES provinsi(id_provinsi),
    FOREIGN KEY (id_kabupaten) REFERENCES kabupaten(id_kabupaten),
    FOREIGN KEY (id_kecamatan) REFERENCES kecamatan(id_kecamatan),
    FOREIGN KEY (id_desa) REFERENCES desa(id_desa)
);

CREATE TABLE pengguna(
	id_pengguna int NOT NULL AUTO_INCREMENT,
    id_asal int NOT NULL,
    nama_pengguna varchar(40) NOT NULL,
    createdAt DATE,
    PRIMARY KEY (id_pengguna),
    FOREIGN KEY (id_asal) REFERENCES asal(id_asal)
);

CREATE TABLE kategori_barang(
	id_kategori_barang int NOT NULL AUTO_INCREMENT,
    nama_kategori varchar(25) NOT NULL,
    catatan text NOT NULL,
    createdAt DATE,
    PRIMARY KEY (id_kategori_barang)
);

CREATE TABLE barang(
	id_barang int NOT NULL AUTO_INCREMENT,
    id_kategori_barang int NOT NULL,
    nama_barang varchar(40) NOT NULL,
    stok SMALLINT NOT NULL,
    harga int NOT NULL,
    createdAt DATE,
    PRIMARY KEY (id_barang),
    FOREIGN KEY (id_kategori_barang) REFERENCES kategori_barang(id_kategori_barang)
);

CREATE TABLE keranjang(
	id_keranjang int NOT NULL,
    id_pengguna int NOT NULL,
    id_barang int NOT NULL,
    kuantitas SMALLINT NOT NULL,
    sub_total int NOT NULL,
    FOREIGN KEY (id_barang) REFERENCES barang(id_barang),
    FOREIGN KEY (id_pengguna) REFERENCES pengguna(id_pengguna)
);

CREATE TABLE riwayat_transaksi(
	id_riwayat_transaksi int NOT NULL AUTO_INCREMENT,
    id_keranjang int NOT NULL,
    total int NOT NULL,
    createdAt DATE NOT NULL,
    PRIMARY KEY (id_riwayat_transaksi)
);

desc barang;