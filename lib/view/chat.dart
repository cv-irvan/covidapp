part of 'importView.dart';

class Chat extends StatefulWidget {
  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        child: Column(
          children: [
            appBar(),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(20),
                color: whiteColor,
                child: Column(
                  children: [
                    Container(
                      height: 30,
                      width: 130,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: silverColor,
                      ),
                      child: Center(
                        child: Text(
                          'Melulai Chat',
                          style: GoogleFonts.poppins(
                            color: whiteColor,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                    yourChat(
                        'Hallo, Perkenalkan saya Dokter Nina, Dokter Spesialis Anak. Dengan Pengalaman 2 Tahun.'),
                    yourChat('Ada yang Lisa saya bantu?'),
                    myChat('Demam Anak saya sangat tinggi.'),
                    yourChat('Apakah anak ibu mengalami muntah-muntah?'),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          padding: EdgeInsets.fromLTRB(15, 5, 15, 5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(color: primaryColor),
                          ),
                          child: Text(
                            'Ya',
                            style: GoogleFonts.poppins(),
                          ),
                        ),
                        SizedBox(width: 10),
                        Container(
                          padding: EdgeInsets.fromLTRB(15, 5, 15, 5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(color: primaryColor),
                          ),
                          child: Text(
                            'Tidak/Tidak Tahu',
                            style: GoogleFonts.poppins(),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 50,
                        child: TextFormField(
                          decoration: InputDecoration(
                              hintText: 'Masukkan Pesan Anda...',
                              isDense: true,
                              prefixIcon: Icon(
                                Icons.attach_file,
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: primaryColor),
                                  borderRadius: BorderRadius.circular(100)),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: primaryColor),
                                  borderRadius: BorderRadius.circular(100))),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 45,
                      height: 45,
                      child: Image(image: Svg('assets/ic_send.svg')),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget yourChat(chat) {
    return Align(
      alignment: Alignment.topLeft,
      child: Container(
        margin: EdgeInsets.only(top: 10, right: 40),
        padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
        decoration: BoxDecoration(
            color: silverColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
              bottomRight: Radius.circular(20),
            )),
        child: Text(
          '$chat',
          style: GoogleFonts.poppins(),
        ),
      ),
    );
  }

  Widget myChat(chat) {
    return Align(
      alignment: Alignment.topRight,
      child: Container(
        margin: EdgeInsets.only(top: 10, left: 40),
        padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
        decoration: BoxDecoration(
            color: primaryColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
              bottomLeft: Radius.circular(20),
            )),
        child: Text(
          '$chat',
          style: GoogleFonts.poppins(
            color: whiteColor,
          ),
        ),
      ),
    );
  }

  Widget appBar() {
    return Container(
      height: 70,
      width: Sizeconfig.screenWidth,
      padding: EdgeInsets.fromLTRB(20, 10, 10, 10),
      color: mainColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              InkWell(
                onTap: () => Navigator.pop(context),
                child: Image(
                  image: Svg('assets/ic_back.svg'),
                  width: 35,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Dr. Rina Nose',
                    style: GoogleFonts.poppins(
                      color: whiteColor,
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    'Online',
                    style: GoogleFonts.poppins(
                      color: whiteColor,
                      fontSize: 10,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Icon(Icons.timer, color: Colors.white),
              SizedBox(
                width: 5,
              ),
              Text(
                '29:05',
                style: GoogleFonts.poppins(
                  color: whiteColor,
                  fontSize: 18,
                ),
              ),
              Icon(
                Icons.more_vert,
                color: whiteColor,
                size: 30,
              )
            ],
          )
        ],
      ),
    );
  }
}
