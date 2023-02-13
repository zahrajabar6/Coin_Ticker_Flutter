import 'package:bit_coin/crypto_card.dart';
import 'package:flutter/material.dart';

class PriceScreen extends StatefulWidget {
  const PriceScreen({super.key});

  @override
  State<PriceScreen> createState() => _PriceScreenState();
}

class _PriceScreenState extends State<PriceScreen> {
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
                selectedCurrency: 'USD',
              ),
              CryptoCard(
                cryptoCurrency: 'BTC',
                selectedCurrency: 'USD',
              ),
              CryptoCard(
                cryptoCurrency: 'BTC',
                selectedCurrency: 'USD',
              ),
            ],
          ),
          Container(
            height: 150,
            color: const Color(0XFF414141),
          )
        ],
      ),
    );
  }
}
