import 'package:flutter/material.dart';

class RequestItem extends StatefulWidget {
  const RequestItem({Key? key}) : super(key: key);

  @override
  _RequestItemState createState() => _RequestItemState();
}

class _RequestItemState extends State<RequestItem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        elevation: 0,
      ),
      body: Container(
        color: Colors.orangeAccent,
        child: Column(
          children: [
            Expanded(
                flex: 2,
                child: Container(
                  color: Colors.pink,
                )),
            Expanded(
                flex: 1,
                child: Container(
                  color: Colors.blue,
                )),
          ],
        ),
      ),
    );
  }
}
