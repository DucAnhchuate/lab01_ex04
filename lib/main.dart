import 'package:flutter/material.dart';
import 'package:units_converter/units_converter.dart';

void main() {
  runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MyApp()
      )
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}


class _MyAppState extends State<MyApp> {
  // String binaryValue = "Binary";
  // String hexadecimalValue = "Hexadecimal";
  // String octanValue = "Octan";
  String value = "";

  void _handleTextChanged(newValue) {
    setState(() {
      this.value = newValue;
      // this.binaryValue = newValue;
      // this.hexadecimalValue = newValue;
      // this.octanValue = newValue;
    });
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Number Base Converter",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child:  Column(
          children: [
            TextField(
              onChanged: _handleTextChanged,
              style: TextStyle(
                color: Colors.black
              ),
              decoration: InputDecoration(
                label: Text(
                      "Decimal Number",
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 20
                      ),
                  ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.blue
                  )
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.blue
                  )
                )
              ),
            ),
            SizedBox(height:16,),
            Text(
              value.isNotEmpty
                  ? value.convertFromTo(NUMERAL_SYSTEMS.decimal, NUMERAL_SYSTEMS.binary).toString()
                  : "Binary",
              style: TextStyle(
                color: Colors.blue,
                fontSize: 30
              ),
            ),
            SizedBox(height:16,),

            Text(
              value.isNotEmpty
                  ? value.convertFromTo(NUMERAL_SYSTEMS.decimal, NUMERAL_SYSTEMS.hexadecimal).toString()
                  : "Hexadecimal",
              style: TextStyle(
                color: Colors.blue,
                fontSize: 30
            ),),
            SizedBox(height:16,),

            Text(
              value.isNotEmpty
                  ? value.convertFromTo(NUMERAL_SYSTEMS.decimal, NUMERAL_SYSTEMS.octal).toString()
                  : "Octal",              style: TextStyle(
                color: Colors.blue,
                fontSize: 30
            ),),
          ],
        ),
      ),
    );
  }
}


