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
          padding: const EdgeInsets.all(10),
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
                    crossAxisCount: 2, // Number of items per row
                    crossAxisSpacing: 10, // Space between columns
                    mainAxisSpacing: 10, // Space between rows
                    childAspectRatio: 0.9, // Aspect ratio of the grid items
                  ),
                  itemCount: 6, // Number of grid items
                  itemBuilder: (context, index) {
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
                              child: Container(
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
                                      child: Text("Doctor",
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyMedium),
                                    ),
                                    SizedBox(height: 20),
                                    RichText(
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                              text: 'Name : ',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodySmall),
                                          TextSpan(
                                              text: 'Dr. Keval Kansara',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .titleSmall),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    RichText(
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                              text: 'Specialist : ',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodySmall),
                                          TextSpan(
                                              text: 'Heart Surgery',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .titleSmall),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    RichText(
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                              text: 'Experience : ',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodySmall),
                                          TextSpan(
                                              text: '4 years',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .titleSmall),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    RichText(
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                              text: 'Mobile : ',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodySmall),
                                          TextSpan(
                                              text: '+91 9723727767',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .titleSmall),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(height: 20),
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        ElevatedButton(
                                          style: ButtonStyle(
                                            elevation: WidgetStateProperty.all(0),
                                            backgroundColor:
                                                WidgetStatePropertyAll(
                                                    bluePrimary),
                                          ),
                                          onPressed: () {
                                            Get.offNamed('doctorDetails');
                                          },
                                          child: Text(
                                            "Details",
                                            style: TextStyle(
                                                color: white, fontSize: 15),
                                          ),
                                        ),
                                        ElevatedButton(
                                          style: ButtonStyle(
                                            elevation: WidgetStateProperty.all(0),
                                            backgroundColor:
                                            WidgetStatePropertyAll(
                                                bluePrimary),
                                          ),
                                          onPressed: () {
                                            Get.back();
                                          },
                                          child: Text(
                                            "Close",
                                            style: TextStyle(
                                                color: white, fontSize: 15),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: profileController.islight.value
                              ? Colors.grey.shade200
                              : Colors.white24,
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
                                  backgroundColor:
                                      profileController.islight.value
                                          ? Colors.white
                                          : Colors.black,
                                  radius: 40,
                                ),
                              ),
                              const SizedBox(height: 10),
                              RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                        text: 'Name: ',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodySmall),
                                    TextSpan(
                                        text: 'Dr. Keval Kansara',
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleSmall),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 10),
                              RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                        text: 'Specialist: ',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodySmall),
                                    TextSpan(
                                        text: 'Heart Surgery',
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleSmall),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 10),
                              RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                        text: 'Experience: ',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodySmall),
                                    TextSpan(
                                        text: '4 years',
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleSmall),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
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
