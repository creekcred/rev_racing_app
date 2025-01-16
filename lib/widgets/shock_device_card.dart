class ShockDeviceCard extends StatelessWidget {
  final String name;
  final String status;
  final VoidCallback onTap;
  
  ShockDeviceCard({
    required this.name,
    required this.status,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(Icons.settings),
        title: Text(name),
        subtitle: Text("Status: $status"),
        trailing: Icon(Icons.arrow_forward),
        onTap: onTap,
      ),
    );
  }
}
