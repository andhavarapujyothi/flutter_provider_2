import 'package:flutter/material.dart';
import 'package:flutter_provider_2/cart_provider.dart';
import 'package:flutter_provider_2/cart_screen.dart';
import 'package:flutter_provider_2/item_model.dart';
import 'package:provider/provider.dart';

class MyCatalog extends StatefulWidget {
  const MyCatalog({super.key});

  @override
  State<MyCatalog> createState() => _MyCatalogState();
}

class _MyCatalogState extends State<MyCatalog> {
  List<ItemModel> menuitemlist = [];
  preparemenu() {
    menuitemlist.add(ItemModel(name: 'eggs', price: 36.5));
    menuitemlist.add(ItemModel(name: 'chicken', price: 41.5));
    menuitemlist.add(ItemModel(name: 'Mutton', price: 66.5));
    menuitemlist.add(ItemModel(name: 'soda', price: 16.5));
  }

  late CartProvider cartProvider;
  @override
  void initState() {
    preparemenu();
    cartProvider = Provider.of<CartProvider>(context, listen: false);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Catalog'),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const CartScreen()));
              },
              icon: const Icon(Icons.menu_book_outlined))
        ],
      ),
      body: ListView.builder(
        itemCount: menuitemlist.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              trailing: IconButton(
                  onPressed: () {
                    cartProvider.addtocart(menuitemlist[index]);
                  },
                  icon: const Icon(Icons.add)),
              title: Text(
                menuitemlist[index].name.toString(),
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              subtitle: Text("\$${menuitemlist[index].price}"),
            ),
          );
        },
      ),
    );
  }
}
