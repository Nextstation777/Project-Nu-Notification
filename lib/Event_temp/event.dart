class Event {
  int id;
  String imgURL;
  List<String> imgList;
  String name;
  String category;
  String description;

  Event.fromMap(Map<String, dynamic> data) {
    id = data['id'];
    imgURL = data['imgURL'];
    name = data['name'];
    category = data['category'];
    description = data['description'];
  }
}
