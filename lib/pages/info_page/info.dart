import 'package:flutter/material.dart';

class Information extends StatelessWidget {
  const Information({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        title: const Text('Biz barada'),
        centerTitle: true,
      ),
      body: const SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 40, horizontal: 20),
          child: Text(
            'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Laborum, eos rerum quas cum quidem voluptas nostrum.Voluptatibus quo voluptate, cum officiis nihil, nisi facilis laborum quas est aliquam, totam incidunt.',
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
    );
  }
}
