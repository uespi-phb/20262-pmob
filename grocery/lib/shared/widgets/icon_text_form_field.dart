import 'package:flutter/material.dart';

import '../validators/validator.dart';

class IconTextFormField extends StatefulWidget {
  final String? labelText;
  final String? hintText;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final EdgeInsetsGeometry? margin;
  final TextEditingController? controller;
  final Validator? validator;
  final bool obscuredText;

  const IconTextFormField({
    super.key,
    this.labelText,
    this.hintText,
    this.prefixIcon,
    this.suffixIcon,
    this.margin,
    this.controller,
    this.validator,
    this.obscuredText = false,
  });

  @override
  State<IconTextFormField> createState() => _IconTextFormFieldState();
}

class _IconTextFormFieldState extends State<IconTextFormField> {
  bool isObscured = false;

  @override
  void initState() {
    super.initState();

    isObscured = widget.obscuredText;
  }

  Widget? _suffixIcon() {
    if (!widget.obscuredText) return Icon(widget.suffixIcon);

    final icon = isObscured ? Icons.visibility : Icons.visibility_off;

    return IconButton(
      onPressed: () {
        setState(() {
          isObscured = !isObscured;
        });
      },
      icon: Icon(icon),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: widget.margin ?? EdgeInsets.zero,
      child: TextFormField(
        obscureText: isObscured,
        controller: widget.controller,
        validator: widget.validator?.validate,
        decoration: InputDecoration(
          isDense: true,
          labelText: widget.labelText,
          hintText: widget.hintText,
          prefixIcon: widget.prefixIcon != null ? Icon(widget.prefixIcon) : null,
          suffixIcon: _suffixIcon(),
          suffix: widget.suffixIcon != null ? Icon(widget.suffixIcon) : null,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
          ),
        ),
      ),
    );
  }
}
