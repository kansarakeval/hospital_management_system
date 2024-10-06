import 'package:flutter/material.dart';
import 'package:hospital_management_system/utils/theme/color.dart';

class DoctorDetailsScreen extends StatefulWidget {
  const DoctorDetailsScreen({super.key});

  @override
  State<DoctorDetailsScreen> createState() => _DoctorDetailsScreenState();
}

class _DoctorDetailsScreenState extends State<DoctorDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Profile and Favorite Icon
                Stack(
                  children: [
                    Center(
                      child: CircleAvatar(
                        radius: 70,
                        backgroundImage: AssetImage('assets/images/doctor_profile.png'), // Add doctor image
                      ),
                    ),
                    Positioned(
                      right: 16,
                      child: Icon(
                        Icons.favorite_border,
                        color: Colors.red,
                        size: 30,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
          
                // Doctor Name and Ratings
                Center(
                  child: Column(
                    children: [
                      Text(
                        "Dr. Keval Kansara",
                        style: Theme.of(context).textTheme.displayLarge,
                      ),
                      const SizedBox(height: 5),
                      Text(
                        "Heart Surgeon",
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: Colors.grey),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.star, color: Colors.amber, size: 20),
                          Icon(Icons.star, color: Colors.amber, size: 20),
                          Icon(Icons.star, color: Colors.amber, size: 20),
                          Icon(Icons.star, color: Colors.amber, size: 20),
                          Icon(Icons.star_half, color: Colors.amber, size: 20),
                          const SizedBox(width: 5),
                          Text(
                            "4.5",
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                // Stats Section
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _buildStatItem('80%', 'Good Reviews'),
                    _buildStatItem('95%', 'Total Score'),
                    _buildStatItem('90%', 'Satisfaction'),
                  ],
                ),
                const SizedBox(height: 20),
          
                _buildRichText(context, 'Full Name: ', 'Kansara Keval Mathurbhai'),
                const SizedBox(height: 10),
          
                _buildRichText(context, 'Gender: ', 'Male'),
                const SizedBox(height: 10),
          
                _buildRichText(context, 'Age: ', '21 years'),
                const SizedBox(height: 10),
          
                _buildRichText(context, 'Degree: ', 'M.B.B.S.'),
                const SizedBox(height: 10),
          
                _buildRichText(context, 'Specialist: ', 'Orthopedics'),
                const SizedBox(height: 10),
          
                _buildRichText(context, 'Surgeries Completed: ', '10'),
                const SizedBox(height: 10),
          
                _buildRichText(context, 'Contact Number: ', '9723727767'),
                const SizedBox(height: 10),
          
                _buildRichText(context, 'Home Address: ', 'Shree Hariram Bapanagar, Hirabage, Surat - 395006'),
                const SizedBox(height: 10),
                // About Section
                Text(
                  "About",
                  style: Theme.of(context).textTheme.displayMedium,
                ),
                const SizedBox(height: 10),
                Text(
                  "A doctor can be found in several settings, including public health organizations, teaching facilities, private practices, group practices, and hospitals. They have some of the most diverse and challenging careers available and are part of a universally well-respected profession.",
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                const SizedBox(height: 20),
                // Contact and Appointment Button
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.phone, color: bluePrimary),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.chat, color: bluePrimary),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: bluePrimary,
                            elevation: 0,// Button color
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20), // Rounded button
                            ),
                            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                          ),
                          child: Text("Make An Appointment"),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Helper widget for displaying stats (Good Reviews, Total Score, Satisfaction)
  Widget _buildStatItem(String value, String label) {
    return Column(
      children: [
        Text(
          value,
          style: Theme.of(context).textTheme.headlineMedium?.copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 5),
        Text(
          label,
          style: Theme.of(context).textTheme.bodySmall?.copyWith(color: Colors.grey),
        ),
      ],
    );
  }

  Widget _buildRichText(BuildContext context, String label, String value) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: label,
            style: Theme.of(context).textTheme.displayMedium,
          ),
          TextSpan(
            text: value,
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        ],
      ),
    );
  }
}
