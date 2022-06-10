import 'package:http/http.dart' as http;
class CallApi {
    final String _url = 'http://mark.dbestech.com/api/';
    final String _imgUrl = 'http://mark.dbestech.com/uploads/';

    getImage() {
        return _imgUrl;
    }

    getArticleData(apuUrl) async{
         http.Response response = await http.get(
             Uri.parse(_url + apuUrl));

         try {
             if(response.statusCode == 200) {
                 return response;
             } else {
                 return 'failed';
             }
         } catch(e) {
             print(e);
             return 'failed';
         }
    }


}