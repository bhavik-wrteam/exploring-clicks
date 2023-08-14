import 'dart:html';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

//final String instaurl = 'https://www.instagram.com/bhavik.bhuva_';
//final Uri _url = Uri.parse('https://instagram.com/bhavik.bhuva_');

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final Uri _url = Uri.parse('https://flutter.dev');

  Future<bool> _launchUrl() async {
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    } else {
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Exploring onClicks in Flutter"),
          centerTitle: true,
          backgroundColor: Colors.lightBlueAccent.shade200,
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.lightBlueAccent.shade100,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  MaterialButton(
                    onPressed: () {
                      _launchUrl();
                      setState(() {
                        //print(_launchUrl());
                      });
                    },
                    color: Colors.indigoAccent,
                    child: const Text(
                      "Instagram",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  MaterialButton(
                    onPressed: () {},
                    color: Colors.indigoAccent,
                    child: const Text(
                      "Github",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  MaterialButton(
                    onPressed: () {},
                    color: Colors.indigoAccent,
                    child: const Text(
                      "linkedin",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                width: double.infinity,
                child: MaterialButton(
                  color: Colors.blue,
                  onPressed: () {},
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Download",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
