namespace :db do
  desc "Erase and fill database"
  # creating a rake task within db namespace called 'populate'
  # executing 'rake db:populate' will cause this script to run
  task :populate => :environment do
    
    # Step 1: clear any old data in the db
    [Dog, Pack].each(&:delete_all)
    
    # Step 2: Make a crazy number of Dogs
    
    breeds = ["Affenpinscher", "Afghan Hound", "African Boerboel", "Aidi", "Airedale Terrier", "Akbash Dog", "Akita", "Alapaha Blue Blood Bulldog", "Alaskan Klee Kai", "Alaskan Malamute", "Alentejo Mastiff", "Alpine Drachsbracke", "American Bulldog", "American Eskimo", "American Foxhound", "American Hairless Terrier", "American Pit Bull Terrier", "American Staffordshire Terrier", "American Water Spaniel", "Anatolian Shepherd", "Appenzeller Sennenhunde", "Ariegeois", "Australian Cattle Dog", "Australian Kelpie", "Australian Shepherd", "Australian Terrier", "Austrian Black and Tan Hound", "Austrian Pinscher", "Azawakh", "Barak", "Barbet", "Basenji", "Basset Artesien Normand", "Basset Bleu de Gascogne", "Basset Fauve de Bretagne", "Basset Hound", "Bavarian Mountain Hound", "Beagle", "Beagle Harrier", "BeardedCollie", "Beauceron", "BedlingtonTerrier", "BelgianMalinois", "BelgianSheepdog", "BelgianTervuren", "Bergamasco", "BergerDesPyrenees", "BergerPicard", "BerneseMountainDog", "BichonFrise", "Billy", "BlackandTanCoonhound", "BlackForestHound", "BlackMouthCur", "BlackRussianTerrier", "Bloodhound", "BluetickCoonhound", "Bolognese", "BorderCollie", "BorderTerrier", "Borzoi", "BostonTerrier", "BouvierDesArdennes", "BouvierdesFlandres", "Boxer", "BoykinSpaniel", "BraccoItaliano", "BraqueDAuvergne", "BraqueDeBourbonais", "BraqueDeLAriege", "BraqueFrancaisDeGrandeTaille", "BraqueFrancaisDePetiteTaille", "BraqueSaintGermain", "Briard", "BriquetGriffonVendeen", "Brittany", "BrusselsGriffon", "Bullmastiff", "BullTerrier", "CaDeBestiar", "CairnTerrier", "CanaanDog", "CanadianEskimoDog", "CaneCorso", "CaoDeCastroLaboreiro", "CardiganWelshCorgi", "CarolinaDog", "CatahoulaLeopardDog", "CatalonianSheepdog", "CaucasianOvcharka", "CavalierKingCharlesSpaniel", "CentralAsianOvtcharka", "CeskyTerrier", "ChartPolski", "ChesapeakeBayRetriever", "ChienDArtois", "ChienFrancaisBlancEtNoir", "ChienFrancaisTricolore", "Chihuahua", "ChineseCrested", "ChineseFoo", "ChineseSharPei", "Chinook", "ChowChow", "CimarronUruguayo", "CiobanescRomanescCarpatin", "CiobanescRomanescMioritic", "CirnecodellEtna", "ClumberSpaniel", "CockerSpaniel", "Collie", "CotonDeTulear", "CroatianSheepdog", "CurlyCoatedRetriever", "CzechoslovakianVlcak", "Dachshund", "Dalmatian", "DandieDinmontTerrier", "DanishBroholmer", "DanishSwedishFarmdog", "DeutscheBracke", "DeutscherWachtelhund", "DobermanPinscher", "DogoArgentino", "DoguedeBordeaux", "DrentschePatrijshond", "Drever", "Dunker", "DutchShepherd", "DutchSmoushond", "EastSiberianLaika", "EnglishBulldog", "EnglishCockerSpaniel", "EnglishCoonhound", "EnglishFoxhound", "EnglishSetter", "EnglishShepherd", "EnglishSpringerSpaniel", "EnglishToySpaniel", "Entlebucher", "EpagneulBleuDePicardie", "EpagneulDePontAudemer", "EpagneulFrancais", "EpagneulPicard", "EstrelaMountainDog", "Eurasier", "FieldSpaniel", "FilaBrasileiro", "FinnishHound", "FinnishLapphund", "FinnishSpitz", "FlatCoatedRetriever", "FoxTerrierSmooth", "FrancaisBlancEtOrange", "FrenchBulldog", "FrisianWaterDog", "GermanLongHairedPointer", "GermanPinscher", "GermanShepherdDog", "GermanShorthairedPointer", "GermanSpitz", "GermanWirehairedPointer", "GiantSchnauzer", "GlenOfImaalTerrier", "GoldenRetriever", "GordonSetter", "GrandBassetGriffonVendeen", "GrandBleuDeGascogne", "GrandGasconSaintongeois", "GrandGriffonVendeen", "GreatAngloFrancaisTricolorHound", "GreatAngloFrancaisWhiteAndBlackHound", "GreatAngloFrancaisWhiteAndOrangeHound", "GreatDane", "GreaterSwissMountainDog", "GreatPyrenee", "GreenlandDog", "Greyhound", "GriffonBleuDeGascogne", "GriffonFauveDeBretagne", "GriffonNivernais", "Haldenstover", "Hamiltonstovare", "HanoverianHound", "Harrier", "Havanese", "HellenicHound", "Hokkaido", "Hovawart", "HungarianGreyhound", "HungarianWireHairedVizsla", "HygenHound", "IbizanHound", "IcelandicSheepdog", "IrishRedAndWhiteSetter", "IrishSetter", "IrishTerrier", "IrishWaterSpaniel", "IrishWolfhound", "IstrianCoarseHairedHound", "IstrianShortHairedHound", "ItalianGreyhound", "ItalianHound", "JackRussellTerrier", "JagdTerrier", "JapaneseChin", "JapaneseSpitz", "JapaneseTerrier", "Jindo", "KaiKen", "KangalDog", "KarelianBearDog", "KarstShepherdDog", "Keeshond", "KerryBlueTerrier", "KishuKen", "Komondor", "Kooikerhondje", "Kromfohrlander", "Kuvasz", "LabradorRetriever", "Laekenois", "LagottoRomagnolo", "LakelandTerrier", "LancashireHeeler", "Lapinporokoira", "LargeMunsterlander", "Leonberger", "LhasaApso", "Lowchen", "MajorcaMastiff", "Maltese", "ManchesterTerrier", "MaremmaSheepdog", "Mastiff", "MiniatureAustralianShepherd", "MiniatureBullTerrier", "MiniaturePinscher", "MiniaturePoodle", "MiniatureSchnauzer", "MontenegrinMountainHound", "MountainCur", "Mudi", "MultiColoredPoodle", "MultiColoredStandardPoodle", "NeapolitanMastiff", "Newfoundland", "NewGuineaSingingDog", "NorfolkTerrier", "Norrbottenspets", "NorwegianBuhund", "NorwegianElkhound", "NorwegianLundehund", "NorwichTerrier", "NovaScotiaDuckTollingRetriever", "OldDanishPointingDog", "OldEnglishSheepdog", "Otterhound", "OwczarekPodhalanski", "Papillon", "ParsonRussellTerrier", "PatterdaleTerrier", "Pekingese", "PembrokeWelshCorgi", "PerdigueroDeBurgos", "PerrodePresaCanario", "PeruvianIncaOrchid", "PetitBassetGriffonVendeen", "PetitBleuDeGascogne", "PetitGasconSaintongeois", "PharaohHound", "Plott", "PodencoCanario", "Pointer", "Poitevin", "PolishHound", "PolishOwczarekNizinny", "Pomeranian", "Porcelaine", "PortuguesePodengo", "PortuguesePodengoPequeno", "PortuguesePointer", "PortugueseSheepdog", "PortugueseWaterDog", "PosavazHound", "Pudelpointer", "Pug", "Puli", "Pumi", "PyreneanMastiff", "RafeirodoAlentejo", "RatTerrier", "RedandWhiteSetter", "RedboneCoonhound", "RhodesianRidgeback", "Rottweiler", "RussianEuropeanLaika", "RussianToy", "Saarloosewolfdog", "SaintBernard", "Saluki", "Samoyed", "Sarplaninac", "Schapendoes", "SchillerHound", "Schipperke", "ScottishDeerhound", "ScottishTerrier", "SealyhamTerrier", "SerbianHound", "SerbianTricolorHound", "ShetlandSheepdog", "ShibaInu", "ShihTzu", "Shikoku", "SiberianHusky", "SilkenWindhound", "SilkyTerrier", "SkyeTerrier", "Sloughi", "SlovenskyCuvac", "SmalandHound", "SmallMunsterlander", "SmallSwissHound", "SoftCoatedWheatenTerrier", "SouthRussianShepherdDog", "SpanishGreyhound", "SpanishHound", "SpanishMastiff", "SpanishWaterDog", "SpinoneItaliano", "SportingLucasTerrier", "Stabyhoun", "StaffordshireBullTerrier", "StandardPoodle", "StandardSchnauzer", "StephensCur", "StumpyTailCattleDog", "StyrianCoarseHairedHound", "SussexSpaniel", "SwedishElkhound", "SwedishLapphund", "SwedishVallhund", "SwissHound", "TeddyRooseveltTerrier", "ThaiRidgeback", "TibetanMastiff", "TibetanSpaniel", "TibetanTerrier", "Tornjak", "Tosa", "ToyFoxTerrier", "ToyManchesterTerrier", "ToyPoodle", "TransylvanianHound", "TreeingCur", "TreeingFeist", "TreeingTennesseeBrindle", "TreeingWalkerCoonhound", "TyroleanHound", "Vizsla", "VolpinoItaliano", "Weimaraner", "WelshHound", "WelshSpringerSpaniel", "WelshTerrier", "WestHighlandWhiteTerrier", "WestphalianDachsbracke", "WestSiberianLaika", "Whippet", "WhiteShepherd", "WireFoxTerrier", "WirehairedPointingGriffon", "Xoloitzcuintli", "YorkshireTerrier"]
    
    names = %w[Fido Dido Max Xyler Shiloh Yeller Spot Balto Bubba Sargent Major Chew Bones Princess Socks]
    
    colors = %w[Brown Golden Black Spots White Yellow Rust]
    
    breeds.each do |breed|
      
      dog = Dog.new
      dog.name = names.sample
      dog.color = colors.sample
      dog.breed = breed
      
      dog.save!
    end
    
    # Step 3: Make 5 packs of 10 dogs
    5.times do |i|
      pack = Pack.new
      pack.name = "Pack #{i}"
      pack.save!
      
      dog = Dog.all.sample
      10.times do
        
        # Find a dog without a pack
        while dog.has_pack?
          dog = Dog.all.sample
        end

        # Add dog to this pack
        dog.pack_id = pack.id
        dog.position = i 
        dog.save!
        
      end
    end
    
  end
  
end
