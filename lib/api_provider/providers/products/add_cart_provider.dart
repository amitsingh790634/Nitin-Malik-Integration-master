import 'package:dio/dio.dart';

class AddProductCartProvider {
  Dio Client;
  AddProductCartProvider({required this.Client});

  addtocart({required String id}) async {
    Map body = {"product": id};
    try {
      print('add to cart');
      Response response = await Client.post('api/v1/cart', data: body);
      if (response.statusCode == 200) {
        print(response.data);
      } else {
        return Future.error(response.data["error"]);
      }
    } on DioError catch (e) {
      return Future.error(e.message);
    }
  }
}
