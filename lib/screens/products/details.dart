import 'dart:ui';

import 'package:flutter/material.dart';

class Details extends StatefulWidget {
  const Details({Key? key}) : super(key: key);

  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> with SingleTickerProviderStateMixin {
  late TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = new TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      extendBodyBehindAppBar: true,
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height: size.height / 3,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/onboarding2.jpg"),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.0),
                        topRight: Radius.circular(20.0),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        children: [
                          Container(
                            height: size.height / 4,
                            width: size.width,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 15.0),
                                  child: Text(
                                    "Strawberry",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 28.0,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                Text(
                                  "\$17.00/kg",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15.0,
                                    color: Colors.grey,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(15.0),
                                      child: Text(
                                        "\$17.00",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 17.0,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(15.0),
                                      child: Text(
                                        "5% discount",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 17.0,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(15.0),
                                      child: Row(
                                        children: [
                                          Icon(Icons.star_outline),
                                          Text(
                                            "4.3 (1249)",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 17.0,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        height: 26.0,
                                        width: 26.0,
                                        decoration: BoxDecoration(
                                          color: Colors.green,
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        child: Center(
                                          child: Icon(
                                            Icons.remove,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10.0),
                                        child: Container(
                                          child: Text(
                                            "2",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18.0),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: 26.0,
                                        width: 26.0,
                                        decoration: BoxDecoration(
                                          color: Colors.green,
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        child: Center(
                                          child: Icon(
                                            Icons.add,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 15.0),
                            child: Container(
                              height: size.height / 3,
                              width: size.width,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    child: TabBar(
                                      indicator: BoxDecoration(
                                        border: Border(
                                          bottom: BorderSide(
                                              color: Colors.green, width: 3.0),
                                        ),
                                      ),
                                      labelColor: Colors.black,
                                      labelStyle: TextStyle(fontSize: 18.0),
                                      unselectedLabelColor: Colors.grey,
                                      unselectedLabelStyle:
                                          TextStyle(fontSize: 15.0),
                                      controller: _controller,
                                      tabs: [
                                        Tab(text: "Details"),
                                        Tab(text: "Ratings"),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.only(top: 10.0),
                                      child: TabBarView(
                                        controller: _controller,
                                        children: [
                                          Column(
                                            children: [
                                              Expanded(
                                                child: SingleChildScrollView(
                                                  child: Container(
                                                    width: size.width,
                                                    decoration: BoxDecoration(
                                                      color: Colors.green,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10.0),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              10.0),
                                                      child: Text(
                                                        "I understand and accept the rights which have been granted to me. I take full responsibility for the login names and passwords issued to me and I agree that I will be held responsible for any breach of confidentiality or actions resulting from misuse.  I agree that I have responsibility to exercise care in the treatment of personal data and to ensure that such information is not disclosed to any unauthorized person.",
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 15.0),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Expanded(
                                            child: SingleChildScrollView(
                                              child: Container(
                                                width: size.width,
                                                decoration: BoxDecoration(
                                                  color: Colors.green,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.0),
                                                ),
                                                child: Padding(
                                                  padding: const EdgeInsets.all(
                                                      10.0),
                                                  child: Text(
                                                    "Heelllo thisss isss a revieWWW sectionnnnn. you caaannnnn watchhhh frommmm",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 15.0),
                                                  ),
                                                ),
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
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 15.0),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Text(
                                    "Similar Products",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20.0,
                                    ),
                                  ),
                                ),
                                Container(
                                  height: size.height / 2,
                                  child: GridView.count(
                                    crossAxisCount: 2,
                                    scrollDirection: Axis.horizontal,
                                    children: List.generate(40, (index) {
                                      return Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Colors.green[100],
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Center(
                                                child: SizedBox(
                                                  height: 110.0,
                                                  width: 110.0,
                                                  child: Image.asset(
                                                      "assets/images/logo.png"),
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 10.0,
                                                        vertical: 2.0),
                                                child: Text(
                                                  "This is a title",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: TextStyle(
                                                    fontSize: 17.0,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 10.0,
                                                        vertical: 2.0),
                                                child: Text(
                                                  "\$17.00",
                                                  style: TextStyle(
                                                    fontSize: 15.0,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 10.0,
                                                    right: 10.0,
                                                    top: 2.0),
                                                child: Row(
                                                  children: [
                                                    Icon(
                                                      Icons.star,
                                                      size: 12.0,
                                                      color: Colors.grey[500],
                                                    ),
                                                    Text(
                                                      "4.7 (2343)",
                                                      style: TextStyle(
                                                        color: Colors.grey[500],
                                                        fontSize: 12.0,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      );
                                    }),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}