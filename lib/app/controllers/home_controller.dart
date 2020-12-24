import 'package:currency_converter/app/models/currency_model.dart';
import 'package:flutter/cupertino.dart';

class HomeController {
  final TextEditingController toText;
  final TextEditingController fromText;
  List<CurrencyModel> currencies;
  CurrencyModel toCurrency;
  CurrencyModel fromCurrency;

  HomeController({this.toText, this.fromText}) {
    currencies = CurrencyModel.getCurrencies();
    toCurrency = currencies[0];
    fromCurrency = currencies[1];
  }

  void convert() {
    String text = toText.text;
    double value = double.tryParse(text) ?? 1.0;
    double totalValue = 0;

    switch (fromCurrency.name) {
      case 'Real':
        totalValue = value * toCurrency.real;
        break;
      case 'Dolar':
        totalValue = value * toCurrency.euro;
        break;
      case 'Euro':
        totalValue = value * toCurrency.euro;
        break;
      case 'Bitcoin':
        totalValue = value * toCurrency.bitcoin;
        break;
      default:
        return;
    }

    fromText.text = totalValue.toStringAsFixed(2);
  }
}
