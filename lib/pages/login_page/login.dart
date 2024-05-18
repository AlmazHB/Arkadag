
import 'package:flutter/material.dart';



class LoginPage
 extends StatelessWidget {
  const LoginPage
  ({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      decoration: const BoxDecoration(color: Colors.white
          // gradient: LinearGradient(
          //   colors: [
          //     Color.fromARGB(255, 29, 61, 158),
          //     Color.fromARGB(255, 48, 207, 224),
          //   ],
          //   begin: Alignment.topCenter,
          //   end: Alignment.bottomCenter,
          // ),
          ),
      child: Scaffold(
        backgroundColor: theme.scaffoldBackgroundColor,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          // leading: IconButton(
          //   icon: const Icon(
          //     Icons.arrow_back,
          //   ),
          //   onPressed: () {
          //     Navigator.of(context).push(
          //       MaterialPageRoute(
          //         builder: (context) => const HomePage(),
          //       ),
          //     );
          //   },
          // ),
          title: Text(
            "Ulgama Goşul",
            style: theme.appBarTheme.titleTextStyle,
          ),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: [
                Container(
                  height: 64,
                  margin: const EdgeInsets.only(
                      top: 40, left: 48, right: 48, bottom: 24),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: theme.colorScheme.secondary),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: const TextField(
                    
                    style: TextStyle(fontSize: 16),
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      hintText: "@Sanly.tm",
                      border: InputBorder.none,
                      
                    ),
                  ),
                ),
                Container(
                  height: 64,
                  margin:
                      const EdgeInsets.only(left: 48, right: 48, bottom: 48),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: theme.colorScheme.secondary),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: const TextField(
                    keyboardType: TextInputType.text,
                    style: TextStyle(fontSize: 16),
                    decoration: InputDecoration(
                      hintText: "Gizlin söz",
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                TextButton(
                  onPressed: () {},
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.greenAccent,
                    ),
                    height: 44,
                    width: 200,
                    child: const Center(child: Text("Ulgama gir")),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Container(
                    height: 44,
                    width: 200,
                    decoration: BoxDecoration(
                        color: Colors.cyanAccent,
                        borderRadius: BorderRadius.circular(16)),
                    child: const Center(child: Text("Agza bolmak")),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
