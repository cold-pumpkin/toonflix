import 'package:flutter/material.dart';
import 'package:toonflix/widgets/Button.dart';
import 'package:toonflix/widgets/curreny_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: const Color(0xff181818),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const SizedBox(
              height: 80,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
                  const Text(
                    'Hey, Phil',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 34,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  Text(
                    'Welcome back',
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.8),
                      fontSize: 18,
                    ),
                  ),
                ]),
              ],
            ),
            const SizedBox(
              height: 70,
            ),
            Text(
              'Total Balance',
              style:
                  TextStyle(fontSize: 22, color: Colors.white.withOpacity(0.8)),
            ),
            const SizedBox(
              height: 5,
            ),
            const Text(
              '\$ 5 194 482',
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Button(
                  text: 'Transfer',
                  backgroundColor: Color(0xFFF1B33B),
                  textColor: Colors.black,
                ),
                Button(
                  text: 'Request',
                  backgroundColor: Color(0xFF1F2123),
                  textColor: Colors.white,
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment:
                  MainAxisAlignment.spaceBetween, // Row - main : 가로축
              crossAxisAlignment: CrossAxisAlignment.end, // Row - cross : 세로축
              children: [
                const Text(
                  'Wallet',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 36,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  'View All',
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.8),
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            // CARD
            const CurrencyCard(
              name: 'Euro',
              code: 'EUR',
              amount: '6 428',
              order: 0,
              icon: Icons.euro_rounded,
              isInverted: false,
            ),
            const CurrencyCard(
              name: 'Bitcoin',
              code: 'BTC',
              amount: '10 234',
              order: 1,
              icon: Icons.currency_bitcoin_rounded,
              isInverted: true,
            ),
            const CurrencyCard(
              name: 'Dollar',
              code: 'USD',
              amount: '12 445',
              order: 2,
              icon: Icons.attach_money_outlined,
              isInverted: false,
            ),
          ]),
        ),
      ),
    ));
  }
}
