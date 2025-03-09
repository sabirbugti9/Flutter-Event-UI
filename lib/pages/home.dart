import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            appBar(),
            headTitle(),
            searchBar(context),
            suggestedEvents(),
            category(),
            upcomingEvents(),
          ],
        ),
      )),
     
    );
  }























  NavigationBar navigationBar() {
    return NavigationBar(
      indicatorColor: const Color.fromARGB(255, 174, 82, 255),
      destinations: const <Widget>[
        NavigationDestination(
          selectedIcon: Icon(Icons.home),
          icon: Icon(Icons.home_outlined),
          label: 'Home',
        ),
        NavigationDestination(
          icon: Badge(child: Icon(Icons.notifications_sharp)),
          label: 'Notifications',
        ),
        NavigationDestination(
          icon: Badge(
            label: Text('2'),
            child: Icon(Icons.messenger_sharp),
          ),
          label: 'Messages',
        ),
      ],
    );
  }

  Container category() {
    return Container(
        margin: EdgeInsets.only(top: 5, bottom: 5),
        padding: EdgeInsets.only(left: 20, right: 20, top: 10),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  "Categories",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Spacer(),
                Text(
                  "See All",
                  style: TextStyle(
                      fontSize: 15,
                      decoration: TextDecoration.underline,
                      decorationColor: Colors.blueGrey,
                      fontWeight: FontWeight.w400,
                      color: Colors.blueGrey),
                ),
              ],
            ),
            SizedBox(
              height: 50,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.all(5),
                    padding:
                        EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 226, 199, 255),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Center(
                        child: Text(
                      "Some Category",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                    )),
                  );
                },
              ),
            )
          ],
        ));
  }

  Container upcomingEvents() {
    return Container(
      margin: EdgeInsets.only(top: 5, bottom: 5),
      padding: EdgeInsets.only(left: 20, right: 20, top: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Popular Events",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(
              height: 230,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Container(
                    width: 260,
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: 150,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              image: DecorationImage(
                                  image:
                                      AssetImage('assets/images/concert.png'),
                                  fit: BoxFit.cover)),
                        ),
                        Container(
                            padding: EdgeInsets.only(top: 10),
                            alignment: Alignment.centerLeft,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("Music Concert",
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w600)),
                                Row(
                                  spacing: 5,
                                  children: [
                                    Icon(Icons.schedule),
                                    Text("10:00 - 00:00",
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w400))
                                  ],
                                )
                              ],
                            ))
                      ],
                    ),
                  );
                },
              ))
        ],
      ),
    );
  }

  Container suggestedEvents() {
    return Container(
        margin: EdgeInsets.only(top: 5, bottom: 5),
        padding: EdgeInsets.only(left: 20, right: 20, top: 10),
        alignment: Alignment.centerLeft,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Text(
                  "You might like",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Spacer(),
                Text(
                  "See All",
                  style: TextStyle(
                      fontSize: 15,
                      decoration: TextDecoration.underline,
                      decorationColor: Colors.blueGrey,
                      fontWeight: FontWeight.w400,
                      color: Colors.blueGrey),
                ),
              ],
            ),
            SizedBox(
                height: 240,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 260,
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      child: Column(
                        children: [
                          Container(
                            height: 150,
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/concert2.jpg'),
                                    fit: BoxFit.cover)),
                          ),
                          Container(
                              padding: EdgeInsets.only(top: 10),
                              alignment: Alignment.centerLeft,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("Music Concert",
                                          style: TextStyle(
                                              fontSize: 17,
                                              fontWeight: FontWeight.w600)),
                                      Row(
                                        spacing: 5,
                                        children: [
                                          Icon(Icons.schedule),
                                          Text("10:00 - 00:00",
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w400))
                                        ],
                                      )
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Container(
                                        padding: EdgeInsets.only(
                                            left: 7,
                                            right: 7,
                                            top: 5,
                                            bottom: 5),
                                        decoration: BoxDecoration(
                                            color: Colors.green.shade800,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(5))),
                                        child: Column(
                                          children: [
                                            Icon(
                                              Icons.favorite,
                                              size: 20,
                                              fill: 1,
                                              color: Colors.white,
                                            ),
                                            Text("4.5",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 13,
                                                    fontWeight:
                                                        FontWeight.w600))
                                          ],
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ))
                        ],
                      ),
                    );
                  },
                ))
          ],
        ));
  }

  Container searchBar(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(20),
        child: Theme(
            data: Theme.of(context).copyWith(splashColor: Colors.transparent),
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: "Search for events",
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide.none),
              ),
            )));
  }

  Container headTitle() {
    return Container(
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.only(left: 20, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Hello, Sabir Bugti",
            style: TextStyle(fontSize: 35, fontWeight: FontWeight.w600),
          ),
          Text(
            "There are 3 new",
            style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.w600,
                color: const Color.fromARGB(255, 169, 130, 216)),
          ),
          Text(
            "events in Pune",
            style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.w600,
                color: const Color.fromARGB(255, 169, 130, 216)),
          )
        ],
      ),
    );
  }

  Container appBar() {
    return Container(
        padding: EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Row(
                    children: [
                      Text(
                        'Pune',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600),
                      ),
                      Icon(Icons.expand_more)
                    ],
                  ),
                ),
                Text(
                  "within 20km",
                  style: TextStyle(
                      fontSize: 13,
                      color: Colors.grey,
                      fontWeight: FontWeight.w600),
                )
              ],
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(100))),
              clipBehavior: Clip.antiAlias,
              child: Image(
                image: AssetImage('assets/images/face.jpg'),
                height: 40,
                width: 40,
                fit: BoxFit.cover,
              ),
            )
          ],
        ));
  }
}
