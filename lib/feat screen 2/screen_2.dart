// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../feat screen 1/screen_1.dart';
import '../feat screen 1/widget/button.dart';
import '../widget/main_heading.dart';
import '../widget/title_heading.dart';
import 'widget/alert_dialog.dart';
import 'widget/selected_location.dart';

class Screen2 extends StatefulWidget {
  const Screen2({super.key});
  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  String? _chosenValue;
  String selectedScreen = 'Screen 2';
  String? _selectedValue;
  List<String> options = ['Option 1', 'Option 2', 'Option 3'];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                color: Color(0xff4F7FA2),
                height: 130,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.only(top: 60, left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MainHeading(
                        mainHeading: 'Screen 2',
                      ),
                      SizedBox(
                        height: 50,
                        width: 150,
                        child: DropdownButtonFormField<String>(
                          value: selectedScreen,
                          icon: Icon(Icons.keyboard_arrow_down,
                              color: Colors.white),
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(10),
                            hintText: "Screen 2",
                            hintStyle: TextStyle(color: Colors.white),
                            filled: true,
                            fillColor: Color(0xff4F7FA2),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50.0),
                              borderSide: BorderSide(
                                color: Colors.white,
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50.0),
                              borderSide: BorderSide(
                                color: Colors.white,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50.0),
                              borderSide: BorderSide(
                                color: Colors.white,
                              ),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50.0),
                              borderSide: BorderSide(color: Colors.red),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50.0),
                              borderSide: BorderSide(color: Colors.red),
                            ),
                          ),
                          items: <String>[
                            'Screen 1',
                            'Screen 2',
                          ].map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(
                                value,
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                ),
                              ),
                            );
                          }).toList(),
                          style: TextStyle(color: Colors.black),
                          onChanged: (String? value) {
                            setState(() {
                              selectedScreen = value!;
                            });
                            if (value == 'Screen 1') {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => Screen1(),
                                ),
                              );
                            } else if (value == 'Screen 2') {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => Screen2(),
                                ),
                              );
                            }
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 40),
                      SizedBox(
                        height: 60,
                        width: 170,
                        child: DropdownButtonFormField<String>(
                          value: _chosenValue,
                          icon: Icon(Icons.keyboard_arrow_down,
                              color: Colors.white),
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(10),
                            filled: true,
                            fillColor: Color(0xff4F7FA2),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50.0),
                              borderSide: BorderSide(
                                color: Color(0xff4F7FA2),
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50.0),
                              borderSide: BorderSide(
                                color: Color(0xff4F7FA2),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50.0),
                              borderSide: BorderSide(
                                color: Color(0xff4F7FA2),
                              ),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50.0),
                              borderSide: BorderSide(color: Colors.red),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50.0),
                              borderSide: BorderSide(color: Colors.red),
                            ),
                            hintText: "Select City",
                            hintStyle:
                                TextStyle(fontSize: 18, color: Colors.white),
                          ),
                          items: <String>[
                            'Lahore',
                            'Karachi',
                            'Islamabad',
                            'Rawalpindi',
                            'Faisalabad',
                          ].map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value,
                                  style: TextStyle(
                                      fontSize: 18, color: Color(0xff4F7FA2))),
                            );
                          }).toList(),
                          style: TextStyle(color: Colors.black),
                          onChanged: (String? value) {
                            setState(() {
                              _chosenValue = value!;
                            });
                          },
                        ),
                      ),
                      SizedBox(height: 20),
                      TitleHeading(title: 'Lahore'),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SelectedLocation(cityName: 'Gulberg 2'),
                          SizedBox(width: 8),
                          SelectedLocation(cityName: 'DHA 5'),
                          SizedBox(width: 8),
                          SelectedLocation(cityName: 'Johar Town'),
                        ],
                      ),
                      SizedBox(height: 20),
                      TitleHeading(title: 'Karachi'),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SelectedLocation(cityName: 'North Nazimabad'),
                          SizedBox(width: 8),
                          SelectedLocation(cityName: 'Malir'),
                          SizedBox(width: 8),
                          SelectedLocation(cityName: 'Karsaz'),
                        ],
                      ),
                      SizedBox(height: 20),
                      TitleHeading(title: 'Islamabad'),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SelectedLocation(cityName: 'I 10'),
                          SizedBox(width: 8),
                          SelectedLocation(cityName: 'PWD'),
                          SizedBox(width: 8),
                          SelectedLocation(cityName: 'Rawat'),
                        ],
                      ),
                      SizedBox(height: 40),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SubmitAlertDialog(),
                        ],
                      ),
                      SizedBox(height: 50),
                      ButtonWidget(
                        buttonTitle: 'Open Bottom Sheet',
                        onPressed: () => showModalBottomSheet(
                          backgroundColor: Colors.transparent,
                          context: context,
                          builder: (context) => Container(
                            padding: const EdgeInsets.all(20.0),
                            decoration: BoxDecoration(
                              color: Color(0xff4F7FA2),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(20.0),
                                topRight: Radius.circular(20.0),
                              ),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                DropdownButtonFormField<String>(
                                  value: _selectedValue,
                                  icon: Icon(Icons.keyboard_arrow_down),
                                  items: options.map((String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(
                                        value,
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    );
                                  }).toList(),
                                  onChanged: (String? value) {
                                    setState(() {
                                      _selectedValue = value!;
                                    });
                                  },
                                ),
                                Wrap(
                                  children: options
                                      .map((option) => RadioListTile(
                                            title: Text(option),
                                            value: option,
                                            groupValue: _selectedValue,
                                            onChanged: (String? value) {
                                              setState(() {
                                                _selectedValue = value!;
                                              });
                                            },
                                          ))
                                      .toList(),
                                ),
                                // ElevatedButton(
                                //   onPressed: () {
                                //     Navigator.pop(context);
                                //   },
                                //   child: Text('Submit'),
                                // ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
