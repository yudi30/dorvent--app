import 'package:dorvent/Helpers/auth.dart';
import 'package:dorvent/Helpers/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Vendors extends StatefulWidget {
  @override
  _VendorsState createState() => _VendorsState();
}

class _VendorsState extends State<Vendors> {
  PageController pageController;
  int pageIndex = 0;
  final TextEditingController controller = TextEditingController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pageController = PageController();
  }

  @override
  void dispose() {
    pageController.dispose();
    controller.dispose();
    super.dispose();
  }

  onTap(int pageIndex) {
    pageController.animateToPage(
      pageIndex,
      duration: Duration(milliseconds: 300),
      curve: Curves.easeOutCubic,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CupertinoTabBar(
        currentIndex: pageIndex,
        onTap: onTap,
        activeColor: Theme.of(context).primaryColor,
        items: [
          BottomNavigationBarItem(
            icon: Image(
              image: AssetImage("assets/icons/newpost.png"),
              width: 30,
            ),
          ),
          BottomNavigationBarItem(
            icon: Image(
              image: AssetImage("assets/icons/notifications.png"),
              width: 30,
            ),
          ),
          BottomNavigationBarItem(
            icon: Image(
              image: AssetImage("assets/icons/home.png"),
              width: 35,
            ),
          ),
          BottomNavigationBarItem(
            icon: Image(
              image: AssetImage("assets/icons/messenger.png"),
              width: 30,
            ),
          ),
          BottomNavigationBarItem(
            icon: Image(
              image: AssetImage("assets/icons/settings.png"),
              width: 30,
            ),
          ),
        ],
      ),
      appBar: AppBar(
        title: Text("Vendors",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
      ),
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Container(
          color: SecondaryColor,
          child: ListView(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(15, 10, 15, 8),
                child: Center(
                  // child: Stack(
                  //   children: <Widget>[
                  //     Container(
                  //       height: 35,
                  //       decoration: BoxDecoration(
                  //         borderRadius: BorderRadius.circular(20),
                  //         color: Color.fromARGB(155, 192, 192, 192),
                  //       ),
                  //     ),
                  //     Positioned(
                  //       left: 10,
                  //       child: Padding(
                  //         padding: const EdgeInsets.all(5),
                  //         child: Center(
                  //           child: Image(
                  //             image: AssetImage("assets/icons/search.png"),
                  //             width: 23,
                  //           ),
                  //         ),
                  //       ),
                  //     )
                  //   ],
                  // ),
                  child: Container(
                    height: 50,
                    margin: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                    child: TextField(
                      controller: controller,
                      keyboardType: TextInputType.text,
                      obscureText: false,
                      decoration: InputDecoration(
                        suffixIcon: new IconButton(
                          highlightColor: Colors.transparent,
                          icon: new Container(
                              width: 36.0, child: new Icon(Icons.clear)),
                          onPressed: () {
                            controller.clear();
                          },
                          splashColor: Colors.transparent,
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: primaryColor),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        filled: true,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.19,
                child: Center(
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 15,
                    itemBuilder: (context, int index) {
                      return Padding(
                        padding: const EdgeInsets.fromLTRB(8, 0, 5, 0),
                        child: Center(
                          child: Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      "assets/sampleFaces/samplepic1.jpg"),
                                  fit: BoxFit.cover),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            width: MediaQuery.of(context).size.height * 0.12,
                            height: MediaQuery.of(context).size.height * 0.17,
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(80, 10, 80, 10),
                child: ButtonTheme(
                  buttonColor: Theme.of(context).primaryColor,
                  child: RaisedButton(
                    child: Text(
                      "Become a Vendor",
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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.fromLTRB(15, 5, 0, 15),
                      child: Text(
                        "Featured Vendors",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: primaryColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.15,
                      child: Center(
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 15,
                          itemBuilder: (context, int index) {
                            return Padding(
                              padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                              child: Column(
                                children: <Widget>[
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(5, 0, 0, 0),
                                    child: Center(
                                      child: Stack(
                                        children: <Widget>[
                                          Container(
                                            decoration: BoxDecoration(
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
                                          Container(
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                width: 2,
                                                color: Theme.of(context)
                                                    .primaryColor,
                                              ),
                                              color: Theme.of(context)
                                                  .primaryColor,
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
                                                0.09,
                                          ),
                                          Positioned.fill(
                                            bottom: 0,
                                            child: Align(
                                              alignment: Alignment.bottomCenter,
                                              child: CircleAvatar(
                                                backgroundColor: Colors.white,
                                                backgroundImage: ExactAssetImage(
                                                    "assets/sampleFaces/6.jpg"),
                                                radius: 16,
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
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.fromLTRB(15, 5, 0, 15),
                      child: Text(
                        "Categories",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: primaryColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.1,
                      child: Center(
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            Padding(
                                padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                                child: Center(
                                  child: Container(
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.fromLTRB(0, 5, 0, 5),
                                      child: Image(
                                        fit: BoxFit.contain,
                                        image: AssetImage(
                                            "assets/icons/ladiesfootwear.png"),
                                      ),
                                    ),
                                    width: MediaQuery.of(context).size.height *
                                        0.09,
                                  ),
                                )),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                              child: Center(
                                child: Container(
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(0, 5, 0, 5),
                                    child: Image(
                                      fit: BoxFit.contain,
                                      image: AssetImage(
                                          "assets/icons/bridalgowns.png"),
                                    ),
                                  ),
                                  width:
                                      MediaQuery.of(context).size.height * 0.09,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                              child: Center(
                                child: Container(
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(0, 5, 0, 5),
                                    child: Image(
                                      fit: BoxFit.contain,
                                      image: AssetImage(
                                          "assets/icons/hairstylists.png"),
                                    ),
                                  ),
                                  width:
                                      MediaQuery.of(context).size.height * 0.09,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                              child: Center(
                                child: Container(
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(0, 5, 0, 5),
                                    child: Image(
                                      fit: BoxFit.contain,
                                      image: AssetImage(
                                          "assets/icons/makeupartists.png"),
                                    ),
                                  ),
                                  width:
                                      MediaQuery.of(context).size.height * 0.09,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                              child: Center(
                                child: Container(
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(0, 5, 0, 5),
                                    child: Image(
                                      fit: BoxFit.contain,
                                      image: AssetImage(
                                          "assets/icons/perfumes.png"),
                                    ),
                                  ),
                                  width:
                                      MediaQuery.of(context).size.height * 0.09,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                              child: Center(
                                child: Container(
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(0, 5, 0, 5),
                                    child: Image(
                                      fit: BoxFit.contain,
                                      image: AssetImage(
                                          "assets/icons/menfootwear.png"),
                                    ),
                                  ),
                                  width:
                                      MediaQuery.of(context).size.height * 0.09,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                              child: Center(
                                child: Container(
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(0, 5, 0, 5),
                                    child: Image(
                                      fit: BoxFit.contain,
                                      image: AssetImage(
                                          "assets/icons/koshadesigner.png"),
                                    ),
                                  ),
                                  width:
                                      MediaQuery.of(context).size.height * 0.09,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                              child: Center(
                                child: Container(
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(0, 5, 0, 5),
                                    child: Image(
                                      fit: BoxFit.contain,
                                      image: AssetImage(
                                          "assets/icons/mensaccessories.png"),
                                    ),
                                  ),
                                  width:
                                      MediaQuery.of(context).size.height * 0.09,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.fromLTRB(15, 5, 0, 15),
                      child: Text(
                        "Top Vendors",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: primaryColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.15,
                      child: Center(
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 15,
                          itemBuilder: (context, int index) {
                            return Padding(
                              padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                              child:
                                  // child: Container(
                                  //   decoration: BoxDecoration(
                                  //     image: DecorationImage(
                                  //         image: AssetImage(
                                  //             "assets/sampleFaces/samplepic2.jpg"),
                                  //         fit: BoxFit.cover),
                                  //     borderRadius: BorderRadius.circular(10.0),
                                  //   ),
                                  //   width:
                                  //       MediaQuery.of(context).size.height * 0.09,
                                  // ),
                                  Column(
                                children: <Widget>[
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(5, 0, 0, 0),
                                    child: Center(
                                      child: Stack(
                                        children: <Widget>[
                                          Container(
                                            decoration: BoxDecoration(
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
                                          Container(
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                width: 2,
                                                color: Theme.of(context)
                                                    .primaryColor,
                                              ),
                                              color: Theme.of(context)
                                                  .primaryColor,
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
                                                0.09,
                                          ),
                                          Positioned.fill(
                                            bottom: 0,
                                            child: Align(
                                              alignment: Alignment.bottomCenter,
                                              child: CircleAvatar(
                                                backgroundColor: Colors.white,
                                                backgroundImage: ExactAssetImage(
                                                    "assets/sampleFaces/1.jpg"),
                                                radius: 16,
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
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.fromLTRB(15, 5, 0, 10),
                      child: Text(
                        "Vendors near me",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: primaryColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      // height: MediaQuery.of(context).size.height * 0.4,
                      child: Center(
                        child: Image(
                          fit: BoxFit.contain,
                          image: AssetImage("assets/sampleFaces/gmap.png"),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
