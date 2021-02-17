part of 'importView.dart';

class DokterPage extends StatefulWidget {
  @override
  _DokterPageState createState() => _DokterPageState();
}

class _DokterPageState extends State<DokterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SlidingUpPanel(
      backdropEnabled: false,
      maxHeight: MediaQuery.of(context).size.height,
      minHeight: MediaQuery.of(context).size.width / 100 * 115,
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(32.0),
        topRight: Radius.circular(32.0),
      ),
      panel: DefaultTabController(
        length: 4,
        child: Container(
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
                  'Konsultasi',
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
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Cari',
                    hintStyle: GoogleFonts.poppins(),
                    isDense: true,
                    prefixIcon: Icon(
                      Icons.search,
                      size: 30,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: primaryColor, width: 2),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: primaryColor, width: 2),
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                    height: 40,
                    width: Sizeconfig.screenWidth,
                    child: TabBar(
                      isScrollable: true,
                      labelColor: textColor,
                      indicatorColor: textColor,
                      labelStyle: GoogleFonts.poppins(),
                      tabs: [
                        Tab(
                          text: 'Dokter',
                        ),
                        Tab(
                          text: 'Rumah Sakit',
                        ),
                        Tab(
                          text: 'Apotik',
                        ),
                        Tab(
                          text: 'Obat',
                        ),
                      ],
                    )),
                Divider(),
                SizedBox(
                  height: 10,
                ),
                Expanded(
                  child: Container(
                      child: TabBarView(children: [
                    Container(
                      child: ListView(
                        children: [
                          listDokter(),
                          listDokter(),
                          listDokter(),
                          listDokter(),
                          listDokter(),
                          SizedBox(
                            height: 100,
                          )
                        ],
                      ),
                    ),
                    Container(),
                    Container(),
                    Container(),
                  ])),
                )
              ],
            )),
      ),
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

  Container listDokter() {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      height: 80,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: mainColor,
                    width: 2,
                  ),
                  image: DecorationImage(
                    image: NetworkImage(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQvdfEcGCnLxeXcAnaakQKafVBW3XpjokZHcg&usqp=CAU'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Dr. Rina Nose',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: textColor,
                        fontSize: Sizeconfig.lebarLayar * 5,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        size: 20,
                        color: starColor,
                      ),
                      Icon(
                        Icons.star,
                        size: 20,
                        color: starColor,
                      ),
                      Icon(
                        Icons.star,
                        size: 20,
                        color: starColor,
                      ),
                      Icon(
                        Icons.star,
                        size: 20,
                        color: starColor,
                      ),
                      Icon(
                        Icons.star_half,
                        size: 20,
                        color: starColor,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Dokter Spesialis Anak',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: primaryColor,
                        fontSize: Sizeconfig.lebarLayar * 4,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Container(
            width: 70,
            height: 30,
            decoration: BoxDecoration(
              color: primaryColor,
              borderRadius: BorderRadius.circular(100),
            ),
            child: Center(
              child: Text(
                'Chat',
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: whiteColor,
                    fontSize: Sizeconfig.lebarLayar * 3.8,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
