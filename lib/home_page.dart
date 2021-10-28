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
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('lib/assets/imgs/background_home_page.jpg'),
                fit: BoxFit.cover)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  height: 300,
                  width: 500,
                  decoration: BoxDecoration(
                    color: Colors.blueGrey[400],
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
                Container(
                  width: 500,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: const Text(
                    'Salada.com',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'IrishGrover',
                      color: Colors.orange,
                      fontSize: 60,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: ElevatedButton.icon(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.orange),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  )),
                ),
                icon: Icon(Icons.arrow_forward_ios_sharp,
                    color: Colors.blueGrey[400]),
                onPressed: () {},
                label: Text(
                  'Realizar pedido',
                  style: TextStyle(color: Colors.blueGrey[400], fontSize: 30),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
