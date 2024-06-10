import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Homepage.dart'; // Import the file where you defined GlobalData

class StateManagementPractice extends StatefulWidget {
  @override
  _StateManagementPracticeState createState() =>
      _StateManagementPracticeState();
}

class _StateManagementPracticeState extends State<StateManagementPractice> {
  @override
  Widget build(BuildContext context) {
    final globalData = Provider.of<GlobalData>(context, listen: false);
    print(globalData.testString); // Access testString

    return Scaffold(
      appBar: AppBar(
        title: Text('State Management Practice'),
      ),
      body: Center(
        child: Text(globalData.clientId),
      ),
    );
  }
}
