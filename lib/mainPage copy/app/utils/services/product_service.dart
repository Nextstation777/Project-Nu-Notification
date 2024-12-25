part of rest_api;

class ProductService {
  static final ProductService _productService = ProductService._internal();

  factory ProductService() {
    return _productService;
  }

  ProductService._internal();

  List<Product> getEvent() {
    return [
      _event1,
      _event2,
    ];
  }


}

class Product {
  int id;
  ImageProvider iconImage;
  ImageProvider backgroundImage;
  List<ImageProvider> screenshotImages;
  String name;
  String category;
  String description;

  Product({
    this.id,
    this.iconImage,
    this.backgroundImage,
    this.screenshotImages,
    this.name,
    this.category,
    this.description,
  });

  Future getList() async {
    final List<Product> loadList = [];
    await FirebaseFirestore.instance.collection('Event').get().then(
          (QuerySnapshot snapshot) => snapshot.docs.forEach(
            (f) => loadList.insert(
              0,
              Product(
                screenshotImages: [
                  AssetImage(ImageRaster.Event12),
                  AssetImage(ImageRaster.Event13),
                  AssetImage(ImageRaster.Event14),
                  AssetImage(ImageRaster.Event15),
                ],
                id: f.get('id'),
                name: f.get('name'),
                category: f.get('category'),
                description: f.get('description'),
              ),
            ),
          ),
        );
    return loadList;
  }
}

// sample data
final _event1 = Product(
  id: 0,
  iconImage: AssetImage(ImageRaster.Event1Icon),
  backgroundImage: AssetImage(ImageRaster.Event11),
  screenshotImages: [
    AssetImage(ImageRaster.Event12),
    AssetImage(ImageRaster.Event13),
    AssetImage(ImageRaster.Event14),
    AssetImage(ImageRaster.Event15),
  ],
  name: "กิจกรรมวันไหว้ครู",
  category: "กิจกรรมคณะ",
  description: "สถานที่กิจกรรม อาคาร Sc 1",
);

final _event2 = Product(
  id: 1,
  iconImage: AssetImage(ImageRaster.Event2Icon),
  backgroundImage: AssetImage(ImageRaster.Event21),
  screenshotImages: [],
  name: "Sci Week",
  category: "กิจกรรมคณะ",
  description: "สถานที่จัดกิจกรรม คณะวิทยาศาสตร์ มหาวิทยาลัย ม.นเรศวร",
);
