import 'package:flutter/material.dart';

import 'package:webview_flutter/webview_flutter.dart';

void main() {
  runApp( const MaterialApp(debugShowCheckedModeBanner: false,
      home: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.deepPurple,
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,

          title:  const Center(child: Text('Slack and GitHub',
        style: TextStyle(
          color: Colors.white,
          fontSize: 30.0
        ),),
        ),),
        body: SafeArea(
          child: Center(child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(left: 30.0,right: 30.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
              color: Colors.white),
               // padding: EdgeInsets.only(left: 30, right: 30),
                height: 100,
                width: double.infinity,
                alignment: Alignment.center,
                child: const Text('Raphael Zegenee',
                  style: TextStyle(fontSize:30,
                  color: Colors.deepPurple,
                  fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 20.0,),
              const CircleAvatar(backgroundImage: AssetImage('assets/slack_profile.jpg'),
              radius: 50.0,),
              const SizedBox(
                height: 20.0,
              ),
              ElevatedButton(
                onPressed: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(
                    builder: (context) => const WebViewApp(),
                ),);

              },
                style: ElevatedButton.styleFrom(
                  primary: Colors.white, // Background color
                  //onPrimary: Colors.white, // Text color
                  elevation: 5, // Elevation (shadow)
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10), // Button border radius
                  ),
                ),
                  child:
                  const Text('Open GitHub',
                    style: TextStyle(
                      color: Colors.deepPurple,
                    fontSize: 20.0),),),
            ],
          ),),
        ),
    );
  }
}

class WebViewApp extends StatefulWidget {
  const WebViewApp({super.key});



  @override
  State<WebViewApp> createState() => _WebViewAppState();
}

class _WebViewAppState extends State<WebViewApp> {
  late final WebViewController controller;

  @override
  void initState() {
    super.initState();
    controller = WebViewController()
      ..loadRequest(
        Uri.parse('https://github.com/ZeggyRaph'),
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WebViewWidget(
        controller: controller,
      ),
    );
  }
}
