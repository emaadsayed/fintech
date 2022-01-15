import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class ReceivePage extends StatefulWidget {
  const ReceivePage({Key? key}) : super(key: key);

  @override
  _ReceivePageState createState() => _ReceivePageState();
}

class _ReceivePageState extends State<ReceivePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFAFAFA),
      body: getBody(),
    );
  }
  Widget getBody () {
    return Center(
      child: QrImage(
        data: "123456789",
        size: 200,
        backgroundColor: Color(0xffF5591F),
      ),
    );
  }
}
