import 'package:flutter/material.dart';

class ListDemo extends StatelessWidget {
  const ListDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView dengan Nomor'),
      ),
      body: _buildListView(),
    );
  }

  Widget _buildListView() {
    return ListView.builder(
      padding: const EdgeInsets.all(8),
      itemCount: 4,
      itemBuilder: (context, index) {
        int itemNumber = index + 1;
        
        return ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.blue[100],
            child: Text(
              '$itemNumber',
              style: const TextStyle(color: Colors.black54),
            ),
          ),
          title: Text(
            'Item $itemNumber',
            style: const TextStyle(fontWeight: FontWeight.w500),
          ),
          subtitle: const Text('Secondary text'),
        );
      },
    );
  }
}