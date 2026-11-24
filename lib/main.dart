
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFF7F7F5),
        fontFamily: 'Arial',
      ),
      home: const ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'My Profile',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        backgroundColor: const Color(0xFFF7F7F5),
        foregroundColor: Colors.black,
        elevation: 0,
        centerTitle: false,
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              // Profile Image and Status
              Stack(
                alignment: Alignment.bottomRight,
                children: [
                  const CircleAvatar(
                    radius: 52,
                    backgroundImage:
                        AssetImage('assets/images/profile.jpg'),
                  ),

                  Container(
                    width: 16,
                    height: 16,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: const Color(0xFFF7F7F5),
                        width: 2,
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 20),

              // Name
              const Text(
                'Arwin Gonzales',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF222222),
                ),
              ),

              const SizedBox(height: 5),

              // Description
              const Text(
                'BS Information Technology Student',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),

              const SizedBox(height: 30),

              // Profile Statistics
              Row(
                mainAxisAlignment:
                    MainAxisAlignment.spaceEvenly,
                children: const [
                  ProfileInfo(
                    label: 'Projects',
                    value: '04',
                  ),
                  ProfileInfo(
                    label: 'Skills',
                    value: '03',
                  ),
                  ProfileInfo(
                    label: 'Awards',
                    value: '01',
                  ),
                ],
              ),

              const SizedBox(height: 32),

              const Divider(color: Color(0xFFE5E5E5)),

              const SizedBox(height: 20),

              // About Me
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'About Me',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF222222),
                  ),
                ),
              ),

              const SizedBox(height: 10),

              const Text(
                'An IT student passionate about technology, '
                'programming, and computer systems. Always '
                'interested in learning new things and '
                'building useful applications.',
                style: TextStyle(
                  fontSize: 14,
                  height: 1.6,
                  color: Color(0xFF666666),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Reusable Profile Information Widget
class ProfileInfo extends StatelessWidget {
  final String label;
  final String value;

  const ProfileInfo({
    super.key,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          value,
          style: const TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Color(0xFF222222),
          ),
        ),

        const SizedBox(height: 5),

        Text(
          label,
          style: const TextStyle(
            fontSize: 13,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
