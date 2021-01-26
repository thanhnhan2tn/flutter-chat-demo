import 'package:flutter/material.dart';


class CnFConversion extends StatefulWidget {
  @override
  _CnFConversionState createState() => _CnFConversionState();
}

class _CnFConversionState extends State<CnFConversion> {
  double theCValue;
  final fieldCCtrl = TextEditingController();
  final fieldFCtrl = TextEditingController();

  void initState() {
    super.initState();
    theCValue = 0.0;
    fieldCCtrl.text = theCValue.toString();
    fieldFCtrl.text = convertWithName(theCValue, 'F').toString();
  }

  double convertWithName(number, [type = 'C']) {
    if (type == 'C') {
      var result = number - 32;
      return result * 5 / 9;
    } else {
      return (number * 9 / 5 + 32);
    }
  }

  void onChangeByName(TextEditingController ctrl, String name) {
    if (ctrl.text == '') {
      return;
    }
    var cValue;
    try {
      if (name == 'C') {
        cValue = double.parse(ctrl.text);
      } else {
        cValue = convertWithName(ctrl.text, 'C');
      }
    } catch (e) {
      cValue = 0.0;
    }
    setState(() {
      theCValue = cValue;
    });
  }

  @override
  void dispose() {
    super.dispose();
    fieldCCtrl.dispose();
    fieldFCtrl.dispose();
  }

  @override
  Widget build(BuildContext context) {
    fieldCCtrl.value = TextEditingValue(
      text: theCValue.toStringAsFixed(1).replaceAll('.0', ''),
      selection:
          TextSelection.fromPosition(TextPosition(offset: fieldCCtrl.text.length)),
    );
    fieldFCtrl.value = TextEditingValue(
      text: convertWithName(theCValue, 'F').toStringAsFixed(1).replaceAll('.0', ''),
      selection:
          TextSelection.fromPosition(TextPosition(offset: fieldFCtrl.text.length)),
    );

    return Container(
      padding: EdgeInsets.all(15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Expanded(
            child: TextField(
              controller: fieldCCtrl,
              keyboardType: TextInputType.numberWithOptions(decimal: true, signed: true),
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'C',
              ),
              onEditingComplete: () => onChangeByName(fieldCCtrl, 'C'),
            ),
          ),
          Icon(Icons.compare_arrows),
          Expanded(
            child: TextField(
              controller: fieldFCtrl,
              keyboardType: TextInputType.numberWithOptions(decimal: true, signed: true),
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'F',
              ),
              onEditingComplete: () => onChangeByName(fieldCCtrl, 'F'),
            ),
          ),
        ],
      ),
    );
  }
}

class TextEditingControllerWithCursorPosition extends TextEditingController {
  TextEditingControllerWithCursorPosition({String text}) : super(text: text);

  @override
  set text(String newText) {
    value = value.copyWith(
      text: newText,
      selection: value.selection,
      composing: TextRange.empty,
    );
  }
}
