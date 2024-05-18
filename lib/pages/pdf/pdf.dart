// import 'package:flutter/material.dart';
// import 'package:flutter_pdfview/flutter_pdfview.dart';

// class PdfScreen extends StatelessWidget {
//   const PdfScreen({super.key, required this.pdfPath, required this.title});

//   final String pdfPath;
//   final String title;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(title),
//       ),
//       body: Center(
//         child: SizedBox(
//           width: MediaQuery.of(context).size.width,
//           height: MediaQuery.of(context).size.height,
//           child: PDFView(
//             filePath: pdfPath,
//             enableSwipe: true, // czy pozwalać na przewijanie
//             swipeHorizontal: false, // przewijanie poziome czy pionowe
//             autoSpacing: false, // automatyczne odstępy między stronami
//             pageSnap: true, // przewijaj do najbliższej całej strony
//             pageFling: false, // przewijaj stronami w pełnym wymiarze, zamiast płynnie
//             onRender: (pages) {
//               // wywołuje się, gdy strony są gotowe do renderowania
//             },
//             onError: (error) {
//               // obsługa błędów ładowania
//             },
//             onPageError: (page, error) {
//               // obsługa błędów na konkretnych stronach
//             },
//             onViewCreated: (PDFViewController viewController) {
//               // kontroler do wykonywania operacji na PDF
//             },
//             onPageChanged: (int? page, int? total) {
//               // wywołuje się, gdy zmienia się strona
//             },
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class PdfScreen extends StatefulWidget {
  const PdfScreen({super.key, required this.addressPdf, required this.title});
  final String addressPdf;
  final String title;

  @override
  State<PdfScreen> createState() => _PdfScreenState();
}

class _PdfScreenState extends State<PdfScreen> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    PdfViewerController pdfController = PdfViewerController();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
          style: theme.appBarTheme.titleTextStyle,
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.sizeOf(context).height * 0.86,
            child: SfPdfViewer.asset(
              widget.addressPdf,
              scrollDirection: PdfScrollDirection.vertical,
              controller: pdfController,
            ),
          ),
        ],
      ),
    );
  }
}
