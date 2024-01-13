import 'package:flutter/material.dart';
import 'package:my_project/components/faileddialog.dart';
import 'package:my_project/components/loadingdialog.dart';
import 'package:my_project/components/nointernet.dart';
import 'package:my_project/components/successdialog.dart';
import 'package:my_project/components/yesORnoDialog.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dialogs'),
        backgroundColor: Color(0xFF091331),
      ),
      body: SingleChildScrollView(
        child:
            Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Text(
                  'Success Dialog',
                  style: TextStyle(fontSize: 28),
                ),
                ElevatedButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return SuccessDialog();
                        });
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF091331),
                  ),
                  child: Text(
                    'Show dialog',
                    style: TextStyle(fontSize: 22),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Text(
                  'Failed Dialog',
                  style: TextStyle(fontSize: 28),
                ),
                ElevatedButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return FailedDialog();
                        });
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF091331),
                  ),
                  child: Text(
                    'Show dialog',
                    style: TextStyle(fontSize: 22),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Text(
                  'Yes or No Dialog',
                  style: TextStyle(fontSize: 28),
                ),
                ElevatedButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return YesOrNoDialog();
                        });
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF091331),
                  ),
                  child: Text(
                    'Show dialog',
                    style: TextStyle(fontSize: 22),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Text(
                  'loading Dialog',
                  style: TextStyle(fontSize: 28),
                ),
                ElevatedButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return LoadingDialog();
                        });
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF091331),
                  ),
                  child: Text(
                    'Show dialog',
                    style: TextStyle(fontSize: 22),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Text(
                  'No internet',
                  style: TextStyle(fontSize: 28),
                ),
                ElevatedButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return NoInternet();
                        });
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF091331),
                  ),
                  child: Text(
                    'Show dialog',
                    style: TextStyle(fontSize: 22),
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}