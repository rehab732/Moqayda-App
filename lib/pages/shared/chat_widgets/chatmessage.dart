import 'package:flutter/material.dart';
import 'package:moqayda/utilities/app_color.dart';

import '../../../utilities/routes.dart';
import '../login/custom_button.dart';

Widget unreadmessage(BuildContext context) {
  final screenSize = MediaQuery.of(context).size;
  return InkWell(
    onTap: () {
      Navigator.of(context, rootNavigator: true)
          .pushNamed(SpeacialRoutes.chatRoute);
    },
    child: Container(
      height: screenSize.height*0.08,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: const BorderRadius.all(Radius.circular(5)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
           SizedBox(
            width: screenSize.width*0.1,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: const [
                Text('9:40 am'),
                CircleAvatar(
                  backgroundColor: KButtonColor,
                  radius: 10,
                  child: Text('2'),
                )
              ],
            ),
          ),
          const Spacer(),
          Column(
            children: [
             const  Text(
                'رحاب محمد احمد',
                style: TextStyle( fontSize: 20),
              ),
              Text(
                'تمام ما فى اى مشكلة',
                style: TextStyle(color: Colors.grey[700]),
              )
            ],
          ),
          //Spacer(),
           SizedBox(
            width:screenSize.width*0.05 ,
          ),
          const Padding(
            padding:  EdgeInsets.all(8.0),
            child:  Align(
              alignment: Alignment.topRight,
              child: CircleAvatar(
                radius: 20,
                backgroundImage: NetworkImage(
                    'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_960_720.png'),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

Widget readmessage(BuildContext context) {
  final screenSize = MediaQuery.of(context).size;
  return InkWell(
    onTap: () {
      Navigator.of(context, rootNavigator: true)
          .pushNamed(SpeacialRoutes.chatRoute);
    },
    child: Container(
      height: screenSize.height*0.08,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: const BorderRadius.all(Radius.circular(5)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: screenSize.width*0.1,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: const [
                Text('9:40 am'),
              ],
            ),
          ),
          const Spacer(),
          Column(
            children: [
             const Text(
                'رحاب محمد احمد',
                style: TextStyle( fontSize: 20),
              ),
              Text(
                'تمام ما فى اى مشكلة',
                style: TextStyle(color: Colors.grey[700]),
              )
            ],
          ),
          //Spacer(),
          SizedBox(
            width:screenSize.width*0.05 ,
          ),
         const Padding(
            padding:  EdgeInsets.all(8.0),
            child:  Align(
              alignment: Alignment.topRight,
              child: CircleAvatar(
                radius: 20,
                backgroundImage: NetworkImage(
                    'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_960_720.png'),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

Widget blacklistbubble(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
  return InkWell(
    onTap: () {},
    child: Container(
      height: 60,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: const BorderRadius.all(Radius.circular(5)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
           SizedBox(
            width: screenSize.height*0.02,
          ),
          Container(
              
              decoration: const BoxDecoration(
                color: Kwhite,
                borderRadius: BorderRadius.all(Radius.circular(5)),
              ),
              child: IconButton(
                  onPressed: () {
                    blacklistdialog(context);
                  },
                  icon: Icon(Icons.delete_outline_rounded))),
          const Spacer(),
          const Text(
            'رحاب محمد احمد',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          //Spacer(),
           SizedBox(
            width: screenSize.width*0.03,
          ),
        const  Padding(
            padding:  EdgeInsets.all(8.0),
            child:  Align(
              alignment: Alignment.topRight,
              child: CircleAvatar(
                radius: 20,
                backgroundImage: NetworkImage(
                    'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_960_720.png'),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

void blacklistdialog(BuildContext context) => showDialog(
  
    // barrierDismissible: false,
    context: context,
    builder: (BuildContext context) {
       final screenSize = MediaQuery.of(context).size;
      return Dialog(
        backgroundColor: Kwhite,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                 SizedBox(
                  height: screenSize.height*0.02,
                ),
                const Icon(Icons.person),
                SizedBox(
                  height: screenSize.height*0.02,
                ),
                const Text(
                  'هل تريد ازاله الشخص من القائمة السوداء ؟',
                  style: TextStyle(fontSize: 15),
                ),
                SizedBox(
                  height: screenSize.height*0.03,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomButton(
                      buttonname: 'اغلاق ',
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      buttoncolor: Kwhite,
                      textcolor: Kblack,
                    ),
                     SizedBox(
                      width: screenSize.width*0.04,
                    ),
                    CustomButton(
                      buttonname: '  تأكيد',
                      onPressed: () {
                        Navigator.of(context)
                            .pushNamed(SpeacialRoutes.allchatsRoute);
                      },
                    ),
                  ],
                ),
                 SizedBox(
                  height: screenSize.height*0.03,
                )
              ]),
        ),
      );
    });
