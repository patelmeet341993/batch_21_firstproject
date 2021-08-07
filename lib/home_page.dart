import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

 late String text;


  @override
  void initState() {
    super.initState();

    text="Home";
  }


  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: getBody(),
    ));
  }

  Widget getBody() {
    return Container(
      color: Colors.white,
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          getAppBar(),
          Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Center(child: Text(text,style: TextStyle(fontSize: 40),)),

          )),
          getBottomBar()
        ],
      ),
    );
  }

  Widget getBottomBar() {
    return Container(
      height: 65,
      color: Colors.white,
      child: Row(
        children: [
          bottomMenuItem(Icons.home, "Home", tapFun: () {
            print("home");
            text="Home";
            setState(() {
            });
          }),
          bottomMenuItem(Icons.favorite, "Fav", tapFun: () {
            print("fav");
            text="Fav";
            setState(() {
            });
          }),
          bottomMenuItem(Icons.menu, "Menu", tapFun: () {
            print("menu");
            text="Menu";
            setState(() {
            });
          }),
          bottomMenuItem(Icons.add_shopping_cart, "Cart", tapFun: () {}),
          bottomMenuItem(Icons.supervised_user_circle, "Profile", tapFun: () {
            text="Profile";
            setState(() {
            });
          }),
        ],
      ),
    );
  }

  Widget bottomMenuItem(IconData icon, String title,
      {required Function tapFun}) {
    return Expanded(
        child: InkWell(
          // onTap: ()=>tapFun()
      onTap: () {
        print("inner work");
        tapFun();
      },
      child: Container(
        color: Colors.black38,
        child: Padding(
          padding: EdgeInsets.only(top: 10),
          child: Column(
            children: [
              Icon(
                icon,
                size: 30,
                  color: title==text?Colors.deepPurple:Colors.black
              ),
              Text(title,style: TextStyle(
                color: title==text?Colors.white:Colors.black,
                fontSize: title==text?18:16,
                fontWeight: title==text?FontWeight.bold:FontWeight.normal
              ),)
            ],
          ),
        ),
      ),
    ));
  }

  Widget getAppBar() {
    return Container(
      color: Colors.grey,
      padding: const EdgeInsets.all(10.0),
      child: Row(
        children: [
          InkWell(
              onTap: () {
                print("on tap");
              },
              child: Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: Icon(Icons.arrow_back_ios_rounded))),
          Expanded(
            child: Text(
              "My App",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
          ),
          Icon(Icons.supervised_user_circle),
          SizedBox(
            width: 10,
          ),
          Icon(Icons.menu),
          SizedBox(
            width: 10,
          ),
        ],
      ),
    );
  }
}
