import 'dart:io';

class AdMobService{

  String getAdMobId(){
    if(Platform.isIOS){
      return 'ca-app-pub-1913754781691997~8480424041';
    }else if(Platform.isAndroid){
      return 'ca-app-pub-1913754781691997~4439013351';
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