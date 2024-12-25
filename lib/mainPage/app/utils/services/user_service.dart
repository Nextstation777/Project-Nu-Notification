part of rest_api;

class UserService {
  User getUserLogin() {
    // sample data
    return User(image: AssetImage(ImageRaster.logoGiaDeveloper), name: "gia");
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
