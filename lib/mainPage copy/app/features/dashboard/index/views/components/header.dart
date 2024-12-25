part of dashboard;

class _Header extends GetView<DashboardController> {
  final user = FirebaseAuth.instance.currentUser;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _title(),
              _imageProfile(),
            ],
          ),
        ],
      ),
    );
  }

  Widget _title() {
    return Column(
      children: [
        Text("Welcome                                 ",
            textAlign: TextAlign.left,
            maxLines: 1,
            overflow: TextOverflow.clip,
            softWrap: false,
            style: Theme.of(Get.context).textTheme.headline5?.copyWith(
                  fontSize: 25,
                  color: Colors.white,
                )),
        SizedBox(
          height: 10,
        ),
        Text(user.displayName,
            style: Theme.of(Get.context)
                .textTheme
                .headline5
                ?.copyWith(fontSize: 20, color: Colors.white))
      ],
    );
  }

  Widget _imageProfile() {
    return CircleAvatar(
      radius: 30,
      backgroundImage: NetworkImage(user.photoURL),
    );
  }
}
