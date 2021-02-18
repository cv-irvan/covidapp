part of 'importView.dart';

class BeritaPage extends StatefulWidget {
  @override
  _BeritaPageState createState() => _BeritaPageState();
}

class _BeritaPageState extends State<BeritaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: primaryColor,
        body: SlidingUpPanel(
          backdropEnabled: false,
          maxHeight: MediaQuery.of(context).size.height,
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
                  Text(
                    'Berita',
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: textColor,
                      fontSize: Sizeconfig.lebarLayar * 5,
                    )),
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
                            SizedBox(
                              height: 10,
                            ),
                            listBerita(),
                            SizedBox(
                              height: 20,
                            ),
                            listBerita(),
                            SizedBox(
                              height: 20,
                            ),
                            listBerita(),
                            SizedBox(
                              height: 20,
                            ),
                            listBerita(),
                            SizedBox(
                              height: 20,
                            ),
                            listBerita(),
                            SizedBox(
                              height: 100,
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              )),
          body: Container(
            decoration: BoxDecoration(color: mainColor),
            child: Align(
              alignment: Alignment.topCenter,
              child: Image(
                image: AssetImage('assets/bg_home.png'),
              ),
            ),
          ),
        ));
  }

  Widget listBerita() {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => DetailBerita()));
      },
      child: Container(
        width: Sizeconfig.screenWidth - 20,
        height: Sizeconfig.lebarLayar * 65,
        decoration: BoxDecoration(
            color: whiteColor,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                blurRadius: 6,
                color: blackColor.withOpacity(0.3),
                offset: Offset(0, 3),
              )
            ]),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: Sizeconfig.screenWidth - 20,
              height: Sizeconfig.lebarLayar * 43,
              decoration: BoxDecoration(
                color: blackColor.withOpacity(0.1),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
                image: DecorationImage(
                  image: AssetImage('assets/hotnews.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
              child: Text(
                'Rumah Sakit Penuh',
                style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: textColor,
                  fontSize: Sizeconfig.lebarLayar * 4.5,
                )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 5),
              child: Text(
                '19/02/21  Rumah sakit saat ini Penuh Dengan Pasien Covid 19,  More…..',
                style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                  fontWeight: FontWeight.w300,
                  color: textColor,
                  fontSize: Sizeconfig.lebarLayar * 3.5,
                )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
