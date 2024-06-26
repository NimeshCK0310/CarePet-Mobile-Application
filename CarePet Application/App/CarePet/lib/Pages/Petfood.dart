import 'package:flutter/material.dart';



class PetFood {
  final String name;
  final String description;
  final String imageUrl;

  PetFood({
    required this.name,
    required this.description,
    required this.imageUrl,
  });
}

class PetFoodsScreen extends StatelessWidget {
  final List<PetFood> petFoods = [
    PetFood(
      name: 'Dry Food',
      description: 'Nutritious dry food for your pet',
      imageUrl: 'image/pfood1.jpg',
    ),
    PetFood(
      name: 'Wet Food',
      description: 'Tasty wet food for your pet',
      imageUrl: 'image/pfood2.jpg',
    ),
    PetFood(
      name: 'Treats',
      description: 'Delicious treats for your pet',
      imageUrl: 'image/pfood3.jpg',
    ),
    PetFood(
      name: 'Dry Food',
      description: 'Nutritious dry food for your pet',
      imageUrl: 'image/pfood4.jpeg',
    ),
    PetFood(
      name: 'Wet Food',
      description: 'Tasty wet food for your pet',
      imageUrl: 'image/pfood5.jpeg',
    ),
    PetFood(
      name: 'Treats',
      description: 'Delicious treats for your pet',
      imageUrl: 'image/pfood6.png',
    ),
    PetFood(
      name: 'Wet Food',
      description: 'Tasty wet food for your pet',
      imageUrl: 'image/pfood7.png',
    ),
    PetFood(
      name: 'Treats',
      description: 'Delicious treats for your pet',
      imageUrl: 'image/pfood8.jpg',
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
  final PetFood petFood;

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