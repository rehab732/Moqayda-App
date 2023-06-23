import 'dart:io';
import 'package:path/path.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:moqayda/utilities/app_color.dart';
class editphoto extends StatefulWidget {
  const editphoto({super.key});

  @override
  State<editphoto> createState() => _editphotoState();
}

class _editphotoState extends State<editphoto> {
  late PickedFile _image;
  final ImagePicker _picker = ImagePicker();
  @override
  Widget build(BuildContext context) {
    return  
   Center(
    child: Stack(
      children: <Widget>[
       Container(
        margin: EdgeInsets.symmetric(vertical: 30.0,horizontal: 30.0),
        
         child: const CircleAvatar(
            radius: 80.0,
           
            backgroundImage: NetworkImage('https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_960_720.png'),
          //   _image == null
          //  ? NetworkImage('https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_960_720.png')
          //  : FileImage(File(_image.path)),
          ),
       ),
        Positioned(
            bottom: 30.0,
            right:8.0,
            child: RawMaterialButton(
              elevation: 10,
              fillColor: Colors.grey[100],
              onPressed: () { 
                showDialog(
                  context: context,
                  builder: (BuildContext context){
                    return AlertDialog(
                      title: const Text("صورة البروفايل",style: TextStyle(color: Kblack,fontSize: 20),),
                      content: SingleChildScrollView(
                        child: ListBody(children: [
                          InkWell(
                            onTap: (){
                              takephoto(ImageSource.camera);
                            },
                            splashColor: Colors.red,
                            child: Row(children: const [
                              Icon(Icons.camera,color: KButtonColor,size: 20,),
                              SizedBox(width: 10,),
                              Text('الكاميرا',style: TextStyle(fontSize: 20,color: Kblack,fontWeight: FontWeight.bold),)
                            ]),
                          ),
                        const  SizedBox(height: 10,),
                          InkWell(
                            onTap: (){
                              takephoto(ImageSource.gallery);
                            },
                            splashColor: Colors.red,
                            child: Row(children: const [
                              Icon(Icons.photo,color: KButtonColor,size: 20,),
                              SizedBox(width: 10,),
                              Text('المعرض',style: TextStyle(fontSize: 20,color: Kblack,fontWeight: FontWeight.bold),)
                            ]),
                          ),
                         const  SizedBox(height: 10,),
                            InkWell(
                            onTap: (){
                            
                            },
                            splashColor: Colors.red,
                            child: Row(children: const [
                              Icon(Icons.delete,color: KButtonColor,size: 20,),
                              SizedBox(width: 10,),
                              Text('حذف',style: TextStyle(fontSize: 20,color: Kblack,fontWeight: FontWeight.bold),)
                            ]),
                          ),
                        ]),
                      ),

                    );
                  }

                );
               },
              child:   Icon(Icons.add_a_photo),
              shape: const CircleBorder(),
              padding:const EdgeInsets.all(15.0),
            )
            ),
            
      ],
    ),
  );
  }
  void takephoto(ImageSource source)async{
  final PickedFile = await _picker.getImage(source:source);
  setState(() {
    _image=PickedFile!;
  });
}
}


