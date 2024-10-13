part of '../../file_import.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: bluePrimary,
          onPressed: () {
            Get.toNamed('booking');

          },
          child: Icon(Icons.add,color: white,),
        ),
      ),
    );
  }
}
