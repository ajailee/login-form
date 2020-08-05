import 'package:flutter/material.dart';
import 'mixin.dart';
class login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
     return loginstate();
    throw UnimplementedError();
  }
}
class loginstate extends State<login> with Validationmixin{
  final formkey = GlobalKey<FormState>();

  String emailid='';
  String pass='';
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20.0),
      padding: EdgeInsets.all(20.0),
      child: Form(
          key: formkey,
          child: Column(
            children: <Widget>[
              email(),
              password(),
              Container(margin: EdgeInsets.all(20.0),),
              submit(),

            ],
      )
      ) );
    throw UnimplementedError();
  }
Widget email(){
  return TextFormField(
    keyboardType: TextInputType.emailAddress,
    decoration: InputDecoration(
      labelText: 'email',
      hintText: 'you@email.com',

    ),
    validator: validateEmail,
    onSaved: (String value){
      emailid=value;

    },
  );

}
Widget password(){
    return TextFormField(
      obscureText: true,
      decoration: InputDecoration(
        labelText: 'password',
        hintText: 'set a password',

      ),
      validator:validatePassword,
      onSaved: (String value){
        pass=value;
      },
    );

}
Widget submit(){
   return  Container( child:
       Row(children: <Widget>[
            RaisedButton(
               onPressed: (){
                 if(formkey.currentState.validate()){
                   formkey.currentState.save();
                 }
                 print('$emailid and $pass');
                 formkey.currentState.reset();
               },
              color: Colors.greenAccent,
             child: Text('submit')
             ),Container(margin: EdgeInsets.all(20.0),),
              reset()
   ],));
  }
Widget reset(){
    return RaisedButton(

      onPressed: ()
      {formkey.currentState.reset();},
        child: Text('Reset'),
    );
}
}
