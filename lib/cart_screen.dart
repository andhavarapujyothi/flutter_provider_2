import 'package:flutter/material.dart';
import 'package:flutter_provider_2/cart_provider.dart';

import 'package:provider/provider.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cart Screen'),
      ),
      body: Consumer<CartProvider>(builder: (context, data, child) {
        return ListView.builder(
          itemCount: data.mycartitemslist.length,
          itemBuilder: (context, index) {
            // ignore: unnecessary_null_comparison, unrelated_type_equality_checks
            return data.mycartitemslist == null || data.mycartitemslist == 0
                ? const Text('no items in the cart')
                : Card(
                    child: ListTile(
                      title: Text(
                        data.mycartitemslist[index].name.toString(),
                        style: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text("\$${data.mycartitemslist[index].price}"),
                    ),
                  );
          },
        );
      }),
      floatingActionButton: Consumer<CartProvider>(
        builder: (context, value, child) {
          return Text('Cart Total:${value.cartvalue}');
        },
      ),
    );
  }
}
