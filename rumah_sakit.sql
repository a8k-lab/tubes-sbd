-- SETUP
CREATE DATABASE rumah_sakit;

USE rumah_sakit;

DROP TABLE IF EXISTS dokter;
DROP TABLE IF EXISTS pasien;
DROP TABLE IF EXISTS kunjungan;


-- DDL
CREATE TABLE dokter (
    id_dokter INT AUTO_INCREMENT PRIMARY KEY,
    nama_dokter VARCHAR(100) NOT NULL,
    spesialisasi VARCHAR(50),
    no_telepon VARCHAR(15)
);

CREATE TABLE pasien (
    id_pasien INT AUTO_INCREMENT PRIMARY KEY,
    nama_pasien VARCHAR(100) NOT NULL,
    umur INT,
    jenis_kelamin CHAR(1),
    no_telepon VARCHAR(15)
);

CREATE TABLE kunjungan (
    id_kunjungan INT AUTO_INCREMENT PRIMARY KEY,
    id_pasien INT,
    id_dokter INT,
    tanggal_kunjungan DATE NOT NULL,
    diagnosa VARCHAR(255),
    biaya_kunjungan DECIMAL(10, 2),
    FOREIGN KEY (id_pasien) REFERENCES pasien(id_pasien) ON DELETE CASCADE,
    FOREIGN KEY (id_dokter) REFERENCES dokter(id_dokter) ON DELETE SET NULL
);


-- DML
INSERT INTO dokter (nama_dokter, spesialisasi, no_telepon) VALUES
('Dr. Abdul Malik', 'Kardiologi', '081234567890'),
('Dr. Putri Galuh Mandarizka', 'Pediatri', '081234567891'),
('Dr. Dimas Adriansyah', 'Bedah Umum', '081234567892'),
('Dr. Ana Zulfia', 'Neurologi', '081234567893'),
('Dr. Eko Wijaya', 'Ginekologi', '081234567894'),
('Dr. Fajar Prasetyo', 'Onkologi', '081234567895'),
('Dr. Gita Saraswati', 'Psikiatri', '081234567896'),
('Dr. Herman Suwandi', 'Oftalmologi', '081234567897'),
('Dr. Indra Kusuma', 'Orthopedi', '081234567898'),
('Dr. Joko Waluyo', 'Pulmonologi', '081234567899'),
('Dr. Kartika Dewi', 'Dermatologi', '081234567800'),
('Dr. Laila Haris', 'Gastroenterologi', '081234567801'),
('Dr. Mahmud Alwi', 'Rehabilitasi Medis', '081234567802'),
('Dr. Nisa Rahma', 'Urologi', '081234567803'),
('Dr. Oka Gunawan', 'Radiologi', '081234567804'),
('Dr. Putra Wijaya', 'Bedah Saraf', '081234567805'),
('Dr. Qory Wahyuni', 'Endokrinologi', '081234567806'),
('Dr. Rahmat Arifin', 'THT', '081234567807'),
('Dr. Sari Wibowo', 'Kedokteran Gigi', '081234567808'),
('Dr. Taufik Hidayat', 'Anestesiologi', '081234567809'),
('Dr. Usman Prasetyo', 'Kedokteran Jiwa', '081234567810'),
('Dr. Vina Sari', 'Patologi Anatomi', '081234567811'),
('Dr. Wawan Sutrisno', 'Kedokteran Nuklir', '081234567812'),
('Dr. Xenia Prasetya', 'Gizi Klinik', '081234567813'),
('Dr. Yusuf Hakim', 'Kedokteran Fisik', '081234567814'),
('Dr. Zahra Firdaus', 'Bedah Plastik', '081234567815'),
('Dr. Adit Prakoso', 'Kardiologi', '081234567816'),
('Dr. Bayu Mahendra', 'Pediatri', '081234567817'),
('Dr. Cahya Lestari', 'Bedah Umum', '081234567818'),
('Dr. Desi Anggraeni', 'Neurologi', '081234567819'),
('Dr. Edwin Saputra', 'Ginekologi', '081234567820'),
('Dr. Fikri Ahmad', 'Onkologi', '081234567821'),
('Dr. Galih Putra', 'Psikiatri', '081234567822'),
('Dr. Hadi Wijaya', 'Oftalmologi', '081234567823'),
('Dr. Ika Rahman', 'Orthopedi', '081234567824'),
('Dr. Jani Satria', 'Pulmonologi', '081234567825'),
('Dr. Kiki Anjani', 'Dermatologi', '081234567826'),
('Dr. Lia Pratama', 'Gastroenterologi', '081234567827'),
('Dr. Marwan Ridwan', 'Rehabilitasi Medis', '081234567828'),
('Dr. Nando Setiawan', 'Urologi', '081234567829'),
('Dr. Okta Santoso', 'Radiologi', '081234567830'),
('Dr. Prima Putri', 'Bedah Saraf', '081234567831'),
('Dr. Qisthi Andri', 'Endokrinologi', '081234567832'),
('Dr. Riko Pratama', 'THT', '081234567833'),
('Dr. Sinta Dewi', 'Kedokteran Gigi', '081234567834'),
('Dr. Tya Hartini', 'Anestesiologi', '081234567835'),
('Dr. Ulia Mutiara', 'Kedokteran Jiwa', '081234567836'),
('Dr. Vino Pratomo', 'Patologi Anatomi', '081234567837'),
('Dr. Windi Ardi', 'Kedokteran Nuklir', '081234567838'),
('Dr. Xeno Nugraha', 'Gizi Klinik', '081234567839'),
('Dr. Yoga Rahman', 'Kedokteran Fisik', '081234567840'),
('Dr. Zaki Wahyu', 'Bedah Plastik', '081234567841'),
('Dr. Aldi Permana', 'Kardiologi', '081234567842'),
('Dr. Bintang Aditya', 'Pediatri', '081234567843'),
('Dr. Candra Dewi', 'Bedah Umum', '081234567844'),
('Dr. Dini Rahman', 'Neurologi', '081234567845'),
('Dr. Elang Satria', 'Ginekologi', '081234567846'),
('Dr. Fahri Hasan', 'Onkologi', '081234567847'),
('Dr. Ghina Lestari', 'Psikiatri', '081234567848'),
('Dr. Hamid Suprapto', 'Oftalmologi', '081234567849'),
('Dr. Indah Pertiwi', 'Orthopedi', '081234567850'),
('Dr. Joko Anwar', 'Pulmonologi', '081234567851'),
('Dr. Kartini Laras', 'Dermatologi', '081234567852'),
('Dr. Leo Adi', 'Gastroenterologi', '081234567853'),
('Dr. Mia Fatimah', 'Rehabilitasi Medis', '081234567854'),
('Dr. Nia Sari', 'Urologi', '081234567855'),
('Dr. Okto Fajar', 'Radiologi', '081234567856'),
('Dr. Putri Anjani', 'Bedah Saraf', '081234567857'),
('Dr. Qisthi Laras', 'Endokrinologi', '081234567858'),
('Dr. Raka Setiawan', 'THT', '081234567859'),
('Dr. Sinta Wibowo', 'Kedokteran Gigi', '081234567860'),
('Dr. Tito Hidayat', 'Anestesiologi', '081234567861'),
('Dr. Ummi Prasetyo', 'Kedokteran Jiwa', '081234567862'),
('Dr. Vira Anjani', 'Patologi Anatomi', '081234567863'),
('Dr. Wahyu Subagio', 'Kedokteran Nuklir', '081234567864'),
('Dr. Xeno Mahendra', 'Gizi Klinik', '081234567865'),
('Dr. Yusuf Firdaus', 'Kedokteran Fisik', '081234567866'),
('Dr. Zeta Pradana', 'Bedah Plastik', '081234567867'),
('Dr. Jordan Myers', 'Onkologi', '081234567111'),
('Dr. Olive Martinez', 'Psikiatri', '081234567111'),
('Dr. Blake Thomas', 'Oftalmologi', '081234567111'),
('Dr. Manuel Casey', 'Orthopedi', '081234567111'),
('Dr. Georgia Reyes', 'Pulmonologi', '081234567111'),
('Dr. Frank Cummis', 'Dermatologi', '081234567111'),
('Dr. Maggie Valdez', 'Gastroenterologi', '081234567111'),
('Dr. Ina Graham', 'Rehabilitasi Medis', '081234567111'),
('Dr. Bertha Martinez', 'Urologi', '081234567111'),
('Dr. Pauline Murphy', 'Radiologi', '081234567111'),
('Dr. Kevin Barnes', 'Bedah Saraf', '081234567111'),
('Dr. Todd Parker', 'Endokrinologi', '081234567111'),
('Dr. Sean Parsons', 'THT', '081234567111'),
('Dr. Caroline Ryan', 'Kedokteran Gigi', '081234567111'),
('Dr. Della Bell', 'Anestesiologi', '081234567111'),
('Dr. Charles Ingram', 'Kedokteran Jiwa', '081234567111'),
('Dr. Tommy Yates', 'Patologi Anatomi', '081234567111'),
('Dr. Josephine Barnes', 'Kedokteran Nuklir', '081234567111'),
('Dr. Donald Brock', 'Gizi Klinik', '081234567111'),
('Dr. Amy Rogers', 'Kedokteran Fisik', '081234567111'),
('Dr Tirta', 'Gizi Klinik', '089111222333'),
('Dr. Richard Lee', 'Gizi Klinik', '087112311237'),
('Dr. Boyke', 'Dermatologi', '081234544452');

INSERT INTO pasien (nama_pasien, umur, jenis_kelamin, no_telepon) VALUES
('Aisha Putri', 25, 'P', '081234567890'),
('Deni Santoso', 30, 'L', '081234567891'),
('Citra Ananda', 22, 'P', '081234567892'),
('Doni Prasetyo', 28, 'L', '081234567893'),
('Erika Wulandari', 35, 'P', '081234567894'),
('Fahmi Hidayat', 40, 'L', '081234567895'),
('Gita Rahma', 31, 'P', '081234567896'),
('Hendra Gunawan', 29, 'L', '081234567897'),
('Indah Pertiwi', 24, 'P', '081234567898'),
('Joko Waluyo', 33, 'L', '081234567899'),
('Kirana Sari', 26, 'P', '081234567800'),
('Lukman Hakim', 37, 'L', '081234567801'),
('Maya Dewi', 22, 'P', '081234567802'),
('Nikita Arista', 30, 'P', '081234567803'),
('Oka Prabowo', 31, 'L', '081234567804'),
('Putu Gede', 29, 'L', '081234567805'),
('Qaisara Rani', 27, 'P', '081234567806'),
('Rudi Setiawan', 38, 'L', '081234567807'),
('Sari Wibowo', 24, 'P', '081234567808'),
('Tari Melati', 26, 'P', '081234567809'),
('Umar Alif', 28, 'L', '081234567810'),
('Vina Anjani', 25, 'P', '081234567811'),
('Wawan Sumarno', 34, 'L', '081234567812'),
('Xena Damayanti', 32, 'P', '081234567813'),
('Yusuf Hakim', 27, 'L', '081234567814'),
('Zahra Lestari', 23, 'P', '081234567815'),
('Ariq Ramadhan', 29, 'L', '081234567816'),
('Bima Santoso', 36, 'L', '081234567817'),
('Cinta Melati', 30, 'P', '081234567818'),
('Dina Mardiana', 25, 'P', '081234567819'),
('Elisa Shinta', 27, 'P', '081234567820'),
('Fadhil Kurnia', 31, 'L', '081234567821'),
('Geri Saputra', 34, 'L', '081234567822'),
('Haniyah Asih', 26, 'P', '081234567823'),
('Iman Maulana', 28, 'L', '081234567824'),
('Jasmine Anissa', 32, 'P', '081234567825'),
('Kamalul Huda', 39, 'L', '081234567826'),
('Lia Salma', 23, 'P', '081234567827'),
('Mina Khairunnisa', 24, 'P', '081234567828'),
('Nadia Ramadhani', 30, 'P', '081234567829'),
('Omar Supriyadi', 35, 'L', '081234567830'),
('Panca Surya', 29, 'L', '081234567831'),
('Qinta Desiana', 26, 'P', '081234567832'),
('Rina Hidayati', 33, 'P', '081234567833'),
('Sinta Maulida', 24, 'P', '081234567834'),
('Taufik Adi', 38, 'L', '081234567835'),
('Ulfa Adawiyah', 22, 'P', '081234567836'),
('Vita Damayanti', 30, 'P', '081234567837'),
('Widianto Nursalim', 34, 'L', '081234567838'),
('Xena Wulandari', 25, 'P', '081234567839'),
('Yani Rahayu', 32, 'P', '081234567840'),
('Zidan Wahyu', 28, 'L', '081234567841'),
('Aisha Rahmi', 29, 'P', '081234567842'),
('Benny Aditya', 36, 'L', '081234567843'),
('Cynthia Dewi', 24, 'P', '081234567844'),
('Dimas Pradana', 30, 'L', '081234567845'),
('Eka Kusuma', 31, 'P', '081234567846'),
('Fadlan Arya', 27, 'L', '081234567847'),
('Gita Novelia', 24, 'P', '081234567848'),
('Husni Mubarak', 29, 'L', '081234567849'),
('Indira Kurnia', 30, 'P', '081234567850'),
('Januar Lestari', 25, 'L', '081234567851'),
('Kiki Maulana', 31, 'P', '081234567852'),
('Lutfi Ardiansyah', 34, 'L', '081234567853'),
('Martha Harapan', 22, 'P', '081234567854'),
('Nina Cempaka', 26, 'P', '081234567855'),
('Oka Prasetya', 35, 'L', '081234567856'),
('Puti Kirana', 28, 'P', '081234567857'),
('Qamar Yani', 29, 'L', '081234567858'),
('Rendy Irawan', 32, 'L', '081234567859'),
('Siti Fadila', 24, 'P', '081234567860'),
('Tomi Suryadi', 30, 'L', '081234567861'),
('Ulya Firdaus', 26, 'P', '081234567862'),
('Vega Ali', 30, 'L', '081234567863'),
('Wanda Puspita', 25, 'P', '081234567864'),
('Yani Ramli', 28, 'L', '081234567865'),
('Zara Melati', 29, 'P', '081234567866'),
('Friederike Klosser', 72, 'P', '0859083610'),
('Patrizia Iacobucci', 61, 'P', '0855002489'),
('Josselyn Hagan', 52, 'L', '0857728148'),
('Roze Hinsche', 21, 'L', '0859494296'),
('Lillis Valois', 27, 'P', '0851454103'),
('Quinta Andreucci', 26, 'P', '0851136143'),
('Brena Ferneley', 42, 'L', '0856398385'),
('Beulah Glanders', 35, 'P', '0851798697'),
('Neil Gentreau', 66, 'L', '0858464206'),
('Hasty McKirton', 30, 'P', '0856682064'),
('Aimee Kynnd', 17, 'P', '0854407056'),
('Rosette MacNockater', 37, 'L', '0859894927'),
('Patricio Hardi', 20, 'P', '0856470634'),
('Keith Heeks', 70, 'L', '0855986175'),
('Alf Proffitt', 28, 'L', '0855537631'),
('Hamlen Basketfield', 39, 'P', '0859382916'),
('Nye Bromage', 75, 'L', '0854109256'),
('Price Sorey', 69, 'L', '0854668503'),
('Gianna Torel', 73, 'L', '0854411756'),
('Lise Sprackling', 67, 'P', '0856740207'),
('Cole Escudier', 25, 'P', '0859201634'),
('Milly Bursnall', 74, 'P', '0857530977'),
('Thibaut Conville', 50, 'P', '0854612325'),
('Ricardo Miles', 44, 'L', '08519991203');

-- randomize data
INSERT INTO kunjungan (id_pasien, id_dokter, tanggal_kunjungan, diagnosa, biaya_kunjungan)
SELECT
    FLOOR(RAND() * (SELECT MAX(id_pasien) FROM pasien) + 1) AS id_pasien,
    FLOOR(RAND() * (SELECT MAX(id_dokter) FROM dokter) + 1) AS id_dokter,
    DATE_ADD('2022-01-01', INTERVAL seq DAY) AS tanggal_kunjungan,
    CASE
        FLOOR(RAND() * 10) + 1
        WHEN 1 THEN 'Demam'
        WHEN 2 THEN 'Batuk'
        WHEN 3 THEN 'Sakit Kepala'
        WHEN 4 THEN 'Maag'
        WHEN 5 THEN 'Pilek'
        WHEN 6 THEN 'Diare'
        WHEN 7 THEN 'Migrain'
        WHEN 8 THEN 'Diabetes'
        WHEN 9 THEN 'Nyeri Sendi'
        ELSE 'Hipertensi'
    END AS diagnosa,
    CASE
        WHEN RAND() < 0.05 THEN ROUND(RAND() * 1000000 + 1000000, 2)
        WHEN RAND() < 0.15 THEN ROUND(RAND() * 500000 + 500000, 2)
        WHEN RAND() < 0.5 THEN ROUND(RAND() * 250000 + 250000, 2)
        ELSE ROUND(RAND() * 100000 + 50000, 2)
    END AS biaya_kunjungan
FROM (
    SELECT a.seq
    FROM (
        SELECT 0 AS seq UNION ALL SELECT 1 UNION ALL SELECT 2 UNION ALL SELECT 3 UNION ALL SELECT 4 UNION ALL
        SELECT 5 UNION ALL SELECT 6 UNION ALL SELECT 7 UNION ALL SELECT 8 UNION ALL SELECT 9
    ) AS a
    CROSS JOIN (
        SELECT 0 AS seq UNION ALL SELECT 10 UNION ALL SELECT 20 UNION ALL SELECT 30 UNION ALL SELECT 40 UNION ALL
        SELECT 50 UNION ALL SELECT 60 UNION ALL SELECT 70 UNION ALL SELECT 80 UNION ALL SELECT 90
    ) AS b
    CROSS JOIN (
        SELECT 0 AS seq UNION ALL SELECT 100 UNION ALL SELECT 200 UNION ALL SELECT 300 UNION ALL SELECT 400 UNION ALL
        SELECT 500 UNION ALL SELECT 600 UNION ALL SELECT 700
    ) AS c
) AS seq_table
WHERE DATE_ADD('2021-01-01', INTERVAL seq DAY) <= '2024-10-10'
LIMIT 1000; -- set the number of rows to insert
