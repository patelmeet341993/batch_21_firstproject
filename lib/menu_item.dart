import 'package:flutter/material.dart';

class MenuItem extends StatelessWidget {

  final String title;
  final IconData icon;
  final bool isSelected ;
  final Function tapFun;

  MenuItem({required this.title,required this.icon,this.isSelected=false,required this.tapFun});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: InkWell(
          // onTap: ()=>tapFun()
          onTap: () {
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
                      color: isSelected?Colors.white:Colors.black
                  ),
                  Text(title,style: TextStyle(
                      color: isSelected?Colors.white:Colors.black,
                      fontSize: isSelected?18:16,
                      fontWeight: isSelected?FontWeight.bold:FontWeight.normal
                  ),)
                ],
              ),
            ),
          ),
        ));
  }
}
