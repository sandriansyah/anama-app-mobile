import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class CustomerCard extends HookWidget {
  const CustomerCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 80,
      margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.blueGrey),
          boxShadow: [
            BoxShadow(
              color: Colors.black54.withOpacity(0.3),
              spreadRadius: 1, // Set spread radius
              blurRadius: 2, // Set blur radius
              offset: const Offset(0, 1), // Set shadow position)
            )
          ],
          borderRadius: BorderRadius.circular(10.0)),
      padding: const EdgeInsets.all(8),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            children: [
              Text("Cristiano Ronaldo",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18))
            ],
          ),
          Row(
            children: [Text("Jumlah Kredit Item : 10")],
          )
        ],
      ),
    );
  }
}
