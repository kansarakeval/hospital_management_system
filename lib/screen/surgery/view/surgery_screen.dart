part of '../../file_import.dart';

class SurgeryScreen extends StatefulWidget {
  const SurgeryScreen({super.key});

  @override
  State<SurgeryScreen> createState() => _SurgeryScreenState();
}

class _SurgeryScreenState extends State<SurgeryScreen> {
  ProfileController profileController = Get.put(ProfileController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(left: 10,right: 10,top: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Surgery specialist:",
                style: Theme.of(context).textTheme.labelLarge,
              ),
              const SizedBox(height: 20),
              Expanded(
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: 0.9,
                  ),
                  itemCount: 10, // Example item count
                  itemBuilder: (context, index) {
                    return _DoctorCard(
                      name: 'Dr. Keval Kansara',
                      specialist: 'Heart Surgery',
                      experience: '4 years',
                      mobile: '+91 9723727767',
                      isLightTheme: profileController.islight.value,
                    );
                  },
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}

class _DoctorCard extends StatelessWidget {
  final String name;
  final String specialist;
  final String experience;
  final String mobile;
  final bool isLightTheme;

  _DoctorCard({
    required this.name,
    required this.specialist,
    required this.experience,
    required this.mobile,
    required this.isLightTheme,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onLongPress: () {
        showDialog(
          barrierDismissible: false,
          context: context,
          builder: (BuildContext context) {
            return Dialog(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: _DoctorDetailDialog(
                name: name,
                specialist: specialist,
                experience: experience,
                mobile: mobile,
              ),
            );
          },
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: isLightTheme ? Colors.grey.shade200 : Colors.white24,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.center,
                child: CircleAvatar(
                  backgroundColor: isLightTheme ? Colors.white : Colors.black,
                  radius: 40,
                ),
              ),
              const SizedBox(height: 10),
              _buildRichText(context, 'Name: ', name),
              const SizedBox(height: 10),
              _buildRichText(context, 'Specialist: ', specialist),
              const SizedBox(height: 10),
              _buildRichText(context, 'Experience: ', experience),
            ],
          ),
        ),
      ),
    );
  }

  RichText _buildRichText(BuildContext context, String label, String value) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: label,
            style: Theme.of(context).textTheme.bodySmall,
          ),
          TextSpan(
            text: value,
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ],
      ),
    );
  }
}

class _DoctorDetailDialog extends StatelessWidget {
  final String name;
  final String specialist;
  final String experience;
  final String mobile;

  _DoctorDetailDialog({
    required this.name,
    required this.specialist,
    required this.experience,
    required this.mobile,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.center,
            child:
                Text("Doctor", style: Theme.of(context).textTheme.bodyMedium),
          ),
          const SizedBox(height: 20),
          _buildRichText(context, 'Name: ', name),
          const SizedBox(height: 10),
          _buildRichText(context, 'Specialist: ', specialist),
          const SizedBox(height: 10),
          _buildRichText(context, 'Experience: ', experience),
          const SizedBox(height: 10),
          _buildRichText(context, 'Mobile: ', mobile),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                style: ButtonStyle(
                  elevation: WidgetStateProperty.all(0),
                  backgroundColor: WidgetStatePropertyAll(bluePrimary),
                ),
                onPressed: () {
                  Get.offNamed('doctorDetails');
                },
                child: Text(
                  "Details",
                  style: TextStyle(fontSize: 15, color: white),
                ),
              ),
              ElevatedButton(
                style: ButtonStyle(
                  elevation: WidgetStateProperty.all(0),
                  backgroundColor: WidgetStatePropertyAll(bluePrimary),
                ),
                onPressed: () {
                  Get.back();
                },
                child: Text(
                  "Close",
                  style: TextStyle(fontSize: 15, color: white),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  RichText _buildRichText(BuildContext context, String label, String value) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: label,
            style: Theme.of(context).textTheme.bodySmall,
          ),
          TextSpan(
            text: value,
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ],
      ),
    );
  }
}
