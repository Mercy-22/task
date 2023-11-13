import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[850],
        body: Body(),
      ),
    );
  }
}

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [TabBar(), SearchBar(), Divider(thickness: 0.2), MainScreen()],
    );
  }
}

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                  onPressed: () {},
                  child: Text(
                    "Gmail",
                    style: TextStyle(color: Colors.white),
                  )),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    "Images",
                    style: TextStyle(color: Colors.white),
                  )),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.apps_rounded),
                color: Colors.white,
              )
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Google",
                style: TextStyle(color: Colors.white, fontSize: 90),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 550,
                height: 50,
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Icon(Icons.search),
                      SizedBox(
                        width: 20,
                      ),
                      Text("Search Google or type a URL"),
                      SizedBox(
                        width: 250,
                      ),
                      Icon(Icons.mic),
                      SizedBox(
                        width: 2,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 60,
                width: 60,
                child: Card(
                  color: Colors.black12,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(80)),
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Add Shortcut",
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                width: 210,
                height: 60,
                padding: EdgeInsets.all(10),
                child: Card(
                  shadowColor: Colors.black,
                  color: Colors.black12,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Icon(Icons.edit),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Customize Chrome",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class SearchBar extends StatelessWidget {
  const SearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            SizedBox(
              width: 10,
            ),
            Icon(
              Icons.arrow_back,
              color: Colors.white60,
            ),
            SizedBox(
              width: 5,
            ),
            Icon(
              Icons.arrow_forward,
              color: Colors.white60,
            ),
            SizedBox(
              width: 10,
            ),
            Icon(
              Icons.refresh,
              size: 20,
              color: Colors.white,
            ),
            SizedBox(
              width: 10,
            ),
            SizedBox(
              width: 1230,
              height: 40,
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)),
                color: Colors.grey[900],
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.info_outlined,
                          color: Colors.white60,
                          size: 15,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.ios_share_rounded,
                          color: Colors.white60,
                          size: 19,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.star_border,
                          color: Colors.white60,
                        ),
                        SizedBox(
                          width: 10,
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.bookmark_border_rounded,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.account_circle,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.more_vert_outlined,
                  color: Colors.white,
                )
              ],
            )
          ],
        ),
      ],
    );
  }
}

class TabBar extends StatelessWidget {
  const TabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 40,
      color: Colors.indigoAccent,
      child: Row(
        children: [
          SizedBox(
            height: double.infinity,
            width: 250,
            child: Card(
              color: Colors.grey[850],
              shape: BeveledRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(5),
                      topRight: Radius.circular(5))),
              margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(
                    Icons.logo_dev,
                    color: Colors.white,
                  ),
                  Text(
                    "LocalHost",
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(
                    width: 80,
                  ),
                  Icon(
                    Icons.close,
                    color: Colors.white,
                    size: 15,
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.add,
            color: Colors.white,
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(Icons.minimize_rounded),
                SizedBox(
                  width: 20,
                ),
                Icon(
                  Icons.square_outlined,
                  size: 15,
                ),
                SizedBox(
                  width: 20,
                ),
                Icon(Icons.close),
                SizedBox(
                  width: 15,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
