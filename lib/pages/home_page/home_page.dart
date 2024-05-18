
import 'package:flutter/material.dart';
import '../../data/data.dart';

import '../../generated/l10n.dart';
import '../../models/models.dart';
import '../pages.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Filter> filters = getFilterList();

  late Filter selectedFilter;

  final List<Kitap> kitap = getKitapList();
  final List<Makala> makala = getMakala();

  @override
  void initState() {
    super.initState();
    setState(() {
      selectedFilter = filters[0];
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      decoration: const BoxDecoration(
          // gradient: LinearGradient(colors: [Color.fromARGB(255, 29, 61, 158),Color.fromARGB(255, 48, 207, 224),],
          // begin: Alignment.topCenter,
          // end: Alignment.bottomCenter,)
          color: Colors.white),
      child: Scaffold(
        backgroundColor: theme.scaffoldBackgroundColor,
        appBar: AppBar(
          backgroundColor: const Color(0xFF15A354),
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const UserPage(),
                ),
              );
            },
            icon: const Icon(
              Icons.person,
              size: 24,
              color: Colors.white,
            ),
          ),
          title: Container(
            decoration: const BoxDecoration(),
            child: Image.asset(
              "assets/images/1logo.png",
              height: 100,
              scale: 1.4,
            ),
          ),
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const SearchScreen(),
                  ),
                );
              },
              icon: const Icon(
                Icons.search,
                size: 24,
                color: Colors.white,
              ),
            ),
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding:  EdgeInsets.only(left: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin:  EdgeInsets.symmetric(vertical: 14),
                    child:  Center(
                      child: Text(
                        // LocaleKeys.Kategoriyalar.tr(),
                        // 'Kategoriyalar',
                        S.of(context).kategoriyalar,
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold,
                          color: theme.primaryColor,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.08,
                    decoration: const BoxDecoration(
                      color: Colors.transparent,
                    ),
                    child: ListView(
                      physics: const BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      children: buildFilters(),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 1,
              decoration: const BoxDecoration(color: Colors.black),
              margin: const EdgeInsets.only(
                  left: 16, right: 16, top: 6, bottom: 12),
            ),
            Center(
              child: Text(
                S.of(context).kitaplar,
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.bold,
                  color: theme.primaryColor,
                  fontSize: 24,
                ),
              ),
            ),
            Expanded(
              child: Container(
                height: MediaQuery.of(context).size.height * 0.4,
                padding: const EdgeInsets.only(top: 12),
                decoration: const BoxDecoration(
                  color: Colors.transparent,
                ),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  physics: const ClampingScrollPhysics(),
                  children: buildBooks(),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 6),
              child:  Center(
                child: Text(
                  "Makalalar",
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold,
                    color: theme.primaryColor,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
            Container(
              height: 76,
              margin: const EdgeInsets.only(bottom: 16),
              decoration: const BoxDecoration(
                color: Colors.transparent,
              ),
              child: ListView(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                children: buildMakalalar(),
              ),
            )
          ],
        ),
      ),
    );
  }

  List<Widget> buildFilters() {
    List<Widget> list = [];
    for (var i = 0; i < filters.length; i++) {
      list.add(buildFilter(filters[i]));
    }
    return list;
  }

  Widget buildFilter(Filter item) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedFilter = item;
        });
      },
      child: Container(
        height: 40,
        width: 120,
        margin: const EdgeInsets.only(right: 32),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondary,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Center(
          child: Text(
            item.name,
            style: TextStyle(
                color: selectedFilter == item
                    ? Theme.of(context).primaryColor
                    : Colors.black54,
                fontSize: 12,
                letterSpacing: 2,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }

  List<Widget> buildBooks() {
    List<Widget> list = [];
    for (var i = 0; i < kitap.length; i++) {
      list.add(buildBook(kitap[i], i));
    }
    return list;
  }

  Widget buildBook(Kitap kitap, int index) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => KitapDetail(kitap: kitap),
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.only(
          right: 16,
          left: index == 0 ? 18 : 0,
        ),
        padding: const EdgeInsets.only(top: 18),
        child: Column(
          children: [
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.56,
                height: MediaQuery.of(context).size.height * 0.25,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      kitap.surat,
                    ),
                    fit: BoxFit.fill,
                  ),
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 0.2,
                        blurRadius: 8,
                        offset: const Offset(10, 10)),
                    const BoxShadow(
                        color: Colors.white,
                        spreadRadius: 0.0,
                        blurRadius: 0.0,
                        offset: Offset(0, 0))
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 24),
              width: MediaQuery.of(context).size.width * 0.48,
              child: Center(
                child: Text(kitap.ady,
                    style: Theme.of(context).textTheme.bodyMedium),
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> buildMakalalar() {
    List<Widget> list = [];
    for (var i = 0; i < makala.length; i++) {
      list.add(buildMakala(makala[i], i));
    }
    return list;
  }

  Widget buildMakala(Makala makala, int index) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) =>
                MakalaScreen(title: makala.title, img: makala.imgUrl)));
      },
      child: Container(
        margin: EdgeInsets.only(
          right: 36,
          left: index == 0 ? 24 : 0,
        ),
        height: 38,
        width: 66,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            image: DecorationImage(
                image: AssetImage(
                  makala.imgUrl,
                ),
                fit: BoxFit.cover)),
      ),
    );
  }
}
