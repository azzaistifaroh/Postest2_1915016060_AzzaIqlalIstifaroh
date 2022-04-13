import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  Widget myContainer() {
    return Container(
      width: 200,
      height: 160,
      color: Colors.red,
      margin: const EdgeInsets.all(5),
      child: Image.asset("assets/mcdonald.jpg"),
    );
  }

  Widget myContainer1() {
    return Container(
      width: 200,
      height: 160,
      color: Colors.red,
      // margin: const EdgeInsets.all(5),
      child: Image.asset("assets/kfc.jpeg"),
    );
  }

  Widget myContainer2() {
    return Container(
      width: 200,
      height: 160,
      color: Colors.red,
      margin: const EdgeInsets.all(5),
      child: Image.asset("assets/paket.jpeg"),
    );
  }

  Widget logo() {
    return Container(
      width: 200,
      height: 200,
      color: Colors.red,
      margin: const EdgeInsets.all(5),
      child: Image.asset("assets/logo.jpeg"),
    );
  }

  Widget button() {
    return Container(
      margin: const EdgeInsets.all(20),
      height: 100,
      width: 100,
      padding: const EdgeInsets.all(20),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 181, 77, 16),
        boxShadow: const [
          BoxShadow(
            color: Color.fromARGB(130, 0, 0, 0),
            // spreadRadius: 0.2,
            blurRadius: 18,
            offset: Offset(3, 3), // changes position of shadow
          )
        ],
        border: Border.all(
          width: 15,
          color: const Color.fromARGB(255, 206, 216, 218),
        ),
        borderRadius: const BorderRadius.only(
            topRight: Radius.circular(60),
            topLeft: Radius.circular(60),
            bottomLeft: Radius.circular(60),
            bottomRight: Radius.circular(60)),
      ),
      child: const Text(
        "Pesan Sekarang",
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold,
          fontFamily: 'Poppins',
          letterSpacing: 2,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Postest 2 Azzaa Iqlal Istifaroh"),
        backgroundColor: const Color.fromARGB(205, 244, 74, 2),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        child: ListView(
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            logo(),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  myContainer(),
                  myContainer1(),
                  myContainer2(),
                ],
              ),
            ),
            myContainer(),
            button(),
          ],
        ),
      ),
    );
  }
}
