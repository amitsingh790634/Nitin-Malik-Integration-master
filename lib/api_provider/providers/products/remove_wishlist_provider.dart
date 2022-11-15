import 'package:dio/dio.dart';
import 'package:get/get.dart' as g;

class RemoveWishlistProvider {
  Dio client;
  RemoveWishlistProvider({required this.client});

  removeWishlist({required String id}) async {
    Map body = {"product": id};
    try {
      print(body);
      Response response =
          await client.put("/api/v1/remove/wishlist", data: body);
      g.Get.snackbar('Success', 'Product removed from wishlist Successfully');

      if (response.statusCode == 200) {
        print(response.data);
        //print(response.data);
        return null;
      }
      // if (response.statusCode == 400) {
      //   print(response.data);
      // }
      // if (response.statusCode == 401) {
      //   print(response.data);
      // }
      else {
        print(response.data);
        return Future.error(response.data["message"]);
      }
    } on DioError catch (e) {
      // print(e.response!.data);
      return Future.error(e.message);
    }
  }
}
