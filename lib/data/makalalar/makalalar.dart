
import 'package:arkadag/data/data.dart';

import 'package:arkadag/models/models.dart';

List<Kitap> getKitapList() {
  // return <Kitap>[
  //   Kitap(
  //     "Alem Icre at gezer",
  //     "Älem içre at gezer» romanyndan ýaş mugallymlara sargytlar:Mugallymyň sözlerinde-de, özüni alyp barşynda-da sap ýüreklilik bolmalydyr, galplyga, ýasamalyga orun bolmaly däldir. Çagalaryň gözüniň alnynda birje gezek galp aýdan adam olaryň öňünde hemişe ýalançy adam bolup galar.",
  //     '4.14',
  //     "assets/images/alem_icre_at_gezer.jpg",
  //     'assets/pdf/001.pdf',
  //     'songs/01_Soyyan_diydin.mp3',
  //   ),
  //   Kitap(
  //     "Alem Icre at gezer",
  //     "Älem içre at gezer» romanyndan ýaş mugallymlara sargytlar:Mugallymyň sözlerinde-de, özüni alyp barşynda-da sap ýüreklilik bolmalydyr, galplyga, ýasamalyga orun bolmaly däldir. Çagalaryň gözüniň alnynda birje gezek galp aýdan adam olaryň öňünde hemişe ýalançy adam bolup galar.",
  //     '4.14',
  //     "assets/images/Bagtyyarlyk_sagdynlykdan_baslanyar.png",
  //     'assets/pdf/001.pdf',
  //     'songs/01_Soyyan_diydin.mp3',
  //   ),
  //   Kitap(
  //     "Alem Icre at gezer",
  //     "Älem içre at gezer» romanyndan ýaş mugallymlara sargytlar:Mugallymyň sözlerinde-de, özüni alyp barşynda-da sap ýüreklilik bolmalydyr, galplyga, ýasamalyga orun bolmaly däldir. Çagalaryň gözüniň alnynda birje gezek galp aýdan adam olaryň öňünde hemişe ýalançy adam bolup galar.",
  //     '4.14',
  //     "assets/images/Dowlet_gusy.png",
  //     'assets/pdf/001.pdf',
  //     'songs/01_Soyyan_diydin.mp3',
  //   ),
  //   Kitap(
  //     "Alem Icre at gezer",
  //     "Älem içre at gezer» romanyndan ýaş mugallymlara sargytlar:Mugallymyň sözlerinde-de, özüni alyp barşynda-da sap ýüreklilik bolmalydyr, galplyga, ýasamalyga orun bolmaly däldir. Çagalaryň gözüniň alnynda birje gezek galp aýdan adam olaryň öňünde hemişe ýalançy adam bolup galar.",
  //     '4.14',
  //     "assets/images/caý_melhem_hem_ylham.jpg",
  //     'assets/pdf/001.pdf',
  //     'songs/01_Soyyan_diydin.mp3',
  //   ),
  // ];
  return allBooks;
}

class Filter {
  Filter(this.name);
  String name;
}

List<Filter> getFilterList() {
  return <Filter>[
    Filter("Ahlisi"),
    Filter("Halanlarym"),
    Filter("Okayanlarym"),
    Filter("Tomlar"),
    Filter("Gyzyl Kitap"),
    Filter("Konstitusiya "),
  ];
}

class Makala {
  Makala(this.title, this.maglumat, this.imgUrl, this.data);
  final String title;
  final String maglumat;
  final String imgUrl;
  final String data;
}

List<Makala> getMakala() {
  return <Makala>[
    Makala("Türkmen halysy", "2", "assets/images/3.png", '2012'),
    Makala("Bagtyýar döwür", "2", "assets/images/Bagtyyarlyk_sagdynlykdan_baslanyar.png",
        '2012'),
    Makala("Älem içre at gezer", "2",
        "assets/images/1.jpg", '2012'),
    Makala("1", "2", "assets/images/5.png", '2012'),
    Makala("1", "2", "assets/images/6.png", '2012'),
    
  ];
}
