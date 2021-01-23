import 'package:flutter/material.dart';


class CnFConversion extends StatefulWidget {
  @override
  _CnFConversionState createState() => _CnFConversionState();
}

class _CnFConversionState extends State<CnFConversion> {
  final fieldCCtrl = TextEditingController();
  final fieldFCtrl = TextEditingController();
  // final _debounce = Debounce(milliseconds: 200);

  void initState() {
    super.initState();
    // fieldCCtrl.addListener(onChangeWithC);
    // fieldFCtrl.addListener(onChangeWithF);
  }

  double convertWithName(number, [type = 'C']) {
    if (type == 'C') {
      var result = number - 32;
      return result * 5 / 9;
    } else {
      return (number * 9 / 5 + 32);
    }
  }

  void onChangeWithC() {
    if (fieldCCtrl.text == '') {
      return;
    }
    print("C text field: ${fieldCCtrl.text}");
    var input, toFValue;
    try {
      input = double.parse(fieldCCtrl.text);
    } catch (e) {
      input = 0.0;
    }
    toFValue = convertWithName(input, 'F').toStringAsFixed(1).replaceAll('.0', '');
    setState(() {
      fieldFCtrl.value = TextEditingValue(
        text: toFValue,
        selection:
            TextSelection.fromPosition(TextPosition(offset: toFValue.length)),
      );
    });
  }

  void onChangeWithF() {
    if (fieldFCtrl.text == '') {
      return;
    }
    print("F text field: ${fieldFCtrl.text}");
    var input, toCValue;
    try {
      input = double.parse(fieldFCtrl.text);
    } catch (e) {
      input = 0.0;
    }
    toCValue = convertWithName(input).toString().replaceAll('.0', '');
    setState(() {
      fieldCCtrl.value = TextEditingValue(
        text: toCValue,
        selection:
            TextSelection.fromPosition(TextPosition(offset: toCValue.length)),
      );
    });
  }

  @override
  void dispose() {
    fieldCCtrl.dispose();
    fieldFCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
              onEditingComplete: onChangeWithC,
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
              onEditingComplete: onChangeWithF,
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
