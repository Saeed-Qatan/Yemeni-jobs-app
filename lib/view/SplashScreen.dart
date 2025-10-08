import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF0F2F5),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.apartment, size: 80, color: const Color(0xFF42A5F5)),
            const SizedBox(height: 20),
            Text(
              'Yemen Jobs',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.grey[800],
                fontFamily: 'Roboto',
              ),
            ),
            const SizedBox(height: 10),
            Text(
              'فرصتك تبدأ من هنا',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey[700],
                fontFamily: 'cairo',
                fontWeight: FontWeight.w900,
              ),
            ),
            const SizedBox(height: 40),
            SizedBox(
              width:
                  MediaQuery.of(context).size.width *
                  0.6, // عرض الشريط 60% من الشاشة
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50), // حواف دائرية
                child: LinearProgressIndicator(
                  value: null, // 'null' يجعل المؤشر متحركاً (Indeterminate)
                  backgroundColor: Colors.grey[300],
                  valueColor: AlwaysStoppedAnimation<Color>(
                    const Color(0xFF42A5F5),
                  ),
                  minHeight: 8,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
