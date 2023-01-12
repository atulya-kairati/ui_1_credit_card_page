import 'package:flutter/material.dart';
import 'package:ui_1_credit_card_entry/widgets/circle.dart';

import 'widgets/fancy_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Checkout details',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        children: [
          ...getBG,
          Container(
            width: double.infinity,
            padding: const EdgeInsets.only(top: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32),
                  child: Text(
                    "Checkout details",
                    style: Theme.of(context).textTheme.headline4,
                  ),
                ),
                const FancyCard(),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        "Card Holder",
                        style: Theme.of(context)
                            .textTheme
                            .subtitle2
                            ?.copyWith(color: Colors.grey[600]!),
                      ),
                      const TextField(),
                      const SizedBox(height: 32),
                      Text(
                        "Card Number",
                        style: Theme.of(context)
                            .textTheme
                            .subtitle2
                            ?.copyWith(color: Colors.grey[600]!),
                      ),
                      const TextField(),
                      const SizedBox(height: 32),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                "Expiration Date",
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle2
                                    ?.copyWith(color: Colors.grey[600]!),
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: (width - 24 * 2) / 4,
                                    child: const TextField(
                                      decoration:
                                          InputDecoration(hintText: "MM"),
                                    ),
                                  ),
                                  const SizedBox(width: 8),
                                  SizedBox(
                                    width: (width - 24 * 2) / 3.6,
                                    child: const TextField(
                                      decoration:
                                          InputDecoration(hintText: "YYYY"),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "CVV code",
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle2
                                    ?.copyWith(color: Colors.grey[600]!),
                              ),
                              SizedBox(
                                width: (width - 24 * 2) / 3.6,
                                child: const TextField(
                                  decoration:
                                      InputDecoration(hintText: "eg. 232"),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 32,
                      ),
                      InkWell(
                        onTap: () {},
                        child: Ink(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Colors.blue[200]!,
                                Colors.purpleAccent[100]!,
                              ],
                            ),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(20)),
                          ),
                          child: const Center(
                            child: Padding(
                              padding: EdgeInsets.all(12.0),
                              child: Text(
                                "Submit",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> get getBG {
    return [
      Positioned(
        top: -60,
        right: 120,
        child: Circle(
          radius: 100,
          color: Colors.blue.withOpacity(0.2),
        ),
      ),
      Positioned(
        right: -60,
        top: -100,
        child: Circle(
          radius: 250,
          color: Colors.purpleAccent.withOpacity(0.2),
        ),
      ),
      Positioned(
        left: 50,
        right: 0,
        bottom: -60,
        child: Circle(
          radius: 100,
          color: Colors.blue.withOpacity(0.2),
        ),
      ),
      Positioned(
        bottom: -150,
        left: -50,
        child: Circle(
          radius: 250,
          color: Colors.purpleAccent.withOpacity(0.2),
        ),
      ),
    ];
  }
}

class GradientButton extends StatelessWidget {
  const GradientButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.blue[200]!,
              Colors.purpleAccent[100]!,
            ],
          ),
        ),
      ),
    );
  }
}
