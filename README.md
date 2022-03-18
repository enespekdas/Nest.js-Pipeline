##Nest-js Demo

Bu uygulama ekranda " hello world " yazan basit bir Nest.JS uygulamasıdır. 

Uygulama Talimatları : 

Main ve Develop Branch'leri bulunmaktadır. Developer'lar develop branc'ine feature branch'ler üzerinden yeni özellikler ekleyebilirler. 

Feature Branch -> Develop Branch -- Yapılacak Olan CI CD adımları : 

Lint kuralları kontrol icin : yarn lint
Formatlama kurallarına uyum icin : yarn format:check
Unit test kontrolleri icin : yarn test:cov
E2E testleri icin : yarn test:e2e

Tüm kontroller geçtikten sonra Pull Request develop branch ile birleştiğinde aşağıdaki adımlar yapılacak :

Image builder ile Dockerfile'dan container image build olacak.
Build edilen image public/private repository'e deploy edilecek
Helm paket yöneticisi ile uygulama paketlenecek.
ArgoCD ile Kubernetes Cluster üzerinde uygulama deploy edilecek.

Bu objeler kubernetes üzerinde nest-js-test namespace'inde oluşturulacak.
Kubernetes üzerinde  " /nest-js/test " url'i ile ingress objesi üzerinden yayına çıkacak. 

Develop Branch -> Main Branch -- Yapılacak Olan CI CD adımları : 

Lint kuralları kontrol icin : yarn lint
Formatlama kurallarına uyum icin : yarn format:check
Unit test kontrolleri icin : yarn test:cov
E2E testleri icin : yarn test:e2e

Tüm kontroller geçtikten sonra Pull Request develop branch ile birleştiğinde aşağıdaki adımlar yapılacak :

Image builder ile Dockerfile'dan container image build olacak.
Build edilen image public/private repository'e deploy edilecek
Helm paket yöneticisi ile uygulama paketlenecek.
ArgoCD ile Kubernetes Cluster üzerinde uygulama deploy edilecek.

Bu objeler kubernetes üzerinde nest-js-prod namespace'inde oluşturulacak.
Kubernetes üzerinde  " /nest-js/prod " url'i ile ingress objesi üzerinden yayına çıkacak. 

NOT: Dependency'lerin kurulmasi icin proje dizininde yarn komutunun calistirilmasi gerekiyor.

NOT: Uygulama yarn start:prod komutu ile ayaga 3000 portunda ayaga kalkiyor.