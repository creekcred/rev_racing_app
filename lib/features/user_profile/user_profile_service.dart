import 'package:flutter/material.dart';
import 'user_model.dart';  // Import User model for data mapping

class UserProfileService {
  // Simulate fetching user data (e.g., from an API or Firebase)
  static Future<UserModel> fetchUserData(String userId) async {
    await Future.delayed(const Duration(seconds: 2));  // Simulate a network delay

    // Returning mock data
    return UserModel(
      userId: userId,
      name: 'John Doe',
      email: 'johndoe@example.com',
      profileImage: 'assets/images/user_profile.jpg',  // Mock image
      phoneNumber: '123-456-7890',
      address: '123 Main Street, Anytown, USA',
    );
  }

  // Simulate updating user profile data
  static Future<void> updateUserData(UserModel user) async {
    await Future.delayed(const Duration(seconds: 2));  // Simulate network delay
    // Logic to update user data (e.g., API request, Firebase update)
    print('User data updated for ${user.name}');
  }
}
