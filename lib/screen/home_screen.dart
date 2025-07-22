import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../state/cart_provider.dart';

class Product {
  final String id;
  final String name;
  final String description;
  final double price;
  final double rating;
  final int reviewCount;
  final String imageUrl;
  final bool inStock;
  final bool isOrganic;

  Product({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.rating,
    required this.reviewCount,
    required this.imageUrl,
    required this.inStock,
    required this.isOrganic,
  });
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final products = [
      Product(
        id: '1',
        name: 'Organic Baby Spinach',
        description: 'Fresh, tender baby spinach leaves grown in our vertical farms',
        price: 4.99,
        rating: 4.9,
        reviewCount: 234,
        imageUrl: '',
        inStock: true,
        isOrganic: true,
      ),
      Product(
        id: '2',
        name: 'Premium Basil',
        description: 'Aromatic fresh basil perfect for cooking',
        price: 3.49,
        rating: 4.8,
        reviewCount: 189,
        imageUrl: '',
        inStock: true,
        isOrganic: true,
      ),
      Product(
        id: '3',
        name: 'Heirloom Cherry Tomatoes',
        description: 'Sweet and juicy organic cherry tomatoes',
        price: 5.29,
        rating: 4.7,
        reviewCount: 142,
        imageUrl: '',
        inStock: true,
        isOrganic: true,
      ),
      Product(
        id: '4',
        name: 'Organic Microgreens Mix',
        description: 'A nutrient-rich blend of microgreens',
        price: 6.99,
        rating: 4.8,
        reviewCount: 176,
        imageUrl: '',
        inStock: true,
        isOrganic: true,
      ),
      Product(
        id: '5',
        name: 'Hydroponic Romaine Lettuce',
        description: 'Crisp romaine lettuce grown hydroponically',
        price: 2.99,
        rating: 4.6,
        reviewCount: 98,
        imageUrl: '',
        inStock: true,
        isOrganic: true,
      ),
      Product(
        id: '6',
        name: 'Organic Mint Leaves',
        description: 'Cool and refreshing organic mint leaves',
        price: 1.99,
        rating: 4.9,
        reviewCount: 212,
        imageUrl: '',
        inStock: true,
        isOrganic: true,
      ),
      Product(
        id: '7',
        name: 'Vertical Farm Kale',
        description: 'Highly nutritious kale grown in controlled environments',
        price: 3.75,
        rating: 4.7,
        reviewCount: 156,
        imageUrl: '',
        inStock: true,
        isOrganic: true,
      ),
    ];

    return Scaffold(
      backgroundColor: const Color(0xFF0F1419),
      appBar: AppBar(
        backgroundColor: const Color(0xFF0F1419),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          'Marketplace',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart, color: Colors.white),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const CartPage()),
              );
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: products.length,
                itemBuilder: (context, index) {
                  final product = products[index];
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 24.0),
                    child: _buildProductCard(product, context),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildProductCard(Product product, BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: const Color(0xFF1E2A3A),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              color: const Color(0xFF00D9A3).withOpacity(0.2),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Icon(
              product.name.toLowerCase().contains('spinach') 
                  ? Icons.eco 
                  : Icons.local_florist,
              size: 40,
              color: const Color(0xFF00D9A3),
            ),
          ),
          const SizedBox(height: 16),
          if (product.isOrganic)
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.eco,
                  size: 16,
                  color: Color(0xFF00D9A3),
                ),
                SizedBox(width: 4),
                Text(
                  'Organic',
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xFF00D9A3),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          const SizedBox(height: 12),
          Text(
            product.name,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 8),
          Text(
            product.description,
            style: const TextStyle(
              fontSize: 16,
              color: Colors.white70,
              height: 1.4,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: List.generate(5, (index) {
                  return Icon(
                    index < product.rating.floor()
                        ? Icons.star
                        : (index < product.rating)
                            ? Icons.star_half
                            : Icons.star_border,
                    color: Colors.amber,
                    size: 20,
                  );
                }),
              ),
              const SizedBox(width: 8),
              Text(
                '${product.rating}',
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(width: 4),
              Text(
                '(${product.reviewCount})',
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.white60,
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '\$${product.price.toStringAsFixed(2)}',
                    style: const TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const Text(
                    'per 200g',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white60,
                    ),
                  ),
                ],
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 6,
                ),
                decoration: BoxDecoration(
                  color: const Color(0xFF00D9A3).withOpacity(0.2),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Text(
                  'In Stock',
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xFF00D9A3),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 24),
          SizedBox(
            width: double.infinity,
            height: 56,
            child: ElevatedButton.icon(
              onPressed: () {
                Provider.of<CartProvider>(context, listen: false).addToCart(
                  product.name,
                  product.price,
                );
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('${product.name} added to cart'),
                    backgroundColor: const Color(0xFF00D9A3),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF00D9A3),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              icon: const Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
              label: const Text(
                'Add to Cart',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<CartProvider>(context).cart;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cart'),
        backgroundColor: const Color(0xFF0F1419),
      ),
      backgroundColor: const Color(0xFF0F1419),
      body: cart.isEmpty
          ? const Center(child: Text('Your cart is empty', style: TextStyle(color: Colors.white)))
          : ListView.builder(
              itemCount: cart.length,
              itemBuilder: (context, index) {
                final item = cart[index];
                return ListTile(
                  title: Text(item['name'], style: const TextStyle(color: Colors.white)),
                  subtitle: Text('  ${item['price']}', style: const TextStyle(color: Colors.white60)),
                  trailing: IconButton(
                    icon: const Icon(Icons.delete, color: Colors.red),
                    onPressed: () {
                      Provider.of<CartProvider>(context, listen: false).removeFromCart(index);
                    },
                  ),
                );
              },
            ),
    );
  }
} 