part of dashboard;

class _BottomNavbar extends StatelessWidget {
  _BottomNavbar({Key key}) : super(key: key);

  final _index = 0.obs;
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => _customBackground(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: BottomNavigationBar(
            onTap: (value) => _index.value = value,
            currentIndex: _index.value,
            selectedItemColor: Colors.green,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.account_circle_outlined), label: "Profile"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.home_rounded), label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.assignment_outlined), label: "Activity"),
            ],
            backgroundColor: Colors.transparent,
            elevation: 0,
            iconSize: 30,
            unselectedItemColor: Colors.grey[500],
          ),
        ),
      ),
    );
  }

  Widget _customBackground({Widget child}) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -5),
            color: Colors.black12,
            blurRadius: 10,
          )
        ],
      ),
      child: child,
    );
  }
}
