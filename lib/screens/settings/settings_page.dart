import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  // Example settings values
  bool isDarkMode = false;  // Switch for dark mode
  bool isNotificationsEnabled = true;  // Switch for enabling notifications
  String username = "User123";  // User name input
  String email = "user@example.com";  // User email input
  String selectedLanguage = 'English';  // Language selection dropdown

  // Options for language selection
  final List<String> languages = ['English', 'Spanish', 'French', 'German'];

  // Function to save settings (this can be extended to save to local storage, etc.)
  void _saveSettings() {
    // Here you would typically save the settings to persistent storage
    print('Settings Saved:');
    print('Dark Mode: $isDarkMode');
    print('Notifications: $isNotificationsEnabled');
    print('Username: $username');
    print('Email: $email');
    print('Language: $selectedLanguage');
    // Add your own saving mechanism (e.g., using SharedPreferences)
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Settings"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: <Widget>[
            // Username field
            TextFormField(
              initialValue: username,
              decoration: const InputDecoration(
                labelText: "Username",
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                setState(() {
                  username = value;
                });
              },
            ),
            const SizedBox(height: 20),

            // Email field
            TextFormField(
              initialValue: email,
              decoration: const InputDecoration(
                labelText: "Email",
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                setState(() {
                  email = value;
                });
              },
            ),
            const SizedBox(height: 20),

            // Dark mode switch
            SwitchListTile(
              title: const Text("Enable Dark Mode"),
              value: isDarkMode,
              onChanged: (value) {
                setState(() {
                  isDarkMode = value;
                });
              },
            ),
            const SizedBox(height: 20),

            // Notifications switch
            SwitchListTile(
              title: const Text("Enable Notifications"),
              value: isNotificationsEnabled,
              onChanged: (value) {
                setState(() {
                  isNotificationsEnabled = value;
                });
              },
            ),
            const SizedBox(height: 20),

            // Language selection dropdown
            DropdownButtonFormField<String>(
              value: selectedLanguage,
              decoration: const InputDecoration(
                labelText: "Select Language",
                border: OutlineInputBorder(),
              ),
              onChanged: (String? newValue) {
                setState(() {
                  selectedLanguage = newValue!;
                });
              },
              items: languages.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            const SizedBox(height: 20),

            // Save Settings Button
            ElevatedButton(
              onPressed: _saveSettings,
              child: const Text("Save Settings"),
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 12.0),
                textStyle: const TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
