CREATE TABLE buku (
  id serial PRIMARY KEY,
  name VARCHAR(255) NOT NULL
);

CREATE TABLE kategori (
  id serial PRIMARY KEY,
  name VARCHAR(255) NOT NULL
);

CREATE TABLE rak_buku (
  category_id INT REFERENCES kategori(id),
  buku_id INT REFERENCES buku(id)
);

CREATE TABLE petugas (
  id serial PRIMARY KEY,
  name VARCHAR(255) NOT NULL
);

CREATE TABLE peminjaman (
  id serial PRIMARY KEY,
  petugas_id INT REFERENCES petugas(id),
  buku_id INT REFERENCES buku(id),
  tanggal_pinjam TIMESTAMP NOT NULL
);