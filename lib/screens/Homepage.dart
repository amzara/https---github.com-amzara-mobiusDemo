import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:mobiusamza/screens/StateManagementPractice.dart';
import 'package:mobiusamza/screens/searchJsonDisplay.dart';
import 'package:mobiusamza/screens/Navigate.dart';
import 'ContentStream.dart';
import 'Search.dart';
import 'JsonPathPractice.dart';
import 'searchJsonDisplay.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  var base64 = 'Basic TW9iaXVzMDE6dXNlcjAxOnVzZXIwMQ==';
  String status = '';
  String body = '';
  Map<String, String> ResponseHeaders = {};

  Future<void> getClientId() async {
    var url =
        'https://content.xmegtech.com:3443/mobius/rest'; // Replace with your URL
    var headers = {
      'Authorization-Repo': base64,
      // Add more headers if needed
    };

    var response = await http.get(Uri.parse(url), headers: headers);
    if (response.headers.containsKey('client-id')) {
      setState(() {
        ResponseHeaders['client-id'] = response.headers['client-id']!;
      });
    }

    setState(() {
      status = '${response.statusCode}';
      body = 'Response body: ${response.body}';
      ResponseHeaders = response.headers;
    });

    final globalData = Provider.of<GlobalData>(context, listen: false);
    globalData.setClientId(ResponseHeaders['client-id']!);
  }

  fetchIndexes(BuildContext context) async {
    final globalData = Provider.of<GlobalData>(context, listen: false);
    var repositoryApi =
        'https://content.xmegtech.com:3443/mobius/rest/indexes/repositories';

    var headers = {
      "Client-Id": "${ResponseHeaders['client-id'] ?? ''}",
      "Content-Type": "application/vnd.asg-mobius-list-indexes-request.v1+json"
    };

    var body = jsonEncode({
      "repositories": ["D6DFEAB4-637C-4D99-AB9B-F70DE0FA9392"]
    });

    var response =
        await http.post(Uri.parse(repositoryApi), headers: headers, body: body);

    if (response.statusCode == 200) {
      print("200 wahoo");
    } else {
      print('The request failed bro with status code: ${response.statusCode}.');
    }
  }

  @override
  void initState() {
    super.initState();
    getClientId();
    fetchIndexes(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: EdgeInsets.only(top: 100),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Mobius View',
                style: TextStyle(
                  fontSize: 30,
                  fontFamily: 'CoolFont', // Replace with your cool font
                  color: Colors.white,
                ),
              ),
              ElevatedButton(
                child: Text('Search'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => SearchJsonDisplay()),
                  );
                },
              ),
              ElevatedButton(
                child: Text('Navigate Screen'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Navigate()),
                  );
                },
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Tooltip(
                    message: 'Client-Id: ${ResponseHeaders['client-id'] ?? ''}',
                    child: status == '200'
                        ? Icon(Icons.circle, color: Colors.green)
                        : Icon(Icons.circle, color: Colors.red),
                  ),
                ),
              ),
              /*
          ElevatedButton(
            child: Text('Json Path Practice'),
            onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => JsonPathPractice()),
          );
            },
          ),
          ElevatedButton(
            child: Text('Go to Search'),
            onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Search()),
          );
            },
          ),
          ElevatedButton(
            child: Text('Test Provider State Management'),
            onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
            builder: (context) => StateManagementPractice()),
          );
            },
          ),
          */
            ],
          ),
        ),
      ),
    );
  }
}

class GlobalData extends ChangeNotifier {
  String testString = '123';
  String clientId = '';

  void setTestString(String newString) {
    testString = newString;
    notifyListeners();
  }

  void setClientId(String newClientId) {
    clientId = newClientId;
    notifyListeners();
  }
}
