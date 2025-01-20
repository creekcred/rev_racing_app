class UserModel {
  final String userId;
  final String name;
  final String email;
  final String profileImage;
  final String phoneNumber;
  final String address;

  UserModel({
    required this.userId,
    required this.name,
    required this.email,
    required this.profileImage,
    required this.phoneNumber,
    required this.address,
  });

  // Convert User to a Map (for saving to a database or API)
  Map<String, dynamic> toMap() {
    return {
      'userId': userId,
      'name': name,
      'email': email,
      'profileImage': profileImage,
      'phoneNumber': phoneNumber,
      'address': address,
    };
  }

  // Convert Map to User object (for fetching data from a database or API)
  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      userId: map['userId'],
      name: map['name'],
      email: map['email'],
      profileImage: map['profileImage'],
      phoneNumber: map['phoneNumber'],
      address: map['address'],
    );
  }
}
