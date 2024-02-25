import 'package:flutter/material.dart';

class SelectedLocation extends StatefulWidget {
  const SelectedLocation({super.key, required this.cityName});
final String cityName;

  @override
  State<SelectedLocation> createState() => _SelectedLocationState();
}

class _SelectedLocationState extends State<SelectedLocation> {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(
        maxWidth: double.infinity,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color(0xffD9D9D9),
      ),
      child: Padding(
        padding: const EdgeInsets.all(6),
        child: Row(
          mainAxisSize: MainAxisSize.min, 
          children:  [
            Text(
              widget.cityName,
              style: const TextStyle(color: Colors.black),
            ),
            const SizedBox(width: 5),
            const Icon(
              Icons.cancel_outlined,
              color: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
