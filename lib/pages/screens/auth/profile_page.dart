import 'package:flutter/material.dart';
import 'package:moqayda/pages/shared/login/bar.dart';
import 'package:moqayda/pages/shared/main_button.dart';
import '../../../utilities/routes.dart';
import '../../shared/profilecontainer.dart';
import '../../shared/showlogoutdialog.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: Bar(barname: 'البروفايل'),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
             SizedBox(
              height: screenSize.height*0.02,
            ),
            const Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'اهلا بك رحاب محمد',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  )),
                   profilecontainer(
                textname: 'تعديل الملف الشخصى ',
                ontap: () {
               
                       Navigator.of(context,rootNavigator: true)
                      .pushNamed(SpeacialRoutes.editprofile);
                },
              ),
              SizedBox(
                height: screenSize.height*0.02,

              ),
              profilecontainer(
                ontap: () {
                  Navigator.of(context,rootNavigator: true)
                      .pushNamed(SpeacialRoutes.adsRoute);
                },
                textname: 'اعلاناتى',
              ),
                SizedBox(
                height: screenSize.height*0.02,

              ),
              profilecontainer(
                ontap: () {
                  Navigator.of(context,rootNavigator: true)
                      .pushNamed(SpeacialRoutes.mokaydalist);
                },
                textname: 'قائمة المقايضات',
              ),
               SizedBox(
                height: screenSize.height*0.02,

              ),
              profilecontainer(
                ontap: () {
                  Navigator.of(context,rootNavigator: true)
                      .pushNamed(SpeacialRoutes.blacklistRoute);
                },
                textname: 'القائمة السوداء',
              ),
               SizedBox(
                height: screenSize.height*0.02,

              ),
              profilecontainer(
                ontap: () {
                  Navigator.of(context,rootNavigator: true)
                      .pushNamed(SpeacialRoutes.productformokayda);
                },
                textname: ' منتجاتى للمقايضة',
              ),
              SizedBox(
                height: screenSize.height*0.02,

              ),
              profilecontainer(
                ontap: () {
                  Navigator.of(context,rootNavigator: true)
                      .pushNamed(SpeacialRoutes.moahdaRoute);
                },
                textname: 'معاهدة الاستخدام',
              ),
              SizedBox(
                height: screenSize.height*0.02,

              ),
              profilecontainer(
                ontap: () {
                  
                },
                textname: 'اتصل بنا',
              ),
              SizedBox(height: screenSize.height*0.04,),
              MainButton(
                  text: 'تسجيل الخروج',
                  ontap: (){
                    showlogoutDialog(context);

                  },
                  small: false,
                  medium: false,
                  rounded: false)

          ],
        ),
      ),
    );
  }
}
