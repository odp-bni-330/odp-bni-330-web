-- SCRIPT untuk membuat database ODP330 pada PostgreSQL
-- 1. Buat database jika belum ada (hanya bisa dijalankan dari database postgres utama)
DO
$$
BEGIN
   IF NOT EXISTS (
      SELECT FROM pg_database WHERE datname = 'odp330'
   ) THEN
      CREATE DATABASE odp330;
   END IF;
END
$$;

-- 2. Buat tabel jika belum ada
CREATE TABLE IF NOT EXISTS member (
    npp VARCHAR(10) PRIMARY KEY,
    nama VARCHAR(100),
    no_hp VARCHAR(20),
    email VARCHAR(100)
);

-- 3. Insert data hanya jika belum ada
INSERT INTO member (npp, nama, no_hp, email)
SELECT * FROM (
    VALUES
    ('T070548', 'ADZKA ZAHRATU PUTRI AS''ARI', '6282287054484', 'Zahratu.Putri@bni.co.id'),
    ('T070549', 'AL IKHSAN NUGRAHA', '6282387340220', 'Ikhsan.Nugraha@bni.co.id'),
    ('T070550', 'ALVARO LOUIS TOMBILAYUK', '6281333325934', 'Alvaro.Tombilayuk@bni.co.id'),
    ('T070551', 'ANDHIKA SURYAMIHARJA', '628987705154', 'Andhika.Suryamiharja@bni.co.id'),
    ('T070552', 'ANDREW', '6282387689700', 'Andrew@bni.co.id'),
    ('T070553', 'ARDHIEFA RACHMANA RAHMAN', '6281333588380', 'Ardhiefa.Rahman@bni.co.id'),
    ('T070554', 'ARIE PRASETYO', '62895333186603', 'Arie.Prasetyo@bni.co.id'),
    ('T070555', 'BARIQ PRADIPA MAHENDRA EKOFANI', '6281232641292', 'Mahendra.Ekofani@bni.co.id'),
    ('T070556', 'BOSTANG PALAGUNA', '6289651524904', 'Bostang.Palaguna@bni.co.id'),
    ('T070557', 'FAHRANUL ADERI', '6285363443207', 'Fahranul.Aderi@bni.co.id'),
    ('T070558', 'FAJRA RIZQULLA', '6282181707745', 'Fajra.Risqulla@bni.co.id'),
    ('T070559', 'FATHYA FATHIN ILLANINGTIYAS', '6285603347745', 'Fathya.Fathin@bni.co.id'),
    ('T070560', 'FAWWAZ HAFIZ SALSABILA', '62859189688597', 'Fawwaz.Salsabila@bni.co.id'),
    ('T070561', 'JEREMY NATHANIEL CHRISTOPHER', '628170020801', 'Jeremy.Christopher@bni.co.id'),
    ('T070562', 'KAUTSAR BAIHAQI AKASYAH', '6282114491217', 'Kautsar.Baihaqi@bni.co.id'),
    ('T070563', 'LOCITA KUMARA SUGIYANA', '6281226442727', 'Locita.Sugiyana@bni.co.id'),
    ('T070564', 'MUHAMMAD AKMAL SHIDQI', '6285171071127', 'Akmal.Shidqi564@bni.co.id'),
    ('T070565', 'MUHAMMAD ARYA REVANSYAH', '6285171184303', 'Arya.Revansyah@bni.co.id'),
    ('T070566', 'MUHAMMAD ROLAND MAULANA', '6281288809329', 'Roland.Maulana@bni.co.id'),
    ('T070567', 'NERISSA ARVIANA PUTRI', '6285156257124', 'Nerissa.Putri@bni.co.id'),
    ('T070568', 'QANITA SYAFIQAH ISHAK', '6281908186710', 'Qanita.Ishak@bni.co.id'),
    ('T070569', 'RIZKI RAHMAN', '628927186365', 'Rizki.Rahman569@bni.co.id'),
    ('T070570', 'SRINESIA CECILIA SITORUS', '6281265049959', 'Srinesia.Sitorus@bni.co.id'),
    ('T070571', 'TITO ALEXSTA', '6282114852228', 'Tito.Alexsta@bni.co.id')
) AS new_data(npp, nama, no_hp, email)
WHERE NOT EXISTS (
    SELECT 1 FROM member m WHERE m.npp = new_data.npp
);
