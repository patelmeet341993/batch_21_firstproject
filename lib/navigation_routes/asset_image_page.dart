import 'package:flutter/material.dart';
class AssetImagePage extends StatefulWidget {
  @override
  _AssetImagePageState createState() => _AssetImagePageState();
}

class _AssetImagePageState extends State<AssetImagePage> {
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
      width: MediaQuery.of(context).size.width,
      child: Image.asset("asset/google_logo.png"),
    );
  }
}
