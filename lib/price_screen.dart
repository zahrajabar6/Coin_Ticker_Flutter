import 'package:bit_coin/coin_data.dart';
import 'package:bit_coin/crypto_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PriceScreen extends StatefulWidget {
  const PriceScreen({super.key});

  @override
  State<PriceScreen> createState() => _PriceScreenState();
}

class _PriceScreenState extends State<PriceScreen> {
  String selectedCurrency = 'AUD';

  List<Text> getPickerItems() {
    List<Text> items = [];
    for (String currency in currenciesList) {
      items.add(Text(currency));
    }
    return items;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Coin Ticker'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              CryptoCard(
                cryptoCurrency: 'BTC',
                selectedCurrency: selectedCurrency,
                value: '?',
              ),
              CryptoCard(
                cryptoCurrency: 'BTC',
                selectedCurrency: selectedCurrency,
                value: '?',
              ),
              CryptoCard(
                cryptoCurrency: 'BTC',
                selectedCurrency: selectedCurrency,
                value: '?',
              ),
            ],
          ),
          Container(
              height: 150,
              color: const Color(0XFF414141),
              child: CupertinoPicker(
                itemExtent: 32.0,
                onSelectedItemChanged: (int selectedIndex) {
                  setState(() {
                    selectedCurrency = currenciesList[selectedIndex];
                    //getData();
                  });
                },
                children: getPickerItems(),
              )),
        ],
      ),
    );
  }
}
