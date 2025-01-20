import 'package:flutter/material.dart';
import 'user_profile_service.dart';  // Service to fetch user data
import 'user_model.dart';  // User model for the data

class UserProfileScreen extends StatelessWidget {
  final String userId;

  const UserProfileScreen({Key? key, required this.userId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Profile'),
      ),
      body: FutureBuilder<UserModel>(
        future: UserProfileService.fetchUserData(userId),  // Fetch user data
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return const Center(child: Text('Error loading user data.'));
          } else if (!snapshot.hasData) {
            return const Center(child: Text('User not found.'));
          } else {
            final user = snapshot.data!;
            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  UserProfileWidget(user: user),  // Display user info
                  ElevatedButton(
                    onPressed: () {
                      // Logic to edit user profile
                    },
                    child: const Text('Edit Profile'),
                  ),
                ],
              ),
            );
          }
        },
      ),
    );
  }
}
