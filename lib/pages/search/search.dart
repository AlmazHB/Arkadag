import 'package:flutter/material.dart';

import '../../data/data.dart';
import '../../models/models.dart';
import '../pages.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  List<Kitap> kitaps = allBooks;
  late List<Kitap> searchingBooks;
  bool liked = false;
  @override
  void initState() {
    super.initState();
    kitaps = allBooks;
    searchingBooks = kitaps;
    liked;
  }

  @override
  Widget build(BuildContext context) {
    final styleHint = TextStyle(
      color: Theme.of(context).primaryColor,
    );
    final theme = Theme.of(context);

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            // gradient: LinearGradient(colors: [Color(0xFFFFA585),Color(0xFFFFEDA0),],
            // begin: Alignment.topCenter,
            // end: Alignment.bottomCenter,)
            //     gradient: LinearGradient(
            //   colors: [
            //     Color.fromARGB(255, 29, 61, 158),
            //     Color.fromARGB(255, 48, 207, 224),
            //   ],
            //   begin: Alignment.topCenter,
            //   end: Alignment.bottomCenter,
            // ),
            color: theme.colorScheme.background),
        child: Column(
          children: [
            //buildSearch(),
            Container(
              height: 42,
              margin: const EdgeInsets.only(
                  top: 50, left: 16, right: 16, bottom: 8),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: theme.colorScheme.background,
                  border: Border.all(color: theme.primaryColor)),
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: TextField(
                decoration: InputDecoration(
                  icon: Icon(
                    Icons.search,
                    color: theme.primaryColor,
                  ),
                  labelStyle: TextStyle(color: theme.primaryColor),
                  hintText: "Gozleg",
                  hintStyle: styleHint,
                  border: InputBorder.none,
                ),
                onChanged: (string) {
                  setState(() {
                    searchingBooks = kitaps
                        .where((kitap) => (kitap.ady
                            .toLowerCase()
                            .contains(string.toLowerCase())))
                        .toList();
                  });
                },
                style: TextStyle(fontSize: 16, color: theme.primaryColor),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: searchingBooks.length,
                itemBuilder: (BuildContext context, int index) {
                  final kitap = searchingBooks[index];
                  return buildKitap(kitap);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildKitap(Kitap kitap) {
    return ListTile(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => KitapDetail(kitap: kitap),
          ),
        );
      },
      leading: Image.asset(
        kitap.surat,
        fit: BoxFit.fitHeight,
        height: 100,
      ),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.50,
            child: Text(
              kitap.ady,
              style: TextStyle(
                  fontSize: 18, color: Theme.of(context).primaryColor),
            ),
          ),
          IconButton(
              icon: Icon(
                Icons.favorite,
                color: kitap.liked == true ? Colors.red : Colors.grey,
              ),
              onPressed: () {
                setState(() {
                  if (kitap.liked) {
                    kitap.liked = false;
                  } else {
                    liked = true;
                  }
                });
              }),
        ],
      ),
    );
  }
}
