import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Falahkun | My Portfolio',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Testing());
  }
}

class Testing extends StatefulWidget {
  @override
  _TestingState createState() => _TestingState();
}

class _TestingState extends State<Testing> {
  PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(viewportFraction: 0.8, keepPage: true);
  }

  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;

    bool _isMobile = _width < 1010;

    return Scaffold(
      body: _isMobile
          ? Container()
          : Stack(
              children: [
                Container(
                  height: _height,
                  width: _width,
                ),
                Container(
                  height: _height,
                  width: _width,
                  child: Stack(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 100),
                        height: _height,
                        width: _width,
                        child: PageView(
                          controller: _pageController,
                          scrollDirection: Axis.vertical,
                          physics: PageScrollPhysics(),
                          children: [
                            Stack(
                              children: [
                                Positioned(
                                  right: 0,
                                  top: 80,
                                  child: Container(
                                    height: 251,
                                    width: (_width / 2.5) - 30,
                                    decoration: BoxDecoration(
                                        color: Color(0xFFF5F5F5),
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(25),
                                          bottomLeft: Radius.circular(25),
                                        )),
                                  ),
                                ),
                                Container(
                                    margin: EdgeInsets.symmetric(
                                        horizontal: _width / 6),
                                    child: MainWidget()),
                              ],
                            ),
                            Container(
                                margin: EdgeInsets.symmetric(
                                    horizontal: _width / 6),
                                child: AboutMe()),
                            MySkill(),
                            Portfolio(),
                          ],
                        ),
                      ),
                      Container(
                        child: NavBar(),
                        margin: EdgeInsets.symmetric(horizontal: _width / 6),
                      ),
                    ],
                  ),
                ),
                Text(
                    "$_width x $_height | margin: ${(_width - ((_width / 6) * 2)) / 2}")
              ],
            ),
    );
  }
}

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildTitleWidget(),
          Row(
            children: [
              _buildMenuWidget(),
              SizedBox(
                width: 25,
              ),
              _buildSosmedWidget(),
            ],
          )
        ],
      ),
    );
  }

  Row _buildSosmedWidget() {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 7),
          child: Icon(
            MdiIcons.twitter,
            size: 15,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 7),
          child: Icon(
            MdiIcons.facebook,
            size: 15,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 7),
          child: Icon(
            MdiIcons.github,
            size: 15,
          ),
        ),
      ],
    );
  }

  Row _buildMenuWidget() {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Text("HOME",
              style: GoogleFonts.raleway(
                  fontWeight: FontWeight.bold,
                  fontSize: 13,
                  color: Colors.red)),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Text("ABOUT",
              style: GoogleFonts.raleway(
                  fontWeight: FontWeight.bold,
                  fontSize: 13,
                  color: Colors.black)),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Text("PORTFOLIO",
              style: GoogleFonts.raleway(
                  fontWeight: FontWeight.bold,
                  fontSize: 13,
                  color: Colors.black)),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Text("BLOG",
              style: GoogleFonts.raleway(
                  fontWeight: FontWeight.bold,
                  fontSize: 13,
                  color: Colors.black)),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Text("CONTACT",
              style: GoogleFonts.raleway(
                  fontWeight: FontWeight.bold,
                  fontSize: 13,
                  color: Colors.black)),
        ),
      ],
    );
  }

  Row _buildTitleWidget() {
    return Row(
      children: [
        Container(
          height: 35,
          width: 35,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6), color: Colors.red),
          child: Center(
            child: Text(
              "F",
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        SizedBox(
          width: 5,
        ),
        Text(
          "Falahkun",
          style: TextStyle(
              fontSize: 18,
              color: Colors.black.withOpacity(0.8),
              fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}

class MainWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          margin: const EdgeInsets.only(top: 50),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "hello, my name is".toUpperCase(),
                style: GoogleFonts.raleway(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              SizedBox(
                height: 18,
              ),
              Text(
                "FALAH ATHARID YUSUF".toUpperCase(),
                style: GoogleFonts.fjallaOne(
                  letterSpacing: 1.0,
                  wordSpacing: 1.0,
                  fontSize: 38,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 18,
              ),
              Container(
                width: MediaQuery.of(context).size.width / 3,
                child: Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",
                  style: GoogleFonts.raleway(
                    fontSize: 12,
                    fontWeight: FontWeight.normal,
                    color: Colors.black,
                  ),
                  maxLines: 3,
                  overflow: TextOverflow.clip,
                ),
              ),
              SizedBox(
                height: 35,
              ),
              Row(
                children: [
                  ButtonModel1(
                    title: "MY WORK",
                  ),
                  ButtonModel2(
                    title: "HIRE ME",
                  ),
                ],
              ),
            ],
          ),
        ),
        ClipPath.shape(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
          child: Image.network(
            "https://avatars1.githubusercontent.com/u/30676438?s=400&u=943fe5702ce7e9e10cf0bdf18db7fb95eb1eda7c&v=4",
            width: 245,
            height: 300,
            fit: BoxFit.cover,
          ),
        )
      ],
    );
  }
}

class ButtonModel2 extends StatelessWidget {
  final String title;
  final Function onPressed;
  final double width;
  const ButtonModel2({
    this.width = 120,
    this.title,
    this.onPressed,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: width,
      margin: const EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.redAccent, width: 2),
          borderRadius: BorderRadius.circular(2),
          color: Colors.white),
      child: Center(
        child: Text(title ?? "HIRE ME",
            style: GoogleFonts.notoSans(
              fontSize: 13,
              fontWeight: FontWeight.bold,
              color: Colors.redAccent,
            )),
      ),
    );
  }
}

class ButtonModel1 extends StatelessWidget {
  final String title;
  final Function onPressed;
  final double width;
  const ButtonModel1({
    this.width = 120,
    this.title,
    this.onPressed,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: width,
      margin: const EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(2), color: Colors.redAccent),
      child: Center(
        child: Text(title ?? "MY WORK",
            style: GoogleFonts.notoSans(
              fontSize: 13,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            )),
      ),
    );
  }
}

class AboutMe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("ABOUT ME",
                  style: GoogleFonts.oswald(
                      fontSize: 23, fontWeight: FontWeight.bold)),
              Container(
                margin: EdgeInsets.only(top: 6, bottom: 7),
                height: 1,
                width: 80,
                color: Colors.red,
              ),
              Text(
                "A PROGRAMMER BASED IN INDONESIA",
                style: GoogleFonts.raleway(
                    fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(top: 25),
              height: 300,
              width: 300,
              child: Stack(
                children: [
                  Container(
                    height: 285,
                    width: 125,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.redAccent),
                  ),
                  Positioned(
                    top: 27,
                    left: 25,
                    child: ClipPath.shape(
                      shape: RoundedRectangleBorder(
                          side: BorderSide(color: Colors.redAccent, width: 5),
                          borderRadius: BorderRadius.circular(10)),
                      child: Image.network(
                        "https://avatars1.githubusercontent.com/u/30676438?s=400&u=943fe5702ce7e9e10cf0bdf18db7fb95eb1eda7c&v=4",
                        height: 275,
                        width: 235,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(width: 30),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(height: 15),
                  Text("I'M FALAH ATHARID YUSUF",
                      style: GoogleFonts.oswald(
                          fontSize: 23, fontWeight: FontWeight.bold)),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    "A PROGRAMMER BASED IN INDONESIA",
                    style: GoogleFonts.raleway(
                        fontSize: 12, fontWeight: FontWeight.bold),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 12),
                    width: MediaQuery.of(context).size.width / 3,
                    child: Text(
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                      style: GoogleFonts.raleway(
                          fontSize: 12, fontWeight: FontWeight.normal),
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      ButtonModel1(
                        title: "DOWNLOAD CV",
                        width: 135,
                      ),
                      ButtonModel2(
                        title: "ABOUT MORE",
                        width: 135,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    ));
  }
}

class MySkill extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      color: Color(0xFFF5F5F5),
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width / 6),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(top: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("MY SKILS",
                    style: GoogleFonts.oswald(
                        fontSize: 23, fontWeight: FontWeight.bold)),
                Container(
                  margin: EdgeInsets.only(top: 6, bottom: 7),
                  height: 1,
                  width: 80,
                  color: Colors.red,
                ),
                Text(
                  "A PROGRAMMER BASED IN INDONESIA",
                  style: GoogleFonts.raleway(
                      fontSize: 12, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Wrap(
            spacing: 10,
            runSpacing: 10,
            children: [
              ProgressBar(
                percentace: 75,
                title: "Flutter Mobile Programming",
              ),
              ProgressBar(
                percentace: 65,
                title: "Laravel Backend API",
              ),
              ProgressBar(
                percentace: 50,
                title: "UI Design",
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ProgressBar extends StatelessWidget {
  final double percentace;
  final String title;
  final double width;
  const ProgressBar({
    this.title = "Flutter",
    this.percentace = 0,
    this.width = 450,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(title),
                Text("$percentace%"),
              ],
            ),
          ),
          SizedBox(height: 5),
          Stack(
            children: [
              Container(
                width: width,
                height: 6,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Color(0xFFC4C4C4)),
              ),
              Container(
                width: width * (percentace / 100),
                height: 6,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.redAccent),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Portfolio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            margin: EdgeInsets.only(
              top: 30,
              left: MediaQuery.of(context).size.width / 6,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("MY PORTFOLIO",
                    style: GoogleFonts.oswald(
                        fontSize: 23, fontWeight: FontWeight.bold)),
                Container(
                  margin: EdgeInsets.only(top: 6, bottom: 7),
                  height: 1,
                  width: 80,
                  color: Colors.red,
                ),
                Text(
                  "A PROGRAMMER BASED IN INDONESIA",
                  style: GoogleFonts.raleway(
                      fontSize: 12, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(
                  top: 15,
                  left: MediaQuery.of(context).size.width / 8,
                ),
                height: 300,
                child: StaggeredGridView.countBuilder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  crossAxisCount: 2,
                  itemCount: 5,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) => Expanded(
                    child: new Container(
                      height: index == 0 ? 300 : 148,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://avatars1.githubusercontent.com/u/30676438?s=400&u=943fe5702ce7e9e10cf0bdf18db7fb95eb1eda7c&v=4")),
                        borderRadius: BorderRadius.circular(6),
                        color: Colors.green,
                      ),
                    ),
                  ),
                  staggeredTileBuilder: (int index) =>
                      new StaggeredTile.fit(index == 0 ? 4 : 1),
                  mainAxisSpacing: 4.0,
                  crossAxisSpacing: 4.0,
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "INSPIRATION IDEA",
                      style: GoogleFonts.raleway(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.only(top: 10, bottom: 15),
                        width: 350,
                        child: Text(
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,",
                          style: GoogleFonts.notoSans(
                            fontSize: 14,
                          ),
                          maxLines: 3,
                          overflow: TextOverflow.clip,
                        )),
                    ButtonModel2(
                      title: "View More",
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
