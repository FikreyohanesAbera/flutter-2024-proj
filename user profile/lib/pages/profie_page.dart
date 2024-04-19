import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

import 'themes.dart';
import 'edit_profile_page.dart'; 

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool _isDarkMode = false;
  File? _image;
  String _firstName = '';
  String _lastName = '';
  String _phone = '';
  String _email = '';

  Future<void> _pickImage() async {
    final pickedFile = await ImagePicker().pickImage(source: ImageSource.gallery);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } 
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, 
      theme: _isDarkMode ? darkTheme : lightTheme,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Profile'),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: Icon(Icons.menu),
                onPressed: () {
                  Scaffold.of(context).openDrawer(); 
                },
              );
            },
          ),
          actions: [
            IconButton(
              icon: _isDarkMode ? Icon(Icons.light_mode) : Icon(Icons.dark_mode),
              onPressed: () {
                setState(() {
                  _isDarkMode = !_isDarkMode; 
                });
              },
            ),
          ],
        ),
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/background.jpg'), // Replace with your image path
              fit: BoxFit.cover,
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Center(
                  child: Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      CircleAvatar(
                        radius: 80,
                        backgroundImage: _image != null ? FileImage(_image!) : null,
                        child: IconButton(
                          icon: Icon(Icons.camera_alt),
                          onPressed: _pickImage,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 40),
                _buildInfoCard('First Name', _firstName),
                SizedBox(height: 40), 
                _buildInfoCard('Last Name', _lastName),
                SizedBox(height: 40), 
                _buildInfoCard('Phone', _phone),
                SizedBox(height: 40), 
                _buildInfoCard('Email', _email),
                SizedBox(height: 60),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => EditProfilePage()),
                    );
                  },
                  child: Text('Edit Profile'),
                ),
                SizedBox(height: 30),
                ElevatedButton(
                  onPressed: () {
                    // Implement sign out functionality
                  },
                  child: Text('Sign Out'),
                ),
              ],
            ),
          ),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                ),
                child: Text('Menu'),
              ),
              SizedBox(height: 20),
              _buildDrawerItem('Home'),
              _buildDrawerItem('About'),
              _buildDrawerItem('Booking History'),
              _buildDrawerItem('Reservation'),
              _buildDrawerItem('Sign Out'),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDrawerItem(String title) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      elevation: 2,
      child: ListTile(
        title: Text(
          title,
          style: TextStyle(fontSize: 16),
        ),
        onTap: () {
          print('Selected item: $title');
        },
      ),
    );
  }

  Widget _buildInfoCard(String label, String value) {
    return Card(
      elevation: 2,
      margin: EdgeInsets.symmetric(horizontal: 20),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              label,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              value,
              style: TextStyle(
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
