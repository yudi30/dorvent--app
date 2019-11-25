import 'package:auto_size_text/auto_size_text.dart';
import 'package:dorvent/Helpers/styles.dart';
import 'package:flutter/material.dart';

class Events extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          children: <Widget>[
            header(context),
            body(context),
          ],
        ),
      ),
    );
  }

  Widget header(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          height: MediaQuery.of(context).size.height * 0.32,
          color: SecondaryColor,
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.28,
          decoration: BoxDecoration(
            color: primaryColor,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(25),
              bottomRight: Radius.circular(25),
            ),
          ),
          child: Center(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(8, 30, 0, 0),
                  child: Column(
                    children: <Widget>[
                      Image(
                        width: 25,
                        image: AssetImage("assets/icons/settings.png"),
                        color: SecondaryColor,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text(
                          "Settings",
                          style: TextStyle(color: SecondaryColor),
                        ),
                      )
                    ],
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CircleAvatar(
                      backgroundImage:
                          ExactAssetImage("assets/sampleFaces/5.jpg"),
                      backgroundColor: primaryColor,
                      radius: 50,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                      child: Text(
                        "Dorvent",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                          color: SecondaryColor,
                        ),
                      ),
                    )
                  ],
                ),
                Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 25, 8, 0),
                      child: Column(
                        children: <Widget>[
                          Image(
                            width: 25,
                            image: AssetImage("assets/icons/newpost.png"),
                            color: SecondaryColor,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Text(
                              "Post",
                              style: TextStyle(color: SecondaryColor),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: Column(
                        children: <Widget>[
                          Image(
                            width: 25,
                            image: AssetImage("assets/icons/notifications.png"),
                            color: SecondaryColor,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Text(
                              "Alerts",
                              style: TextStyle(color: SecondaryColor),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: MediaQuery.of(context).size.height * 0.24,
          right: MediaQuery.of(context).size.height * 0.02,
          left: MediaQuery.of(context).size.height * 0.02,
          child: Center(
            child: Container(
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: <Widget>[
                            Text("100"),
                            Text("Subscribing",
                                style: TextStyle(color: primaryColor)),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: <Widget>[
                            Text("100"),
                            Text("Subscribing",
                                style: TextStyle(color: primaryColor)),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: <Widget>[
                            Text("100"),
                            Text("Ratings",
                                style: TextStyle(color: primaryColor)),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: <Widget>[
                            Text("100"),
                            Text("Endorsements",
                                style: TextStyle(color: primaryColor)),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        )
      ],
    );
  }

  Widget body(BuildContext context) {
    return Container(
      color: SecondaryColor,
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: primaryColor,
              ),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        width: MediaQuery.of(context).size.width * 0.165,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: <Widget>[
                              Image(
                                image: AssetImage("assets/icons/search.png"),
                                width: 25,
                              ),
                              GestureDetector(
                                child: Text("Vendors"),
                                onTap: () =>
                                    Navigator.pushNamed(context, '/vendors'),
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.165,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: <Widget>[
                              Image(
                                image: AssetImage("assets/icons/events1.png"),
                                width: 25,
                              ),
                              Text("Events")
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.165,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: <Widget>[
                              Image(
                                image: AssetImage("assets/icons/logo.png"),
                                width: 25,
                              ),
                              Text("My Wall")
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.165,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: <Widget>[
                              Image(
                                image:
                                    AssetImage("assets/icons/messenger1.png"),
                                width: 25,
                              ),
                              Text("   Chat   ")
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.165,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: <Widget>[
                              Image(
                                image: AssetImage("assets/icons/jobs.png"),
                                width: 25,
                              ),
                              Text("   Jobs  ")
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "Recent Activities",
                          style: TextStyle(
                            color: primaryColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "See all",
                          style: TextStyle(
                            color: primaryColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.3,
                    child: ListView.builder(
                      padding: const EdgeInsets.all(0),
                      itemExtent: 50,
                      itemCount: 15,
                      itemBuilder: (BuildContext context, int index) {
                        return ListTile(
                          leading: CircleAvatar(
                            backgroundImage:
                                ExactAssetImage("assets/sampleFaces/5.jpg"),
                            radius: 15,
                          ),
                          title: Padding(
                            padding: const EdgeInsets.all(0),
                            child: AutoSizeText(
                              "This is a dummy data.",
                              maxLines: 1,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 14),
                            ),
                          ),
                          subtitle: AutoSizeText(
                            "Subtitle",
                            maxLines: 1,
                            style: TextStyle(fontSize: 12),
                          ),
                          trailing: Text(
                            "20 mins ago",
                            style: TextStyle(fontSize: 8),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "Featured Vendors",
                          style: TextStyle(
                            color: primaryColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "See all",
                          style: TextStyle(
                            color: primaryColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.16,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                                child: Center(
                                  child: Stack(
                                    children: <Widget>[
                                      Container(
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            width: 2,
                                            color:
                                                Theme.of(context).primaryColor,
                                          ),
                                          color: Theme.of(context).primaryColor,
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                        width:
                                            MediaQuery.of(context).size.height *
                                                0.09,
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.11,
                                      ),
                                      Positioned.fill(
                                        bottom: 0,
                                        child: Align(
                                          alignment: Alignment.bottomCenter,
                                          child: CircleAvatar(
                                            backgroundImage: ExactAssetImage(
                                                "assets/sampleFaces/9.jpg"),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Text(
                                "The Blond",
                                style: TextStyle(
                                  color: primaryColor,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                                child: Center(
                                  child: Stack(
                                    children: <Widget>[
                                      Container(
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            width: 2,
                                            color:
                                                Theme.of(context).primaryColor,
                                          ),
                                          color: Theme.of(context).primaryColor,
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                        width:
                                            MediaQuery.of(context).size.height *
                                                0.09,
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.11,
                                      ),
                                      Positioned.fill(
                                        bottom: 0,
                                        child: Align(
                                          alignment: Alignment.bottomCenter,
                                          child: CircleAvatar(
                                            backgroundImage: ExactAssetImage(
                                                "assets/sampleFaces/4.jpg"),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Text(
                                "Lazy Dog",
                                style: TextStyle(
                                  color: primaryColor,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                                child: Center(
                                  child: Stack(
                                    children: <Widget>[
                                      Container(
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            width: 2,
                                            color:
                                                Theme.of(context).primaryColor,
                                          ),
                                          color: Theme.of(context).primaryColor,
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                        width:
                                            MediaQuery.of(context).size.height *
                                                0.09,
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.11,
                                      ),
                                      Positioned.fill(
                                        bottom: 0,
                                        child: Align(
                                          alignment: Alignment.bottomCenter,
                                          child: CircleAvatar(
                                            backgroundImage: ExactAssetImage(
                                                "assets/sampleFaces/1.jpg"),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Text(
                                "Fast Car",
                                style: TextStyle(
                                  color: primaryColor,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                                child: Center(
                                  child: Stack(
                                    children: <Widget>[
                                      Container(
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            width: 2,
                                            color:
                                                Theme.of(context).primaryColor,
                                          ),
                                          color: Theme.of(context).primaryColor,
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                        width:
                                            MediaQuery.of(context).size.height *
                                                0.09,
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.11,
                                      ),
                                      Positioned.fill(
                                        bottom: 0,
                                        child: Align(
                                          alignment: Alignment.bottomCenter,
                                          child: CircleAvatar(
                                            backgroundImage: ExactAssetImage(
                                                "assets/sampleFaces/6.jpg"),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Text(
                                "Grey Goose",
                                style: TextStyle(
                                  color: primaryColor,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                                child: Center(
                                  child: Stack(
                                    children: <Widget>[
                                      Container(
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            width: 2,
                                            color:
                                                Theme.of(context).primaryColor,
                                          ),
                                          color: Theme.of(context).primaryColor,
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                        width:
                                            MediaQuery.of(context).size.height *
                                                0.09,
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.11,
                                      ),
                                      Positioned.fill(
                                        bottom: 0,
                                        child: Align(
                                          alignment: Alignment.bottomCenter,
                                          child: CircleAvatar(
                                            backgroundImage: ExactAssetImage(
                                                "assets/sampleFaces/7.jpg"),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Text(
                                "The Blond",
                                style: TextStyle(
                                  color: primaryColor,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "Featured Jobs",
                            style: TextStyle(
                              color: primaryColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "See all",
                            style: TextStyle(
                              color: primaryColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Divider(),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.3,
                      child: ListView(
                        padding: const EdgeInsets.all(0),
                        itemExtent: 50,
                        children: <Widget>[
                          ListTile(
                            title: Padding(
                              padding: const EdgeInsets.all(0),
                              child: AutoSizeText(
                                "Stylist needed.",
                                maxLines: 1,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                  color: primaryColor,
                                ),
                              ),
                            ),
                            subtitle: AutoSizeText(
                              "Subtitle",
                              maxLines: 1,
                              style: TextStyle(fontSize: 12),
                            ),
                          ),
                          ListTile(
                            title: Padding(
                              padding: const EdgeInsets.all(0),
                              child: AutoSizeText(
                                "Photographer.",
                                maxLines: 1,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                  color: primaryColor,
                                ),
                              ),
                            ),
                            subtitle: AutoSizeText(
                              "Subtitle",
                              maxLines: 1,
                              style: TextStyle(fontSize: 12),
                            ),
                          ),
                          ListTile(
                            title: Padding(
                              padding: const EdgeInsets.all(0),
                              child: AutoSizeText(
                                "Designer Urgent.",
                                maxLines: 1,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                  color: primaryColor,
                                ),
                              ),
                            ),
                            subtitle: AutoSizeText(
                              "Subtitle",
                              maxLines: 1,
                              style: TextStyle(fontSize: 12),
                            ),
                          ),
                          ListTile(
                            title: Padding(
                              padding: const EdgeInsets.all(0),
                              child: AutoSizeText(
                                "Developer needed.",
                                maxLines: 1,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                  color: primaryColor,
                                ),
                              ),
                            ),
                            subtitle: AutoSizeText(
                              "Subtitle",
                              maxLines: 1,
                              style: TextStyle(fontSize: 12),
                            ),
                          ),
                          ListTile(
                            title: Padding(
                              padding: const EdgeInsets.all(0),
                              child: AutoSizeText(
                                "Data entry job",
                                maxLines: 1,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                  color: primaryColor,
                                ),
                              ),
                            ),
                            subtitle: AutoSizeText(
                              "Subtitle",
                              maxLines: 1,
                              style: TextStyle(fontSize: 12),
                            ),
                          ),
                          ListTile(
                            title: Padding(
                              padding: const EdgeInsets.all(0),
                              child: AutoSizeText(
                                "Videographer needed.",
                                maxLines: 1,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                  color: primaryColor,
                                ),
                              ),
                            ),
                            subtitle: AutoSizeText(
                              "Subtitle",
                              maxLines: 1,
                              style: TextStyle(fontSize: 12),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(30, 0, 30, 10),
            child: Container(
              //This container contains the list of online users
              height: MediaQuery.of(context).size.height * 0.11,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                    child: Center(
                      child: Column(
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 2,
                                color: Theme.of(context).primaryColor,
                              ),
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage('assets/sampleFaces/2.jpg'),
                              ),
                              shape: BoxShape.circle,
                            ),
                            width: MediaQuery.of(context).size.height * 0.08,
                            height: MediaQuery.of(context).size.height * 0.08,
                          ),
                          Text(
                            "John",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: primaryColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                    child: Center(
                      child: Column(
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 2,
                                color: Theme.of(context).primaryColor,
                              ),
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage('assets/sampleFaces/1.jpg'),
                              ),
                              shape: BoxShape.circle,
                            ),
                            width: MediaQuery.of(context).size.height * 0.08,
                            height: MediaQuery.of(context).size.height * 0.08,
                          ),
                          Text(
                            "Key",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: primaryColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                    child: Center(
                      child: Column(
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 2,
                                color: Theme.of(context).primaryColor,
                              ),
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage('assets/sampleFaces/3.jpg'),
                              ),
                              shape: BoxShape.circle,
                            ),
                            width: MediaQuery.of(context).size.height * 0.08,
                            height: MediaQuery.of(context).size.height * 0.08,
                          ),
                          Text(
                            "Matt",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: primaryColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                    child: Center(
                      child: Column(
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 2,
                                color: Theme.of(context).primaryColor,
                              ),
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage('assets/sampleFaces/4.jpg'),
                              ),
                              shape: BoxShape.circle,
                            ),
                            width: MediaQuery.of(context).size.height * 0.08,
                            height: MediaQuery.of(context).size.height * 0.08,
                          ),
                          Text(
                            "Tony",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: primaryColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                    child: Center(
                      child: Column(
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 2,
                                color: Theme.of(context).primaryColor,
                              ),
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage('assets/sampleFaces/5.jpg'),
                              ),
                              shape: BoxShape.circle,
                            ),
                            width: MediaQuery.of(context).size.height * 0.08,
                            height: MediaQuery.of(context).size.height * 0.08,
                          ),
                          Text(
                            "Bob",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: primaryColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                    child: Center(
                      child: Column(
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 2,
                                color: Theme.of(context).primaryColor,
                              ),
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage('assets/sampleFaces/6.jpg'),
                              ),
                              shape: BoxShape.circle,
                            ),
                            width: MediaQuery.of(context).size.height * 0.08,
                            height: MediaQuery.of(context).size.height * 0.08,
                          ),
                          Text(
                            "Hulk",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: primaryColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                    child: Center(
                      child: Column(
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 2,
                                color: Theme.of(context).primaryColor,
                              ),
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage('assets/sampleFaces/7.jpg'),
                              ),
                              shape: BoxShape.circle,
                            ),
                            width: MediaQuery.of(context).size.height * 0.08,
                            height: MediaQuery.of(context).size.height * 0.08,
                          ),
                          Text(
                            "Roy",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: primaryColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                    child: Center(
                      child: Column(
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 2,
                                color: Theme.of(context).primaryColor,
                              ),
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage('assets/sampleFaces/8.jpg'),
                              ),
                              shape: BoxShape.circle,
                            ),
                            width: MediaQuery.of(context).size.height * 0.08,
                            height: MediaQuery.of(context).size.height * 0.08,
                          ),
                          Text(
                            "Lenn",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: primaryColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(40, 10, 40, 10),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "Current Events",
                            style: TextStyle(
                              color: primaryColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "See all",
                            style: TextStyle(
                              color: primaryColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Divider(),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.17,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(5, 0, 5, 0),
                                  child: Center(
                                    child: Stack(
                                      children: <Widget>[
                                        Container(
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              width: 2,
                                              color: Theme.of(context)
                                                  .primaryColor,
                                            ),
                                            color:
                                                Theme.of(context).primaryColor,
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.09,
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.11,
                                        ),
                                        Positioned.fill(
                                          bottom: 0,
                                          child: Align(
                                            alignment: Alignment.bottomCenter,
                                            child: CircleAvatar(
                                              backgroundImage: ExactAssetImage(
                                                  "assets/sampleFaces/9.jpg"),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Text(
                                  "The Blond",
                                  style: TextStyle(
                                    color: primaryColor,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(5, 0, 5, 0),
                                  child: Center(
                                    child: Stack(
                                      children: <Widget>[
                                        Container(
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              width: 2,
                                              color: Theme.of(context)
                                                  .primaryColor,
                                            ),
                                            color:
                                                Theme.of(context).primaryColor,
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.09,
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.11,
                                        ),
                                        Positioned.fill(
                                          bottom: 0,
                                          child: Align(
                                            alignment: Alignment.bottomCenter,
                                            child: CircleAvatar(
                                              backgroundImage: ExactAssetImage(
                                                  "assets/sampleFaces/4.jpg"),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Text(
                                  "Lazy Dog",
                                  style: TextStyle(
                                    color: primaryColor,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(5, 0, 5, 0),
                                  child: Center(
                                    child: Stack(
                                      children: <Widget>[
                                        Container(
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              width: 2,
                                              color: Theme.of(context)
                                                  .primaryColor,
                                            ),
                                            color:
                                                Theme.of(context).primaryColor,
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.09,
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.11,
                                        ),
                                        Positioned.fill(
                                          bottom: 0,
                                          child: Align(
                                            alignment: Alignment.bottomCenter,
                                            child: CircleAvatar(
                                              backgroundImage: ExactAssetImage(
                                                  "assets/sampleFaces/1.jpg"),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Text(
                                  "Fast Car",
                                  style: TextStyle(
                                    color: primaryColor,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(5, 0, 5, 0),
                                  child: Center(
                                    child: Stack(
                                      children: <Widget>[
                                        Container(
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              width: 2,
                                              color: Theme.of(context)
                                                  .primaryColor,
                                            ),
                                            color:
                                                Theme.of(context).primaryColor,
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.09,
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.11,
                                        ),
                                        Positioned.fill(
                                          bottom: 0,
                                          child: Align(
                                            alignment: Alignment.bottomCenter,
                                            child: CircleAvatar(
                                              backgroundImage: ExactAssetImage(
                                                  "assets/sampleFaces/6.jpg"),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Text(
                                  "Grey Goose",
                                  style: TextStyle(
                                    color: primaryColor,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(5, 0, 5, 0),
                                  child: Center(
                                    child: Stack(
                                      children: <Widget>[
                                        Container(
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              width: 2,
                                              color: Theme.of(context)
                                                  .primaryColor,
                                            ),
                                            color:
                                                Theme.of(context).primaryColor,
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.09,
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.11,
                                        ),
                                        Positioned.fill(
                                          bottom: 0,
                                          child: Align(
                                            alignment: Alignment.bottomCenter,
                                            child: CircleAvatar(
                                              backgroundImage: ExactAssetImage(
                                                  "assets/sampleFaces/7.jpg"),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Text(
                                  "The Blond",
                                  style: TextStyle(
                                    color: primaryColor,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(60, 0, 60, 10),
            child: ButtonTheme(
              minWidth: 200,
              buttonColor: Theme.of(context).primaryColor,
              child: RaisedButton(
                child: Text(
                  "Signout",
                  style: Theme.of(context).textTheme.body1.merge(
                        TextStyle(
                          color: Colors.white,
                        ),
                      ),
                ),
                onPressed: () {},
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
