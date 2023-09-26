import 'package:flutter/cupertino.dart';
import './folder/second.dart';

void main() => runApp(const Myfirst());

class Myfirst extends StatelessWidget {
  const Myfirst({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      debugShowCheckedModeBanner: false,
      theme: CupertinoThemeData(brightness: Brightness.light),
      home: Mysecond(),
    );
  }
}
