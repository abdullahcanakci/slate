# SLATE DOCS BASE

[Slate Github](https://github.com/slatedocs/slate)

Dokümantasyon `/source/` içinde oluşturulacak ve yapı üzerine değişiklikler orada gerçekleştirilebilir.

Canlı sunucu için docker-compose kullanılarak oluşturulabilir, `http://localhost:4567` ziyaret edilebilir.
```bash
docker-compose up
```

Statik site üretmek için shell erişimi olan ortamlarda `build_static.sh` kullanılabilir. Eğer erişim bulunmuyorsa;

```
docker run --rm -v $PWD/source:/usr/src/app/source -w /usr/src/app/source -v $PWD/build:/usr/src/app/build slate_app bundle exec middleman build --clean
```
kullanılabilir. `slate_app` klasör adına göre güncellenmeli `test => test_app`


