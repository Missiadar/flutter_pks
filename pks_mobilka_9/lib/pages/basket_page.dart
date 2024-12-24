import 'package:flutter/material.dart';
import 'package:pks_mobilka_8/components/basket_bottom.dart';
import 'package:pks_mobilka_8/components/basket_item.dart';
import 'package:pks_mobilka_8/data/basket.dart';
import 'package:pks_mobilka_8/models/basket_card.dart';
import 'package:pks_mobilka_8/pages/product_page.dart';

class BasketPage extends StatefulWidget {
  const BasketPage({super.key});

  @override
  State<BasketPage> createState() => _BasketPageState();
}

class _BasketPageState extends State<BasketPage> {
  final List<CartItemModel> _items = items;

  final products = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Корзина'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: items.length,
                itemBuilder: (BuildContext context, int index) {
                  var item = _items[index];
                  var product =
                      products.firstWhere((element) => item.id == element.id);

                  return BasketItem(
                    item: item,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProductPage(
                            productId: product[index],
                          ),
                        ),
                      );
                    },
                    onCount: (int value) {
                      setState(() {
                        item.count = value;
                      });
                    },
                    deleteItem: () {
                      setState(() {
                        items.remove(item);
                      });
                    },
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              child: BasketBottom(
                price: sumPrices(),
                count: getCartTotalCount(),
              ),
            ),
          ],
        ));
  }

  int getCartTotalCount() {
    int count = 0;

    for (int i = 0; i < items.length; i++) {
      count = count + items[i].count;
    }
    return count;
  }

  int sumPrices() {
    int sum = 0;

    for (int i = 0; i < items.length; i++) {
      sum += items[i].cost * items[i].count;
    }
    return sum;
  }
}
