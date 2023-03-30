import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

final homeurl =
    Uri.parse('http://128.1.70.90/inha-mobile-emr/app/iuh/login.app');

class HomeScreen extends StatelessWidget {
  WebViewController controller = WebViewController()
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
    ..loadRequest(homeurl);

  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Mobile INHIS'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              // http://
              // https://
              controller.loadRequest(homeurl);
            },
            icon: Icon(
              Icons.home,
            ),
          ),
        ],
      ),
      body: WebViewWidget(
        controller: controller,
      ),
    );
  }
}
