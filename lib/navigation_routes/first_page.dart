import 'package:flutter/material.dart';
import 'package:stack_column/navigation_routes/asset_image_page.dart';
import 'package:stack_column/navigation_routes/cache_network_image_page.dart';
import 'package:stack_column/navigation_routes/network_image_page.dart';

class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: getBody(),
      ),
    );
  }

  Widget getBody() {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          getButton("Asset Image", onTapFun: () {

            Navigator.push(context,
                MaterialPageRoute(builder: (context) => AssetImagePage()));
          }),
          SizedBox(
            height: 50,
          ),
          getButton("Network Image", onTapFun: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => NetworkImagePage()));
          }),
          SizedBox(
            height: 50,
          ),
          getButton("Cache Network Image", onTapFun: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => CacheNetworkImagePage()));
          })
        ],
      ),
    );
  }

  Widget getButton(String name, {required Function onTapFun}) {
    return InkWell(
      onTap: () {
        onTapFun();
      },
      child: Container(
        padding: EdgeInsets.all(20),
        child: Text(name),
      ),
    );
  }
}
