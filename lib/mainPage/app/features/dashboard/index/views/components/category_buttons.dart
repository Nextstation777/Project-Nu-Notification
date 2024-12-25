part of dashboard;

class _CategoryButtons extends StatelessWidget {
  _CategoryButtons({Key key}) : super(key: key);

  final List<TextButton> _listButton = [];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        itemCount: _listButton.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(
              left: index == 0 ? 25 : 0,
              right: 25,
            ),
            child: _listButton[index],
          );
        },
      ),
    );
  }
}
