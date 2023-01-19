import 'package:flutter/material.dart';

class EcoButton extends StatelessWidget {
  String? title;
  bool isloginButton;
  VoidCallback? onPress;
  bool? isLoading;
  // ignore: use_key_in_widget_constructors
  EcoButton(
      {this.title,
      this.isloginButton = false,
      this.onPress,
      this.isLoading = false});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 13, vertical: 10),
        height: 60,
        width: double.infinity,
        decoration: BoxDecoration(
          color: isloginButton == false ? Colors.white : Colors.black,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
              color: isloginButton == false ? Colors.black : Colors.black),
        ),
        child: Stack(
          children: [
            Visibility(
              visible: isLoading! ? false : true,
              child: Center(
                child: Text(
                  title ?? 'button',
                  style: TextStyle(
                      color:
                          isloginButton == false ? Colors.black : Colors.white,
                      fontSize: 16),
                ),
              ),
            ),
            Visibility(
              visible: isLoading!,
              child: Center(
                child: CircularProgressIndicator(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
