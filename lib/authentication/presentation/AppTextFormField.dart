import 'package:flutter/material.dart';

class AppTextFormField extends StatefulWidget {

  AppTextFormField({
    super.key,
    required this.name,
    this.icons, required String? Function(dynamic p0) validate, required bool ispass,
  });
  String name;
  dynamic icons;

  @override
  State<AppTextFormField> createState() => _Widegt2textState();
}

class _Widegt2textState extends State<AppTextFormField> {
  bool check = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.all(20),
      child: TextFormField(
        decoration: InputDecoration(
          labelText: widget.name,
          suffixIcon: widget.icons,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
          
        ),
      ),
    );
  }
}