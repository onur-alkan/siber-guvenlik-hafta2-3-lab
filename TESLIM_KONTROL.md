# Teslim Kontrol Listesi

## Tamamlananlar

- [x] Ogrenci no ile MD5 / SHA-256 / bcrypt listeleri uretildi.
- [x] MD5 8/8 kirildi ve ekran goruntusu alindi.
- [x] SHA-256 8/8 kirildi.
- [x] bcrypt 8/8 kirildi ve ekran goruntusu alindi.
- [x] Hashcat benchmarklari kaydedildi: 133.7 MH/s, 27.84 MH/s, 658 H/s.
- [x] John the Ripper bonus: 8/8, 0 left.
- [x] PKI uretildi ve lab.local sertifikasi dogrulandi.
- [x] Guclu TLS taramasi yapildi.
- [x] Zayif TLS taramasi yapildi.
- [x] CA guvenilmezken MITM reddi `unknown ca` ile dogrulandi.
- [x] CA guvenilirken mitmproxy flow `200 OK` ile dogrulandi.
- [x] Guclu ve zayif HTTPS sunuculari durduruldu.

## Teslimden once yerel Firefox'ta MUTLAKA dogrulanacak

Bu uc madde son ekran goruntusu ile henuz dogrulanmamistir; raporda tamamlanmis gibi iddia edilmemistir.

- [ ] Firefox proxy ayari `No proxy` / sistem varsayilanina donduruldu.
- [ ] mitmproxy kok CA, Firefox Authorities listesinden `Delete or Distrust` ile silindi.
- [ ] `network.proxy.allow_hijacking_localhost` tekrar `false` yapildi ve `network.proxy.no_proxies_on` varsayilana donduruldu.

Bu temizlik dogrulanmadan ogretmene "proxy ayarini kapattim ve mitmproxy CA'sini sildim" beyanini vermeyin.
