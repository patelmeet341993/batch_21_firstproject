import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  final String title;
  final Color backClr;
   MyAppBar({required this.title,this.backClr=Colors.grey}) ;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backClr,
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
              title,
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
