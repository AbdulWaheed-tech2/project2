import 'package:flutter/material.dart';

import 'women_screen.dart';
import 'men_screen.dart';
import 'kids_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mobile Frames View',

      theme: ThemeData(scaffoldBackgroundColor: const Color(0xFF221A15)),
      home: const MobileMockupScreen(),
    );
  }
}

class MobileMockupScreen extends StatelessWidget {
  const MobileMockupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                PhoneFrame(screen: const WomenScreen()),
                const SizedBox(width: 25),

                PhoneFrame(screen: const MenScreen()),
                const SizedBox(width: 25),

                PhoneFrame(screen: const KidsScreen()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class PhoneFrame extends StatelessWidget {
  final Widget screen;
  const PhoneFrame({super.key, required this.screen});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320,
      height: 680,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(45),
        border: Border.all(color: Colors.grey.shade700, width: 8),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.5),
            blurRadius: 20,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(37),
        child: Stack(
          children: [
            Positioned.fill(child: screen),

            Positioned(
              top: 0,
              left: 0,
              right: 0,
              height: 45,
              child: Container(
                color: Colors.white,
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      '9:41',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                    Row(
                      children: const [
                        Icon(
                          Icons.signal_cellular_alt,
                          size: 16,
                          color: Colors.black,
                        ),
                        SizedBox(width: 5),
                        Icon(Icons.wifi, size: 16, color: Colors.black),
                        SizedBox(width: 5),
                        Icon(Icons.battery_full, size: 16, color: Colors.black),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
