import 'dart:io';

class AdMobService{

  String getAdMobId(){
    if(Platform.isIOS){
      return 'IOS-App-ID';
    }else if(Platform.isAndroid){
      return 'Android-App-Id';
    }
return null;
  }
  String getBannerAddId(){
     if(Platform.isIOS){
       return 'Ios-Banner-ID';
     }else if(Platform.isAndroid){
       return 'android-Panner-Id';
     }
     return null; 
  }
}