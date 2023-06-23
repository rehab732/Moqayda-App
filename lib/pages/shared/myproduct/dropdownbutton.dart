import 'package:flutter/material.dart';
import 'package:dropdown_button2/dropdown_button2.dart';

class dropbutton extends StatefulWidget {
  dropbutton({
 
    Key? key,
  }) : super(key: key);

  @override
  State<dropbutton> createState() => _dropbuttonState();
}

class _dropbuttonState extends State<dropbutton> {

  final List<String> items = ['  العاب تعليمية ', ' العاب الكترونية', 'العاب  حركية'];
  String? Selected;

 

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return 
       DropdownButtonHideUnderline(
            child: DropdownButton2(
          items: items
              .map((item) => DropdownMenuItem<String>(
                  value: item,
                  child: Text(
                    item,
                  )))
              .toList(),
              value: Selected,
              onChanged: (value){
                setState(() {
                  Selected=value as String;
                });

              },icon: Icon(Icons.arrow_circle_down),
              // isDense: true,
              // isExpanded: true,
             dropdownMaxHeight: size.height*0.3,
             dropdownWidth: size.width*0.4,
            // hint: Text('$Selected'),

        ),
        
        );
    
  }
}
