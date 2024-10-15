
import 'package:flutter/material.dart';
import 'package:pks_mobilka_6/components/product_card.dart';
import 'package:pks_mobilka_6/data/basket.dart';
import 'package:pks_mobilka_6/data/data.dart';
import 'package:pks_mobilka_6/models/basket_card.dart';
import 'package:pks_mobilka_6/pages/add_product_page.dart';
import 'package:pks_mobilka_6/pages/product_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  MyHomePage createState() => MyHomePage();
}

class MyHomePage extends State<HomePage> {
  void toProductPage(BuildContext context, int index) {
    var product = products[index];
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ProductPage(
          product: products[index],
          toggleFavorite: () => setState(() {
            products[index].isFavorite = !products[index].isFavorite;
          }),
          onAddToBasket: () => {items.add(CartItemModel(product.id, product.title,
                product.description, product.imageUrl, product.price, 1))},
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Главная страница'),),
        backgroundColor: Colors.white,
        body: GridView.count(
        padding: const EdgeInsets.fromLTRB(20, 15, 20, 25),
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 15,
        children: List.generate(products.length, (index) {
          return GestureDetector(
            onTap: () => toProductPage(context, index),
            child: ProductCard(product: products[index]),
          );
        }),
      ),
        floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AddProductPage(onAddProduct: (newItem) {
                setState(() {
                  products.add(newItem);
                });
              }),
            ),
          );
        },
        foregroundColor: Colors.orange,
        child: const Icon(Icons.add),
      ),
    );
  }
}
