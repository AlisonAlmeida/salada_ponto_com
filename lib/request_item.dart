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
            Expanded(flex: 4, child: Container()),
            Expanded(
                flex: 3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
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
                        ListView(
                          shrinkWrap: true,
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
                      ],
                    ),
                  ],
                )),
            Expanded(
                flex: 1,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                      child: const Text('Cancelar Pedido'),
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.only(top: 12, bottom: 12),
                        primary: Colors.red,
                        minimumSize:
                            Size(MediaQuery.of(context).size.width / 2, 30),
                      ),
                      onPressed: () {},
                    ),
                    ElevatedButton(
                      child: const Text('Concluir Pedido'),
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.only(top: 12, bottom: 12),
                        primary: Colors.green,
                        minimumSize:
                            Size(MediaQuery.of(context).size.width / 2, 30),
                      ),
                      onPressed: () {},
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
