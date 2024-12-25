part of rest_api;

class UserService {
  User getUserLogin() {
    final user = FirebaseAuth.instance.currentUser;
    return User(image: NetworkImage(user.photoURL), name: user.displayName);
  }
}

class User {
  final ImageProvider image;
  final String name;

  User({
    this.image,
    this.name,
  });
}
