part of dashboard;

class DashboardController extends GetxController {
  final _productService = ProductService();

  List<Product> popularGame;
  List<Product> newestGame;

  @override
  void onInit() {
    super.onInit();
    popularGame = _productService.getEvent();
  }

  void goToDetail(Product product, {String heroTag}) {
    Get.toNamed(
      Routes.productDetail,
      arguments: product,
      parameters: {'event_tag': "$heroTag"},
    );
  }

  String getEventTag(Product product) {
    return "newest_game=${product.id}";
  }
}
