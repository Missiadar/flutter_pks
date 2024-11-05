import 'package:flutter/material.dart';
import '../models/product.dart';

class AddProductPage extends StatefulWidget {
  final Function(Product) onAddProduct;

  const AddProductPage({super.key, required this.onAddProduct});

  @override
  _AddItemPageState createState() => _AddItemPageState();
}

class _AddItemPageState extends State<AddProductPage> {
  final TextEditingController titleController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  final TextEditingController priceController = TextEditingController();
  final TextEditingController imgLinkController = TextEditingController();

  @override
  void dispose() {
    titleController.dispose();
    descriptionController.dispose();
    priceController.dispose();
    imgLinkController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Добавление товара'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: titleController,
              decoration: const InputDecoration(labelText: 'Введите название товара'),
            ),
            TextField(
              controller: descriptionController,
              decoration: const InputDecoration(labelText: 'Введите описание товара'),
            ),
            TextField(
              controller: priceController,
              decoration: const InputDecoration(labelText: 'Введите цену товара'),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: imgLinkController,
              decoration: const InputDecoration(
                  labelText: 'Введите ссылку на изображение товара'),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  final newItem = Product(
                    id: DateTime.now().millisecondsSinceEpoch,
                    description: descriptionController.text,
                    title: titleController.text,
                    price: int.parse(priceController.text),
                    imageUrl: imgLinkController.text,
                    isFavorite: false
                  );
                  widget.onAddProduct(newItem);
                  Navigator.pop(context);
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  backgroundColor: const Color.fromARGB(255, 0, 0, 0),
                  foregroundColor: const Color.fromARGB(255, 255, 255, 255),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  minimumSize: const Size(0, 48),
                ),
                child: const Text(
                  'Добавить товар',
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