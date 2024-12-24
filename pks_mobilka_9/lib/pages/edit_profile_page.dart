import 'package:flutter/material.dart';

class EditProfilePage extends StatefulWidget {
  final String name;
  final String email;
  final String phone;
  final Function(String, String, String) onSaveProfile;

  const EditProfilePage({
    super.key,
    required this.name,
    required this.email,
    required this.phone,
    required this.onSaveProfile,
  });

  @override
  _EditProfilePageState createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  late TextEditingController _nameController;
  late TextEditingController _emailController;
  late TextEditingController _phoneController;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController(text: widget.name);
    _emailController = TextEditingController(text: widget.email);
    _phoneController = TextEditingController(text: widget.phone);
  }

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _phoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Редактировать профиль'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: _nameController,
              decoration: const InputDecoration(
                labelText: 'Имя',
                floatingLabelBehavior: FloatingLabelBehavior.always,
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.orange, 
                    width: 2.0,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: _emailController,
              decoration: const InputDecoration(
                labelText: 'Email',
                floatingLabelBehavior: FloatingLabelBehavior.always, 
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.orange, 
                    width: 2.0,
                  ),
                ),
              ),
              keyboardType: TextInputType.emailAddress,
            ),
            const SizedBox(height: 16),
            TextField(
              controller: _phoneController,
              decoration: const InputDecoration(
                labelText: 'Телефон',
                floatingLabelBehavior: FloatingLabelBehavior.always, 
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.orange, 
                    width: 2.0,
                  ),
                ),
              ),
              keyboardType: TextInputType.phone, 
            ),
            const SizedBox(height: 32),
            SizedBox(
              width: double.infinity, 
              child: ElevatedButton(
                onPressed: () {
                  widget.onSaveProfile(
                    _nameController.text,
                    _emailController.text,
                    _phoneController.text,
                  );
                  Navigator.pop(context);
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  backgroundColor: const Color(0xFFFF8507), 
                  foregroundColor: Colors.white, 
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10), 
                  ),
                ),
                child: const Text(
                  'Сохранить изменения',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}