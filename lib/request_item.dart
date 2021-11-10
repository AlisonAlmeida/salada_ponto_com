

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class RequestPage extends StatefulWidget {
  const RequestPage({Key? key}) : super(key: key);

  @override
  _RequestPageState createState() => _RequestPageState();
}

class _RequestPageState extends State<RequestPage> {
  @override
  void initState() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('lib/assets/imgs/background_home_page.jpg'),
                fit: BoxFit.cover)),
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: ListView(
                children: const [
                  ItemCard(),
                  ItemCard(),
                  ItemCard(),
                  ItemCard(),
                  ItemCard(),
                  ItemCard(),
                  ItemCard(),
                  ItemCard(),
                ],
              ),
            ),
            Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.only(top: 5, bottom: 5),
                          //height: MediaQuery.of(context).size.height,
                          width: MediaQuery.of(context).size.width,
                          color: Colors.blueGrey,
                          child: const Text(
                            'Meu Pedido - Resumo',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ),
                      ],
                    ),
                    Expanded(
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: const [
                                Text(
                                  'Seu pedido está vazio',
                                  style: TextStyle(
                                    fontSize: 20,
                                    backgroundColor: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                )),
          ],
        ),
      ),
      persistentFooterButtons: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(
              child: const Text('Cancelar Pedido'),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.only(top: 12, bottom: 12),
                primary: Colors.red,
                minimumSize:
                    Size(MediaQuery.of(context).size.width / 2 - 10, 30),
              ),
              onPressed: () {},
            ),
            ElevatedButton(
              child: const Text('Concluir Pedido'),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.only(top: 12, bottom: 12),
                primary: Colors.green,
                minimumSize:
                    Size(MediaQuery.of(context).size.width / 2 - 10, 30),
              ),
              onPressed: () {},
            ),
          ],
        ),
      ],
    );
  }
}

class ItemCard extends StatelessWidget {
  const ItemCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        height: 100,
        color: Colors.white,
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.all(10),
              child: Image.asset('lib/assets/imgs/salada_homepage.png'),
            ),
            Expanded(
                flex: 5,
                child: ListTile(
                  title: Text("R\$ 10,00", style: TextStyle(fontSize: 40)),
                  subtitle: Text("3 Complementos"),
                )),
            Expanded(
                flex: 2,
                child: Container(
                    width: 100,
                    height: 100,
                    color: Colors.orange,
                    child: Icon(Icons.arrow_forward,
                        color: Colors.white, size: 60))),
          ],
        ),
      ),
    );
  }
}
