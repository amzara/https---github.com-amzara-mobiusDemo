import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:path_provider/path_provider.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'dart:io';
import 'package:provider/provider.dart';
import 'Homepage.dart';

class ContentStream extends StatefulWidget {
  final String entryValue;
  @override
  _ContentStreamState createState() => _ContentStreamState();

  ContentStream({Key? key, required this.entryValue}) : super(key: key);
}

class _ContentStreamState extends State<ContentStream> {
  String _pdfPath = '';
  int _initialPage = 0; // Adjust this value to set the initial page

  Future<void> fetchData(BuildContext context) async {
    final globalData = Provider.of<GlobalData>(context, listen: false);
    print('fetchData called'); // Debug print
    final response = await http.get(
      Uri.parse(
          'https://192.168.50.31/mobius/rest/contentstreams?id=${widget.entryValue}&range=1&outputformat=pdf&rowshading=true&redacted=true'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
        'Client-Id': '${globalData.clientId}'
      },
    );
    print('Response status: ${response.statusCode}'); // Debug print
    if (response.statusCode == 200) {
      var bytes = response.bodyBytes;
      var dir = await getApplicationDocumentsDirectory();
      File file = File("${dir.path}/temp.pdf");

      await file.writeAsBytes(bytes);
      setState(() {
        _pdfPath = file.path;
      });
    } else {
      throw Exception('Failed to load data');
    }
  }

  @override
  void initState() {
    super.initState();
    fetchData(context).then((value) {}).catchError((error) {
      print('Error fetching data: $error');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Content Stream'),
      ),
      body: _pdfPath == ''
          ? Center(child: CircularProgressIndicator())
          : PDFView(
              filePath: _pdfPath,
              pageSnap: true, // Enable snapping to pages
              defaultPage: _initialPage, // Set the initial page
            ),
    );
  }
}
