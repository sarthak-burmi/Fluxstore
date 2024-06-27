import 'package:flutter/material.dart';

class CategoryIcons extends StatelessWidget {
  const CategoryIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CategoryIcon(
            iconPath: 'assets/images/men.png',
            label: 'Men',
            onTap: () {},
          ),
          CategoryIcon(
            iconPath: 'assets/images/women.png',
            label: 'Women',
            onTap: () {},
          ),
          CategoryIcon(
            iconPath: 'assets/images/boutique.png',
            label: 'Clothing',
            onTap: () {},
          ),
          CategoryIcon(
            iconPath: 'assets/images/poster.png',
            label: 'Poster',
            onTap: () {},
          ),
          CategoryIcon(
            iconPath: 'assets/images/musical-note.png',
            label: 'Music',
            onTap: () {},
          ),
        ],
      ),
    );
  }
}

class CategoryIcon extends StatelessWidget {
  final String iconPath;
  final String label;
  final VoidCallback onTap;

  const CategoryIcon({
    Key? key,
    required this.iconPath,
    required this.label,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        GestureDetector(
          onTap: onTap,
          child: CircleAvatar(
            backgroundColor: Colors.grey.shade100,
            radius: 24,
            child: Image.asset(
              iconPath,
              width: 30,
              height: 30,
            ),
          ),
        ),
        SizedBox(height: size.height * 0.004),
        Text(label, style: const TextStyle(fontSize: 12)),
      ],
    );
  }
}
