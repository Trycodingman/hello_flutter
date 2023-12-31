import 'package:flutter/material.dart';
import 'package:hello_flutter/widgets/button.dart';
import 'package:hello_flutter/widgets/card.dart';



void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFF181818),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Text('Hey, Selina',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 38,
                              fontWeight: FontWeight.w600
                          ),),
                        Text('Welcome back', style: TextStyle(
                            color: Colors.white.withOpacity(0.8),
                            fontSize: 18,
                            fontWeight: FontWeight.w800,),
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 120,
                ),
                Text('Total Balance',
                  style: TextStyle(
                      fontSize: 22,
                      color: Colors.white.withOpacity(0.8)
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                const Text('\$5 194 482',
                  style: TextStyle(
                      fontSize: 44,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                  ),
                ),
                const SizedBox(height: 30,),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                     Button(text: "Transfer", bgColor: Color(0xFFF1B33B), textColor: Colors.black),
                     Button(text: "Request", bgColor: Color(0xFF1F2123), textColor: Colors.white),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                 Row(
                   crossAxisAlignment: CrossAxisAlignment.end,
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                    const Text('Wallets', style: TextStyle(
                        color: Colors.white,
                        fontSize: 36,
                        fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text('View All', style: TextStyle(
                        color: Colors.white.withOpacity(0.8),
                        fontSize: 18,
                       ),
                    ),
                  ],
                ),
                const SizedBox(height: 20,),
                const CurrencyCard(name: 'Bitcoin', code: 'BTC', amount: '9 899', icon: Icons.currency_bitcoin, isInverted: false),
                Transform.translate(
                    offset: const Offset(0,-20),
                    child: const CurrencyCard(name: 'Euro', code: 'EUR', amount: '6 428', icon: Icons.euro_rounded, isInverted: true,)),
                Transform.translate(
                    offset: const Offset(0,-40),
                    child: const CurrencyCard(name: 'Dollar', code: 'USD', amount: '428', icon: Icons.money, isInverted: false)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
