// ignore: camel_case_types
class validation {
   String? validat(String? input){
    if(input!.isEmpty||input.length>5){
      return null ;
    }
    return 'invalid value';
  }

   String? validat1(String? input){
    if(input!.isEmpty){
      return 'erorr' ;
    }
    return null;
  }
}