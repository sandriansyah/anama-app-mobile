import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class TransactionCard extends HookWidget {
  const TransactionCard({super.key});

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
        child: Flexible(
          flex: 1,
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Flexible(
                    flex: 1,
                    child: Container(
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Rp. 450,000",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18)),
                              Text("Xiomi Redmi Note")
                            ],
                          ),
                        ],
                      ),
                    )),
                Flexible(
                    flex: 1,
                    child: Container(
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text("Cicilan Ke",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18)),
                              Text("12 / 24")
                            ],
                          ),
                        ],
                      ),
                    ))
              ]),
        ));
  }
}
