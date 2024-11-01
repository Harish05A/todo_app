import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool isDarkMode = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: isDarkMode ? ThemeData.dark() : ThemeData.light(),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Profile'),
          actions: [
            IconButton(
              icon: Icon(isDarkMode ? Icons.light_mode : Icons.dark_mode),
              onPressed: () {
                setState(() {
                  isDarkMode = !isDarkMode;
                });
              },
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView(
            children: [
              Center(
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: NetworkImage('https://picsum.photos/seed/picsum/200/300'),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Harish A',
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'App Dev',
                      style: TextStyle(fontSize: 18, color: Colors.blueGrey),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text('Change profile'),
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.blue,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Skills:',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                'App Development, DSA, UI/UX',
                style: TextStyle(fontSize: 18, color: Colors.green),
              ),
              SizedBox(height: 10),
              Text(
                'Work Experience:',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                'Senior App Developer - ABC Technologies',
                style: TextStyle(fontSize: 18, color: Colors.red),
              ),
              Text(
                'Junior App Developer - ABC Technologies',
                style: TextStyle(fontSize: 18, color: Colors.red),
              ),
              Text(
                'Intern - Google, Banglore',
                style: TextStyle(fontSize: 18, color: Colors.red),
              ),
              SizedBox(height: 20),
              Text(
                'My Projects:',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              ReportCard(title: 'Portfolio App', icon: Icons.home),
              ReportCard(title: 'Weather App', icon: Icons.cloud),
              ReportCard(title: 'Farmezy - A CSA Initiative', icon: Icons.business),
              ReportCard(title: 'To-Do Planner', icon: Icons.checklist),
              ReportCard(title: 'Request Hub', icon: Icons.timeline),
            ],
          ),
        ),
      ),
    );
  }
}

class ReportCard extends StatelessWidget {
  final String title;
  final IconData icon;

  ReportCard({required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: ListTile(
        leading: Icon(icon, color: Colors.blue),
        title: Text(title, style: TextStyle(fontSize: 18)),
      ),
    );
  }
}
