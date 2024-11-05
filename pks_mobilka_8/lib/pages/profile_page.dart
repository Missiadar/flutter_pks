import 'package:flutter/material.dart';
import 'edit_profile_page.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  String name = "Холкин Данила Сергеевич";
  String email = "danila-kholkkkin@mail.ru";
  String phone = "+7 (914) 874-54-78";

  void updateProfile(String newName, String newEmail, String newPhone) {
    setState(() {
      name = newName;
      email = newEmail;
      phone = newPhone;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Мой профиль",
          style: TextStyle(
            fontSize: 24,
            color: Color.fromARGB(255, 48, 48, 48),
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        actions: [
          IconButton(
            icon: const Icon(Icons.edit),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => EditProfilePage(
                    name: name,
                    email: email,
                    phone: phone,
                    onSaveProfile: updateProfile, 
                  ),
                ),
              );
            },
          ),
        ],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        color: const Color.fromARGB(255, 255, 255, 255),
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 40),
              const CircleAvatar(
                radius: 100,
                backgroundImage: NetworkImage(
                  'https://avatars.githubusercontent.com/u/100504552?s=400&u=26a36ae18fbeaf991b6227d1fcb39a7224484820&v=4',
                ),
              ),
              const SizedBox(height: 30),
              Text(
                name,
                style: const TextStyle(
                  fontSize: 25,
                  color: Color.fromARGB(255, 51, 51, 51),
                ),
              ),
              Text(
                email,
                style: const TextStyle(
                  fontSize: 20,
                  color: Color.fromARGB(255, 51, 51, 51),
                ),
              ),
              Text(
                phone,
                style: const TextStyle(
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