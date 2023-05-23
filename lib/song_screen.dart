import 'package:flutter/material.dart';
import 'package:tt9_04_simple_profile/widgets/container_with_shadow.dart';
import 'package:tt9_04_simple_profile/widgets/container_without_shadow.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double sliderValue = 15.0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: const Color(0xffE8EEFC),
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: const [
                    ContainerWithShadow(icon: Icons.arrow_back_ios_outlined),
                    Spacer(),
                    ContainerWithShadow(icon: Icons.stop),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              Container(
                width: 300,
                height: 300,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xFF8C909B),
                      blurRadius: 5,
                      spreadRadius: 2,
                      offset: Offset(5, 5),
                    ),
                    BoxShadow(
                      color: Color(0xFFFCFEFD),
                      blurRadius: 5,
                      spreadRadius: 2,
                      offset: Offset(-5, -5),
                    ),
                  ],
                ),
                child: const CircleAvatar(
                  backgroundImage: AssetImage('images/cat.png'),
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                'Unavailable',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'Davido',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              const SizedBox(height: 24),
              Slider(
                min: 10.0,
                max: 100.0,
                value: sliderValue,
                onChanged: (value) {
                  setState(() {
                    sliderValue = value;
                  });
                },
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    ContainerWithShadow(icon: Icons.fast_rewind),
                    SizedBox(width: 24),
                    ContainerWithoutShadow(
                      icon: Icons.pause,
                      iconColor: Color(0XFFFBFCFE),
                      containerColor: Color(0XFF85A3F8),
                    ),
                    SizedBox(width: 24),
                    ContainerWithShadow(icon: Icons.fast_forward),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
