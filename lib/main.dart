import 'package:flutter/material.dart';

void main() {
  runApp(const ProfileApp());
}

class ProfileApp extends StatelessWidget {
  const ProfileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Developer Profile'),
          backgroundColor: Colors.blue,
        ),
        body: ListView(
          padding: const EdgeInsets.all(16),
          children: const [
            // Profile Header
            ProfileHeader(),
            SizedBox(height: 20),

            // About Section
            AboutSection(),
            SizedBox(height: 20),

            // Hobbies Section
            HobbiesSection(),
          ],
        ),
      ),
    );
  }
}

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CircleAvatar(
          radius: 50,
          backgroundImage: NetworkImage('https://media.istockphoto.com/id/1403500817/photo/the-craggies-in-the-blue-ridge-mountains.jpg?s=612x612&w=0&k=20&c=N-pGA8OClRVDzRfj_9AqANnOaDS3devZWwrQNwZuDSk='), // Placeholder image URL
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Punit Kumar',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Text(
                'Mobile Developer',
                style: TextStyle(fontSize: 18, color: const Color.fromARGB(255, 124, 183, 147)),
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.link),
                    onPressed: () {
                     
                    },
                  ),
                  IconButton(
                    icon: const Icon(Icons.link),
                    onPressed: () {
                      
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 54, 200, 244),
        borderRadius: BorderRadius.circular(8),
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'About:',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 4),
          Text(
            'As a driven software engineer with a knack for problem-solving, I find joy in crafting elegant and efficient code. I have experience of building and maintaining web applications, and'
            'm always eager to learn new technologies. My passion lies in clean code, user-friendly interfaces, and building software that makes a real difference. Ready to discuss your next project? ',
          ),
        ],
      ),
    );
  }
}

class HobbiesSection extends StatelessWidget {
  const HobbiesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Hobbies:',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 4),
          SizedBox(
            height: 100, 
            child: ListView(
              children: const [
                Text('Reading Books'),
                Text('Traveling'),
                Text('Cooking'),
                Text('Playing Video Games'),
                Text('Hiking'),
                Text('Self growth'),
                Text('Photography'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}