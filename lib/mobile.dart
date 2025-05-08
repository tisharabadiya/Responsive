import 'package:flutter/material.dart';

class Mobile extends StatelessWidget {
  const Mobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 210,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.tealAccent,
          ),
          child: Center(child: Text('Box 1')),
        ),
        SizedBox(height: 10),
        Container(
          height: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.tealAccent,
          ),
          child: Center(child: Text('Box 2')),
        ),
        SizedBox(height: 10),
        Container(
          height: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.tealAccent,
          ),
          child: Center(child: Text('Box 3')),
        ),
        SizedBox(height: 10),
        Container(
          height: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.tealAccent,
          ),
          child: Center(child: Text('Box 4')),
        ),
        SizedBox(height: 10),
        Container(
          height: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.tealAccent,
          ),
          child: Center(child: Text('Box 5')),
        ),
        SizedBox(height: 10),
        Container(
          height: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.tealAccent,
          ),
          child: Center(child: Text('Box 6')),
        ),
      ],
    );
  }
}
