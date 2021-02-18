part of 'importView.dart';

class DetailBerita extends StatefulWidget {
  @override
  _DetailBeritaState createState() => _DetailBeritaState();
}

class _DetailBeritaState extends State<DetailBerita> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SlidingUpPanel(
      backdropEnabled: false,
      maxHeight: MediaQuery.of(context).size.height - 100,
      minHeight: MediaQuery.of(context).size.width / 100 * 115,
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(32.0),
        topRight: Radius.circular(32.0),
      ),
      panel: Container(
          padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
          decoration: BoxDecoration(
            color: whiteColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(32.0),
              topRight: Radius.circular(32.0),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  width: 30,
                  height: 5,
                  decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(100)),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Berita',
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: textColor,
                      fontSize: Sizeconfig.lebarLayar * 5,
                    )),
                  ),
                  Row(
                    children: [
                      Icon(Icons.comment),
                      SizedBox(
                        width: 5,
                      ),
                      Icon(Icons.favorite_border)
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(
                child: Container(
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Penulis : Nicholas Saputra\nJAKARTA, KOMPAS.com - Inisiator LaporCovid-19 Irma Hidayana mendorong pemerintah dan Satuan Tugas (Satgas) Penanganan Covid-19 untuk mencari solusi mengenai penuhnya kapasitas rumah sakit, khususnya di Jakarta, Bogor, Depok, Tangerang dan Bekasi (Jabodetabek).\n\n“Ya berdasarkan  pencarian kami di rumah sakit - rumah sakit yang ada di Jabodetabek itu  semuanya sudah full sehingga mengakibatkan banyak pasien yang tidak bisa ditampung,” kata Irma dalam Konferensi Pers Daring, Senin (25/1/2021).\n\nIa mengatakan, kondisi ini membuat banyak pasien juga tidak bisa mendapatkan ruang ICU dan bahkan beberapa di antaranya meninggal dunia.\n\nIronisnya, lanjut dia, kondisi ini sudah berlangsung sejak Desember 2020 dan hingga sekarang masih banyak pasien yang ditolak oleh rumah sakit. \n\n“Ini sudah berlarut-larut dari Desember 2020 hingga saat ini sudah banyak warga yang ditolak rumah sakit,”  ujarnya.',
                          style: GoogleFonts.poppins(),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          )),
      body: Container(
          decoration: BoxDecoration(color: mainColor),
          child: Stack(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Image(
                  image: AssetImage('assets/hotnews.png'),
                  height: Sizeconfig.screenWidth,
                  fit: BoxFit.cover,
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 40, 0, 0),
                  child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Image(
                      image: Svg('assets/ic_back.svg'),
                      width: 40,
                    ),
                  ),
                ),
              ),
            ],
          )),
    ));
  }
}
