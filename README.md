# Afazi Terapi – Genişletilmiş Web + Android Projesi

Bu sürüm DKT kullanımına yönelik daha kapsamlı bir prototiptir.

## İçerik
- Sözcük bulma + semantik özellik ipuçları
- Kategori üretimi
- Resim adlandırma + 3 basamaklı cueing
- Eylem adlandırma + özne/fiil/nesne ağı
- Cümle kurma
- İşitsel anlama (1–3 aşama)
- Okuduğunu anlama
- Resimli anlatım ve terapist notları
- Danışan profili
- Seans puanı ve modül bazlı performans
- Seans geçmişi (cihazda localStorage)
- JSON dışa aktarma
- İnternetten güncellenebilir `content.json`
- Wikimedia Commons üzerinden dinamik görsel arama
- İsteğe bağlı güvenli AI endpoint bağlantısı
- GitHub Pages dağıtımı
- Capacitor Android paketleme altyapısı

## Web
`www/` klasörü doğrudan statik web uygulamasıdır. GitHub Pages, HTML/CSS/JS dosyalarını repository'den yayınlayabilir.

## İçerik güncelleme
En kolay yöntem `www/content.json` dosyasını GitHub'da güncellemektir. Uygulama her açılışta bu dosyayı internetten yeniden okumayı dener.

İsterseniz Ayarlar → İçerik Yönetimi bölümünden başka bir JSON adresi de verebilirsiniz.

## AI
Kodda AI endpoint desteği vardır. API anahtarını frontend/GitHub Pages içine koymayın. Endpoint'inizin kendi sunucusunda anahtar güvenli tutulmalıdır.

## Android / APK
Proje Capacitor kullanır. Android tarafını oluşturmak için:

```bash
npm install
npx cap add android
npx cap sync android
npx cap open android
```

Debug APK için Android Studio/Android SDK ile `assembleDebug` çalıştırılabilir. GitHub Actions workflow'u `.github/workflows/android-apk.yml` altında hazırdır.

Bu çalışma ortamında Android SDK olmadığı için burada imzalı APK derlenmemiştir; repository GitHub'a gönderildiğinde Actions üzerinden APK artifact'i oluşturulabilir.
