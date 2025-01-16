class VehicleDetailsScreen extends StatelessWidget {
  final String productId;

  const VehicleDetailsScreen({Key? key, required this.productId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Vehicle Details"),
      ),
      body: Center(
        child: Text('Product ID: $productId'),
      ),
    );
  }
}
