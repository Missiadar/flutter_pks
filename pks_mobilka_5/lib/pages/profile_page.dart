import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            "Мой профиль",
            style: TextStyle(
              fontSize: 24,
              color: Color.fromARGB(255, 48, 48, 48),
            ),
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        color: const Color.fromARGB(255, 255, 255, 255),
        child: const Center(
          child: Column(
            children: [
              SizedBox(height: 40),
              CircleAvatar(
                radius: 100,
                backgroundImage: NetworkImage(
                  'https://avatars.githubusercontent.com/u/100504552?s=400&u=26a36ae18fbeaf991b6227d1fcb39a7224484820&v=4',
                ),
              ),
              SizedBox(height: 30),
              Text(
                "Холкин Данила Сергеевич",
                style: TextStyle(
                  fontSize: 25,
                  color: Color.fromARGB(255, 51, 51, 51),
                ),
              ),
              Text(
                "danila-kholkkkin@mail.ru",
                style: TextStyle(
                  fontSize: 20,
                  color: Color.fromARGB(255, 51, 51, 51),
                ),
              ),
              Text(
                "+7 (914) 874-54-78",
                style: TextStyle(
                  fontSize: 15,
                  color: Color.fromARGB(255, 51, 51, 51),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
