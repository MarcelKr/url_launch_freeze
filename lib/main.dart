import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const UrlLauncher(),
    );
  }
}

class UrlLauncher extends StatelessWidget {
  const UrlLauncher({Key? key}) : super(key: key);

  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      debugPrint('Opening $url');
      bool res = await launch(url);
      debugPrint('Done. Result = ${res.toString()}');
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('url_launcher test')),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
        ListTile(
            title: Text('Go to our homepage'),
            trailing: Icon(Icons.open_in_new),
            onTap: () => _launchURL('https://scapershelper.de')),
        ListTile(
            title: Text('Go to the Facebook group'),
            trailing: Icon(Icons.open_in_new),
            onTap: () =>
                _launchURL('https://www.facebook.com/groups/ScapersHelper')),
        ListTile(
            title: Text('Go to our Instagram feed'),
            trailing: Icon(Icons.open_in_new),
            onTap: () => _launchURL('https://www.instagram.com/scapershelper/')),
            SizedBox(height: 64),
        CircularProgressIndicator()
      ]),
    );
  }
}
