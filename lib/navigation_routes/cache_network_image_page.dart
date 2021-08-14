
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CacheNetworkImagePage extends StatefulWidget {
  @override
  _CacheNetworkImagePageState createState() => _CacheNetworkImagePageState();
}

class _CacheNetworkImagePageState extends State<CacheNetworkImagePage> {
  String url="https://cdn2.hubspot.net/hubfs/53/image8-2.jpg";
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
      height: MediaQuery.of(context).size.height,
      color: Colors.black,

      child: Container(
        height: 50,
        width: 50,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: Container(

            color: Colors.grey,
            child: Text("Hello"),
            // child: CachedNetworkImage(
            //   imageUrl: url
            //   ,  progressIndicatorBuilder: (context, url, downloadProgress) =>
            //       Center(child: CircularProgressIndicator(value: downloadProgress.progress)),
            //   errorWidget: (context, url, error) => Icon(Icons.error),
            // ),
          ),
        ),
      ),
    );
  }
}
