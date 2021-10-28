import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.leanBack);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('lib/assets/background_home_page.jpg'),
                fit: BoxFit.cover)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.deepOrangeAccent)),
              child: Text(
                'Salada.com',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.orange,
                  fontSize: 60,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: ElevatedButton.icon(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.orange),
                  animationDuration: Duration(seconds: 1),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          side: BorderSide(color: Colors.orange))),
                ),
                icon: Icon(Icons.arrow_forward_ios_sharp),
                onPressed: () {},
                label: Text('Realizar pedido'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
