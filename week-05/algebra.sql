--Ödev 2: İlişkisel Cebir Sorguları (Relational Algebra)

--1. Seçim (Selection - Sigma σ) Örneği: Belirli bir koşulu sağlayan kursları listeleme
SELECT *
FROM courses
WHERE instructor_id = 1;

--2. Projeksiyon (Projection - Pi π) Örneği: Tablodan sadece belirli sütunları (kurs adı) seçme 
SELECT title
FROM courses;

--3. Birleştirme (Join - ⨝) Örneği: Kayıtlar tablosunu kurslar tablosuyla birleştirme 
SELECT enrollments.id, courses.title, enrollments.check_enrollment_date
FROM enrollments
JOIN courses ON enrollments.course_id = courses.id;

