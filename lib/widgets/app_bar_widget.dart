class AppBarWidget extends StatelessWidget {
  final String title;

  AppBarWidget({required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
      actions: <Widget>[
        IconButton(icon: Icon(Icons.notifications), onPressed: () {}),
        IconButton(icon: Icon(Icons.account_circle), onPressed: () {}),
      ],
    );
  }
}
