import 'package:flutter/material.dart';



class Pets {
  final String name;
  final String description;
  final String imageUrl;

  Pets({
    required this.name,
    required this.description,
    required this.imageUrl,
  });
}

class PetsScreen extends StatelessWidget {
  final List<Pets> petFoods = [
    Pets(
      name: 'Dry Food',
      description: 'Nutritious dry food for your pet',
      imageUrl: 'image/pets1.jpg',
    ),
    Pets(
      name: 'Wet Food',
      description: 'Tasty wet food for your pet',
      imageUrl: 'image/pets2.jpg',
    ),
    Pets(
      name: 'Treats',
      description: 'Delicious treats for your pet',
      imageUrl: 'image/pets3.jpg',
    ),
    Pets(
      name: 'Dry Food',
      description: 'Nutritious dry food for your pet',
      imageUrl: 'image/pets4.jpeg',
    ),
    Pets(
      name: 'Wet Food',
      description: 'Tasty wet food for your pet',
      imageUrl: 'image/pets5.jpg',
    ),
    Pets(
      name: 'Treats',
      description: 'Delicious treats for your pet',
      imageUrl: 'image/pets6.jpg',
    ),
    Pets(
      name: 'Treats',
      description: 'Delicious treats for your pet',
      imageUrl: 'image/pets7.jpg',
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
  final Pets petFood;

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