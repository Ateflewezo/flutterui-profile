import 'package:flutter/material.dart';
import 'package:trainn_1/secondpage.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomepage(),
    );
  }
}

class MyHomepage extends StatefulWidget {
  @override
  _MyHomepageState createState() => _MyHomepageState();
}

class _MyHomepageState extends State<MyHomepage>
    with SingleTickerProviderStateMixin {
  TabController Controller;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Controller = new TabController(vsync: this, length: 4);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    Controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Text(
          "Discivery",
          style: TextStyle(
              fontSize: 22.0, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.camera),
            color: Colors.grey,
            onPressed: () {},
          )
        ],
      ),
      body: ListView(
        padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
        children: <Widget>[
          Container(
            height: 150.0,
            width: double.infinity,
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.all(10.0),
              children: <Widget>[
                listitem("assets/aaaaa.jpg"),
                SizedBox(
                  width: 35.0,
                ),
                listitem("assets/aaaa.jpg"),
                SizedBox(
                  width: 35.0,
                ),
                listitem("assets/aaa.jpg"),
                SizedBox(
                  width: 35.0,
                ),
                listitem("assets/a.jpg"),
                SizedBox(
                  width: 35.0,
                ),
                listitem("assets/aaa.jpg"),
                SizedBox(
                  width: 35.0,
                ),
                listitem("assets/aaaaa.jpg"),
                SizedBox(
                  width: 35.0,
                ),
                listitem("assets/a.jpg"),
                SizedBox(
                  width: 35.0,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(15.0),
            child: Material(
              borderRadius: BorderRadius.circular(15.0),
              elevation: 4.0,
              child: Container(
                height: 450.0,
                width: double.infinity,
                padding: EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: Colors.white),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Container(
                          height: 50.0,
                          width: 50.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25.0),
                              image: DecorationImage(
                                  image: AssetImage("assets/atef.jpg"),
                                  fit: BoxFit.cover)),
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Container(
                            width: MediaQuery.of(context).size.width - 120.0,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      "ATEF",
                                      style: TextStyle(
                                          fontSize: 14.0,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      height: 2.0,
                                    ),
                                    Text(
                                      "Im flutter developer",
                                      style: TextStyle(
                                          fontSize: 12.0, color: Colors.grey),
                                    ),
                                  ],
                                ),
                                Icon(
                                  Icons.more_vert,
                                  color: Colors.grey,
                                  size: 20.0,
                                )
                              ],
                            )),
                      ],
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Text(
                      "This official website features a ribbed knit zipper jacket that is modern and stylish. It looks very temparament and is recommended to friends",
                      style: TextStyle(color: Colors.grey, fontSize: 12.0),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      children: <Widget>[
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) =>
                                    secondpage(heroTag: 'assets/aaa.jpg')));
                          },
                          child: Hero(
                            tag: 'assets/aaa.jpg',
                            child: Container(
                              height: 200.0,
                              width:
                                  (MediaQuery.of(context).size.width - 50.0) /
                                      2,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.0),
                                image: DecorationImage(
                                    image: AssetImage("assets/aaa.jpg"),
                                    fit: BoxFit.cover),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Column(
                          children: <Widget>[
                            InkWell(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => secondpage(
                                        heroTag: 'assets/aaaaa.jpg')));
                              },
                              child: Hero(
                                tag: 'assets/aaaaa.jpg',
                                child: Container(
                                  height: 95.0,
                                  width: (MediaQuery.of(context).size.width -
                                          100.0) /
                                      2,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5.0),
                                    image: DecorationImage(
                                        image: AssetImage("assets/aaaaa.jpg"),
                                        fit: BoxFit.cover),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => secondpage(
                                        heroTag: 'assets/aaaa.jpg')));
                              },
                              child: Hero(
                                tag: 'assets/aaaa.jpg',
                                child: Container(
                                  height: 95.0,
                                  width: (MediaQuery.of(context).size.width -
                                          100.0) /
                                      2,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5.0),
                                    image: DecorationImage(
                                        image: AssetImage("assets/aaaa.jpg"),
                                        fit: BoxFit.cover),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      children: <Widget>[
                        Container(
                          height: 25.0,
                          width: 100.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.0),
                              color: Colors.brown.withOpacity(0.2)),
                          child: Center(
                              child: Text(
                            "#atef lewzo",
                            style:
                                TextStyle(fontSize: 12.0, color: Colors.brown),
                          )),
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Container(
                          height: 25.0,
                          width: 100.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.0),
                              color: Colors.brown.withOpacity(0.2)),
                          child: Center(
                              child: Text(
                            "#atef mohamed",
                            style:
                                TextStyle(fontSize: 12.0, color: Colors.brown),
                          )),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      height: 1.0,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.2),
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.reply,
                          size: 20.0,
                          color: Colors.grey.withOpacity(0.4),
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Text(
                          "100k",
                          style: TextStyle(color: Colors.grey),
                        ),
                        SizedBox(width: 15.0),
                        Icon(
                          Icons.comment,
                          color: Colors.grey.withOpacity(0.4),
                          size: 20.0,
                        ),
                        SizedBox(width: 5.0),
                        Text(
                          '325',
                          style: TextStyle(
                              color: Colors.grey, fontFamily: 'Montserrat'),
                        ),
                        SizedBox(
                          width: 160.0,
                        ),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Icon(
                                Icons.favorite,
                                color: Colors.red,
                                size: 20.0,
                              ),
                              SizedBox(width: 5.0),
                              Text(
                                '2.3k',
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontFamily: 'Montserrat'),
                              ),
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: new Material(
        color: Colors.white,
        child: TabBar(
          controller: Controller,
          indicatorColor: Colors.transparent,
          tabs: <Widget>[
            Tab(
                icon: Icon(
              Icons.more,
              color: Colors.grey,
              size: 15.0,
            )),
            Tab(
                icon: Icon(
              Icons.play_arrow,
              color: Colors.grey,
              size: 15.0,
            )),
            Tab(
                icon: Icon(
              Icons.navigation,
              color: Colors.black,
              size: 15.0,
            )),
            Tab(
                icon: Icon(
              Icons.supervised_user_circle,
              color: Colors.grey,
              size: 15.0,
            )),
          ],
        ),
      ),
    );
  }

  Widget listitem(String imagepath) {
    return Column(
      children: <Widget>[
        Stack(
          children: <Widget>[
            Container(
              height: 75.0,
              width: 75.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(37.5),
                  image: DecorationImage(
                      image: AssetImage(imagepath), fit: BoxFit.cover)),
            ),
          ],
        ),
        SizedBox(
          height: 10.0,
        ),
        Container(
          height: 30.0,
          width: 75.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              color: Colors.orangeAccent),
          child: Center(
              child: Text(
            "Follow",
            style: TextStyle(color: Colors.white, fontSize: 14.0),
          )),
        )
      ],
    );
  }
}
