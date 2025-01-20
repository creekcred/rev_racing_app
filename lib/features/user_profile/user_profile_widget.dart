import 'package:flutter/material.dart';
import 'user_model.dart';  // Import the User model

class UserProfileWidget extends StatelessWidget {
  final UserModel user;

  const UserProfileWidget({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      elevation: 4.0,
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage(user.profileImage), // Display profile image
        ),
        title: Text(user.name),  // Display user's name
        subtitle: Text(user.email),  // Display user's email
        trailing: IconButton(
          icon: const Icon(Icons.edit),
          onPressed: () {
            // Navigate to user profile editing screen
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => UserProfileEditScreen(userId: user.userId),
              ),
            );
          },
        ),
      ),
    );
  }
}
