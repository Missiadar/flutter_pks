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
      title: 'Authorization',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            const SizedBox(height: 80),
            const Text(
              'Авторизация',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const Spacer(), 
            const TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Color(0xFFF5F5F7),
                hintText: 'Логин',
                hintStyle: TextStyle(color: Colors.grey), 
                border: InputBorder.none, 
                contentPadding: EdgeInsets.symmetric(vertical: 20, horizontal: 16),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8)), 
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            const SizedBox(height: 16),
            const TextField(
              obscureText: true,
              decoration: InputDecoration(
                filled: true,
                fillColor: Color(0xFFF5F5F7),
                hintText: 'Пароль',
                hintStyle: TextStyle(color: Colors.grey), 
                border: InputBorder.none, 
                contentPadding: EdgeInsets.symmetric(vertical: 20, horizontal: 16), 
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8)), 
                  borderSide: BorderSide.none, 
                ),
              ),
            ),

           const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Checkbox(
                  value: false,
                  onChanged: (bool? value) {},
                  side: const BorderSide(color: Colors.grey),
                ),
                const Text(
                  'Запомнить меня',
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
              ],
            ),

            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 16),
                backgroundColor: Colors.blue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8), 
                ),
                minimumSize: const Size.fromHeight(50),
              ),
              child: const Text(
                'Войти',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
            const SizedBox(height: 16),
            OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8), 
                ),
                side: const BorderSide(color: Colors.blue), 
                minimumSize: const Size.fromHeight(50), 
              ),
              child: const Text(
                'Регистрация',
                style: TextStyle(fontSize: 18, color: Colors.blue),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: const Text(
                'Восстановить пароль',
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
            ),
            const Spacer(), 
          ],
        ),
      ),
    );
  }
}
