import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class home extends StatefulWidget {
  static String Tag = "home";

  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  int currentindex=0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.green),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Vegetable Store",
            style: TextStyle(color: Colors.green),
          ),
          centerTitle: true,
          iconTheme: IconThemeData(color: Colors.green[400]),
          backgroundColor: Colors.white,
          actions: <Widget>[
            Padding(
                padding: EdgeInsets.only(right: 20),
                child: IconButton(
                    icon: Icon(
                      Icons.shopping_cart,
                    ),
                    onPressed: () {})),
          ],
          bottom: PreferredSize(
              child: Container(
                  height: 35,
                  child: Padding(
                    padding: EdgeInsets.only(left: 5, right: 5, bottom: 2),
                    child: TextField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.search),
                          border: OutlineInputBorder(
                              //  borderSide:BorderSide(color: Colors.green),

                              borderRadius: BorderRadius.circular(10))),
                    ),
                  )),
              preferredSize: Size.fromHeight(40.00)),
        ),
          bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: Colors.green,
            selectedFontSize: 15,
            type: BottomNavigationBarType.fixed,
            currentIndex: currentindex,
              onTap: (index){
              setState(() {
                currentindex=index;
              });
              },
              items:[
                BottomNavigationBarItem(icon: Icon(Icons.home),
                    title: Text("Home")),
                BottomNavigationBarItem(icon: Icon(Icons.view_module),
                    title: Text("Category")),
                BottomNavigationBarItem(icon: Icon(Icons.search),
                    title: Text("Search")),
                BottomNavigationBarItem(icon: Icon(Icons.local_offer),
                    title: Text("Offers")),
              ]),
//        bottomSheet: BottomAppBar(
//            child: Row(
//              mainAxisAlignment: MainAxisAlignment.spaceAround,
//              children: [
//                IconButton(icon: Icon(Icons.home, color: Colors.green), onPressed: () {}),
//                IconButton(icon: Icon(Icons.shopping_cart, color: Colors.green), onPressed: () {}),
//                IconButton(icon: Icon(Icons.turned_in_not, color: Colors.green), onPressed: () {}),
//                IconButton(icon: Icon(Icons.settings, color: Colors.green), onPressed: () {}),
//                IconButton(icon: Icon(Icons.person, color: Colors.green), onPressed: () {}),
//              ],
//            )),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              DrawerHeader(
                  decoration: BoxDecoration(color: Colors.green),
                  child: Column(
                    children: <Widget>[
                      Padding(padding: EdgeInsets.only(top: 40)),
                      Icon(
                        Icons.account_circle,
                        color: Colors.white,
                        size: 80,
                      ),
                      Text(
                        "srushti ghevariya",
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  )),
              ListTile(
                leading: IconButton(
                    icon: Icon(
                      Icons.home,
                      color: Colors.green[400],
                    ),
                    onPressed: () {}),
                title: GestureDetector(
                    child: Text(
                  "Home",
                  style: TextStyle(color: Colors.green[400]),
                )),
              ),
              ListTile(
                leading: IconButton(
                    icon: Icon(
                      Icons.person,
                      color: Colors.green[400],
                    ),
                    onPressed: () {}),
                title: Text(
                  "Person",
                  style: TextStyle(color: Colors.green[400]),
                ),
              ),
              ListTile(
                leading: IconButton(
                    icon: Icon(
                      Icons.shopping_cart,
                      color: Colors.green[400],
                    ),
                    onPressed: () {}),
                title: GestureDetector(
                    child: Text(
                  "My Cart",
                  style: TextStyle(color: Colors.green[400]),
                )),
              ),
              ListTile(
                leading: IconButton(
                    icon: Icon(
                      Icons.contact_phone,
                      color: Colors.green[400],
                    ),
                    onPressed: () {}),
                title: Text(
                  "Contact Us",
                  style: TextStyle(color: Colors.green[400]),
                ),
              ),
              ListTile(
                leading: IconButton(
                    icon: Icon(
                      Icons.star_border,
                      color: Colors.green[400],
                    ),
                    onPressed: () {}),
                title: Text(
                  "Rate Us",
                  style: TextStyle(color: Colors.green[400]),
                ),
              ),
              ListTile(
                leading: IconButton(
                    icon: Icon(
                      Icons.share,
                      color: Colors.green[400],
                    ),
                    onPressed: () {}),
                title: Text(
                  "Share",
                  style: TextStyle(color: Colors.green[400]),
                ),
              ),
            ],
          ),
        ),
        body:Container(),

      )
    );
  }
}
