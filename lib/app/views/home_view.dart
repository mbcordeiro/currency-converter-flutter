import 'package:currency_converter/app/components/currency_select.dart';
import 'package:currency_converter/app/controllers/home_controller.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final TextEditingController toText = TextEditingController();

  final TextEditingController fromText = TextEditingController();

  HomeController homeController;

  @override
  void initState() {
    super.initState();
  }

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
          child: ListView(
            children: [
              Image.asset(
                'assets/logo.png',
                width: 150,
                height: 150,
              ),
              SizedBox(
                height: 50,
              ),
              CurrencySelect(
                selectedItem: homeController.toCurrency,
                editingController: toText,
                items: homeController.currencies,
                onChanged: (model) {
                  setState(() {
                    homeController.toCurrency = model;
                  });
                },
              ),
              SizedBox(
                height: 10,
              ),
              CurrencySelect(
                selectedItem: homeController.fromCurrency,
                editingController: fromText,
                items: homeController.currencies,
                onChanged: (model) {
                  homeController.fromCurrency = model;
                },
              ),
              SizedBox(
                height: 50,
              ),
              RaisedButton(
                color: Colors.amber,
                child: Text('CONVERTER'),
                onPressed: () {
                  homeController.convert();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
