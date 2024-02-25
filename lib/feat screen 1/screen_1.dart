// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../feat screen 2/screen_2.dart';
import '../widget/main_heading.dart';
import '../widget/text_regular_14.dart';
import '../widget/title_heading.dart';
import 'widget/button.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  String selectedScreen = 'Screen 1';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
                        mainHeading: 'Screen 1',
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
                            hintText: "Screen 1",
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
                      TitleHeading(title: 'Create Order'),
                      SizedBox(height: 25),
                      TextRegular14(textRegular14: 'Customer Name'),
                      SizedBox(height: 10),
                      SizedBox(
                        height: 60,
                        child: TextFormField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(90.0),
                              borderSide: BorderSide(color: Colors.black),
                            ),
                          ),
                          maxLength: 50,
                          minLines: null,
                          maxLines: 1,
                        ),
                      ),
                      SizedBox(height: 8),
                      TextRegular14(textRegular14: 'Customer Contact Number'),
                      SizedBox(height: 5),
                      SizedBox(
                        height: 60,
                        child: TextFormField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(90.0),
                              borderSide: BorderSide(color: Colors.black),
                            ),
                          ),
                          maxLength: 13,
                          minLines: null,
                          maxLines: 1,
                        ),
                      ),
                      SizedBox(height: 8),
                      TextRegular14(textRegular14: 'Customer Street Address'),
                      SizedBox(height: 5),
                      TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                            borderSide: BorderSide(color: Colors.black),
                          ),
                        ),
                        maxLength: 100,
                        maxLines: null,
                        minLines: 2,
                      ),
                      SizedBox(height: 8),
                      TextRegular14(textRegular14: 'Parcel Count'),
                      SizedBox(height: 5),
                      SizedBox(
                        height: 60,
                        child: TextFormField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(90.0),
                              borderSide: BorderSide(color: Colors.black),
                            ),
                          ),
                          maxLength: 10,
                          minLines: null,
                          maxLines: 1,
                        ),
                      ),
                      SizedBox(height: 8),
                      TextRegular14(
                          textRegular14: 'Specific Instruction for Rider'),
                      SizedBox(height: 5),
                      TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                            borderSide: BorderSide(color: Colors.black),
                          ),
                        ),
                        maxLength: 500,
                        maxLines: null,
                        minLines: 3,
                      ),
                      SizedBox(height: 30),
                      ButtonWidget(
                        buttonTitle: 'Select Warehouse City',
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => Screen2(),
                            ),
                          );
                        },
                      ),
                      SizedBox(height: 30),
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
