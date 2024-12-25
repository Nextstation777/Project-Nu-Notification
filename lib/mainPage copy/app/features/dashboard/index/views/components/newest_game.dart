part of dashboard;

class _NewestGame extends GetView<DashboardController> {
  const _NewestGame({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _title(),
        SizedBox(height: 10),
        ..._content(),
      ],
    );
  }

  Widget _title() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Text(
        "กิจกรรมที่กำลังดำเนินอยู่",
        style: TextStyle(color: Colors.green, fontSize: 25),
      ),
    );
  }

  List<Widget> _content() {
    return controller.popularGame
        .map(
          (product) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Hero(
              tag: controller.getEventTag(product),
              child: CardProduct(
                data: CardProductData(
                  image: product.iconImage,
                  name: product.name,
                  category: product.category,
                ),
                onPressed: () => controller.goToDetail(
                  product,
                  heroTag: controller.getEventTag(product),
                ),
              ),
            ),
          ),
        )
        .toList();
  }
}
