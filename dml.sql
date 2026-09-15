INSERT INTO buku (name) VALUES
('Struktur Data dan Algoritma'),
('Dune'),
('Nusantara: Sejarah Indonesia'),
('Filosofi Teras'),
('Atomic Habits'),
('The Psychology of Money'),
('Bumi Manusia'),
('Dasar Desain Grafis'),
('Manga Sejarah Kuno'),
('Biografi Steve Jobs');

INSERT INTO kategori (name) VALUES
('Sains dan Teknologi'),
('Fiksi Ilmiah'),
('Sejarah'),
('Filosofi'),
('Pengembangan Diri'),
('Bisnis dan Keuangan'),
('Sastra dan Bahasa'),
('Seni dan Desain'),
('Komik dan Novel Grafis'),
('Biografi');

INSERT INTO petugas (name) VALUES
('Budi Santoso'),
('Siti Rahmawati'),
('Rian Hidayat'),
('Dewi Lestari'),
('Agus Prasetyo'),
('Nurul Aini'),
('Fajar Ramadhan'),
('Dian Permata'),
('Eko Saputra'),
('Maya Anggraini');

INSERT INTO rak_buku (category_id, buku_id) VALUES
('1', '1'),
('2', '2'),
('3', '3'),
('4', '4'),
('5', '5'),
('6', '6'),
('7', '7'),
('8', '8'),
('9', '9'),
('10', '10');

INSERT INTO peminjaman (petugas_id, buku_id, tanggal_pinjam) VALUES
('1', '1', '2026-08-01 08:30:15'),
('2', '2', '2026-08-03 09:14:22'),
('3', '3', '2026-08-05 10:45:00'),
('1', '4', '2026-08-10 11:20:05'),
('4', '5', '2026-08-12 13:05:40'),
('5', '6', '2026-08-15 14:12:18'),
('6', '7', '2026-08-18 15:33:50'),
('7', '8', '2026-08-20 16:00:10'),
('8', '9', '2026-08-22 10:15:30'),
('9', '10', '2026-08-25 11:45:55');

-- table buku

-- SELECT
--   kategori.name as shelf_name,
--   buku.name as book_name
-- FROM rak_buku
-- JOIN kategori ON kategori.id = rak_buku.category_id
-- JOIN buku ON buku.id = rak_buku.buku_id
-- WHERE rak_buku.category_id = 3