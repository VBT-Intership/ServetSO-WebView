import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import "package:webview_flutter/webview_flutter.dart";

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {


  WebViewController controls;
  String homepage = "http://www.canva.com";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Welcome",
      home: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.amberAccent),

        actions: <Widget>[



          IconButton(

           padding: EdgeInsets.fromLTRB(0.0, 0.0, 150.0, 0.0),
            icon: Icon(Icons.backspace ),
            onPressed: (){
              controls.loadUrl(homepage);
            },

          ),
          IconButton(

            padding: EdgeInsets.fromLTRB(200.0, 0.0, 0.0, 0.0),
            icon: Icon(Icons.home ),
            onPressed: (){
              controls.goBack();
            },
          )
        ],


        ),
        body: WebView(
          onWebViewCreated: (control) {
            this.controls = control;
          },

          initialUrl: "https://www.canva.com",
          javascriptMode: JavascriptMode.unrestricted,
        ),
      ),
    );
  }
}
