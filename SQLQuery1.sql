-- 1. Tüm öğrencilerin ad, soyad ve not ortalamasını getir
SELECT ad, soyad, not_ortalamasi 
FROM ogrenciler


-- 2. Sadece İstanbul’da okuyan öğrencileri getir
SELECT * 
FROM ogrenciler 
WHERE sehir = 'İstanbul'


-- 3. Not ortalaması 3.50’den yüksek olan öğrencileri getir
SELECT * 
FROM ogrenciler 
WHERE not_ortalamasi > 3.50


-- 4. Öğrencileri not ortalamasına göre büyükten küçüğe sırala
SELECT * 
FROM ogrenciler 
ORDER BY not_ortalamasi DESC


-- 5. Sadece Bilgisayar Mühendisliği bölümündeki öğrencilerin ad, soyad ve notunu getir
SELECT ad, soyad, not_ortalamasi 
FROM ogrenciler 
WHERE bolum = 'Bilgisayar Mühendisliği'


-- 6. Ankara’da okuyan ve notu 3.00’den yüksek olan öğrencileri getir
SELECT * 
FROM ogrenciler 
WHERE sehir = 'Ankara' AND not_ortalamasi > 3.00


-- 7. Öğrencileri şehre göre A’dan Z’ye, aynı şehirdeyse nota göre büyükten küçüğe sırala
SELECT * 
FROM ogrenciler 
ORDER BY sehir ASC, not_ortalamasi DESC


-- 8. İlk 10 öğrenciyi getir
SELECT * 
FROM ogrenciler 
LIMIT 10


-- 9. Tabloda kaç farklı şehir var?
SELECT DISTINCT sehir 
FROM ogrenciler


-- 10. Kız öğrencilerden notu 3.70 ve üzeri olanları, notuna göre büyükten küçüğe sırala
SELECT * 
FROM ogrenciler 
WHERE cinsiyet = 'K' AND not_ortalamasi >= 3.70 
ORDER BY not_ortalamasi DESC
