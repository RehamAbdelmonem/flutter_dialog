import 'package:flutter/material.dart';

class FailedDialog extends StatelessWidget {
  static const String title = "Failed";
  static const String description = "somthing went wrong";
  static const String buttonText = "try again";
  static const String image = "assets/failed.gif";

  const FailedDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(Constants.padding),
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: contentBox(context),
    );
  }

  Widget contentBox(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.all(Constants.padding),
          margin: EdgeInsets.only(top: Constants.avatarRadius),
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            color: Colors.white,
            borderRadius: BorderRadius.circular(Constants.padding),
            boxShadow: [
              BoxShadow(
                color: Colors.black,
                offset: Offset(0, 10),
                blurRadius: 10,
              ),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                title,
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                description,
                style: TextStyle(fontSize: 20),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 22,
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text(
                    buttonText,
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              )
            ],
          ),
        ),
        Positioned(
          left: Constants.padding,
          right: Constants.padding,
          child: CircleAvatar(
            backgroundColor: Colors.transparent,
            radius: Constants.avatarRadius,
            child: ClipRRect(
              borderRadius: BorderRadius.all(
                Radius.circular(Constants.avatarRadius),
              ),
              child: Image.asset(image,
                  width: 1.5 * Constants.avatarRadius,
                  height: 1.5 * Constants.avatarRadius,
                  fit: BoxFit.cover),
            ),
          ),
        )
      ],
    );
  }
}

class Constants {
  static const double padding = 16.0;
  static const double avatarRadius = 40.0;
}
