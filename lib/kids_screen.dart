import 'package:flutter/material.dart';

class KidsScreen extends StatelessWidget {
  const KidsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          children: [
            Expanded(
              child: Container(
                height: 44,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: Colors.grey.shade300),
                ),
                child: Row(
                  children: [
                    const Icon(Icons.search, color: Colors.grey, size: 20),
                    const SizedBox(width: 10),
                    Text(
                      'What are you looking for?',
                      style: TextStyle(color: Colors.grey.shade500, fontSize: 14),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(width: 10),
            Container(
              height: 44,
              width: 44,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.grey.shade300),
              ),
              child: const Icon(Icons.tune, color: Colors.black87, size: 20),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          // Segmented Tab (Kids selected)
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Container(
              height: 46,
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.all(4),
                      child: const Text('Women', style: TextStyle(color: Colors.black87, fontWeight: FontWeight.w600, fontSize: 14)),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.all(4),
                      child: const Text('Men', style: TextStyle(color: Colors.black87, fontWeight: FontWeight.w600, fontSize: 14)),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: Colors.deepOrange,
                        borderRadius: BorderRadius.circular(24),
                      ),
                      child: const Text('Kids', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 14)),
                    ),
                  ),
                ],
              ),
            ),
          ),
          // Category List Items (Kids specific list)
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              children: const [
                CategoryItem(title: 'Gift Cards', icon: Icons.card_giftcard, isHighlighted: true),
                CategoryItem(title: 'Essentials Shop Winger Edition', icon: Icons.shopping_bag_outlined, isHighlighted: false),
                CategoryItem(title: 'Boys', icon: Icons.boy, isHighlighted: false),
                CategoryItem(title: 'Baby', icon: Icons.child_care, isHighlighted: false),
                CategoryItem(title: 'Clothing', icon: Icons.checkroom, isHighlighted: false),
                CategoryItem(title: 'Toys', icon: Icons.toys_outlined, isHighlighted: false),
                CategoryItem(title: 'Sports', icon: Icons.sports_basketball, isHighlighted: false),
                CategoryItem(title: 'Streetwear', icon: Icons.stadium_outlined, isHighlighted: false),
                CategoryItem(title: 'Accessories', icon: Icons.watch, isHighlighted: false),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.deepOrange,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_border), label: 'Favorites'),
          BottomNavigationBarItem(icon: Icon(Icons.history), label: 'History'),
          BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: 'Profile'),
        ],
      ),
    );
  }
}

class CategoryItem extends StatelessWidget {
  final String title;
  final IconData icon;
  final bool isHighlighted;
  const CategoryItem({super.key, required this.title, required this.icon, required this.isHighlighted});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        color: isHighlighted ? Colors.deepOrange : Colors.white,
        borderRadius: BorderRadius.circular(30),
        boxShadow: [BoxShadow(color: Colors.grey.withOpacity(0.05), blurRadius: 5, offset: const Offset(0, 2))],
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 2),
        leading: Icon(icon, color: isHighlighted ? Colors.white : Colors.black87, size: 22),
        title: Text(title, style: TextStyle(color: isHighlighted ? Colors.white : Colors.black87, fontWeight: FontWeight.w500, fontSize: 15)),
        trailing: Icon(Icons.chevron_right, color: isHighlighted ? Colors.white : Colors.grey),
      ),
    );
  }
}