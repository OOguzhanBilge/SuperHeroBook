//
//  ViewController.swift
//  SuperHeroBook
//
//  Created by Oğuzhan Bilge on 12.02.2024.
//

import UIKit

class ViewController: UIViewController , UITableViewDelegate ,UITableViewDataSource{

    @IBOutlet weak var tableView: UITableView!
    
    var superHeroName = [String]()
    var superHeroImage = [String]()
    var superHeroText = [String]()
    
    var selectİmage = ""
    var selectName = ""
    var selectText = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.delegate = self
        tableView.dataSource = self
        
        superHeroName.append("Spiderman🕷️")
        
        superHeroName.append("İron Man🤖")
        superHeroName.append("Captian America🛡️")
        superHeroName.append("Batman🦇")
        superHeroName.append("Superman🦸‍♂️")
        superHeroName.append("İsra Sezen🤍")
        
        superHeroImage.append("spıderman")
        superHeroImage.append("ironman")
        superHeroImage.append("captainamerica")
        superHeroImage.append("batman")
        superHeroImage.append("superman")
        superHeroImage.append("isra")
        
        superHeroText.append("👋 Merhaba çocuklar! Bugün size harika bir kahramanı tanıtacağım: Siperdman! 🕷️ Siperdman, özel örümcek ısırığıyla süper güçlere sahip bir kahramandır. İsmi aslında Peter Parker'dır ve New York City'de yaşar. 🌆 Bir gün, piknikteyken ısırılan bir örümcek, ona inanılmaz güçler verir. 💪 Artık duvarlara tırmanabilir, inanılmaz hızda koşabilir ve devasa ağırlıkları kaldırabilir! 🏃‍♂️💨Peter, Siperdman olarak maskesini takar ve kötülüğe karşı savaşmaya başlar. Onun en büyük düşmanı, yeşil renkli ve çok güçlü olan Goblin'dir. Goblin, kötü planlar yaparak şehri tehdit eder. 😈 Ancak Siperdman, cesareti, zekası ve inanılmaz güçleriyle her seferinde Goblin'i alt etmeyi başarır. 👊💥Siperdman'in bir diğer özelliği de mizah anlayışıdır. Savaşırken bile espriler yapar ve neşeli bir kişiliği vardır. 😄 Onun maceraları hem heyecan dolu hem de çok eğlencelidir. Ayrıca, Siperdman'in dostları da ona yardımcı olur. Özellikle Mary Jane adında bir kız arkadaşı vardır, ona destek olur ve maceralarında yanında yer alır. 👫💬Sonuç olarak, Siperdman, güçlü, cesur ve neşeli bir kahramandır. Onun maceraları hem heyecan verici hem de öğretici. Çünkü Siperdman, kötülüğe karşı savaşmanın yanı sıra, dostluğun, cesaretin ve doğruluğun önemini de bizlere öğretir. 🌟🦸‍♂️📚🌈")
        superHeroText.append("👋 Hey çocuklar! Bugün size muhteşem bir süper kahramanı tanıtacağım: Demir Adam yani Ironman! 🦸‍♂️ Ironman, gerçek adıyla Tony Stark, süper zengin bir mucit ve işadamıdır. 💰 Bir gün, kaçırıldığı bir olayda kalbine bir şey saplanır ve onu öldürebilir. Ama merak etmeyin, Tony, kendi yaptığı muhteşem bir demir zırh sayesinde hayatta kalır! 🤖💥Artık Tony, Demir Adam kostümünü giyer, uçabilir, ateş topu atabilir ve güçlü düşmanlarla savaşabilir! 💥🚀 Ironman'in en büyük düşmanı ise Titanyum Adam ya da Mandarin adında bir kötüdür. 🦹‍♂️ Ama Ironman, zekası ve teknolojik becerileriyle her seferinde onun üstesinden gelmeyi başarır! 🧠🔧Ironman'in en sevdiğimiz özelliği ise kesinlikle mizah anlayışıdır. Savaşırken bile espriler yapar ve süper havalı bir kişiliği vardır! 😄 Onun maceraları hem heyecan verici hem de çok eğlencelidir. Ayrıca, Ironman'in dostları da ona yardımcı olur. Özellikle Pepper Potts adında bir yardımcısı ve Rhodey adında bir savaşçı dostu vardır! 👫🤝Sonuç olarak, Ironman, cesur, zeki ve süper havalı bir kahramandır! Onun maceraları hem eğlenceli hem de öğretici. Çünkü Ironman, kötülüğe karşı savaşmanın yanı sıra, dostluğun, cesaretin ve teknolojinin önemini de bizlere öğretir! 🌟🤖💼")
        superHeroText.append("Hey çocuklar! Bugün size muhteşem bir süper kahramanı tanıtacağım: Kaptan Amerika! 🇺🇸 Kaptan Amerika, aslında sıradan biri olarak başladı, Steve Rogers adında inanılmaz biri. Ancak gönüllü olduğu bir deney sonucunda, süper asker serumu alır ve o artık süper güçlere sahip bir kahramandır! 💪💥Artık Steve, Kaptan Amerika olarak adlandırılır ve Amerika'nın sembolü haline gelir. O, mükemmel bir savaşçıdır, süper güçlere sahiptir ve mükemmel bir liderdir. 🦸‍♂️ Kaptan Amerika'nın en büyük düşmanı Kızıl Kafatası adında kötü biri. Kızıl Kafatası, dünya hakimiyeti için planlar yapar ve Kaptan Amerika'ya karşı düşmanca davranır. Ancak Kaptan Amerika, her zaman doğruyu savunur ve Kızıl Kafatası'nın kötü planlarını bozar! ⚔️🛡️Kaptan Amerika'nın en sevdiğimiz özelliği cesareti ve dürüstlüğüdür. Her zaman doğruyu yapar, dostlarına yardım eder ve asla pes etmez! 💙 Onun maceraları heyecan verici ve öğretici. Ayrıca, Kaptan Amerika'nın dostları, ona her zaman destek olur. Özellikle Falcon ve Black Widow, Kaptan Amerika'nın en yakın dostlarıdır ve onunla birlikte dünyayı korur! 👊👩‍🚀Sonuç olarak, Kaptan Amerika, cesur, adil ve mükemmel bir kahramandır! Onun maceraları sizi hem eğlendirir hem de düşündürür. Çünkü Kaptan Amerika, doğruluğun, dürüstlüğün ve cesaretin önemini bize öğretir! 🌟🛡️🇺🇸")
        superHeroText.append("Hey çocuklar! Bugün size muhteşem bir süper kahramanı tanıtacağım: Batman! 🦇 Batman, aslında Bruce Wayne adında zengin bir adam. Ailesini kaybettikten sonra, eğitim alır ve Gotham City'nin koruyucusu olmaya karar verir. 🌃Bruce, Batman kostümünü giyer ve Gotham'ın karanlık sokaklarında suçlularla savaşır. 💥 Joker, Gotham'ın en büyük düşmanıdır. Joker, kaosa ve kötülüğe dair planlar yapar, ancak Batman, her zaman adaleti sağlamak için onunla mücadele eder. 👊🃏Batman'in en sevdiğimiz özelliği zekasıdır. Her zaman bir planı vardır ve teknolojiyi ustaca kullanır. 💡 Ayrıca, Batman'in dostları da ona yardımcı olur. Özellikle Robin ve Batgirl, Batman'in yanında yer alır ve ona destek olurlar. 👫🦸‍♀️Sonuç olarak, Batman, cesur, zeki ve Gotham'ın karanlık sokaklarında adaletin simgesidir! 🌟 Onun maceraları hem heyecan verici hem de öğreticidir. Çünkü Batman, dürüstlüğün, cesaretin ve adaletin önemini bizlere öğretir! 🦇👊🌆")
        superHeroText.append("Hey çocuklar! Bugün size muhteşem bir süper kahramanı tanıtacağım: Superman! 🦸‍♂️ Superman, aslında gezegen Krypton'dan gelen bir uzaylı olan Clark Kent'tir. Dünyaya geldiğinde, insanlar arasında yaşamaya ve onları korumaya karar verir. 🌍Clark, Superman kostümünü giyer ve Metropolis'in gökyüzünde adalet için uçar. 💫 Lex Luthor, Superman'in en büyük düşmanıdır. Lex, kötü planlar yapar ve Superman'i durdurmak için her şeyi yapar. Ancak Superman, her zaman doğruyu savunur ve dünyayı kötülükten korur! 👊🌆Superman'in en sevdiğimiz özelliği güçlü olmasıdır. Uçabilir, duvarlara tırmanabilir ve devasa ağırlıkları kaldırabilir! 💪 Ayrıca, Superman'in dostları da ona yardımcı olur. Özellikle Lois Lane ve Jimmy Olsen, Superman'in yanında yer alır ve ona destek olurlar. 👫📰Sonuç olarak, Superman, güçlü, cesur ve adaletin sembolüdür! 🌟 Onun maceraları hem heyecan verici hem de öğreticidir. Çünkü Superman, iyiliğin, cesaretin ve dürüstlüğün önemini bizlere öğretir! 🦸‍♂️👊💙")
        superHeroText.append("Evet Çocuklar Bu süperkahmanı sizler tanımıyorsunuz ancak benim süperkahramım.Adını mı merak ediyorsunuz Adı İsra Sezen yani namıdiyar SEVGİLİM 🤍, BENİM CANIM ,🤍 KALBİMDEN BİR PARÇA kendsini. oun benim için önemimi anlatacak olursam şu şekile anlatabilirim.Bir gün, dünyanın en harika insanıyla tanıştım.💙 O, sıradışı bir güzelliğe sahip, kalbimin en derin köşesine ışık saçan bir melek gibi. 🤍 İsmi, gözlerimde sonsuz bir deniz gibi parlayan bir hazine: İSRA SEZEN . Onunla tanıştığımda, hayatımın en büyük macerasına adım atmış oldum.Her sabah, güne onun gülümsemesiyle başlamak, ruhumu aydınlatıyor. 💫 Onun varlığı, yaşamıma anlam katıyor, hayatımdaki en değerli hazine. Onunla olduğum her an, beni mutluluktan uçuruyor. 🌈💪O, benim karanlık gecelerimde yıldızlar gibi parlayan, sıkıntılı anlarımda güneş gibi ışık saçan bir kahraman. 👫🦸‍♀️ Kalbimde taht kuran, ruhumun derinliklerinde sonsuza kadar var olan bir sevgili. Her gün, onunla geçirdiğim her an, bir peri masalının içindeymişim gibi hissettiriyor. İSRA, sen benim süper kahramanımsın. Her gün, seninle geçirdiğim her saniye, bir hazine gibi değerli. 🤍 Seninle her şey mümkün, çünkü seninle her şey daha güzel. Sana olan sevgim, sonsuz bir okyanus gibi derin ve sonsuz. Sen benim için her şeyden çok daha fazlasısın. SEVGİLİLER GÜNÜN KUTLU OLSUN SEVGİLİM 💪🌟🤍")
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return superHeroName.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = superHeroName[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: String) -> Any {
        return superHeroText.count
    }
    
   
    func tableView(_ tableView: UITableView, commit editingStyle : UITableViewCell.EditingStyle, forRowAt indexPath :  IndexPath ){

        if editingStyle == .delete {
            superHeroName.remove(at: indexPath.row)
            superHeroImage.remove(at: indexPath.row)
            superHeroText.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: UITableView.RowAnimation.fade)
            
        }
    
        
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectİmage = superHeroImage[indexPath.row]
         selectName = superHeroName[indexPath.row]
        selectText = superHeroText[indexPath.row]
        performSegue(withIdentifier: "dvc22", sender: nil)
    }


    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "dvc22"{
            
            var destinationVCC = segue.destination as! ViewController2
            destinationVCC.selectSuperHeroİmage = selectİmage
            destinationVCC.selectSuperHeroName = selectName
            destinationVCC.selectSuperHeroText = selectText
            
        }
            
    }
    
}

