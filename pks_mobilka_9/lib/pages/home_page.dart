
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:pks_mobilka_8/components/product_card.dart';
import 'package:pks_mobilka_8/models/product.dart';
import 'package:pks_mobilka_8/pages/add_product_page.dart';
import 'package:pks_mobilka_8/pages/product_page.dart';
import 'package:pks_mobilka_8/services/service_product.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  MyHomePage createState() => MyHomePage();
}

class MyHomePage extends State<HomePage> {
   List<Product> products = [];

  @override
  void initState() {
    super.initState();
    getAllProducts();
  }

  Future<void> getAllProducts() async {
    try {
      products = await ProductService.getProducts();
      setState(() {});
    } on DioException catch (e) {
      print(e);
    }
  }

  void toProductPage(BuildContext context, int index) async {
    var productId = products[index].id;
    final result = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ProductPage(productId: productId),
      ),
    );
    if (result == true) {
      await getAllProducts();
    }
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
