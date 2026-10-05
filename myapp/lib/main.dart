import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const BiodataPage(),
    );
  }
}
class BiodataPage extends StatelessWidget {
  const BiodataPage({super.key});
  Widget information(String label, String value) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Text(
        '$label: $value',
        style: const TextStyle(
          fontSize: 16,
          color: Colors.black,
        ),
      ),
    );
  }
  Widget sectionTitle(String title) {
    return Container(
      width: double.infinity,
      color: const Color(0xFFD1B3E6),
      padding: const EdgeInsets.all(6),
      margin: const EdgeInsets.only(top: 16, bottom: 10),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 19,
          fontWeight: FontWeight.bold,
          color: Color(0xFF542873),
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE5D0F0),
      appBar: AppBar(
        title: const Text('BIODATA'),
        backgroundColor: const Color(0xFFB58ACD),
        foregroundColor: const Color(0xFF321344),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(12),
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: const Color(0xFFF3E8FA),
            border: Border.all(
              color: const Color(0xFF80549E),
              width: 3,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Center(
                child: Text(
                  'Eugenio, Akirha Jhane',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF542873),
                  ),
                ),
              ),
              const SizedBox(height: 5),
              const Center(
                child: Text(
                  'BSIT - 3rd Year',
                  style: TextStyle(fontSize: 14),
                ),
              ),
              sectionTitle('PERSONAL INFORMATION'),
              information('Full Name', 'Eugenio, Akirha Jhane'),
              information(
                'Address',
                '94 A Remigio St., Maysilo, Malabon City',
              ),
              information('Birthday', 'October 19, 2006'),
              information('Age', '19'),
              information('Gender', 'Female'),
              information('Civil Status', 'Single'),
              information('Nationality', 'Filipino'),
              sectionTitle('Contact Information'),
              information('Contact Number', '09503111285'),
              information('Email', 'eugenioakirhajhane@gmail.com'),
              sectionTitle('EDUCATIONAL BACKGROUND'),
              information(
                'Elementary',
                'Catmon Integrated School\n2013-2018',
              ),
              information(
                'Junior High School',
                'Catmon Integrated School\n2018-2022',
              ),
              information(
                'Senior High School',
                'Arellano University - Jose Rizal Campus\n2022-2024',
              ),
              information(
                'College',
                'Global Reciprocal Colleges\n2024-present',
              ),
              information(
                'Course',
                'Bachelor of Science in Information Technology',
              ),
              information('Year Level', '3rd Year'),
              sectionTitle('Skills and Interests'),
              information(
                'Skills',
                'Basic HTML, SQL, JavaScript, and Python',
              ),
              information('Hobbies', 'Arts and Crafts'),
              information('About Me', 'I love the color Purple.'),
            ],
          ),
        ),
      ),
    );
  }
}

