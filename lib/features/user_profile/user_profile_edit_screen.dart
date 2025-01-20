import 'package:flutter/material.dart';
import 'user_model.dart';  // User model to fetch and save data
import 'user_profile_service.dart';  // Service to update user data

class UserProfileEditScreen extends StatefulWidget {
  final String userId;

  const UserProfileEditScreen({Key? key, required this.userId}) : super(key: key);

  @override
  _UserProfileEditScreenState createState() => _UserProfileEditScreenState();
}

class _UserProfileEditScreenState extends State<UserProfileEditScreen> {
  late TextEditingController nameController;
  late TextEditingController emailController;
  late TextEditingController phoneController;
  late TextEditingController addressController;

  @override
  void initState() {
    super.initState();
    // Initialize controllers with mock data (you would populate this with real user data)
    nameController = TextEditingController(text: 'John Doe');
    emailController = TextEditingController(text: 'johndoe@example.com');
    phoneController = TextEditingController(text: '123-456-7890');
    addressController = TextEditingController(text: '123 Main Street, Anytown, USA');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: nameController,
              decoration: const InputDecoration(labelText: 'Name'),
            ),
            TextField(
              controller: emailController,
              decoration: const InputDecoration(labelText: 'Email'),
            ),
            TextField(
              controller: phoneController,
              decoration: const InputDecoration(labelText: 'Phone'),
            ),
            TextField(
              controller: addressController,
              decoration: const InputDecoration(labelText: 'Address'),
            ),
            ElevatedButton(
              onPressed: () {
                final updatedUser = UserModel(
                  userId: widget.userId,
                  name: nameController.text,
                  email: emailController.text,
                  profileImage: 'assets/images/user_profile.jpg',  // Can update with new image
                  phoneNumber: phoneController.text,
                  address: addressController.text,
                );
                UserProfileService.updateUserData(updatedUser);  // Update user data in service
                Navigator.pop(context);  // Go back to previous screen
              },
              child: const Text('Save Changes'),
            ),
          ],
        ),
      ),
    );
  }
}
