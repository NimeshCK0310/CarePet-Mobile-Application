import 'package:flutter/material.dart';

class Otherthings {
  final String name;
  final String description;
  final String imageUrl;

  Otherthings({
    required this.name,
    required this.description,
    required this.imageUrl,
  });
}

class Other extends StatelessWidget {
  final List<Otherthings> petFoods = [
    Otherthings(
      name: 'Dry Food',
      description: 'Nutritious dry food for your pet',
      imageUrl: 'image/1.jpeg',
    ),
    Otherthings(
      name: 'Wet Food',
      description: 'Tasty wet food for your pet',
      imageUrl: 'image/2.jpeg',
    ),
    Otherthings(
      name: 'Treats',
      description: 'Delicious treats for your pet',
      imageUrl: 'image/3.jpeg',
    ),
    Otherthings(
      name: 'Treats',
      description: 'Delicious treats for your pet',
      imageUrl: 'image/4.jpeg',
    ),
    Otherthings(
      name: 'Treats',
      description: 'Delicious treats for your pet',
      imageUrl: 'image/5.jpeg',
    ),
    Otherthings(
      name: 'Treats',
      description: 'Delicious treats for your pet',
      imageUrl: 'image/3.jpeg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: GridView.builder(
        itemCount: petFoods.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 8.0,
        ),
        itemBuilder: (context, index) {
          return PetFoodItem(petFood: petFoods[index]);
        },
      ),
    );
  }
}

class PetFoodItem extends StatelessWidget {
  final Otherthings petFood;

  const PetFoodItem({Key? key, required this.petFood}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Image.asset(
              petFood.imageUrl,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  petFood.name,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  petFood.description,
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}