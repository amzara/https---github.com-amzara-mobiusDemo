import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:json_path/json_path.dart';
import 'ContentStream.dart';
import 'package:tuple/tuple.dart';
import 'package:provider/provider.dart';
import 'Homepage.dart';

class SearchJsonDisplay extends StatefulWidget {
  const SearchJsonDisplay({Key? key}) : super(key: key);

  @override
  SearchJsonDisplayState createState() => SearchJsonDisplayState();
}

class SearchJsonDisplayState extends State<SearchJsonDisplay> {
  List<Tuple3<String, String, String>> myList = [];
  final TextEditingController controller1 = TextEditingController();
  final TextEditingController controller2 = TextEditingController();
  final TextEditingController controller3 = TextEditingController();
  String data = '';
  Map<String, dynamic> myMap = {};

  Future<void> fetchData(
      BuildContext context, String text1, String text2, String text3) async {
    final globalData = Provider.of<GlobalData>(context, listen: false);

    var url = 'https://192.168.50.31/mobius/rest/searches?returnresults=true';
    var headers = {
      "Accept": "application/vnd.asg-mobius-search-results.v3+json",
      "Client-Id": "${globalData.clientId}",
      "Content-Type": "application/vnd.asg-mobius-search.v4+json"
    };
    var body = jsonEncode({
      "indexSearch": {
        "name": "Creating a new search",
        "distinct": false,
        "exitOnError": true,
        "conjunction": "AND",
        "constraints": [
          {
            "name": "$text1",
            "operator": "$text2",
            "values": [
              {"value": "$text3"}
            ]
          }
        ],
        "returnedIndexes": [
          {"name": "$text1"}
        ],
        "repositories": [
          {"id": "D6DFEAB4-637C-4D99-AB9B-F70DE0FA9392"}
        ],
        "description": "",
        "advancedDescription": null,
        "textFilter": null
      }
    });
    var response =
        await http.post(Uri.parse(url), headers: headers, body: body);
    if (response.statusCode == 200) {
      var jsonData = jsonDecode(response.body);

      final fileName =
          JsonPath(r'$..metadata[1].keyValue').readValues(jsonData);
      final objectId = JsonPath(r'$..objectId').readValues(jsonData);
      final indexName = JsonPath(r'$..indexes..value').readValues(jsonData);

      final fileNameList = fileName.toList();
      final objectIdList = objectId.toList();
      final indexNameList = indexName.toList();

      for (var i = 0; i < fileNameList.length; i++) {
        myList.add(Tuple3(
          fileNameList[i].toString(),
          objectIdList[i].toString(),
          indexNameList[i].toString(),
        ));
      }

      setState(() {});
      print('The server did not return any data.');
    } else {
      print('The request failed with status code: ${response.statusCode}.');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search JSON Display'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Expanded(
                  child: TextFormField(
                    controller: controller1,
                    decoration: const InputDecoration(
                      labelText: 'Field',
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: TextFormField(
                    controller: controller2,
                    decoration: const InputDecoration(
                      labelText: 'Operator',
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: TextFormField(
                    controller: controller3,
                    decoration: const InputDecoration(
                      labelText: 'Value',
                    ),
                  ),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () => fetchData(context, controller1.text,
                  controller2.text, controller3.text),
              child: const Text('Fetch Data'),
            ),
            Text('Response: $data'),
            Text('Length of myList: ${myList.length}'),
            Expanded(
              child: ListView.builder(
                itemCount: myList.length,
                itemBuilder: (context, index) {
                  final tuple = myList[index];
                  return Card(
                    elevation: 5.0,
                    child: ListTile(
                      title: Text(tuple.item1),
                      subtitle: Text(tuple.item3),
                      trailing: Icon(Icons.arrow_forward_ios),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                ContentStream(entryValue: tuple.item2),
                          ),
                        );
                      },
                    ),
                  );
                }, // Add closing parenthesis ')' here
              ),
            ), // Add closing parenthesis ')' here
          ], // Add closing square bracket ']' here
        ),
      ),
    );
  }
}
