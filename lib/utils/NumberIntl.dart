import 'dart:ui';
import 'package:get/get.dart';

String engToBan(inputValue) {

  var strList = inputValue.toString().split('');
  List<String> returnList = [];

  for (var str in strList) {
    switch (str) {
      case "0":
        returnList.add("০");
        break;
      case "1":
        returnList.add("১");
        break;
      case "2":
        returnList.add("২");
        break;
      case "3":
        returnList.add("৩");
        break;
      case "4":
        returnList.add("৪");
        break;
      case "5":
        returnList.add("৫");
        break;
      case "6":
        returnList.add("৬");
        break;

      case "7":
        returnList.add("৭");
        break;
      case "8":
        returnList.add("৮");
        break;
      case "9":
        returnList.add("৯");
        break;
      default:
        returnList.add(str);
        break;
    }
  }
  return returnList.join("");
}

String digits(dynamic number) {
  String converted = engToBan(number);
  String output = Get.locale == const Locale('bn', 'BD') ? converted : number.toString();
  return output;
}

