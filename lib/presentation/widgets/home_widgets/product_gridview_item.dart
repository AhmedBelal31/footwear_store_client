import 'dart:math';

import 'package:flutter/material.dart';
import 'package:footwear_store_client/core/utils/styles.dart';
import '../../../data/models/product_model.dart';
import '../../screens/product_details_screen.dart';

class ProductGridViewItem extends StatelessWidget {
  final ProductModel product;

  const ProductGridViewItem({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var random = Random();
    int randomNumber = random.nextInt(60);
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => ProductDetailsScreen(product: product),
          ),
        );
      },
      child: Container(
        // elevation:8,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: screenHeight * 0.180,
                width: double.infinity,
                child: Image.network(
                  product.imageUrl,
                  // fit: BoxFit.contain,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                product.name ,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(fontSize: 14, height: 1.3),
              ),
              const SizedBox(height: 8),
              Text(
                '${product.price}\$',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: AppStyles.kPrimaryColor),
              ),
              const SizedBox(height: 8),
              if (product.offer == true)
                Container(
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      '$randomNumber% OFF',
                      style: const TextStyle(color: Colors.white),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
