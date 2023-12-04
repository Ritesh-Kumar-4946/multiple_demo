import 'package:flutter/material.dart';
import 'package:punon_demo/constants/app_assets.dart';

// https://androidride.com/flutter-render-list-of-row-inside-column-listview/
class Login07 extends StatefulWidget {
  const Login07({super.key, required this.title});

  final String title;

  @override
  State<Login07> createState() => _Login07State();
}

class _Login07State extends State<Login07> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        // child: Column(
        //   children: [
        //     for (int i = 1; i <= 50; i++)
        //       Row(
        //         mainAxisAlignment: MainAxisAlignment.center,
        //         children: [
        //           Text(
        //             'text $i',
        //             style: const TextStyle(
        //               fontSize: 18,
        //             ),
        //           ),
        //           const SizedBox(
        //             width: 20,
        //           ),
        //           Text(
        //             'content $i',
        //             style: const TextStyle(
        //               fontSize: 18,
        //             ),
        //           ),
        //         ],
        //       ),
        //   ],
        // ),
        // ************************
        // child: Column(
        //   children: [
        //     for (int i = 1; i <= 50; i++)
        //       Row(
        //         mainAxisAlignment: MainAxisAlignment.center,
        //         children: const [
        //           SizedBox(width: 10),
        //           Text('Name : '),
        //           SizedBox(width: 10),
        //           Flexible(
        //             child: TextField(
        //               decoration: InputDecoration(hintText: 'name'),
        //             ),
        //           )
        //         ],
        //       ),
        //   ],
        // ),
        // ************************
        // child: Column(
        //   children: [
        //     for (int i = 1; i <= 5; i++)
        //       ElevatedButton(
        //         onPressed: () {
        //           print("ButtonClicked $i");
        //         },
        //         style: ElevatedButton.styleFrom(
        //           backgroundColor: Colors.deepOrangeAccent,
        //           //onPrimary: Colors.black,
        //         ),
        //         child: Text('ElevatedButton $i'),
        //       ),
        //   ],
        // ),
        // ************************
        // child: Column(
        //   children: [
        //     for (int i = 1; i <= 5; i++)
        //       Theme(
        //         data: ThemeData(
        //           elevatedButtonTheme: ElevatedButtonThemeData(
        //             style: ElevatedButton.styleFrom(
        //               foregroundColor: Colors.white,
        //               backgroundColor: Colors.green,
        //             ),
        //           ),
        //         ),
        //         child: Column(
        //           children: [
        //             ElevatedButton(
        //               child: const Text('ElevatedButton 1'),
        //               onPressed: () {},
        //             ),
        //             const SizedBox(
        //               height: 10,
        //             ),
        //             ElevatedButton(
        //               child: const Text('ElevatedButton 2'),
        //               onPressed: () {},
        //             ),
        //           ],
        //         ),
        //       )
        //   ],
        // ),
        // ************************

        child: Column(
          children: [
            for (int i = 1; i <= 5; i++)
              CircleAvatar(
                radius: 30.0,
                backgroundColor: Colors.redAccent,
                child: Image.asset('assets/login_signup_06/user.png'),
              )
          ],
        ),
      ),
    );
  }
}
