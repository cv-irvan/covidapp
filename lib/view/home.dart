part of 'importView.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    Sizeconfig().init(context);
    return DefaultTabController(
      length: 3,
      initialIndex: 1,
      child: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 50,
                color: mainColor,
                child: Center(
                  child: TabBar(
                    indicatorColor: transparantColor,
                    labelStyle: GoogleFonts.poppins(),
                    tabs: [
                      Tab(
                        text: 'Berita',
                      ),
                      Tab(
                        text: 'Home',
                      ),
                      Tab(
                        text: 'Dokter',
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  child: TabBarView(
                    children: [
                      BeritaPage(),
                      HomePage(),
                      DokterPage(),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
