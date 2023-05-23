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
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xffE8EEFC),
        body: Column(
          children: [
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const ContainerWithShadow(icon: Icons.save_rounded),
                Container(
                  width: 200,
                  height: 200,
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
                const ContainerWithShadow(icon: Icons.more_horiz_outlined),
              ],
            ),
            const SizedBox(height: 24),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: const [
                ListTile(
                  title: Text(
                    'Holix',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  subtitle: Text('Flume'),
                  trailing: ContainerWithShadow(
                    icon: Icons.play_arrow,
                  ),
                ),
                ListTile(
                  title: Text(
                    'Never BE Like You',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  subtitle: Text('Flume x Kia'),
                  trailing: ContainerWithShadow(
                    icon: Icons.play_arrow,
                  ),
                ),
                ListTile(
                  title: Text(
                    'Unavailable',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  subtitle: Text('Davido'),
                  trailing: ContainerWithoutShadow(
                    icon: Icons.stop,
                    iconColor: Color(0XFFFBFCFE),
                    containerColor: Color(0XFF85A3F8),
                  ),
                ),
                ListTile(
                  title: Text(
                    'Numb & Getting Colder',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  subtitle: Text('Flume x Kucha'),
                  trailing: ContainerWithShadow(
                    icon: Icons.play_arrow,
                  ),
                ),
                ListTile(
                  title: Text(
                    'Say It',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  subtitle: Text('Flume'),
                  trailing: ContainerWithShadow(
                    icon: Icons.play_arrow,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
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
    );
  }
}
