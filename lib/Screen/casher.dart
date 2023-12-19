import 'package:flutter/material.dart';

import '../Model/InfoProduct.dart';

class Casher extends StatefulWidget {
  const Casher({super.key});

  @override
  State<Casher> createState() => _CasherState();
}

class _CasherState extends State<Casher> {
  List<InfoProduct> products = [];

  void addProduct(InfoProduct product) {
    setState(() {
      products.add(product);
    });
  }

  void removeProduct(int index) {
    setState(() {
      products.removeAt(index);
    });
  }

  void updateQuantity(int index, int quantity) {
    setState(() {
      products[index].quantity = quantity;
    });
  }

  double calculateTotalPrice() {
    double totalPrice = 0;
    for (var product in products) {
      totalPrice += product.price * product.quantity;
    }
    return totalPrice;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Casher'),
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: products.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(products[index].name),
                    subtitle: Text(
                        'Price: ${products[index].price.toStringAsFixed(2)}'),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          icon: const Icon(Icons.remove),
                          onPressed: () {
                            removeProduct(index);
                          },
                        ),
                        Text(products[index].quantity.toString()),
                        IconButton(
                          icon: const Icon(Icons.add),
                          onPressed: () {
                            updateQuantity(index, products[index].quantity + 1);
                          },
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'Total Price: ${calculateTotalPrice().toStringAsFixed(2)}',
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: const Text('Invoice'),
                            content: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text('Date: ${DateTime.now().toString()}'),
                                const SizedBox(height: 16),
                                const Text('Product List:'),
                                ListView.builder(
                                  shrinkWrap: true,
                                  itemCount: products.length,
                                  itemBuilder: (context, index) {
                                    return Text(
                                      '${products[index].name} - ${products[index].price.toStringAsFixed(2)} - ${products[index].quantity} - ${(products[index].price * products[index].quantity).toStringAsFixed(2)}',
                                    );
                                  },
                                ),
                                const SizedBox(height: 16),
                                Text(
                                    'Total Price: ${calculateTotalPrice().toStringAsFixed(2)}'),
                              ],
                            ),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: const Text('Close'),
                              ),
                            ],
                          );
                        },
                      );
                    },
                    child: const Text('Generate Invoice'),
                  ),
                ],
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) {
                late String productName;
                late double productPrice;
                late int productQuantity;
                return AlertDialog(
                  title: const Text('Add Product'),
                  content: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        TextField(
                          decoration:
                              const InputDecoration(labelText: 'Product Name'),
                          onChanged: (value) {
                            productName = value;
                          },
                        ),
                        TextField(
                          decoration:
                              const InputDecoration(labelText: 'Product Price'),
                          keyboardType: TextInputType.number,
                          onChanged: (value) {
                            productPrice = double.tryParse(value) ?? 0;
                          },
                        ),
                        TextField(
                          decoration: const InputDecoration(
                              labelText: 'Product Quantity'),
                          keyboardType: TextInputType.number,
                          onChanged: (value) {
                            productQuantity = int.tryParse(value) ?? 0;
                          },
                        ),
                      ],
                    ),
                  ),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text('Cancel'),
                    ),
                    TextButton(
                      onPressed: () {
                        if (productName != null &&
                            productPrice != null &&
                            productQuantity != null) {
                          addProduct(InfoProduct(
                              name: productName,
                              price: productPrice,
                              quantity: productQuantity));
                        }
                        Navigator.pop(context);
                      },
                      child: const Text('Add'),
                    ),
                  ],
                );
              },
            );
          },
          child: const Icon(Icons.add),
        )
    );
  }
}
