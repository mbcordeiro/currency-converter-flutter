import 'dart:html';

import 'package:currency_converter/app/components/currency_select.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.only(
            left: 30,
            right: 30,
            top: 100,
            bottom: 20,
          ),
          child: Column(
            children: [
              Image.asset(
                'assets/logo.png',
                width: 150,
                height: 150,
              ),
              SizedBox(
                height: 50,
              ),
              CurrencySelect(),
              SizedBox(
                height: 10,
              ),
              CurrencySelect(),
              SizedBox(
                height: 50,
              ),
              RaisedButton(
                color: Colors.amber,
                child: Text('CONVERTER'),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
