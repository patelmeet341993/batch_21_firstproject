import 'package:flutter/material.dart';

class NetworkImagePage extends StatefulWidget {
  @override
  _NetworkImagePageState createState() => _NetworkImagePageState();
}

class _NetworkImagePageState extends State<NetworkImagePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: getBody(),
      ),
    );
  }

  Widget getBody()
  {
    return Container(
      child: Image.network("https://firebasestorage.googleapis.com/v0/b/mobileapp-35bf2.appspot.com/o/4X1yBxM6VYaxhe4zaUvc.jpg?alt=media&token=99b473c6-8654-40c3-8194-0629c7f45a93",
      height: 100,),
    );
  }
}
