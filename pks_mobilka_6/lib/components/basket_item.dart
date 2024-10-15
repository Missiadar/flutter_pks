import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import '../models/basket_card.dart';

class BasketItem extends StatelessWidget {
  final CartItemModel item;
  final VoidCallback onTap;
  final ValueChanged<int> onCount;
  final VoidCallback deleteItem;

  const BasketItem({
    super.key,
    required this.item,
    required this.onTap,
    required this.onCount,
    required this.deleteItem,
  });

  @override
  Widget build(BuildContext context) {
    return Slidable(
      direction: Axis.horizontal,
      endActionPane: ActionPane(
        motion: const ScrollMotion(),
        extentRatio: 0.32, 
        children: [
          SlidableAction(
            onPressed: (context) {
              deleteItem();
            },
            backgroundColor: const Color.fromARGB(255, 255, 17, 0),
            foregroundColor: Colors.white,
            icon: Icons.delete,
            label: 'Удалить',
          ),
        ],
      ),
      key: ValueKey(item.id.toString()), 
      child: Card(
        margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
        child: ListTile(
          contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
          leading: Image.network(
            item.img,
            width: 100,  // Увеличиваем ширину изображения
            height: 100, // Увеличиваем высоту изображения
            fit: BoxFit.cover, // Изображение будет покрывать всё доступное пространство
          ),
          title: Text(
            item.title,
            style: const TextStyle(fontSize: 16),
          ),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 8),
              Text(
                "${item.cost} ₽",
                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ],
          ),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                icon: const Icon(Icons.remove),
                onPressed: () {
                  if (item.count == 1) {
                    deleteItem();
                  } else {
                    onCount(item.count - 1);
                  }
                },
              ),
              Text(item.count.toString(), style: const TextStyle(fontSize: 18)),
              IconButton(
                icon: const Icon(Icons.add),
                onPressed: () {
                  onCount(item.count + 1);
                },
              ),
            ],
          ),
          onTap: onTap,
        ),
      ),
    );
  }
}
