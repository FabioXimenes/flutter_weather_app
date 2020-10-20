import 'package:flutter/material.dart';

class UVIAlertDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Ultraviolet Index (UVI)'),
      content: SingleChildScrollView(
        child: ListBody(
          children: [
            Text('1-2: Low'),
            Text('3-5: Medium'),
            Text('6-7: High'),
            Text('8-10: Very high'),
            Text('> 11: Extreme'),
          ],
        ),
      ),
      actions: [
        FlatButton(
          child: Text('Ok'),
          onPressed: (){
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  }
}
