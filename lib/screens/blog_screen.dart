import 'package:flutter/material.dart';

class BlogScreen extends StatelessWidget {
  const BlogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        centerTitle: true,
        title: const Text('News & Signals VIP'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: const Image(image: AssetImage('assets/images/s.png')),
            ),
            const Text(
              'SafeMoon signal for 10 April',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 5),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.event_busy,
                  size: 20,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Buy on 12,360',
                  style: TextStyle(color: Colors.green),
                ),
                SizedBox(width: 20),
                Icon(
                  Icons.price_check_sharp,
                  size: 20,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Sell on 12,560',
                  style: TextStyle(color: Colors.red),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
