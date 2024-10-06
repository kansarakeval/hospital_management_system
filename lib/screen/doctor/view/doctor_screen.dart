import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hospital_management_system/screen/file_import.dart';
import 'package:hospital_management_system/utils/theme/color.dart';
import 'package:hospital_management_system/utils/theme/size.dart';
import 'package:hospital_management_system/utils/theme/text_theme.dart';

class DoctorScreen extends StatefulWidget {
  const DoctorScreen({super.key});

  @override
  State<DoctorScreen> createState() => _DocterScreenState();
}

class _DocterScreenState extends State<DoctorScreen> {
  ProfileController profileController = Get.put(ProfileController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: ListView.builder(itemCount:10,itemBuilder: (context, index) {
        return Container(
          margin: EdgeInsets.only(left: 10,top: 10,right: 10),
          padding: EdgeInsets.all(10),
          height: RS.h*0.15,
          width: double.infinity,
          decoration: BoxDecoration(
            color: profileController.islight.value?Colors.grey.shade200:Colors.white24,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundColor: profileController.islight.value?white:black,
                    radius: 50,
                  ),
                  SizedBox(width: 10,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                                text: 'Name : ',
                                style: Theme.of(context).textTheme.titleSmall
                            ),
                            TextSpan(
                                text: 'kansara keval Mathurbhai',
                                style: Theme.of(context).textTheme.titleSmall
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 5,),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                                text: 'Experience : ',
                                style: Theme.of(context).textTheme.titleSmall
                            ),
                            TextSpan(
                                text: '4 year',
                                style: Theme.of(context).textTheme.titleSmall
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 5,),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                                text: 'Degree: ',
                                style: Theme.of(context).textTheme.titleSmall
                            ),
                            TextSpan(
                                text: 'M.B.B.S',
                                style: Theme.of(context).textTheme.titleSmall
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 5,),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                                text: 'Specialist : ',
                                style: Theme.of(context).textTheme.titleSmall
                            ),
                            TextSpan(
                                text: 'Orthopedics',
                                style: Theme.of(context).textTheme.titleSmall
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                ],
              )
            ],
          ),
        );
      },)
    ),);
  }
}
