import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  Color bgColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: bgColor,
        title: Text(
          'Página single tap',
          style: TextStyle(
            color: bgColor == Colors.white ? Colors.purple : Colors.white,
          ),
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            size: 30,
          ),
          onPressed: () =>  Navigator.pop(context),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(20),
                  child: Text(
                  'Login efetuado com sucesso!'.toUpperCase(),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: bgColor == Colors.white ? Colors.purple : Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Text(
                'Aproveite o APP B.)',
                style: TextStyle(
                  fontSize: 25,
                  color: bgColor == Colors.white ? Colors.black : Colors.white,
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Image.asset(
                "assets/rick-ashley-dance.gif",
                height: 500.0,
                width: 500.0,
              ),
            ),
            Expanded(
              flex: 1,
              child: IconButton(
                icon: Icon(
                  Icons.favorite,
                  color: bgColor == Colors.white ? Colors.grey.shade800 : Colors.white,
                ),
                onPressed: () {
                  setState(() {
                    if (bgColor == Colors.white) {
                      bgColor = Colors.purple;
                    } else {
                      bgColor = Colors.white;
                    }
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}