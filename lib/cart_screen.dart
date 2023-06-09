import 'package:flutter/material.dart';
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
      body: Consumer(builder: (context, data, child) {
        return ListView.builder(
          itemCount: data.mycartitemslist.length,
          itemBuilder: (context, index) {
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
    );
  }
}
