class Validationmixin {
  String validateEmail(String value){
    if(!value.contains('@')){
      return 'please enter the correct email id';
    }
    return null;
  }
  String validatePassword (String value){
    if(value.length<3){
      return 'password must be minimum 8 character';
    }
    return null;
  }
}