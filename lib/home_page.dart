import 'package:flutter/material.dart';
import 'package:stack_column/BottomBar.dart';

import 'my_app_bar.dart';

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


  void uiUpdate(int selectedIndex)
  {
    if(selectedIndex==0)
      {
        text="Home";
      }
    else if(selectedIndex==1)
      {
        text="Cart";
      }
    setState(() {});

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
          MyAppBar(title: "Home Page",),
          Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Center(child: Text(text,style: TextStyle(fontSize: 40),)),

          )),
          BottomBar(updateParent: uiUpdate,),
        ],
      ),
    );
  }




}

