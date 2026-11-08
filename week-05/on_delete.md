--Ödev 2: On Delete Kuralları ve Açıklamaları

Bu dosyada, ilişkili tablolardaki (örneğin kullanıcı silindiğinde kayıtların veya kursların durumu) 'ON DELETE' davranışları açıklanmıştır:

-**CASCADE:** Ana tablodan bir kayıt silindiğinde, ona bağlı olan tüm alt tablolardaki kayıtlar otomatik olarak silinir.
-**SET NULL:** Ana tablodan bir kayıt silindiğinde, bağlı tablolardaki ilgili alanlar 'NULL' (boş) olarak güncellenir.
-**RESTRICT / NO ACTION:** Ana kaydın silinmesine, eğer ona bağlı alt kayıtlar varsa izin verilmez (önce alt kayıtların silinmesi gerekir).