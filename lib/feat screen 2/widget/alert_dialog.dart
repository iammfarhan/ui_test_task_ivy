import 'package:flutter/material.dart';

class SubmitAlertDialog extends StatefulWidget {
  const SubmitAlertDialog({super.key});

  @override
  State<SubmitAlertDialog> createState() => _SubmitAlertDialogState();
}

class _SubmitAlertDialogState extends State<SubmitAlertDialog> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      width: 130,
      child: ElevatedButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                contentPadding: const EdgeInsets.all(0.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  side: const BorderSide(color: Colors.black),
                ),
                backgroundColor: Colors.white,
                content: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      const SizedBox(height: 20),
                      const Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Text(
                          'Your order is created successfully. Please Confirm to submit.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 16.0,
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      const Divider(
                        color: Colors.black,
                        thickness: 1.0,
                        height: 0,
                      ),
                      IntrinsicHeight(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            TextButton(
                              onPressed: () => Navigator.pop(context),
                              style: TextButton.styleFrom(
                                backgroundColor:
                                    Colors.white, // White button background
                              ),
                              child: const Text(
                                'Cancel',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16.0,
                                ), // Black text
                              ),
                            ),
                            const VerticalDivider(
                              color: Colors.black,
                              thickness: 1.0,
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text(
                                'OK',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16.0,
                                ), // Black text
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
        style: ElevatedButton.styleFrom(
          minimumSize: const Size.fromHeight(50),
          backgroundColor: const Color(0xff4F7FA2),
          foregroundColor: Colors.white,
          textStyle: const TextStyle(fontSize: 18),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50.0),
          ),
        ),
        child: const Text('Submit'),
      ),
    );
  }
}
