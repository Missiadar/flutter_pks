import 'package:flutter/material.dart';

// ignore: must_be_immutable
final class BasketBottom extends StatelessWidget {
  int price;
  int count;

  BasketBottom({super.key, required this.price, required this.count});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            Text("Товаров в корзине: $count",
                style: const TextStyle(fontSize: 20)),
            const SizedBox(width: 16),
            Text("Общая сумма: $price ₽",
                style: const TextStyle(
                  fontSize: 20,
                )),
          ],
        ),
        const SizedBox(height: 16),
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 12),
              backgroundColor: const Color.fromRGBO(252, 133, 7, 1),
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              minimumSize: const Size(0, 48),
            ),
            child: const Text(
              'Купить',
              style: TextStyle(fontSize: 18),
            ),
          ),
        ),
      ],
    );
  }
}