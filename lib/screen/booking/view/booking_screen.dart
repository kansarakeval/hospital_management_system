part of '../../file_import.dart';

class BookingScreen extends StatefulWidget {
  const BookingScreen({super.key});

  @override
  State<BookingScreen> createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> {
  final formKey = GlobalKey<FormState>();
  TextEditingController txtName = TextEditingController();
  TextEditingController txtAddress = TextEditingController();
  TextEditingController txtWeight = TextEditingController();
  TextEditingController txtHeight = TextEditingController();
  TextEditingController txtAge = TextEditingController();
  TextEditingController txtNumber = TextEditingController();
  TextEditingController txtDiseaseName = TextEditingController();
  TextEditingController txtDocterName = TextEditingController();
  int selectGroup = 0;

  ProfileController profileController = Get.put(ProfileController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title:  Text(
            booking,
            style: Theme.of(context).textTheme.titleLarge,
          ),
          elevation: 0,
          iconTheme: IconThemeData(color: profileController.islight.value?Colors.black:Colors.white),
        ),
        body: Padding(
          padding: EdgeInsets.all(10.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const CircleAvatar(
                      radius: 50,
                    ),
                    SizedBox(
                      width: RS.w * 0.03,
                    ),
                    Column(
                      children: [
                        SizedBox(
                          width: RS.h * 0.3,
                          child: CustomTextFormField(
                              controller: txtName,
                              hintText: name,
                              prefixIcon: Icons.person_outline),
                        ),
                        SizedBox(
                          height: RS.h * 0.02,
                        ),
                        SizedBox(
                          width: RS.h * 0.3,
                          child: CustomTextFormField(
                              controller: txtAddress,
                              hintText: address,
                              prefixIcon: Icons.home_outlined),
                        ),
                      ],
                    )
                  ],
                ),
                // SizedBox(height: RS.h * 0.01),
                Row(
                  children: [
                    IconButton.filledTonal(
                      onPressed: () {},
                      icon: Icon(Icons.camera),
                    ),
                    SizedBox(width: RS.h * 0.01),
                    IconButton.filledTonal(
                      onPressed: () {},
                      icon: Icon(Icons.image),
                    ),
                  ],
                ),
                SizedBox(height: RS.h * 0.01),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                           Text(gender,style: txtBtn20,),
                          RadioButtonRS(
                              value: 1,
                              onChanged: (value) {
                                setState(
                                  () {
                                    selectGroup = value!;
                                  },
                                );
                              },
                              title: 'Male',
                              groupValue: selectGroup),
                          RadioButtonRS(
                              value: 2,
                              onChanged: (value) {
                                setState(
                                  () {
                                    selectGroup = value!;
                                  },
                                );
                              },
                              title: 'Female',
                              groupValue: selectGroup),
                          RadioButtonRS(
                              value: 3,
                              onChanged: (value) {
                                setState(
                                  () {
                                    selectGroup = value!;
                                  },
                                );
                              },
                              title: 'Other',
                              groupValue: selectGroup),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          CustomTextFormField(
                              controller: txtWeight,
                              hintText: weight,
                              prefixIcon: Icons.monitor_weight),
                          SizedBox(
                            height: RS.h * 0.02,
                          ),
                          CustomTextFormField(
                              controller: txtHeight,
                              hintText: height,
                              prefixIcon: Icons.height),
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(height: RS.h * 0.02),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: RS.w * 0.46,
                      child: CustomTextFormField(
                          controller: txtAge,
                          hintText: age,
                          prefixIcon: Icons.real_estate_agent),
                    ),
                    SizedBox(
                      width: RS.w * 0.46,
                      child: CustomTextFormField(
                          controller: txtNumber,
                          hintText: number,
                          prefixIcon: Icons.phone),
                    ),
                  ],
                ),
                SizedBox(height: RS.h * 0.02),
                CustomTextFormField(
                    controller: txtDiseaseName,
                    hintText: diseaseName,
                    prefixIcon: Icons.phone),
                SizedBox(height: RS.h * 0.02),
                CustomTextFormField(
                    controller: txtDocterName,
                    hintText: docterName,
                    prefixIcon: Icons.phone),
                SizedBox(height: RS.h * 0.02),
                Center(
                  child: ElevatedButton(
                    style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(bluePrimary)),
                    onPressed: () {
                      Get.back();
                    },
                    child: Text(submit,style: TextStyle(fontSize: 15),),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
