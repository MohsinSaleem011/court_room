import 'package:flutter/material.dart';

class Field extends StatefulWidget {
  String? hintText;
  TextEditingController? controller;
  String? Function(String?)? validate;
  bool isPassword;
  Widget? icon;
  bool check;
  final TextInputAction? inputAction;
  final FocusNode? focusNode;
  Field(
      {this.hintText,
      this.controller,
      this.validate,
      this.isPassword = false,
      this.inputAction,
      this.focusNode,
      this.check = false,
      this.icon});

  @override
  State<Field> createState() => _FieldState();
}

class _FieldState extends State<Field> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 13, vertical: 7),
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.9),
        borderRadius: BorderRadius.circular(120),
      ),
      child: TextFormField(
        focusNode: widget.focusNode,
        textInputAction: widget.inputAction,
        controller: widget.controller,
        validator: widget.validate,
        obscureText: widget.isPassword == false ? false : widget.isPassword,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: widget.hintText ?? 'hintText.... ',
          contentPadding: const EdgeInsets.all(10),
          suffixIcon: widget.icon,
        ),
      ),
    );
  }
}
