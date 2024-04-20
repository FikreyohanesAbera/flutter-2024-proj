import 'package:flutter/material.dart';
import '../widgets/toggle_button.dart';
import '../widgets/date_picker.dart';

class AdminPage extends StatelessWidget {
  final bool isDarkMode;
  final VoidCallback toggleTheme;

  AdminPage({required this.isDarkMode, required this.toggleTheme});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Center(
            child: Text(
          'Admin Page',
          style: TextStyle(color: Colors.white),
        )),
        actions: [
          ToggleButton(isDarkMode: isDarkMode, toggleTheme: toggleTheme),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Card(
              child: Center(
                child: DatePickerWidget(
                  onDateSelected: (DateTime? pickedDate) {
                    if (pickedDate != null) {
                      // Do something with the selected date
                      print('Selected date: $pickedDate');
                    }
                  },
                ),
              ),
            ),
            const SizedBox(height: 16),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Add Table',
                      style: Theme.of(context).textTheme.headline6,
                      textAlign: TextAlign.center,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(labelText: 'Total Number'),
                    ),
                    TextFormField(
                      decoration:const InputDecoration(labelText: 'Number of Seats'),
                    ),
                    TextFormField(
                      decoration:const InputDecoration(labelText: 'Floor Number'),
                    ),
                    TextFormField(
                      decoration:const InputDecoration(labelText: 'Type'),
                    ),
                    const SizedBox(height: 16),
                    Center(
                      child: ElevatedButton(
                        onPressed: () {
                          // Implement add table functionality
                        },
                        child: Text('Add'),
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: Colors.blueGrey[900],
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),
            Card(
              child: Center(
                child: ListTile(
                  title: const Text('Get All Tables'),
                  onTap: () {
                    // Implement get all tables functionality
                  },
                ),
              ),
            ),
            const SizedBox(height: 16),
            Card(
              child: Padding(
                padding:const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Get Single Table',
                      style: Theme.of(context).textTheme.headline6,
                      textAlign: TextAlign.center,
                    ),
                    TextFormField(
                      decoration:const InputDecoration(labelText: 'Table Number'),
                    ),
                    const SizedBox(height: 16),
                    Center(
                      child: ElevatedButton(
                        onPressed: () {
                          // Implement get single table functionality
                        },
                        child:const Text('Get Table'),
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: Colors.blueGrey[900],
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),
            Card(
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Update Tables',
                      style: Theme.of(context).textTheme.headline6,
                      textAlign: TextAlign.center,
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Total Number'),
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Number of Seats'),
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Floor Number'),
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Type'),
                    ),
                    SizedBox(height: 16),
                    Center(
                      child: ElevatedButton(
                        onPressed: () {
                          // Implement update table functionality
                        },
                        child: Text('Update Table'),
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: Colors.blueGrey[900],
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 16),
            Card(
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Delete Table',
                      style: Theme.of(context).textTheme.headline6,
                      textAlign: TextAlign.center,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          labelText: 'Total Number of Tables to Delete'),
                    ),
                    SizedBox(height: 16),
                    Center(
                      child: ElevatedButton(
                        onPressed: () {
                          // Implement delete table functionality
                        },
                        child: Text('Delete Table'),
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: Colors.blueGrey[900],
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
