import 'package:flutter/material.dart';

class EmailInputBox extends StatefulWidget {
  Widget? suffixChild;
  Widget? preChild;
  String? labelText;
  String? hintText;
  final TextEditingController? mycontroller;
  EmailInputBox({
    Key? key,
    this.preChild,
    this.suffixChild,
    this.labelText,
    this.hintText,
    this.mycontroller,
  }) : super(key: key);

  @override
  _EmailInputBoxState createState() => _EmailInputBoxState();
}

class _EmailInputBoxState extends State<EmailInputBox> {
  final FocusNode _focusNode = FocusNode();
  // final TextEditingController Controller =widget.Controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 5),
        padding: EdgeInsets.symmetric(horizontal: 20),
        // width: size.width * 0.7,
        decoration: BoxDecoration(
          border: Border.all(
            color: _focusNode.hasFocus
                ? Theme.of(context).hintColor
                : Colors.transparent,
            width: 2,
          ),
          // color: Theme.of(context).primaryColor,
          color: Theme.of(context).accentColor,
          borderRadius: BorderRadius.circular(12),
        ),
        child: TextField(
          controller: widget.mycontroller,
          keyboardType: TextInputType.emailAddress,
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Montserrat',
            fontSize: 18,
          ),
          focusNode: _focusNode,
          cursorColor: Theme.of(context).accentColor,
          decoration: InputDecoration(
            fillColor: Color(0xfff3f3f4),
            labelText: widget.labelText,
            hintText: widget.hintText,
            hintStyle: TextStyle(
              color: Colors.white24,
              fontFamily: 'Montserrat',
              fontSize: 18,
            ),
            labelStyle: TextStyle(
              color: _focusNode.hasFocus
                  ? Theme.of(context).hintColor
                  : Colors.white38,
              fontFamily: 'Montserrat',
              fontSize: 18,
            ),
            border: InputBorder.none,
            icon: widget.preChild,
            suffixIcon: widget.suffixChild,
          ),
        ),
      ),
    );
  }
}
