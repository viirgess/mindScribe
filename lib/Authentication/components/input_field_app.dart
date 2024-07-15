import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:mind_scribe/utils/color_source.dart';

class InputFieldApp extends StatefulWidget {
  final String hintText;
  final bool isPassword;

  const InputFieldApp({
    super.key,
    required this.hintText,
    required this.isPassword,
  });

  @override
  State<InputFieldApp> createState() => _InputFieldAppState();
}

class _InputFieldAppState extends State<InputFieldApp> {
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: widget.isPassword ? _obscureText : false,
      decoration: InputDecoration(
        hintText: widget.hintText,
        hintStyle: const TextStyle(
          color: ColorsSourceApp.lightGrey,
        ),
        filled: true,
        fillColor: Colors.white,
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white,
          ),
          borderRadius: BorderRadius.all(Radius.circular(32)),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white,
          ),
          borderRadius: BorderRadius.all(Radius.circular(32)),
        ),
        suffixIcon: widget.isPassword
            ? IconButton(
                icon: Icon(
                  _obscureText ? Icons.visibility : Icons.visibility_off,
                  color: ColorsSourceApp.lightGrey,
                ),
                onPressed: () {
                  setState(() {
                    _obscureText = !_obscureText;
                  });
                },
              )
            : null,
      ),
    );
  }
}
