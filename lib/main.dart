import 'package:flutter/material.dart';
import 'package:connectivity/connectivity.dart';
import 'package:my_project/components/nointernet.dart';
import 'package:my_project/loadingscreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  bool hasInternet = await checkInternetConnectivity();

  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: hasInternet ? LoadingScreen() : NoInternetDialogScreen(),
    ),
  );
}

Future<bool> checkInternetConnectivity() async {
  var connectivityResult = await Connectivity().checkConnectivity();
  return connectivityResult != ConnectivityResult.none;
}

class NoInternetDialogScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return NoInternet();
  }
}
