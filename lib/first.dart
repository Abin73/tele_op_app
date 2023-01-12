import 'package:flutter/cupertino.dart';

class Page extends StatefulWidget {
  const Page({super.key});

  @override
  State<Page> createState() => _PageState();
}

class _PageState extends State<Page> {
  get stack => null;

  @override
  Widget build(BuildContext context) {
    return Container(
      key:stack(
        children:widget
      )
    );
  }
}