import 'package:flutter/material.dart';
Widget getformfield(TextEditingController controller, String hinttext,
    {bool obsecure = false,
      String prefixtext,
      Icon prefixicon,
      TextInputType inputType ,
      IconButton suffixicon}) {
  return TextFormField(
    obscureText: obsecure,
    controller: controller,
    keyboardType: inputType,
    decoration: InputDecoration(
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
      hintText: hinttext,
      labelText: hinttext,
      prefixIcon: prefixicon,
      suffixIcon: suffixicon,
    ),
    validator: (value) {
      return value.isEmpty ? "$hinttext can not be blanck" : null;
    },
  );
}
Widget btn(Function function) {
  return RaisedButton(
     padding: EdgeInsets.only(left: 10, right: 10),
     shape: RoundedRectangleBorder(
         borderRadius: BorderRadius.circular(10)),
     color: Colors.green[400],
     hoverColor: Colors.grey,
     splashColor: Colors.green,
     elevation: 10.0,
     onPressed: function,
     child: Text(
       "REGISTER",
       style: TextStyle(
         color: Colors.white,
         fontSize: 16,
       ),
     ),
   );

 }
