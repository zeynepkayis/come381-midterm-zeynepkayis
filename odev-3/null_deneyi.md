# NULL Deneyi
## Deney 1
- Tahminim: COUNT(*) tum satirlari sayarken COUNT(phone) yalnizca telefon degeri bos (NULL) olmayan satirlari sayacaktir.
- Sonuc: COUNT(*) degeri toplam musteri sayisini, COUNT(phone) ise dolu telefon kayit sayisini dondurdu.
- Yorum: NULL bir deger olmadigi icin COUNT(sutun) tarafindan sayilmaz; bu nedenle COUNT(*) ile COUNT(phone) arasinda fark olusur.
## Deney 2
- Tahminim: AVG(age) yalnizca NULL olmayan yas degerlerinin ortalamasini alirken SUM(age) / COUNT(*) toplam yasi tum satir sayisina bolecektir.
- Sonuc: AVG(age) degeri, SUM(age) / COUNT(*) oranindan farkli cikti.
- Yorum: AVG toplama fonksiyonlari NULL degerleri yok sayarak yalnizca dolu kayitlara gore ortalama hesaplar; NULL degerlerin bos satir olarak ortalamaya dahil edilmesi sonucu degistirir.
