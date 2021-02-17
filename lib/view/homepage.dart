part of 'importView.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
                'Informasi',
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
                        Container(
                          padding: EdgeInsets.all(10),
                          width: Sizeconfig.screenWidth - 40,
                          height: Sizeconfig.lebarLayar * 26,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/bg_list_home.png'),
                              ),
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: blackColor.withOpacity(0.13),
                                  blurRadius: 6,
                                  offset: Offset(0, 3),
                                )
                              ]),
                          child: Row(
                            children: [
                              Image(image: Svg('assets/ic_mengenal.svg')),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    'Mengenal Virus Covid 19',
                                    style: GoogleFonts.poppins(
                                        textStyle: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      color: whiteColor,
                                      fontSize: Sizeconfig.lebarLayar * 4.2,
                                    )),
                                  ),
                                  Container(
                                    height: Sizeconfig.lebarLayar * 7,
                                    width: Sizeconfig.lebarLayar * 18,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: whiteColor,
                                        // width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(100),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'Detail',
                                        style: GoogleFonts.poppins(
                                          fontSize: Sizeconfig.lebarLayar * 3,
                                          color: whiteColor,
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          width: Sizeconfig.screenWidth - 40,
                          height: Sizeconfig.lebarLayar * 26,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/bg_list_home.png'),
                              ),
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: blackColor.withOpacity(0.13),
                                  blurRadius: 6,
                                  offset: Offset(0, 3),
                                ),
                              ]),
                          child: Row(
                            children: [
                              Image(image: Svg('assets/mencegah.svg')),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    'Mencegah Covid 19',
                                    style: GoogleFonts.poppins(
                                        textStyle: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      color: whiteColor,
                                      fontSize: Sizeconfig.lebarLayar * 4.2,
                                    )),
                                  ),
                                  Container(
                                    height: Sizeconfig.lebarLayar * 7,
                                    width: Sizeconfig.lebarLayar * 18,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: whiteColor,
                                        // width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(100),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'Detail',
                                        style: GoogleFonts.poppins(
                                          fontSize: Sizeconfig.lebarLayar * 3,
                                          color: whiteColor,
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          width: Sizeconfig.screenWidth - 40,
                          height: Sizeconfig.lebarLayar * 26,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/bg_list_home.png'),
                              ),
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: blackColor.withOpacity(0.13),
                                  blurRadius: 6,
                                  offset: Offset(0, 3),
                                )
                              ]),
                          child: Row(
                            children: [
                              Image(image: Svg('assets/mencegah.svg')),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    'Gejala Covid 19',
                                    style: GoogleFonts.poppins(
                                        textStyle: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      color: whiteColor,
                                      fontSize: Sizeconfig.lebarLayar * 4.2,
                                    )),
                                  ),
                                  Container(
                                    height: Sizeconfig.lebarLayar * 7,
                                    width: Sizeconfig.lebarLayar * 18,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: whiteColor,
                                        // width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(100),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'Detail',
                                        style: GoogleFonts.poppins(
                                          fontSize: Sizeconfig.lebarLayar * 3,
                                          color: whiteColor,
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          width: Sizeconfig.screenWidth - 40,
                          height: Sizeconfig.lebarLayar * 26,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/bg_list_home.png'),
                              ),
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: blackColor.withOpacity(0.13),
                                  blurRadius: 6,
                                  offset: Offset(0, 3),
                                )
                              ]),
                          child: Row(
                            children: [
                              Image(image: Svg('assets/mengobati.svg')),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    'Mengobati Covid 19',
                                    style: GoogleFonts.poppins(
                                        textStyle: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      color: whiteColor,
                                      fontSize: Sizeconfig.lebarLayar * 4.2,
                                    )),
                                  ),
                                  Container(
                                    height: Sizeconfig.lebarLayar * 7,
                                    width: Sizeconfig.lebarLayar * 18,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: whiteColor,
                                        // width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(100),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'Detail',
                                        style: GoogleFonts.poppins(
                                          fontSize: Sizeconfig.lebarLayar * 3,
                                          color: whiteColor,
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
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
}
