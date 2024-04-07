import 'package:flutter/material.dart';
import 'package:signal_vip/widgets/blog_post.dart';

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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              blogPost(
                  title: 'SafeMoon', imageName: 's', buy: 1000, sale: 1200),
              blogPost(
                  title: 'Alchemy Pay', imageName: 'a', buy: 1540, sale: 1700),
              blogPost(title: 'Ripple', imageName: 'r', buy: 1100, sale: 1150),
              blogPost(title: 'Cosmos', imageName: 'c', buy: 1050, sale: 1270),
              const SizedBox(height: 20),
              TextButton(
                style: TextButton.styleFrom(foregroundColor: Colors.red),
                child: const Text(
                  'Sign Out',
                  style: TextStyle(fontSize: 16),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
