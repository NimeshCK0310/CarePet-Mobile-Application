import 'package:flutter/material.dart';

class PetFuneralServicesPage extends StatelessWidget {
  final List<Map<String, dynamic>> services = [
    {
      "name": "Last Journey",
      "description": "Comprehensive funeral services to honor your pet's memory.",
      "options": ["Cremation", "Burial", "Memorial Services"],
      "contact": "contact@lastjourney.com"
    },
    {
      "name": "Eternal Peace",
      "description": "Dignified and respectful farewell services for your beloved pet.",
      "options": ["Eco-friendly Cremation", "Private Burial"],
      "contact": "info@eternalpeace.com"
    },
    {
      "name": "Heaven's Gate",
      "description": "Helping you say goodbye to your furry friend with grace.",
      "options": ["Cremation Services", "Burial Services", "Funeral Support"],
      "contact": "support@heavensgate.org"
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
        title: Text('Pet Funeral Services', style: TextStyle(color: Colors.white)),
        backgroundColor: Color.fromARGB(255, 69, 84, 255),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              buildServiceSearchBar(),
              SizedBox(height: 20),
              for (var service in services) buildServiceCard(context, service),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildServiceSearchBar() {
    return TextField(
      decoration: InputDecoration(
        hintText: 'Search funeral services...',
        prefixIcon: Icon(Icons.search),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(color: Color.fromARGB(255, 69, 84, 255)),
        ),
        filled: true,
        fillColor: Colors.white,
      ),
      onChanged: (value) {
        // Add search functionality or filter list based on input
      },
    );
  }

  Widget buildServiceCard(BuildContext context, Map<String, dynamic> service) {
    return Card(
      elevation: 5,
      margin: EdgeInsets.symmetric(vertical: 10),
      child: ListTile(
        contentPadding: EdgeInsets.all(10),
        title: Text(service['name'], style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        subtitle: Text(service['description']),
        isThreeLine: true,
        trailing: IconButton(
          icon: Icon(Icons.contact_phone, color: Color.fromARGB(255, 69, 84, 255)),
          onPressed: () {
            showDialog(
              context: context,
              builder: (BuildContext context) => AlertDialog(
                title: Text('Contact ' + service['name']),
                content: Text('Reach out for more information and booking:\n' + service['contact']),
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
    );
  }
}
