import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:belanja/models/item.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final List<Item> items = [
    Item(
      name: 'Sugar',
      price: 5000,
      imageUrl: 'images/pic1.jfif',
      stock: 50,
      rating: 4.8,
    ),
    Item(
      name: 'Salt',
      price: 2000,
      imageUrl: 'images/pic2.jfif',
      stock: 120,
      rating: 4.5,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Belanja Marketplace'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Container(
        margin: const EdgeInsets.all(8),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.7,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            return ItemCard(item: item);
          },
        ),
      ),
      bottomNavigationBar: const BottomAppBar(
        color: Colors.blueAccent,
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
            'Marsya Zulfa Zahrani 244107060005',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}

class ItemCard extends StatelessWidget {
  final Item item;

  const ItemCard({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.go('/item', extra: item);
      },
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        elevation: 4,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Hero(
              tag: item.name,
              child: ClipRRect(
                borderRadius: const BorderRadius.vertical(top: Radius.circular(15)),
                child: Image.network(
                  item.imageUrl,
                  height: 120,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(item.name, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                  const SizedBox(height: 4),
                  Text('Rp ${item.price}', style: const TextStyle(color: Colors.green, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 4),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Stok: ${item.stock}', style: const TextStyle(fontSize: 12, color: Colors.grey)),
                      Row(
                        children: [
                          const Icon(Icons.star, size: 14, color: Colors.amber),
                          Text(item.rating.toString(), style: const TextStyle(fontSize: 12)),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}