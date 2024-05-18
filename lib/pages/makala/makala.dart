import 'package:flutter/material.dart';

class MakalaScreen extends StatelessWidget {
  const MakalaScreen({super.key, required this.title, required this.img});
  final String title;
  final String img;
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
        title: Text(title),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Center(
              child: Container(
                height: MediaQuery.of(context).size.height/4,
                width: MediaQuery.of(context).size.width-60,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(img),
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 40, horizontal: 20),
              child: Text(
                'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Laborum, eos rerum quas cum quidem voluptas nostrum.Voluptatibus quo voluptate, cum officiis nihil, nisi facilis laborum quas est aliquam, totam incidunt.',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
