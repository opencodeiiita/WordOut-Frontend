import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  //for future
  List<Map<String, String>> users = [
    {
      'name': 'Alice',
      'gmail': 'alice@gmail.com'
    },
    {
      'name': 'Bob',
      'gmail': 'bob@gmail.com'
    },
  ];
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(  
      backgroundColor: const Color(0xFF0A0D16),
      appBar: AppBar(
        backgroundColor: const Color(0xFF0A0D16),
        title: const Text(
          "Search User",
          style: TextStyle(
            color: Colors.white,
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 28.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            TextField(
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      suffixIcon: Icon(Icons.mic, color: Colors.black,),
                      filled: true,
                      fillColor: Color(0xFFF4F4F4), // Background color
                      labelText: 'Search',
                      labelStyle: TextStyle(color: Colors.grey),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue),
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: users.length,
                itemBuilder: (context, index) {
                  final user = users[index];
                  return Card(
                    margin: EdgeInsets.symmetric(vertical: 8),
                    child: ListTile(
                      leading: Icon(Icons.person),
                      title: Text(user["name"] ?? "Name"),
                      subtitle: Text('${user["gmail"]}'),
                      trailing: IconButton(
                        onPressed: () => {},
                        icon: Icon(Icons.person_add_alt_1, color: Colors.blue),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
