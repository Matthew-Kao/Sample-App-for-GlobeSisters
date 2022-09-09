import 'package:flutter/material.dart';

final emailController = TextEditingController();
final PasswordController = TextEditingController();
var list = [];
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  Future addToList(text) async {
    list.add(text);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(children: [
      Container(
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.only(left: 20, right: 20),
        decoration: new BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color.fromARGB(255, 239, 238, 238)),
        child: Column(
          children: [
            SizedBox(height: 20),
            Container(
              width: MediaQuery.of(context).size.width - 80,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                      "https://source.unsplash.com/random/200x200?sig=1"),
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Text("GLOBESISTERS"),
                  ),
                  Container(
                    child: Text('28 AUGUST'),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
                margin: EdgeInsets.only(left: 20),
                child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Find other women around the world to bond and form connections with as you both share new memories and life stories.",
                      overflow: TextOverflow.clip,
                      style:
                          TextStyle(fontWeight: FontWeight.w900, fontSize: 23),
                    ))),
            SizedBox(height: 20),
            Container(
                margin: EdgeInsets.only(left: 20, right: 20),
                child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Welcome and shelter a verified GlobeSister on their journey to discover themselves, a process to which you will become a critical part of.​ As you learn new things about each other, perhaps that will inspire you to become a traveler as well!",
                      overflow: TextOverflow.clip,
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                    ))),
            SizedBox(height: 10),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                margin: EdgeInsets.only(left: 20, right: 20),
                child: ButtonTheme(
                  minWidth: 100,
                  height: 35.0,
                  child: RaisedButton(
                    color: Colors.orange[700],
                    //disabledColor: Colors.orange[700],
                    textColor: Colors.white,
                    //disabledTextColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: Text(
                      'Read Full Story',
                      style: TextStyle(
                          fontSize: 16.0, // insert your font size here
                          fontWeight: FontWeight.bold),
                    ),

                    onPressed: () {},
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              child: Divider(
                color: Colors.grey,
                height: 20,
                thickness: 2,
                indent: 30,
                endIndent: 30,
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 10),
                  child: ButtonTheme(
                    minWidth: 40,
                    height: 40,
                    child: RaisedButton(
                      padding: EdgeInsets.only(left: 7, right: 7),
                      color: Colors.grey[300],
                      textColor: Colors.grey[700],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                      child: Text(
                        '1',
                        style: TextStyle(
                            fontSize: 22.0, fontWeight: FontWeight.w500),
                      ),
                      onPressed: () {},
                    ),
                  ),
                ),
                SizedBox(width: 15),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //Fact #1
                      Container(
                        margin: EdgeInsets.only(right: 20),
                        child: Text(
                          "Kimberly is the best host ever!! We instantly clicked and talked non-stop the entire time I was in LA and a little piece of Kimberly will always be with me, but I can't wait to see who I meet next!",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 18),
                        ),
                      ),

                      //Source hyperlink #1
                      Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                          margin: EdgeInsets.only(right: 20),
                          child: Directionality(
                            textDirection: TextDirection.rtl,
                            child: TextButton(
                              onPressed: () {},
                              child: Text(
                                "Christina Taylor",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.orange),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      SizedBox(height: 20),
      Container(
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.only(left: 20, right: 20),
        decoration: new BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color.fromARGB(255, 239, 238, 238)),
        child: Column(
          children: [
            SizedBox(height: 20),
            Container(
              width: MediaQuery.of(context).size.width - 80,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                      "https://source.unsplash.com/random/200x200?sig=2"),
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Text("CNN"),
                  ),
                  Container(
                    child: Text('28 AUGUST'),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
                margin: EdgeInsets.only(left: 20),
                child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Apple unveils iPhone 14 at 'far out' event",
                      overflow: TextOverflow.clip,
                      style:
                          TextStyle(fontWeight: FontWeight.w900, fontSize: 23),
                    ))),
            SizedBox(height: 20),
            Container(
                margin: EdgeInsets.only(left: 20, right: 20),
                child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "The iPhone 14 and iPhone 14 Plus: Apple fans can now buy a larger-sized iPhone without paying the Pro price. The new iPhone 14 (6.1 inches) and the iPhone 14 Plus (6.7 inches) feature longer battery life, the same chip as last year's iPhone 13 Pro model (the A15) and a new camera system, including a 12 MP main camera with bigger pixels, a faster aperture and improved sensors. Other features: front-camera auto focus capabilities; a new action mode that lets users keep videos stable while moving; and the removal of the physical SIM card, opting instead for a digital, sim card",
                      overflow: TextOverflow.clip,
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                    ))),
            SizedBox(height: 10),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                margin: EdgeInsets.only(left: 20, right: 20),
                child: ButtonTheme(
                  minWidth: 100,
                  height: 35.0,
                  child: RaisedButton(
                    color: Colors.orange[700],
                    //disabledColor: Colors.orange[700],
                    textColor: Colors.white,
                    //disabledTextColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: Text(
                      'Read Full Story',
                      style: TextStyle(
                          fontSize: 16.0, // insert your font size here
                          fontWeight: FontWeight.bold),
                    ),

                    onPressed: () {},
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              child: Divider(
                color: Colors.grey,
                height: 20,
                thickness: 2,
                indent: 30,
                endIndent: 30,
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 10),
                  child: ButtonTheme(
                    minWidth: 40,
                    height: 40,
                    child: RaisedButton(
                      padding: EdgeInsets.only(left: 7, right: 7),
                      color: Colors.grey[300],
                      textColor: Colors.grey[700],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                      child: Text(
                        '1',
                        style: TextStyle(
                            fontSize: 22.0, fontWeight: FontWeight.w500),
                      ),
                      onPressed: () {},
                    ),
                  ),
                ),
                SizedBox(width: 15),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //Fact #1
                      Container(
                        margin: EdgeInsets.only(right: 20),
                        child: Text(
                          "The Apple Watch SE, which starts at 249 dollars for GPS models and 299 dollars for cellular, also features crash detection technology, and is faster than the previous model.",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 18),
                        ),
                      ),

                      //Source hyperlink #1
                      Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                          margin: EdgeInsets.only(right: 20),
                          child: Directionality(
                            textDirection: TextDirection.rtl,
                            child: TextButton(
                              onPressed: () {},
                              child: Text(
                                "Michael Bocil",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.orange),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      SizedBox(height: 20),
      Container(
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.only(left: 20, right: 20),
        decoration: new BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color.fromARGB(255, 239, 238, 238)),
        child: Column(
          children: [
            SizedBox(height: 20),
            Container(
              width: MediaQuery.of(context).size.width - 80,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                      "https://source.unsplash.com/random/200x200?sig=3"),
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Text("ArtsOfRise"),
                  ),
                  Container(
                    child: Text('28 AUGUST'),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
                margin: EdgeInsets.only(left: 20),
                child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Rise Above Hate",
                      overflow: TextOverflow.clip,
                      style:
                          TextStyle(fontWeight: FontWeight.w900, fontSize: 23),
                    ))),
            SizedBox(height: 20),
            Container(
                margin: EdgeInsets.only(left: 20, right: 20),
                child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Artsofrise is a community design portfolio created by Michael Kao to be presented in the world of art community. It brings design and collaborative art project for the future of art design.",
                      overflow: TextOverflow.clip,
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                    ))),
            SizedBox(height: 10),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                margin: EdgeInsets.only(left: 20, right: 20),
                child: ButtonTheme(
                  minWidth: 100,
                  height: 35.0,
                  child: RaisedButton(
                    color: Colors.orange[700],
                    //disabledColor: Colors.orange[700],
                    textColor: Colors.white,
                    //disabledTextColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: Text(
                      'Read Full Story',
                      style: TextStyle(
                          fontSize: 16.0, // insert your font size here
                          fontWeight: FontWeight.bold),
                    ),

                    onPressed: () {},
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              child: Divider(
                color: Colors.grey,
                height: 20,
                thickness: 2,
                indent: 30,
                endIndent: 30,
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 10),
                  child: ButtonTheme(
                    minWidth: 40,
                    height: 40,
                    child: RaisedButton(
                      padding: EdgeInsets.only(left: 7, right: 7),
                      color: Colors.grey[300],
                      textColor: Colors.grey[700],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                      child: Text(
                        '1',
                        style: TextStyle(
                            fontSize: 22.0, fontWeight: FontWeight.w500),
                      ),
                      onPressed: () {},
                    ),
                  ),
                ),
                SizedBox(width: 15),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //Fact #1
                      Container(
                        margin: EdgeInsets.only(right: 20),
                        child: Text(
                          "Note that this technically isn't random ASCII art, since it uses general Unicode characters other than the simple ASCII ones, but people tend to use the terms ASCII art and text art interchangably.",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 18),
                        ),
                      ),

                      //Source hyperlink #1
                      Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                          margin: EdgeInsets.only(right: 20),
                          child: Directionality(
                            textDirection: TextDirection.rtl,
                            child: TextButton(
                              onPressed: () {},
                              child: Text(
                                "Michael Kao",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.orange),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      SizedBox(height: 20),
      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Container(
          margin: EdgeInsets.only(left: 20),
          child: ButtonTheme(
            minWidth: 40,
            height: 40,
            child: RaisedButton(
              padding: EdgeInsets.only(left: 5, right: 5),
              color: Colors.grey[300],
              textColor: Colors.grey[600],
              //Quit Icon/Button
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              child: Icon(
                Icons.arrow_back,
                color: Colors.grey.withOpacity(1),
              ),

              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const secondPage()));
              },
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(right: 20),
          child: ButtonTheme(
            minWidth: 40,
            height: 40,
            child: RaisedButton(
              padding: EdgeInsets.only(left: 5, right: 5),
              color: Colors.grey[300],
              textColor: Colors.grey[600],
              //Quit Icon/Button
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              child: Icon(
                Icons.arrow_forward,
                color: Colors.orange.withOpacity(1),
              ),

              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const secondPage()));
              },
            ),
          ),
        ),
      ]),
    ])));
  }
}

class secondPage extends StatefulWidget {
  const secondPage({Key? key}) : super(key: key);

  @override
  State<secondPage> createState() => _secondPageState();
}

class _secondPageState extends State<secondPage> {
  Future addToList(text) async {
    list.add(text);
    setState(() {});
  }

  void clearList() {
    list = [];
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.green[200],
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Column(
                  children: [
                    SizedBox(height: 50),
                    Container(
                      margin: EdgeInsets.only(left: 20, right: 20),
                      child: TextField(
                        controller: emailController,
                        cursorColor: Colors.white,
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)),
                            hintText: "Name",
                            filled: true,
                            fillColor: Color.fromARGB(68, 162, 159, 159)),
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      margin: EdgeInsets.only(left: 20, right: 20),
                      child: ButtonTheme(
                        minWidth: 270,
                        height: 50,
                        child: ElevatedButton.icon(
                            style: ElevatedButton.styleFrom(
                                primary: Colors.green[700],
                                minimumSize: Size.fromHeight(50),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10))),
                            icon: Icon(Icons.check_box, size: 32),
                            label: Text(
                              'Submit',
                              style: TextStyle(fontSize: 18),
                            ),
                            onPressed: () => addToList(emailController.text)),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 50, right: 50),
                      child: SingleChildScrollView(
                        child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: list.length,
                            itemBuilder: (BuildContext context, int index) {
                              return Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(45.0),
                                ),
                                child: ListTile(
                                    iconColor: Colors.blue,
                                    tileColor: Colors.yellow[100],
                                    textColor: Colors.purple,
                                    trailing: const Icon(Icons.list),
                                    leading: Text(
                                      "GlobeSister",
                                      style: TextStyle(
                                          color: Colors.pink[600],
                                          fontSize: 15),
                                    ),
                                    title: Text(list[index])),
                              );
                            }),
                      ),
                    ),
                    SizedBox(height: 60),
                    Container(
                      margin: EdgeInsets.only(left: 20, right: 20),
                      child: ButtonTheme(
                        minWidth: 270,
                        height: 50,
                        child: ElevatedButton.icon(
                            style: ElevatedButton.styleFrom(
                                primary: Colors.red[700],
                                minimumSize: Size.fromHeight(50),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10))),
                            icon: Icon(Icons.check_box, size: 32),
                            label: Text(
                              'Clear',
                              style: TextStyle(fontSize: 18),
                            ),
                            onPressed: () => clearList()),
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 20),
                            child: ButtonTheme(
                              minWidth: 40,
                              height: 40,
                              child: RaisedButton(
                                padding: EdgeInsets.only(left: 5, right: 5),
                                color: Colors.grey[300],
                                textColor: Colors.grey[600],
                                //Quit Icon/Button
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30)),
                                child: Icon(
                                  Icons.arrow_back,
                                  color: Colors.orange.withOpacity(1),
                                ),

                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const MyHomePage()));
                                },
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 20),
                            child: ButtonTheme(
                              minWidth: 40,
                              height: 40,
                              child: RaisedButton(
                                padding: EdgeInsets.only(left: 5, right: 5),
                                color: Colors.grey[300],
                                textColor: Colors.grey[600],
                                //Quit Icon/Button
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30)),
                                child: Icon(
                                  Icons.arrow_forward,
                                  color: Colors.orange.withOpacity(1),
                                ),

                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const thirdPage()));
                                },
                              ),
                            ),
                          ),
                        ]),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class thirdPage extends StatefulWidget {
  const thirdPage({Key? key}) : super(key: key);

  @override
  State<thirdPage> createState() => _thirdPageState();
}

class _thirdPageState extends State<thirdPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        alignment: Alignment.center,
        color: Colors.blueGrey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Profile',
              style: TextStyle(fontSize: 24, color: Colors.orange),
            ),
            SizedBox(height: 5),
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/Matthew.jpg'),
            ),
            SizedBox(height: 8),
            Text(
              'Name: Mathew Kao ',
              style: TextStyle(color: Colors.yellow, fontSize: 16),
            ),
            SizedBox(height: 8),
            Text(
              'Email: matthewkao@berkeley.edu',
              style: TextStyle(color: Colors.green, fontSize: 16),
            ),
            SizedBox(height: 20),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.only(left: 20, right: 20),
              decoration: new BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.cyan),
              child: Container(
                margin: EdgeInsets.only(left: 5, right: 5),
                child: Text(
                  'Hi! I am a junior at University of California, Berkeley planning to declare as a Computer Science Major this semester. I started coding at around 15 or 16 years old; The two coding languages that I used mainly are C++ and Python.',
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              child: ButtonTheme(
                minWidth: 40,
                height: 40,
                child: RaisedButton(
                  padding: EdgeInsets.only(left: 5, right: 5),
                  color: Colors.grey[300],
                  textColor: Colors.grey[600],
                  //Quit Icon/Button
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Icon(
                    Icons.arrow_back,
                    color: Colors.orange.withOpacity(0.5),
                  ),

                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const secondPage()));
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
