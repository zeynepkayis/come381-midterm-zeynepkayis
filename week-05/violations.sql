--Ödev 2: Kısıtlamaları İhlal Testleri (Violations)

--1. Geçersiz bir tarih girerek kayıt olma denemesi (Kısıtlamaya takılıp hata vermeli)
INSERT INTO enrollments (user_id, course_id, enrollment_date)
VALUES (1, 1, '2023-05-15');

--2. Boş (uzunluğu 0 olan) kurs adı ekleme denemesi (Kısıtlamaya takılıp hata vermeli)
INSERT INTO courses (title,instructor_id)
VALUES ('',1);