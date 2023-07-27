class suramodel{
  String name;
  int index;
  suramodel(this.name,this.index);
}
class bookmodel{
  static String? name='';
  static String? aya='';
  static void get(String one,String two){
    name=one;
    aya=two;
  }
  static String? gettingname(){
    return name;
  }
  static String? gettingayat(){
    return aya;
  }
}
