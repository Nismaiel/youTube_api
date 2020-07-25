import 'dart:io';

class AdMobService{

  String getAdMobId(){
    if(Platform.isIOS){
      return 'Your-Ios-ID';
    }else if(Platform.isAndroid){
      return 'Your-Android-Id';
    }
//return null;
  }
  String getBannerAddId(){
     if(Platform.isIOS){
       return 'ca-app-pub-1913754781691997/7093096856';
     }else if(Platform.isAndroid){
       return 'ca-app-pub-1913754781691997/7995114988';
     }
//     return null;
  }
}
