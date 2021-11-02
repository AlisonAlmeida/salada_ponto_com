import 'package:flutter/material.dart';

class RequestPage extends StatefulWidget {
  const RequestPage({Key? key}) : super(key: key);

  @override
  _RequestPageState createState() => _RequestPageState();
}

class _RequestPageState extends State<RequestPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        elevation: 0,
      ),
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('lib/assets/imgs/background_home_page.jpg'),
                fit: BoxFit.cover)),
        child: Column(
          children: [
            Expanded(flex: 3, child: Container()),
            Expanded(
                flex: 1,
                child: Column(
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
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Seu pedido está vazio',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            ElevatedButton(
                              child: Text('Cancelar Pedido'),
                              style: ElevatedButton.styleFrom(
                                minimumSize: Size(
                                    MediaQuery.of(context).size.width / 2, 30),
                              ),
                              onPressed: () {},
                            ),
                            ElevatedButton(
                              child: Text('Concluir Pedido'),
                              style: ElevatedButton.styleFrom(
                                minimumSize: Size(
                                    MediaQuery.of(context).size.width / 2, 30),
                              ),
                              onPressed: () {},
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
