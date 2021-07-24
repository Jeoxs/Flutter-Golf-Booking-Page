import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Mountain Dell test'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _mountainDellPage(),
    );
  }

  _mountainDellPage() {
    return Column(children: [
      Stack(
        alignment: Alignment.center,
        children: [
          Container(
            height: 170.0,
            decoration: BoxDecoration(
              color: Colors.black,
              image: new DecorationImage(
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.7), BlendMode.dstATop),
                image: NetworkImage(
                    'https://images.squarespace-cdn.com/content/v1/5ae8c10996e76f1731f078fb/1532131085601-1JZ1TJ0U7PMWADEX0K61/SLC_MtnDell_LakeAerial04_5-18.jpg'),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(left: 20.0),
                padding: EdgeInsets.only(bottom: 30.0),
                child: Icon(
                  Icons.arrow_back_rounded,
                  size: 40,
                  color: Colors.white,
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 30.0),
                child: Column(
                  children: [
                    Text(
                      'Mountain Dell',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 30.0),
                    ),
                    Text(
                      'Parleys Canyon, I-80, Exit #134,',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 17.0,
                          fontWeight: FontWeight.w300),
                    ),
                    Text(
                      'Salt Lake City, UT 84109',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 17.0,
                          fontWeight: FontWeight.w300),
                    ),
                  ],
                ),
              ),
              Spacer(),
            ],
          ),
        ],
      ),
      SizedBox(
        height: 20.0,
      ),
      Container(
        margin: EdgeInsets.only(left: 15.0, bottom: 15.0),
        child: Row(
          children: [
            Icon(
              Icons.calendar_today_rounded,
              color: const Color(0xff00485F),
              size: 24.0,
            ),
            SizedBox(
              width: 10.0,
            ),
            Text('Saturday, March 20',
                style: TextStyle(
                  fontSize: 18.0,
                  color: const Color(0xff00485F),
                  fontWeight: FontWeight.w300,
                )),
          ],
        ),
      ),
      Container(
        margin: EdgeInsets.only(left: 15.0, bottom: 15.0),
        child: Row(
          children: [
            Icon(
              Icons.watch_later_outlined,
              color: const Color(0xff00485F),
              size: 24.0,
            ),
            SizedBox(
              width: 10.0,
            ),
            Text(
              '9:30am',
              style: TextStyle(
                fontSize: 18.0,
                color: const Color(0xff00485F),
                fontWeight: FontWeight.w300,
              ),
            ),
          ],
        ),
      ),
      Container(
        margin: EdgeInsets.only(left: 15.0, bottom: 15.0),
        child: Row(
          children: [
            Icon(
              Icons.sports_golf_rounded,
              color: const Color(0xff00485F),
              size: 24.0,
            ),
            SizedBox(
              width: 10.0,
            ),
            Text('Canyon',
                style: TextStyle(
                  fontSize: 18.0,
                  color: const Color(0xff00485F),
                  fontWeight: FontWeight.w300,
                )),
          ],
        ),
      ),
      Container(
        margin: EdgeInsets.only(top: 15.0, bottom: 5.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: 60.0,
            ),
            Wrap(
              children: [
                ChoiceChip(
                  shape: CircleBorder(
                    side: BorderSide(color: const Color(0xffA0E2BA)),
                  ),
                  label: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text(
                      '9',
                      style: TextStyle(
                          color: const Color(0xff00485F),
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0),
                    ),
                  ),
                  selected: false,
                  onSelected: (bool selected) {
                    setState(() {});
                  },
                ),
                SizedBox(
                  width: 4.0,
                ),
                ChoiceChip(
                  shape: CircleBorder(
                    side: BorderSide(color: const Color(0xff00485F)),
                  ),
                  backgroundColor: const Color(0xff00485F),
                  label: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text(
                      '18',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0),
                    ),
                  ),
                  selected: false,
                  onSelected: (bool selected) {
                    setState(() {});
                  },
                ),
              ],
            )
          ],
        ),
      ),
      Divider(),
      Container(
        margin: EdgeInsets.only(top: 5.0, bottom: 5.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: 60.0,
              child: Icon(Icons.person_outline_rounded,
                  color: const Color(0xff00485F)),
            ),
            Wrap(
              children: [
                ChoiceChip(
                  shape: CircleBorder(
                    side: BorderSide(color: const Color(0xff00485F)),
                  ),
                  backgroundColor: const Color(0xff00485F),
                  label: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text(
                      '1',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0),
                    ),
                  ),
                  selected: false,
                  onSelected: (bool selected) {
                    setState(() {});
                  },
                ),
                SizedBox(
                  width: 7.0,
                ),
                ChoiceChip(
                  shape: CircleBorder(
                    side: BorderSide(color: const Color(0xffA0E2BA)),
                  ),
                  label: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text(
                      '2',
                      style: TextStyle(
                          color: const Color(0xff00485F),
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0),
                    ),
                  ),
                  selected: false,
                  onSelected: (bool selected) {
                    setState(() {});
                  },
                ),
                SizedBox(
                  width: 7.0,
                ),
                ChoiceChip(
                  shape: CircleBorder(
                    side: BorderSide(color: const Color(0xffA0E2BA)),
                  ),
                  label: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text(
                      '3',
                      style: TextStyle(
                          color: const Color(0xff00485F),
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0),
                    ),
                  ),
                  selected: false,
                  onSelected: (bool selected) {
                    setState(() {});
                  },
                ),
                SizedBox(
                  width: 7.0,
                ),
                ChoiceChip(
                  shape: CircleBorder(
                    side: BorderSide(color: const Color(0xffA0E2BA)),
                  ),
                  label: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text(
                      '4',
                      style: TextStyle(
                          color: const Color(0xff00485F),
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0),
                    ),
                  ),
                  selected: false,
                  onSelected: (bool selected) {
                    setState(() {});
                  },
                ),
              ],
            )
          ],
        ),
      ),
      Divider(),
      Container(
        margin: EdgeInsets.only(top: 5.0, bottom: 5.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: 55.0,
              child: Icon(Icons.directions_walk_rounded,
                  color: const Color(0xff00485F)),
            ),
            Wrap(
              children: [
                ChoiceChip(
                  shape: CircleBorder(),
                  backgroundColor: const Color(0xff00485F),
                  label: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child:
                        Icon(Icons.directions_walk_sharp, color: Colors.white),
                  ),
                  selected: false,
                  onSelected: (bool selected) {
                    setState(() {});
                  },
                ),
                ChoiceChip(
                  shape: CircleBorder(
                    side: BorderSide(color: const Color(0xffA0E2BA)),
                  ),
                  label: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child:
                        Icon(Icons.drive_eta, color: const Color(0xff00485F)),
                  ),
                  selected: false,
                  onSelected: (bool selected) {
                    setState(() {});
                  },
                ),
                SizedBox(),
              ],
            )
          ],
        ),
      ),
      Divider(),
      Container(
        margin: EdgeInsets.only(top: 5.0, bottom: 5.0),
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Row(
          children: [
            Text(
              'Public rate x 1',
              style: TextStyle(
                fontSize: 18.0,
                color: const Color(0xff00485F),
                fontWeight: FontWeight.w300,
              ),
            ),
            Spacer(),
            Text(
              '\$46',
              style: TextStyle(
                fontSize: 18.0,
                color: const Color(0xff00485F),
                fontWeight: FontWeight.w300,
              ),
            ),
          ],
        ),
      ),
      Container(
        margin: EdgeInsets.only(top: 5.0, bottom: 5.0),
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Row(
          children: [
            Row(
              children: [
                Text(
                  'Credits',
                  style: TextStyle(
                    fontSize: 18.0,
                    color: const Color(0xff00485F),
                    fontWeight: FontWeight.w300,
                  ),
                ),
                Container(
                  width: 17.0,
                  height: 17.0,
                  margin: EdgeInsets.only(bottom: 15.0),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: const Color(0xffB3E7DD),
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: Text(
                    'i',
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
              ],
            ),
            Spacer(),
            Text(
              '1',
              style: TextStyle(
                fontSize: 18.0,
                color: const Color(0xff00485F),
                fontWeight: FontWeight.w300,
              ),
            ),
          ],
        ),
      ),
      Divider(),
      Container(
        margin: EdgeInsets.only(top: 5.0, bottom: 5.0),
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Row(
          children: [
            Text(
              'Total',
              style: TextStyle(
                fontSize: 18.0,
                color: const Color(0xff00485F),
                fontWeight: FontWeight.w300,
              ),
            ),
            Spacer(),
            Text(
              '\$46',
              style: TextStyle(
                fontSize: 18.0,
                color: const Color(0xff00485F),
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      Container(
        margin: EdgeInsets.only(top: 50.0, bottom: 5.0),
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        width: double.infinity,
        height: 50,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: const Color(0xffA0E2BA),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child: Text(
            'BOOK',
            style: TextStyle(
                color: const Color(0xff00485F),
                fontWeight: FontWeight.w900,
                fontSize: 23.0),
          ),
          onPressed: () {},
        ),
      )
    ]);
  }
}
