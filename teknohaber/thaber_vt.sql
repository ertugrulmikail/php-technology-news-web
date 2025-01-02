-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 26 Ara 2023, 23:09:27
-- Sunucu sürümü: 10.4.28-MariaDB
-- PHP Sürümü: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `thaber_vt`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `haberler`
--

CREATE TABLE `haberler` (
  `id` int(11) NOT NULL,
  `baslik` varchar(250) NOT NULL,
  `resim` varchar(250) NOT NULL,
  `icerik` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `haberler`
--

INSERT INTO `haberler` (`id`, `baslik`, `resim`, `icerik`) VALUES
(29, 'Düşük Bütçeli 65W 14. Nesil İşlemciler Yakında Piyasada Olacak', 'img/1702917846_5156.png', '2024 Ocak ayı ve tabii CES 2024 vesilesiyle birlikte sayısız yeni donanım bizlerle olacak. CES 2024’te NVIDIA, AMD ve Intel gibi devlerin yanı sıra birçok şirket sahne alacak. Yeni ekran kartları ve işlemciler yolda. Bunların arasında 14. Nesil Core “Raptor Lake Refresh” masaüstü işlemciler de yer alıyor.\r\n\r\nDaha öncesinde Raptor Lake Refresh serisi tanıtıldı diyebilirsiniz. Birkaç ay önce hız aşırtma imkanı sunan “K serisi” işlemciler ve “Z serisi” anakartlar tanıtılmıştı. Bu kez sırada daha uygun fiyatlı, hız aşırtma yetenekleri olmayan ve stok soğutucu içeren işlemci modelleri geliyor. Intel yeni 65W çiplerini 8 Ocak 2024 tarihinde satın alınabilir hale getirmeyi planlıyor. Bu tarihlerde inceleme videoları da yayınlanmaya başlayacak.\r\n\r\nDüzenlenmiş'),
(28, 'Intel CEO’su, Yapay Zeka Konusunda NVIDIA’ya Yüklendi', 'img/1702917805_5322.png', 'Intel CEO’su Pat Gelsinger, New York’ta düzenlenen bir etkinlikte Core Ultra ve 5. Nesil Xeon veri merkezi yongalarının lansmanı yapılırken yapay zeka dünyası hakkında konuştu. Gelsinger konuşmalarında NVIDIA’ya da göndermede bulundu. Intel’in patronu, yapay zeka için çıkarım teknolojisinin derin öğrenme ve model eğitiminden daha önemli olacağını iddia ederek NVIDIA’nın CUDA teknolojisine sert çıktı.\r\n\r\nNASDAQ’ta soruları yanıtlayan Gelsinger, yeşil takımın AI eğitimi alanındaki CUDA hakimiyetinin sonsuza kadar sürmeyeceğini öne sürdü. Ayrıca MLIR, Google ve OpenAI gibi örneklere atıfta bulunarak AI eğitimini daha açık hale getirmek için “Pythonic programlama katmanına” geçtiklerini öne sürdü.\r\n\r\n“Biliyorsunuz, tüm sektör CUDA pazarını ortadan kaldırmak için motive olmuş durumda. CUDA hendeğinin sığ ve küçük olduğunu düşünüyoruz. Çünkü endüstri, geniş kapsamlı eğitim, inovasyon, veri bilimi vb. için daha geniş bir teknoloji seti getirmeye motive olmuş durumda.”\r\n\r\nÖzetle Intel sadece yapay zeka modellerinin eğitimine güvenmiyor, bunun yerine yüksek performansta yapay zeka çıkarımı yapmanın daha doğru bir yol olduğunu düşünüyor. Konuyla bağlantılı olarak Pat Gelsinger sözlerine şöyle devam etti:\r\n\r\n“Sonuç çıkarma gerçekleştiğinde, modeli eğittikten sonra CUDA bağımlılığı yok. Tüm mesele, bu modeli iyi çalıştırabiliyor musunuz?”\r\n\r\nŞirketin başkan yardımcısı ve Veri Merkezi ve Yapay Zeka Grubu genel müdürü Sandra Rivera, Intel’in veri merkezlerinden PC’lere uzanan alanlarda faaliyet gösterdiğini dile getirdi. Bunun yanında Intel hacimli üretim yapabilen bir şirket. Rivera da bu sebeple Intel’in tercih edilen bir ortak hale gelebileceğini düşünüyor. Ekleme yapan Gelsinger, NVIDIA ve AMD de dahil olmak üzere her şirketle gerçekleşebilecek ticari fırsatların peşine düşeceklerini, ayrıca bir dökümhane oyuncusu olacaklarını söyledi.'),
(30, 'Core Ultra İşlemcileri Destekleyen Intel Grafik Sürücüsü Çıktı', 'img/1702917889_4723.png', 'Intel grafik ekibi yeni bir WHQL imzalı sürücü daha yayınladı. 31.0.101.5081/5122 WHQL Arc sürücüleriyle birlikte yakın zamanda duyurulan “Meteor Lake” kod adlı Core Ultra mobil işlemcilere destek sağlanıyor. Daha önce söylediğimiz gibi, mavililerin yeni dizüstü bilgisayar çipleri Arc Xe-LPG entegre grafik mimarisini kullanacak. Yani Arc grafikleri şimdi dahili olarak mobil yongalarda.\r\n\r\nSon sürücü Battlefield 1 1080p çözünürlükte performansı %30’a kadar artırıyor. Bunun yanında, Arc Control paneli için çeşitli hata düzeltmelerinin yanı sıra üç ayrı yeni gelişme görüyoruz.\r\n\r\n'),
(31, 'Instagram, Hikayelerinizi Şablona Dönüştürebileceğiniz Yeni Bir Özelliği Kullanıma Sundu', 'img/1702917908_1891.png', 'Instagram, paylaştığınız bir hikayeyi başkalarının ekleyebileceği özelleştirilebilir bir şablona dönüştürmenize olanak tanıyan yeni özelliği kullanıma sundu. Hikaye şablonunuza birbirinden farklı GIF, fotoğraf ve metin gibi çeşitli öğeler ekleyebilirsiniz. Instagram bu yeni özelliğine “Sen de Ekle” adını veriyor.\r\n\r\nInstagram hesabınızda bir hikaye şablonu yayınlamak için hikaye oluştururken çıkartmaların bulunduğu sekmeyi açın. Daha sonrasında hikayenize başkalarının da katkıda bulunabilmesi için Sen de Ekle seçeneğini seçin. Daha sonrasında istediğiniz farklı içerikleri seçip hikayenize ekleyebilirsiniz.\r\n\r\nSizin eklediğiniz içerikleri başkaları düzenleyemez ancak farklı kullanıcılar da sizin oluşturduğunuz şablona içerik ekleyebilirler.'),
(32, 'Microsoft Edge 121 Beta Olarak Yayınlandı', 'img/1702918098_5012.png', 'Microsoft, Edge 120 sürümünü kararlı olarak yayınladıktan kısa bir süre sonra Edge 121 sürümünü Beta kanalında tarayıcıyı test edenlere sundu. En son kararlı sürüm gibi Edge 121 Beta da kurumsal müşterilere ve politika değişikliklerine odaklanıyor.\r\n\r\nBunun yanında normal kullanıcıları etkileyecek bir şey var: Güncelleme deneyimi sekmesi ayarlar sayfasından tarayıcı temelleri bölümüne taşınıyor. Microsoft bunun özelliklerin görünürlüğünü artıracağını ve kullanıcı deneyimini geliştireceğini söylüyor. Bazı yeni özellikler şu şekilde:\r\n\r\nÇeşitli hata ve performans güncellemeleri yapıldı.\r\nGüncelleme deneyimi sekmesi tarayıcı temelleri bölümüne taşınıyor. Mevcut Edge güncellemeleri hakkında uyarılar tarayıcı temelleri sekmesinden gelecek.\r\nYerleşik typosquatting denetleyicisi, kullanıcıları kötü amaçlı bir web sayfasına yönlendirebilecek popüler bir alan adının yanlış yazılması durumunda kullanıcıları uyaracak.\r\nSon olarak Microsoft Edge 121 sürümüne resmi <a href=\'https://www.microsoft.com/en-us/edge/download/insider?form=MA13FJ\'>Edge Insider</a> web sitesinden ulaşabileceğinizi ekleyelim.'),
(33, 'Türkiye’ye de Gelmesi Beklenen Nothing Phone 2a’nın Tasarımı ve Özellikleri Ortaya Çıktı', 'img/1702918247_1270.png', 'Çıkardığı ilk telefonla dikkatleri üzerine çekmeyi başaran Nothing, Phone (2a) modeliyle de bunu devam ettirecek gibi görünüyor.\r\nAlışık olmadığımız tasarımlara sahip ürünleriyle karşımıza çıkan Nothing firması, hem yazılım hem de donanım karşısında bizi şaşırtıyor. Akıllı telefonların haricinde kablosuz kulaklıklar da üreten şirket, geçtiğimiz haftalarda hiç beklemediğimiz bir şekilde iş kıyafeti koleksiyonunu tanıtmıştı.\r\n\r\nBu koleksiyon internette pek de kabul görmedi. Biz de odağımızı tekrardan akıllı telefonlara çevirmişken şirketin Nothing Phone (2a) isimli bir sonraki akıllı telefon modelinin tasarımı ortaya çıktı. Bunun haricinde donanım tarafında da belli başlı bilgiler var.\r\n\r\n<h2>İlk defa MediaTek işlemci kullanılacak.</h2>\r\n\r\nNothing Phone (1) modelinden alışık olduğumuz LED’leri (2a) modelinde de görüyoruz. Videodan gördüğümüz üzere telefon üzerinde, kamera haznesini saran 3 adet LED şeridi var. Çift kameranın yer aldığı kısımda ise kameralar dikey olarak değil, yatay olarak yerleştirilmiş. 6,7 inç boyutundaki ekranda ise delikli ekran tasarımı bizi karşılıyor. Telefonun model isminin A142 olacağı da paylaşımda belirtilmiş.\r\n\r\nŞimdi gelelim donanıma. Nothing Phone (2a) modelinde, 8 çekirdekli MediaTek Dimensity 7200 işlemcisi kullanılacak. GPU tarafında ise Mali-G610 MP4 modeli göze çarpıyor.'),
(34, 'İlk MicroLED Ekranlı Apple Watch Hakkında Yeni Detaylar Ortaya Çıktı: Ekran Çok Daha Büyük Olacak', 'img/1702918345_2204.png', 'Apple’ın ilk microLED ekranlı Apple Watch modeliyle ilgili yeni bilgiler gün yüzüne çıktı. İddiaya göre Ultra model olacak cihaz, %10 daha büyük ekran ve daha yüksek bir fiyata 2026’da tanıtılacak.\r\nApple’ın akıllı saatleri Apple Watch’larda OLED ekranları bırakıp microLED’e geçmek istediği uzun zamandır biliniyordu. Yaz aylarında çıkan sızıntılarda bunun ilk olarak Ultra modelde gerçekleşeceği ve ilk microLED’li Apple Watch Ultra’nın 2026’da, yani beklenenden daha geç geleceği öne sürülmüştü.\r\n\r\nBugün ise bu konuda yeni bilgiler ortaya çıktı. TrendForce’un tedarik zincirine dayandırdığı kaynaklar, microLED’li Apple Watch Ultra’yla ilgili önemli detaylara ulaşmamızı sağladı.\r\n\r\n<h3>Ekran büyüyecek, fiyat artacak</h3>\r\n\r\nSızıntıya göre Apple Watch Ultra, tahmin edildiği gibi 2026 yılında tanıtılacak. Buna ek olarak şirket, yeni cihazda çok daha büyük bir ekran kullanacak. İddia, microLED’li Apple Watch Ultra’nın 2,12 inç ekranla geleceğini söylüyor. Şu anki Ultra modellerin 1,93 inç ekranının olduğunu düşünürsek bu, %10 civarında artış demek.\r\n\r\nAyrıca cihazın şu anki modelden daha pahalı olacağı da iddia ediliyor. TrendForce’a göre Apple, OLED yerine microLED kullanmak için 2.5, 3 kat daha fazla para ödeyecek. Bu da şimdikinden yüksek bir fiyata çıkış yapabilme ihtimalini güçlendiriyor.'),
(35, 'Oynarken Sinir Krizleri Geçireceğiniz Dünyanın En Zor Souls Oyunları', 'img/1703094005_4040.jpg', 'Oyun dünyasında Souls türündeki oyunların zorluğunu bilmeyen oyuncu yoktur. Bu türdeki oyunlar size kendinizi gerçek bir mücadele içinde bulma fırsatı sunarken aynı zamanda sabrınızın sınırlarını fazlaca zorlarlar.\r\nDark Souls, Demon\'s Souls ve Bloodborne gibi yapımlar, size yüksek düzeyde zorluk ve ölümle başa çıkma yeteneği kazandırmak için tasarlanmıştır. Bu oyunlar, atmosferik dünyaları, sıra dışı düşman tasarımları ve sürükleyici hikâyeleriyle de dikkat çeker.\r\n\r\nÇoğu oyuncunun oynamaktan korktuğu oynarken de sinir krizleri geçirdiği Souls türündeki oyunları, zorluk seviyelerine göre sizler için derledik. Zorluk seviyeleri kişiden kişiye değişebilir, bu yüzden sizlere genel değerlendirmelere göre bir liste sunduk.\r\n\r\n<h3>Kolaydan Zora Souls Türü Oyunlar:</h3>\r\n\r\n<ul>\r\n  <li>Mortal Shell</li>\r\n  <li>Demon’s Souls</li>\r\n  <li>Dark Souls III</li>\r\n  <li>Elden Ring</li>\r\n  <li>Dark Souls</li>\r\n  <li>Dark Souls II</li>\r\n  <li>Bloodborne</li>\r\n  <li>Sekiro: Shadows Die Twice</li>\r\n</ul>\r\n\r\n\r\n\r\n'),
(36, 'Apple, En Yeni Apple Watch Modellerinin ABD\'deki Tüm Satışlarını Durduruyor', 'img/1702918661_2931.png', 'Apple, Apple Watch Series 9 ve Apple Watch Ultra 2 ABD\'deki satışlarını durduracağını açıkladı. Karar, Apple ile tıbbi teknoloji şirketi Masimo arasındaki patent tartışmalarının ardından geliyor. İşte tüm yaşananlar.\r\nApple, yıllar boyunca patent tartışmalarıyla gündeme gelen Apple Watch modelleriyle ilgili önemli bir karar aldı. İlk olarak 9to5Mac’e yapılan açıklamaya göre teknoloji devi, ABD’deki bazı Apple Watch modellerinin satışlarını bu hafta durduruyor.\r\n\r\nYalnızca ABD\'de geçerli olan karar, bu yıl tanıtılan Apple Watch Series 9 ve Apple Watch Ultra 2 modellerini kapsıyor. Şirket, 21 Aralık’ta internet sitesi üzerinden bu cihazların satışını durduracak. 24 Aralık’ta ise ülkedeki tüm Apple mağazalarından kaldırılacak.'),
(37, 'Türkiye, Çin\'den En Fazla Otomobil İthal Eden Ülkelerden Biri Oldu: İşte Sıralama', 'img/1702918685_7241.png', '2023 yılının ilk 10 aylık sürecinde Çin\'den en çok otomobil ithal eden ülkeler belli oldu. Türkiye\'nin Çin\'den yaptığı otomobil ithalatında büyük bir artış görülüyor.\r\nOtomobil pazarında ortalık oldukça karışık. Avrupalı geleneksel içten yanmalı motorla çalışan otomobil üreticileri elektrikli otomobil alanında aktivitelerini artırmaya çalışırken, pek çok yeni firma da pazarda varlık göstermek için çaba harcıyor.\r\n\r\nBuna ek olarak ülkemizde, \"Türkiye\'nin otomobili\" olarak duyurulan Togg da piyasaya hızlı bir giriş yaptı. Ülkemizde elektrikli otomobillere olan talep artarken Çinli üreticiler de birer ikişer Türkiye\'ye geliyor. Bu durum, ithalat rakamlarına da yansıyor. '),
(38, 'ASUS, Bu Gördüğünüz Minicik Bilgisayarı Tanıttı: 1 Tane Bile Fanı Yok', 'img/1702918752_2799.png', 'Bilgisayar dünyasının başarılı üreticilerinden ASUS, fansız ve toz geçirmeyen NUC 13 Rugged mini bilgisayarını tanıttı. Üstelik boyutuna göre sahip olduğu özellikler bir hayli dikkat çekici.\r\nIntel\'in NUC departmanını kapatma kararından sonra ASUS, NUC marka bilgisayarları geliştirme ve dağıtma kararı alarak bir lisans devraldı. Böylelikle NUC bilgisayarların piyasaya daha gelişmiş bir şekilde sunulmasının önü açıldı.\r\n\r\nBöylelikle ASUS, daha önce Intel NUC 13 Rugged olarak bilinen bilgisayarı ASUS NUC 13 Rugged isminde piyasaya sundu. Bu mini bilgisayar, Intel Alder Lake-N işlemcisinden güç alıyor ve ilk göze çarpan özellikler ise toz geçirmemesi, dayanıklı bir kasaya sahip olması ve bünyesinde herhangi bir fan bulundurmaması.\r\n\r\nMini bilgisayar, 16 GB\'a kadar DDR5 RAM\'e sahip. Depolama kısmında ise PCIe x2 NVMe SSD için bir M.2 2280 yuvası ve ek SSD için bir M.2 3042 yuvası bulunuyor. Ayrıca 64 GB eMMC depolama seçeneği de opsiyonlar arasında.\r\n\r\nBilgisayarın bağlantı özellikleri arasında çift 2,5 GbE Ethernet portu, WiFi 6E ve Bluetooth 5.2 yer alıyor. İki adet 4K ekran desteği sağlıyor ve 2 adet USB 3.2 Gen 1 Type-A, 2 adet USB 2.0 Type-A, 2 adet HDMI 2.1, 2 adet RJ45 bulunuyor.\r\n\r\nMini bilgisayarın çıkış tarihi ve fiyatı hakkında ASUS tarafından herhangi bir açıklama henüz yapılmadı.'),
(39, 'Orta Sınıfın İddialı Modellerinden Olacak HONOR X8b, 108 MP Kamerası ve Snapdragon İşlemcisiyle Tanıtıldı', 'img/1702918807_3338.png', 'Orta sınıfın en iddialı modellerinden olacak HONOR X8b, birbirinden dikkat çekici özellikleriyle Suudi Arabistan\'da tanıtıldı.\r\nGeçtiğimiz aylarda Play 8T modeliyle bizleri buluşturan HONOR, şimdiyse orta sınıfta oldukça iddialı olacak yeni X8b modelini görücüye çıkardı. Birbirinden farklı özellikleriyle dikkatleri üzerine çekmeyi başaran bu cihazın hangi pazarlarda satışa sunulacağı henüz belli olmasa da aşağı yukarı fiyatını biliyoruz.\r\n\r\nTelefonun kendisine dönecek olursak, iPhone modellerini andıran köşeli tasarım, kamera düzeni ve Dinamik Ada’nın işlevselliğini kullanan Magic Capsule, ilk bakışta göze çarpan yönleri oluyor.\r\n\r\n6,7 inç boyutunda, AMOLED panelli ve 2412 x 1080 Full HD+ çözünürlüklü ekranla gelen X8b, bu ekranda 90 Hz tazeleme hızı sunuyor. 2000 nit’e kadar erişebilen parlaklık seviyesi de dışarıda kullanımı kolay kılacaktır. Kapsül şeklindeki çentiğinde ön kamerasını barındıran cihaz, aynı çentik yoluyla bildirimleri de sunuyor.\r\n\r\nKamera demişken, ön kameranın 50 MP çözünürlük ve soft-LED flaş desteği sunduğunu da belirtelim. Arka tarafta ise 108 MP değerindeki ana kameramız, 5 megapiksel değerindeki ultra geniş açılı kameramız, ve 2 MP değerinde makro lensi yer alıyor. Çift SIM desteğiyle gelen cihazda 4G VoLTE desteği de var. Parmak izi okuyucusu ise yan tarafa yerleştirilmiş.\r\n\r\nBatarya tarafında ise 4500 mAh değerinde bir kapasite sunuluyor ve bunu, 35W değerindeki adaptörle şarj edebiliyoruz.\r\n'),
(43, 'GTA 6\'nın Neden PC\'ye Daha Geç Çıkacağı Açıklandı', 'img/1702931707_9207.jpeg', 'Eski bir Rockstar çalışanı, uzun yıllardır beklenen GTA 6\'nın neden PC\'ye 1 yıl daha geç çıkacağını açıkladı. Açıklamaya göre beklemenin nedeni daha çok kazanç elde etmek.\r\n\r\nSon yılların en çok beklenen, hakkında en çok söylenti dolaşan oyunu GTA 6 için geçtiğimiz günlerde bir fragman yayımlanmış, yayımlanır yayımlanmaz da 100 milyondan fazla izlenerek kapı baca kırmıştı. Oyunun fragmanında bilgisayar oyuncularını üzecek bir detay vardı: Oyunu PC\'de oynamak için daha fazla beklemek gerekecekti. Peki bu durumun nedeni ne? Bu soruya eski bir Rockstar çalışanı cevap verdi. \r\n\r\nRockstar son dönemdeki oyunlarının büyük kısmını önce konsola çıkarıyor, değişken sürelerin ardından da oyunların bilgisayar versiyonlarını piyasaya sürüyor. Eski bir Rockstar çalışanı olan York Reacts kanalında eski bir Rockstar çalışanı olan Mike York, bu gecikmelerin nedenini açıkladı. \r\n\r\nAslında bu durumun çok temel bir nedeni var, para. York\'a göre geliştiricler daha çok satış elde ettikleri PlayStation versiyonlara odaklanıyorlar. Böylece hataları oldukça az olan, yüksek FPS\'li ve sistem kaynaklarını sonuna kadar kullanabilen oyunlarla büyük satış rakamlarına erişebiliyorlar. \r\n\r\nİş bilgisayarlara geldiğinde ise öncelikle çok sayıda farklı bilgisayar konfigürasyonu işe giriyor. Ayrıca bilgisayarların mimarileri farklı oluyor, daha yüksek kapasite de sunabiliyorlar. Bu da oyunlara daha çok şey eklenebilmesini sağlasa da oyunun testleri çok daha uzun sürüyor, farklı konfigürasyonlarda oyunun test edilmesi gerekiyor. Bize ise aradan geçecek 2 yıllık süreçte GTA 6\'yı kaldırabilecek bir bilgisayar toplamak düşüyor. \r\n\r\n'),
(44, 'Yeni Nesil Xbox\'ın Beklenenden 2 Yıl Daha Erken Çıkacağı İddia Edildi: PS6\'dan Ucuz Olacak!', 'img/1702931866_5590.png', 'İddiaya göre Microsoft, yeni nesil Xbox\'ı 2026\'da, yani beklenenden 2 yıl daha erken tanıtacak. Ayrıca Zen 5 CPU\'yla geleceği ve PS6\'dan daha ucuz olacağı da söylentiler arasında.\r\n\r\nOyunseverler, Xbox Series X/S’in tanıtımının üzerinden 3 yıldan fazla süre geçmesinin ardından yeni nesil konsolların ne zaman tanıtılacağını ve ne gibi özelliklere sahip olacağını merak ediyordu. Bugün bu konuda önemli iddialar ortaya atıldı.\r\n\r\nSızıntılarıyla tanınan RedGamingTech’in YouTube üzerinden paylaştığı ve konuya yakın kaynaklara dayandırdığı videoya göre Microsoft, yeni nesil Xbox konsollarının beklenenden daha erken bir tarihte, 2026’da duyuracak.\r\n\r\nİddiaya göre yeni Xbox, AMD Zen 5 CPU’ya sahip olacak. Bunun daha önce çıkan bilgilerle çeliştiğini söylemek gerek. Microsoft ile ABD Federal Ticaret Komisyonu (FTC) ile arasındaki Activision satın alımı hakkındaki davada ortaya çıkan belgeler, konsolun Zen 5 değil, Zen 6 işlemciyle geleceğini ortaya koymuştu. Şimdiki sızıntıya göre yeni nesil Zen mimarisinin o zamana yetişmemesi, şirketin Zen 5’e yönelmesinin sebebi olacak. Zen 5’in 2024’te çıkacağı tahmin ediliyor.\r\n\r\nBuna ek olarak iddiaya göre yeni konsol, PS6’dan daha ucuz bir fiyatla piyasaya sürülecek. Konsolun erken çıkması, muhtemelen PS6’dan donanım açısından daha aşağıda olmasına neden olacak. Bu yüzden de daha ucuza satılması bekleniyor.\r\n\r\nŞu ana kadar çıkan bilgilere göre Sony, PS6’yı 2028’de tanıtmayı planlıyor. 2024 sonu için ise PS5 Pro iddiaları mevcut. FTC davasındaki belgeler, hem yeni Xbox hem de PS6 için 2028’i işaret etmişti. Ancak bugünkü bilgiler doğruysa Microsoft, planlarında büyük değişikliklere gitti. Tabii ki kesin konuşmak şimdilik mümkün değil, belki de planlar hiç değişmemiştir ve hâlen 2028 hedefleniyordur. Ayrıca Microsoft’un Series X/S’te olduğu gibi biri üst biri alt seviye iki konsolla mı karşımıza çıkacağı da büyük merak konusu.\r\n\r\nYeni Xbox’ın neden PS6’dan önce çıkabileceğine de bakalım. İddiaya göre Microsoft, yeni nesilde bir mesaj vermek istiyor ve tıpkı PS3’ten 1 yıl önce çıkan Xbox 360’daki gibi başarı yakalamayı planlıyor. Donanım düşük olsa da ucuz fiyat muhtemelen Microsoft için bir avantaj sağlayacak. Ancak şirket, takip eden yıllarda bir donanım revizyonu yapma ve PS6’ya yetişme fırsatına sahip olacak. Neler olacağını göreceğiz.  ');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `hakkimizda`
--

CREATE TABLE `hakkimizda` (
  `aciklama` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `hakkimizda`
--

INSERT INTO `hakkimizda` (`aciklama`) VALUES
('Hakkımızda: TeknoHaber\r\n\r\nTeknolojinin hızla evrim geçirdiği günümüz dünyasında, bilgiye erişim ve güncel teknoloji haberlerine ulaşmak daha önemli hale gelmiştir. İşte bu noktada, TeknoHaber olarak karşınızdayız, çünkü biz teknolojiyi yaşam biçimimiz olarak görüyoruz.\r\n\r\nTeknoHaber, teknoloji dünyasındaki en son gelişmeleri takip eden ve okuyucularına güvenilir, bilgi dolu içerikler sunan bir platformdur. Misyonumuz, okuyucularımıza en yeni teknoloji haberlerini, ürün incelemelerini ve dijital dünyanın içinden ilgi çekici hikayeleri getirerek, onları teknolojiye dair güncel ve etkili bir bakış açısıyla donatmaktır.\r\n\r\nNeden TeknoHaber?\r\n\r\nGüvenilir İçerik: TeknoHaber, okuyucularına güvenilir, tarafsız ve doğru bilgiler sunmayı ilke edinmiştir. Haberlerimizde kaliteli kaynaklar ve uzman görüşleriyle güçlendirilmiş içeriklere yer veriyoruz.\r\n\r\nKapsamlı İncelemeler: Teknoloji dünyasındaki ürün ve hizmetleri detaylı bir şekilde inceleyerek, okuyucularımıza doğru kararlar almalarında yardımcı oluyoruz. Ürün incelemelerimizde objektif bir yaklaşım benimseyerek, gerçek kullanıcı deneyimlerini yansıtmaya özen gösteriyoruz.\r\n\r\nİnovasyon ve Trendler: TeknoHaber, teknoloji dünyasındaki en son inovasyonları ve trendleri takip eden bir kaynak olarak öne çıkıyor. Sektördeki gelişmeleri yakından takip ederek, okuyucularımızı geleceğin teknolojik dünyasına hazırlıyoruz.\r\n\r\nBiz Kimiz?\r\n\r\nTeknoHaber ekibi, teknolojiye tutkulu ve deneyimli bir grup profesyonelden oluşmaktadır. Her birimiz, kendi alanlarında uzmanlaşmış ve teknolojinin farklı yönlerine ilgi duyan birer meraklıyız. Bir araya gelmemizin temel nedeni, okuyucularımıza en iyi teknoloji içeriğini sunmaktır.\r\n\r\nTeknoHaber ailesi olarak, sizi teknolojinin heyecan verici dünyasına davet ediyoruz. Her gün güncellenen içeriklerimizle sizi bilgilendirmek ve ilham vermek için buradayız. Teknolojiyle ilgili en son haberlere, ilginç incelemelere ve geleceğin teknoloji trendlerine dair içeriklere ulaşmak için bizi takip edin!');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kullanici`
--

CREATE TABLE `kullanici` (
  `id` tinyint(4) NOT NULL,
  `kullanici` varchar(50) NOT NULL,
  `sifre` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `kullanici`
--

INSERT INTO `kullanici` (`id`, `kullanici`, `sifre`) VALUES
(1, 'mikail', '1234');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `logo`
--

CREATE TABLE `logo` (
  `id` int(11) NOT NULL,
  `logo` varchar(250) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `logo`
--

INSERT INTO `logo` (`id`, `logo`) VALUES
(18, 'img/logo.png');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `haberler`
--
ALTER TABLE `haberler`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `kullanici`
--
ALTER TABLE `kullanici`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `logo`
--
ALTER TABLE `logo`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `haberler`
--
ALTER TABLE `haberler`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- Tablo için AUTO_INCREMENT değeri `kullanici`
--
ALTER TABLE `kullanici`
  MODIFY `id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `logo`
--
ALTER TABLE `logo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
