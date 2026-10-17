# Siber Guvenlik - Hafta 2 ve Hafta 3 Ek Gorev

**Ogrenci:** Onur Alkan  
**Ogrenci No:** 232923044  
**Tarih:** 17 Ekim 2026

Bu depo, Siber Guvenlik dersi Hafta 2 ve Hafta 3 ek gorevlerinin **yerel ve izinli laboratuvar ortaminda** elde edilen rapor ve kanitlarini icerir.

## Kapsam

- Hafta 2: Hashcat ile MD5, SHA-256 ve bcrypt sozluk saldirisi
- Hashcat benchmark karsilastirmasi
- Istege bagli John the Ripper MD5 karsilastirmasi
- Hafta 3: PKI ve `lab.local` sertifikasi
- `sslscan` ile guclu/zayif TLS yapilandirmasi
- `mitmproxy` ile yalnizca `127.0.0.1 / lab.local` uzerinde kontrollu MITM deneyi

## Dogrulanmis temel sonuclar

| Deney | Sonuc |
|---|---:|
| MD5 benchmark | 133.7 MH/s |
| SHA-256 benchmark | 27.84 MH/s |
| bcrypt benchmark | 658 H/s |
| MD5 kirma | 8/8 |
| SHA-256 kirma | 8/8 |
| bcrypt kirma | 8/8 |
| Guclu TLS | Yalnizca TLS 1.3 |
| Zayif TLS | TLS 1.0, 1.1, 1.2, 1.3 |
| MITM - CA guvenilmez | TLS handshake reddedildi (`unknown ca`) |
| MITM - CA guvenilir | `GET https://lab.local:8443/` -> `200 OK` |

## Rapor

- `rapor/Siber_Guvenlik_Hafta2_3_Raporu_Onur_Alkan_232923044.pdf`
- `rapor/Siber_Guvenlik_Hafta2_3_Raporu_Onur_Alkan_232923044.docx`

## Guvenlik ve gizlilik

Bu calismada kullanilan hash'ler ders icin uretilmistir; gercek kullanici parolasi degildir. Bununla birlikte gorev yonergesi geregi ham `ekip_*.txt` dosyalari, Hashcat potfile'lari, PKI ozel anahtarlari ve mitmproxy CA ozel anahtarlari depoya eklenmemistir. Saglanan ders betikleri de yeniden dagitilmamistir.

**Depo PRIVATE tutulmalidir**, cunku rapor ekran goruntulerinde laboratuvar icin uretilen parola cozumleri gorunmektedir.

## 6.1 hakkinda not

Yonergede karsilastirilmasi istenen `gorev2_istemci.py` dosyasi dagitilan ek gorev paketinde ve mevcut laboratuvar konumlarinda bulunamadi. Bu nedenle raporda bu karsilastirma uydurulmamis, eksiklik acikca belirtilmistir.
