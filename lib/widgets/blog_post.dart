import 'package:flutter/material.dart';

Widget blogPost(
    {required String title,
    required String imageName,
    required int buy,
    required int sale}) {
  return Column(
    children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image(image: AssetImage('assets/images/$imageName.png')),
      ),
      Text(
        '$title signal for 10 April',
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
      const SizedBox(height: 5),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.shopping_bag,
            size: 20,
            color: Colors.green,
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            'Buy on $buy',
            style: const TextStyle(color: Colors.green),
          ),
          const SizedBox(width: 20),
          const Icon(
            Icons.price_check_sharp,
            size: 20,
            color: Colors.red,
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            'sale on $sale',
            style: const TextStyle(color: Colors.red),
          ),
        ],
      ),
      const SizedBox(
        width: 200,
        child: Divider(
          color: Colors.black,
        ),
      ),
    ],
  );
}
