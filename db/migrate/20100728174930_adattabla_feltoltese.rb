class AdattablaFeltoltese < ActiveRecord::Migration
  def self.up
    Print.create.update_attributes(:nev=>"1+0", :leiras=>"Első oldalon fekete nyomással, hátoldalon nyomás nélkül", :szines_oldalak=>0, :fekete_oldalak=>1)
    Print.create.update_attributes(:nev=>"1+1", :leiras=>"Első és hátsó oldalon is fekete nyomással", :szines_oldalak=>0, :fekete_oldalak=>2)
    Print.create.update_attributes(:nev=>"4+0", :leiras=>"Első oldalon színes nyomással, hátoldalon nyomás nélkül", :szines_oldalak=>1, :fekete_oldalak=>0)
    Print.create.update_attributes(:nev=>"4+1", :leiras=>"Első oldalon színes nyomással, hátoldalon fekete nyomással", :szines_oldalak=>1, :fekete_oldalak=>1)
    Print.create.update_attributes(:nev=>"4+4", :leiras=>"Első és hátsó oldalon is színes nyomással", :szines_oldalak=>2, :fekete_oldalak=>0)

    PaperCategory.create.update_attributes(:nev=>"Műnyomók", :leiras=>"Mindkét oldalon bevonatos, nyomdai papírok", :kep=>"munyomok.jpg")
    PaperCategory.create.update_attributes(:nev=>"Kreatív papírok", :leiras=>"Változatos megjelenésű papírok", :kep=>"kreativok.jpg")
    PaperCategory.create.update_attributes(:nev=>"Speciális papírok", :leiras=>"Öntapadós papírok és fóliák, valamint önátírós papírok", :kep=>"specialis_anyagok.jpg")

    PaperType.create.update_attributes(:paper_category_id=>1, :nev=>"Fényes műnyomó papír", :leiras=>"Fényes felületű műnyomó papír", :kep=>"fenyes_munyomo.jpg")
    PaperType.create.update_attributes(:paper_category_id=>1, :nev=>"Matt műnyomó papír", :leiras=>"Matt felületű műnyomó papír", :kep=>"matt_munyomo.jpg")

    PaperType.create.update_attributes(:paper_category_id=>2, :nev=>"Rives Tradition fehér", :leiras=>"Szabálytalanul struktúrált felületű kreatív papír", :kep=>"rives_trad_00.jpg")
    PaperType.create.update_attributes(:paper_category_id=>2, :nev=>"Rives Tradition natúr fehér", :leiras=>"Szabálytalanul struktúrált felületű kreatív papír", :kep=>"rives_trad_01.jpg")
    PaperType.create.update_attributes(:paper_category_id=>2, :nev=>"Rives Tradition elefántcsont", :leiras=>"Szabálytalanul struktúrált felületű kreatív papír", :kep=>"rives_trad_02.jpg")
    PaperType.create.update_attributes(:paper_category_id=>2, :nev=>"Rives Tradition pezsgő", :leiras=>"Szabálytalanul struktúrált felületű kreatív papír", :kep=>"rives_trad_03.jpg")

    PaperType.create.update_attributes(:paper_category_id=>2, :nev=>"Rives Laid fehér", :leiras=>"Szabályosan struktúrált felületű kreatív papír", :kep=>"rives_laid_00.jpg")
    PaperType.create.update_attributes(:paper_category_id=>2, :nev=>"Rives Laid natúr fehér", :leiras=>"Szabályosan struktúrált felületű kreatív papír", :kep=>"rives_laid_01.jpg")
    PaperType.create.update_attributes(:paper_category_id=>2, :nev=>"Rives Laid elefántcsont", :leiras=>"Szabályosan struktúrált felületű kreatív papír", :kep=>"rives_laid_02.jpg")
    PaperType.create.update_attributes(:paper_category_id=>2, :nev=>"Rives Laid pezsgő", :leiras=>"Szabályosan struktúrált felületű kreatív papír", :kep=>"rives_laid_03.jpg")

    PaperType.create.update_attributes(:paper_category_id=>3, :nev=>"Fényes öntapadós papír", :leiras=>"Fényes felületű öntapadós papír", :kep=>"fenyes_ontapados.jpg")
    PaperType.create.update_attributes(:paper_category_id=>3, :nev=>"Matt öntapadós papír", :leiras=>"Matt felületű öntapadós papír", :kep=>"matt_ontapados.jpg")

    PaperWeightPrice.create.update_attributes(:paper_type_id=>1, :gramm=>150, :ar=>15)
    PaperWeightPrice.create.update_attributes(:paper_type_id=>1, :gramm=>200, :ar=>20)
    PaperWeightPrice.create.update_attributes(:paper_type_id=>1, :gramm=>250, :ar=>25)
    PaperWeightPrice.create.update_attributes(:paper_type_id=>1, :gramm=>300, :ar=>30)

    PaperWeightPrice.create.update_attributes(:paper_type_id=>2, :gramm=>150, :ar=>15)
    PaperWeightPrice.create.update_attributes(:paper_type_id=>2, :gramm=>200, :ar=>20)
    PaperWeightPrice.create.update_attributes(:paper_type_id=>2, :gramm=>250, :ar=>25)
    PaperWeightPrice.create.update_attributes(:paper_type_id=>2, :gramm=>300, :ar=>30)

    PaperWeightPrice.create.update_attributes(:paper_type_id=>3, :gramm=>120, :ar=>24)
    PaperWeightPrice.create.update_attributes(:paper_type_id=>3, :gramm=>250, :ar=>50)

    PaperWeightPrice.create.update_attributes(:paper_type_id=>4, :gramm=>120, :ar=>24)
    PaperWeightPrice.create.update_attributes(:paper_type_id=>4, :gramm=>250, :ar=>50)

    PaperWeightPrice.create.update_attributes(:paper_type_id=>5, :gramm=>120, :ar=>24)
    PaperWeightPrice.create.update_attributes(:paper_type_id=>5, :gramm=>250, :ar=>50)

    PaperWeightPrice.create.update_attributes(:paper_type_id=>6, :gramm=>120, :ar=>24)
    PaperWeightPrice.create.update_attributes(:paper_type_id=>6, :gramm=>250, :ar=>50)

    PaperWeightPrice.create.update_attributes(:paper_type_id=>7, :gramm=>120, :ar=>24)
    PaperWeightPrice.create.update_attributes(:paper_type_id=>7, :gramm=>250, :ar=>50)

    PaperWeightPrice.create.update_attributes(:paper_type_id=>8, :gramm=>120, :ar=>24)
    PaperWeightPrice.create.update_attributes(:paper_type_id=>8, :gramm=>250, :ar=>50)

    PaperWeightPrice.create.update_attributes(:paper_type_id=>9, :gramm=>120, :ar=>24)
    PaperWeightPrice.create.update_attributes(:paper_type_id=>9, :gramm=>250, :ar=>50)

    PaperWeightPrice.create.update_attributes(:paper_type_id=>10, :gramm=>120, :ar=>24)
    PaperWeightPrice.create.update_attributes(:paper_type_id=>10, :gramm=>250, :ar=>50)

    PaperWeightPrice.create.update_attributes(:paper_type_id=>11, :gramm=>180, :ar=>40)
    PaperWeightPrice.create.update_attributes(:paper_type_id=>12, :gramm=>180, :ar=>40)

    ProductCategory.create.update_attributes(:nev=>"Képeslapok", :leiras=>"Sokféle változatban, postán is feladható", :kep=>"kepeslapok.jpg")
    ProductCategory.create.update_attributes(:nev=>"Könyvjelzők", :leiras=>"Hasznos kis ajándék a könyvek kedvelőinek", :kep=>"konyvjelzok.jpg")

    ProductType.create.update_attributes(:product_category_id=>"1", :nev=>"A6 álló, 2 oldalas", :leiras=>"A6 álló, 2 oldalas", :kep=>"kepeslap_a6_allo_2old.jpg", :szelesseg=>"100", :magassag=>"150", :oldalszam=>"2", :felfele_nyilo=>"0")
    ProductType.create.update_attributes(:product_category_id=>"1", :nev=>"A6 fekvő, 2 oldalas", :leiras=>"A6 fekvő, 2 oldalas", :kep=>"kepeslap_a6_fekvo_2old.jpg", :szelesseg=>"150", :magassag=>"100", :oldalszam=>"2", :felfele_nyilo=>"0")

    ProductType.create.update_attributes(:product_category_id=>"1", :nev=>"A6 álló, 4 oldalas, oldalt nyíló", :leiras=>"A6 álló, 4 oldalas, oldalt nyíló", :kep=>"kepeslap_a6_allo_4old.jpg", :szelesseg=>"100", :magassag=>"150", :oldalszam=>"4", :felfele_nyilo=>"0")
    ProductType.create.update_attributes(:product_category_id=>"1", :nev=>"A6 fekvő, 4 oldalas, oldalt nyíló", :leiras=>"A6 fekvő, 4 oldalas, oldalt nyíló", :kep=>"kepeslap_a6_fekvo_4old.jpg", :szelesseg=>"150", :magassag=>"100", :oldalszam=>"4", :felfele_nyilo=>"0")
    ProductType.create.update_attributes(:product_category_id=>"1", :nev=>"A6 fekvő, 4 oldalas, felfelé nyíló", :leiras=>"A6 fekvő, 4 oldalas, felfelé nyíló", :kep=>"kepeslap_a6_fekvo_4old_fent.jpg", :szelesseg=>"150", :magassag=>"100", :oldalszam=>"4", :felfele_nyilo=>"1")

    ProductType.create.update_attributes(:product_category_id=>"2", :nev=>"50 x 200 mm-es", :leiras=>"50 x 200 mm-es", :kep=>"konyvjelzo_50x200.jpg", :szelesseg=>"50", :magassag=>"200", :oldalszam=>"2", :felfele_nyilo=>"0")
    ProductType.create.update_attributes(:product_category_id=>"2", :nev=>"60 x 200 mm-es", :leiras=>"60 x 200 mm-es", :kep=>"konyvjelzo_60x200.jpg", :szelesseg=>"60", :magassag=>"200", :oldalszam=>"2", :felfele_nyilo=>"0")
    
    OrderStatus.create.update_attributes(:nev=>"megrendelve") 
    OrderStatus.create.update_attributes(:nev=>"visszaigazolva") 
    OrderStatus.create.update_attributes(:nev=>"fizetve") 
    OrderStatus.create.update_attributes(:nev=>"kinyomtatva") 
    OrderStatus.create.update_attributes(:nev=>"kiszállítva") 
    OrderStatus.create.update_attributes(:nev=>"lezárva") 
    
    Order.create.update_attributes(:user_id=>1, :order_status_id=>1, :address_szla_id=>1, :address_szall_id=>2, :datum_megr=>"2010-06-04", :datum_szall=>"2010-07-04", :megjegyzes=>"Kérem hosszan csengessenek")
    Order.create.update_attributes(:user_id=>2, :order_status_id=>1, :address_szla_id=>1, :address_szall_id=>2, :datum_megr=>"2010-06-06", :datum_szall=>"2010-07-06", :megjegyzes=>"Kérem röviden csengessenek")
    Order.create.update_attributes(:user_id=>3, :order_status_id=>2, :address_szla_id=>1, :address_szall_id=>2, :datum_megr=>"2010-06-08", :datum_szall=>"2010-07-08", :megjegyzes=>"A kutya harap")
    Order.create.update_attributes(:user_id=>1, :order_status_id=>1, :address_szla_id=>1, :address_szall_id=>2, :datum_megr=>"2010-06-10", :datum_szall=>"2010-07-10", :megjegyzes=>"A ló sokat eszik")
    Order.create.update_attributes(:user_id=>2, :order_status_id=>1, :address_szla_id=>1, :address_szall_id=>2, :datum_megr=>"2010-06-12", :datum_szall=>"2010-07-12", :megjegyzes=>"Csak adja oda a portásnak")
    Order.create.update_attributes(:user_id=>3, :order_status_id=>6, :address_szla_id=>1, :address_szall_id=>2, :datum_megr=>"2010-06-14", :datum_szall=>"2010-07-14", :megjegyzes=>"A hátsó ajtón jöjjön")
         
    OrderItem.create.update_attributes(:order_id=>1, :nev=>"ajándék papa", :print_id=>1, :paper_weight_price_id=>1, :paper_type_id=>1, :product_type_id=>1, :document_id=>1, :darab=>"100", :ar_lezart=>"10000")
    OrderItem.create.update_attributes(:order_id=>2, :nev=>"ajándék cirmi", :print_id=>2, :paper_weight_price_id=>1, :paper_type_id=>2, :product_type_id=>2, :document_id=>2, :darab=>"250", :ar_lezart=>"20000")
    OrderItem.create.update_attributes(:order_id=>3, :nev=>"ajándék bodri", :print_id=>3, :paper_weight_price_id=>1, :paper_type_id=>2, :product_type_id=>3, :document_id=>3, :darab=>"50", :ar_lezart=>"30000")
    OrderItem.create.update_attributes(:order_id=>1, :nev=>"ajándék piri", :print_id=>4, :paper_weight_price_id=>2, :paper_type_id=>1, :product_type_id=>1, :document_id=>1, :darab=>"500", :ar_lezart=>"40000")
    OrderItem.create.update_attributes(:order_id=>2, :nev=>"ajándék joci", :print_id=>5, :paper_weight_price_id=>2, :paper_type_id=>1, :product_type_id=>2, :document_id=>2, :darab=>"1000", :ar_lezart=>"50000")
    OrderItem.create.update_attributes(:order_id=>3, :nev=>"ajándék mama", :print_id=>1, :paper_weight_price_id=>2, :paper_type_id=>1, :product_type_id=>3, :document_id=>3, :darab=>"3500", :ar_lezart=>"60000")
    
    User.create.update_attributes(:nev_kereszt=>"Béla", :nev_vezetek=>"Udvari", :email=>"ez@ez.hu", :jelszo=>"pass")
    User.create.update_attributes(:nev_kereszt=>"Ló", :nev_vezetek=>"Kerti", :email=>"ez@ez.hu", :jelszo=>"pass")
    User.create.update_attributes(:nev_kereszt=>"Ubul", :nev_vezetek=>"Vizi", :email=>"eez@ez.hu", :jelszo=>"pass")
    User.create.update_attributes(:nev_kereszt=>"Jenő", :nev_vezetek=>"Lófejű", :email=>"ez@ez.hu", :jelszo=>"pass")
    User.create.update_attributes(:nev_kereszt=>"Ottó", :nev_vezetek=>"Imrei", :email=>"ez@ez.hu", :jelszo=>"pass")
    User.create.update_attributes(:nev_kereszt=>"Émi", :nev_vezetek=>"Kutyafi", :email=>"ez@ez.hu", :jelszo=>"pass")
    
    Address.create.update_attributes(:user_id=>1, :varos=>"Budapest", :irsz=>"1000", :cim=>"Utca 1", :statusz=>1)
    Address.create.update_attributes(:user_id=>2, :varos=>"Vác", :irsz=>"2000", :cim=>"Utca 2", :statusz=>1)
    Address.create.update_attributes(:user_id=>3, :varos=>"Siófok", :irsz=>"3000", :cim=>"Utca 3", :statusz=>1)
    Address.create.update_attributes(:user_id=>4, :varos=>"Velence", :irsz=>"4440", :cim=>"Utca 4", :statusz=>1)
    Address.create.update_attributes(:user_id=>5, :varos=>"Páty", :irsz=>"5500", :cim=>"Utca 5", :statusz=>1)
    Address.create.update_attributes(:user_id=>6, :varos=>"Szeged", :irsz=>"6000", :cim=>"Utca 6", :statusz=>1)
    Address.create.update_attributes(:user_id=>1, :varos=>"Budapest", :irsz=>"8900", :cim=>"Utca 7", :statusz=>2)
    Address.create.update_attributes(:user_id=>2, :varos=>"Kecskemét", :irsz=>"5400", :cim=>"Utca 8", :statusz=>2)
    
    Document.create.update_attributes(:user_id=>1, :filename=>"kep1.jpg")
    Document.create.update_attributes(:user_id=>1, :filename=>"kep2.jpg")
    Document.create.update_attributes(:user_id=>1, :filename=>"kep3.jpg")
    Document.create.update_attributes(:user_id=>2, :filename=>"kep4.jpg")
    Document.create.update_attributes(:user_id=>2, :filename=>"kep5.jpg")
    Document.create.update_attributes(:user_id=>3, :filename=>"kep6.jpg")
    Document.create.update_attributes(:user_id=>4, :filename=>"kep7.jpg")
    Document.create.update_attributes(:user_id=>4, :filename=>"kep8.jpg")
    Document.create.update_attributes(:user_id=>5, :filename=>"kep9.jpg")
    Document.create.update_attributes(:user_id=>6, :filename=>"kep10.jpg")
    Document.create.update_attributes(:user_id=>6, :filename=>"kep11.jpg")
  end

  def self.down
  end
end
