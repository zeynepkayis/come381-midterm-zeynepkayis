--Ödev 2: Constraints (Kısıtlamalar)

-- Örnek bir Check Kısıtlaması (Tablonun yapısına göre uyarlayabiliriz)
-- Örneğin kurs veya kullanıcı yaş/tarih kontrolü gibi kuralları buraya ekliyoruz.


--Ödev 2: Kısıtlamalar (Constraints)
--1. Kayıt tarihinin geçerli bir tarihten sonra olmasını zorunlu kılan kısıtlama
ALTER TABLE enrollments
ADD CONSTRAINT check_enrollment_date
CHECK (enrollment_date >='2024-01-01');

--2. Kurs adının boş bırakılamayacağını (uzunluğunun 0'dan büyük olduğunu) kontrol eden kısıtlama
ALTER TABLE courses
ADD CONSTRAINT check_course_title_length
CHECK (LENGTH(title) > 0);