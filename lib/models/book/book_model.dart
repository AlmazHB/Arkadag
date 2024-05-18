class Kitap {
  final int id;
  final String ady;
  final String maglumat;
  final String score;
  final String surat;
  final String pdf;
  final String audio;
  final int page;
   bool liked;
   Kitap(   {
    required this.id,
    required this.ady,
    required this.maglumat,
    required this.score,
    required this.surat,
    required this.pdf,
    required this.audio,
    required this.page,
    required this.liked
  });
}
