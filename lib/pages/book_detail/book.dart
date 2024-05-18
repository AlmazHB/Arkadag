// kitap_detail.dart

import 'package:flutter/material.dart';

import '../../models/models.dart';
import '../pages.dart';


class KitapDetail extends StatefulWidget {
  const KitapDetail({
    super.key,
    required this.kitap,
  });
  final Kitap kitap;

  @override
  State<KitapDetail> createState() => _KitapDetailState();
}

class _KitapDetailState extends State<KitapDetail> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: theme.colorScheme.background,
      body: Stack(
        children: [
          Positioned(
            top: 0,
            child: Container(
              width: size.width,
              height: size.height / 1.66,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    widget.kitap.surat,
                  ),
                  fit: BoxFit.fill,
                ),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 28,
                    ),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          height: 36,
                          width: 36,
                          margin: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 10),
                          decoration: BoxDecoration(
                              color: theme.primaryColor,
                              shape: BoxShape.circle,
                              border: Border.all(color: theme.primaryColor)),
                          child:  Icon(
                            Icons.arrow_back,
                            color: theme.colorScheme.background,
                            size: 30,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              height: size.height * 0.45,
              width: size.width,
              padding: const EdgeInsets.only(
                top: 28,
              ),
              decoration: BoxDecoration(
               
               color: theme.colorScheme.background,
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(54),
                    topRight: Radius.circular(54)),
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: 0,
                    left: 0,
                    right: 0,
                    height: 120,
                    child: Container(
                      padding: const EdgeInsets.only(left: 30),
                      margin: const EdgeInsets.only(
                        bottom: 16,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.kitap.ady,
                            style: theme.textTheme.bodyLarge,
                            // style: const TextStyle(
                            //     fontSize: 24, fontWeight: FontWeight.w800),
                          ),
                          Row(
                            children: [
                              Text(
                                "Awtor:",
                                style: theme.textTheme.bodyMedium,
                              ),
                              const SizedBox(
                                width: 4,
                              ),
                              Text(
                                'Gurbanguly Berdimuhammedow',
                                style: theme.textTheme.bodyMedium,
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 60,
                    left: 18,
                    right: 0,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 8),
                      child: Text(
                        widget.kitap.maglumat,
                        style: theme.textTheme.bodySmall,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          height: 100,
                          width: size.width,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 6,
                                  vertical: 4,
                                ),
                                decoration: BoxDecoration(
                                  
                                  border: Border.all(color: theme.primaryColor),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: TextButton.icon(
                                  onPressed: () {
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: ((context) => PdfScreen(
                                              
                                              title: widget.kitap.ady, addressPdf: widget.kitap.pdf,
                                            )),
                                      ),
                                    );
                                  },
                                  icon: Icon(
                                    Icons.book,
                                    color: theme.primaryColor,
                                  ),
                                  label:  Text(
                                    "Okamak",
                                    style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.bold,
                                      color: theme.primaryColor,
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 6,
                                  vertical: 4,
                                ),
                                decoration: BoxDecoration(
                                  border: Border.all(color: theme.primaryColor),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: TextButton.icon(
                                  onPressed: () {
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: ((context) =>
                                         AudioBookScreen(
                                              title: widget.kitap.ady,
                                              addressImage: widget.kitap.surat,
                                              addressAudio: widget.kitap.audio,
                                            )),
                                      ),
                                    );
                                  },
                                  icon:  Icon(
                                    Icons.play_arrow,
                                    color: theme.primaryColor,
                                  ),
                                  label: Text(
                                    "Dinlemek",
                                    style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.bold,
                                      color: theme.primaryColor,
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
