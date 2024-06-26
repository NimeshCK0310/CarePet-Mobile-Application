import 'package:flutter/material.dart';

class PetSheltersPage extends StatelessWidget {
  final List<Map<String, dynamic>> shelters = [
    {
      "name": "Happy Tails Shelter",
      "address": "1234 Park Ave, Wonderland",
      "contact": "info@happytails.com",
      "description": "Dedicated to rescuing dogs and cats in need.",
      "imagePath": "assets/acne.jpg"  // Ensure you have this image in your assets
    },
    {
      "name": "Paws & Claws",
      "address": "5678 Forest Rd, Evergreen",
      "contact": "contact@pawsandclaws.com",
      "description": "A safe haven for homeless animals.",
      "imagePath": "assets/acne.jpg"  // Ensure you have this image in your assets
    },
    {
      "name": "Furry Friends",
      "address": "91011 Mountain Dr, Highpeak",
      "contact": "hello@furryfriends.org",
      "description": "Helping animals find forever homes.",
      "imagePath": "assets/acne.jpg"  // Ensure you have this image in your assets
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text('Pet Shelters', style: TextStyle(color: Colors.white)),
        backgroundColor: Color.fromARGB(255, 69, 84, 255),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              buildSearchBar(),
              SizedBox(height: 20),
              for (var shelter in shelters) buildShelterCard(context, shelter),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildSearchBar() {
    return TextField(
      decoration: InputDecoration(
        hintText: 'Search shelters...',
        prefixIcon: Icon(Icons.search),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(color: Color.fromARGB(255, 69, 84, 255)),
        ),
        filled: true,
        fillColor: Colors.white,
      ),
      onChanged: (value) {
        // Future enhancement: Implement search functionality
      },
    );
  }

  Widget buildShelterCard(BuildContext context, Map<String, dynamic> shelter) {
    return Card(
      elevation: 5,
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        children: [
          Image.asset(
            shelter['imagePath'],
            width: double.infinity,
            height: 200,
            fit: BoxFit.cover,
          ),
          ListTile(
            contentPadding: EdgeInsets.all(10),
            title: Text(shelter['name']),
            subtitle: Text(shelter['address']),
            trailing: IconButton(
              icon: Icon(Icons.info_outline, color: Color.fromARGB(255, 69, 84, 255)),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) => AlertDialog(
                    title: Text(shelter['name']),
                    content: Text('Contact: ${shelter['contact']}\nDescription: ${shelter['description']}'),
                    actions: <Widget>[
                      TextButton(
                        child: Text('Close'),
                        onPressed: () => Navigator.of(context).pop(),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
