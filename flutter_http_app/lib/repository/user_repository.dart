import 'package:dio/dio.dart';
import 'package:flutter_http_app/model/user.dart';

final dio = Dio(BaseOptions(baseUrl: "http://192.168.0.43:8000"));

// 두 가지의 책임 : 통신, 파싱
class UserRepository {
  User fetchUser(int id) {
    // 1. 통신 코드
    // 2. 통신으로 받은 결과적인 데이터 타입 - Map
    // 3. Map ㅡ> Object
    // 4. return Object
    return User(
        id: 1, username: "ssar", password: "1234", email: "ssar@nate.com");
  }

  List<User> fetchUserList() {
    // 1. 통신 코드
    // 2. 통신으로 받은 결과적인 데이터 타입 - Map
    // 3. Map ㅡ> Object
    // 4. return Object

    List<User> userList = [
      User(id: 1, username: "ssar", password: "1234", email: "ssar@nate.com"),
      User(id: 2, username: "cos", password: "1234", email: "cos@nate.com"),
      User(id: 3, username: "love", password: "1234", email: "love@nate.com")
    ];
    return userList;
  }
}

// import 'package:dio/dio.dart';
// import 'package:flutter_http_app/model/user.dart';
//
// final dio = Dio(
//     BaseOptions(
//         baseUrl: "http://192.168.0.20:8080"
//     )
// );
//
// class UserRepository {
//   Future<List<User>> fetchUserList_test() async {
//     Response<dynamic> response = await dio.get("/user");
//     print(response.data);
//
//     List<dynamic> bodyList = response.data as List<dynamic>;
//     List<User> userList = bodyList.map((e) => User.fromJson(e)).toList();
//
//     return userList;
//   }
//
//   Future<User> fetchUser_test(int id) async {
//     Response<dynamic> response =
//     await dio.get("/user/$id");
//     print(response.data);
//
//     Map<String, dynamic> body = response.data as Map<String, dynamic>;
//     print(body["username"]);
//
//     User user = User.fromJson(body);
//     return user;
//   }
// }
