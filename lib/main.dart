import 'package:flutter/material.dart';
import 'package:sbmarketplace/common/helpers/Colors.dart';
import 'package:sbmarketplace/common/helpers/Strings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  child: Padding(
                    padding: const EdgeInsets.all(2),
                    child: Image.asset('assets/avatar.png'),
                  ),
                ),
                const SizedBox(width: 15),
                Container(
                  alignment: Alignment.center,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  decoration: BoxDecoration(
                    color: MyColors.grayLight,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    MyStrings.searchHint.trim(),
                    style:
                        TextStyle(color: MyColors.textGrayLight, fontSize: 14),
                  ),
                ),
              ],
            ),
            actions: [
              IconButton(
                icon: Image.asset('assets/notification.png'),
                onPressed: () {},
              ),
              IconButton(
                icon: Image.asset('assets/cart.png'),
                onPressed: () {},
              ),
            ],
          ),
          body: const Center(
            child: Text(''),
          ),
        ));
  }
}
