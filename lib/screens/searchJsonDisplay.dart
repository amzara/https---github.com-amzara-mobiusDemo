import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
  List<String> indexes = [];
  List<Tuple3<String, String, String>> myList = [];
  final TextEditingController controller1 = TextEditingController();
  final TextEditingController controller2 = TextEditingController();
  final TextEditingController controller3 = TextEditingController();
  String data = '';
  Map<String, dynamic> myMap = {};
  String operatorPlaceholder = 'Operator';
  List<String> operators = ['EQ', 'NE', 'LK', 'CT'];
  List<String> indexList = [];

  fetchIndexes(BuildContext context) async {
    final globalData = Provider.of<GlobalData>(context, listen: false);
    var repositoryApi =
        'https://content.xmegtech.com:3443/mobius/rest/repositories/D6DFEAB4-637C-4D99-AB9B-F70DE0FA9392/indexes';

    var headers = {
      "Accept": "application/vnd.asg-mobius-indexes.v2+json",
      "Client-Id":
          "${globalData.clientId}", // Replace with your client ID from the response headers
    };

    var response = await http.get(Uri.parse(repositoryApi), headers: headers);
    if (response.statusCode == 200) {
      var jsonData = jsonDecode(response.body);
      print(jsonData);

      final indexes = JsonPath(r'$..indexName').readValues(jsonData);
      indexList = indexes.toList().cast<String>();
      setState(() {});
    } else {
      print('The request failed with status code: ${response.statusCode}.');
    }
  }

  Future<void> fetchData(
      BuildContext context, String text1, String text2, String text3) async {
    final globalData = Provider.of<GlobalData>(context, listen: false);

    var url =
        'https://content.xmegtech.com:3443/mobius/rest/searches?returnresults=true';
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
  void initState() {
    super.initState();

    fetchIndexes(context);
  }

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Expanded(
                  child: DropdownButtonFormField<String>(
                    isExpanded: true,
                    menuMaxHeight: 300,
                    decoration: InputDecoration(
                      labelText: 'Field',
                      alignLabelWithHint: true,
                      contentPadding: EdgeInsets.all(10.0),
                      border: OutlineInputBorder(),
                    ),
                    items: indexList.map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Center(
                          child: Text(value),
                        ),
                      );
                    }).toList(),
                    onChanged: (value) {
                      setState(() {
                        controller1.text = value!;
                      });
                    },
                  ),
                ),
                const SizedBox(width: 20),
                Expanded(
                  child: DropdownButtonFormField<String>(
                    decoration: InputDecoration(
                      labelText: 'Operator',
                      contentPadding: EdgeInsets.all(10.0),
                      border: OutlineInputBorder(),
                    ),
                    items: operators.map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (value) {
                      setState(() {
                        controller2.text = value!;
                        operatorPlaceholder = value!;
                      });
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: <Widget>[
                Expanded(
                  child: TextFormField(
                    controller: controller3,
                    decoration: InputDecoration(
                        labelText: 'Value',
                        contentPadding: EdgeInsets.all(10.0),
                        border: OutlineInputBorder(),
                        alignLabelWithHint: true),
                  ),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                myList.clear();
                fetchData(context, controller1.text, controller2.text,
                    controller3.text);
              },
              child: const Text('Fetch Data'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueAccent, // background
                foregroundColor: Colors.white, // foreground
              ),
            ),
            if (myList.isNotEmpty) Text('${myList.length} results found.'),
            Expanded(
              child: ListView.builder(
                itemCount: myList.length,
                itemBuilder: (context, index) {
                  final tuple = myList[index];
                  return Card(
                    color: Colors
                        .lightBlueAccent, // Added this line to change the card color to blue
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
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
