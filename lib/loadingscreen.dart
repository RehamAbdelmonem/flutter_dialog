import 'package:flutter/material.dart';
import 'package:my_project/components/nointernet.dart';
import 'package:my_project/home.dart';
import 'package:my_project/main.dart';

class LoadingScreen extends StatefulWidget {
  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  bool _internetConnected = false;
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _checkInternetConnection();
  }

  void _checkInternetConnection() async {
    bool isConnected = await checkInternetConnectivity();
    setState(() {
      _internetConnected = isConnected;
    });

    if (_internetConnected) {
      await Future.delayed(Duration(seconds: 3));
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Home()));
    } else {
      setState(() {
        _isLoading = true;
      });

      await Future.delayed(Duration(seconds: 1));

      showDialog(
        context: context,
        builder: (BuildContext context) {
          return NoInternet();
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    if (_isLoading) {
      return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 20),
              CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(Color(0xFF00C885))),
            ],
          ),
        ),
      );
    } else {
      return Home();
    }
  }
}
