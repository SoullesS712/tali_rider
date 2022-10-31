import 'package:flutter/material.dart';

const List<String> list = <String>[
  '01001',
  '01002',
  '01003',
  '02001',
  '02002',
  '02003',
  '03000'
];

class Dropdownbutton extends StatefulWidget {
  const Dropdownbutton({Key? key, required this.car}) : super(key: key);
  final List car;

  @override
  // ignore: library_private_types_in_public_api
  _DropdownButtonExampleState createState() => _DropdownButtonExampleState();
}

class _DropdownButtonExampleState extends State<Dropdownbutton> {
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: const Icon(Icons.arrow_drop_down),
      elevation: 26,
      style: const TextStyle(color: Color.fromARGB(255, 0, 0, 0), fontSize: 20),
      underline: Container(
        height: 3,
        color: const Color.fromARGB(255, 193, 255, 77),
      ),
      onChanged: (String? value) {
        setState(() {
          dropdownValue = value!;
        });
      },
      items: list.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
