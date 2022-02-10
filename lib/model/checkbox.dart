import 'package:api_callig3/provider/viewLogicController.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

class checkbox extends StatefulWidget {
  var text;
  checkbox({this.text});

  @override
  _checkboxState createState() => _checkboxState();
}

class _checkboxState extends State<checkbox> {
  // var isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Consumer<ViewLogicModel>(
      builder: (context, check, child) => Row(
        children: [
          Row(
            children: [
              Checkbox(
                // checkColor: Colors.white,

                // fillColor: MaterialStateProperty.resolveWith(getColor),

                value: check.ischected,

                onChanged: (bool? value) {
                  check.checkbox1();
                },
              ),
              Text(widget.text,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300))
            ],
          )
        ],
      ),
    );
  }
}
