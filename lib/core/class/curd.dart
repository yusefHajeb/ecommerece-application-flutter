import 'dart:convert';
// import 'dart:core';
import 'package:dartz/dartz.dart';
import 'package:ecommerece/core/class/staterequest.dart';
// ignore: unused_import
import 'package:http/http.dart' as http;
import 'package:internet_connection_checker/internet_connection_checker.dart';

import '../functions/check_internet.dart';

// final bool = NetworkInfoImp(c).isConnected;
// use dartz to programing work "وظيفية" to get data by 2 state
// number one use to check state data example if didn't falure
// state tow is Map is same Json to convert Data and storage
// if state rsponse from http url databasre return the data fitch correct or did falure

class Curd {
  static NetworkInfoImp networkInfo =
      NetworkInfoImp(InternetConnectionChecker());
  Future<Either<StatusRequest, Map>> postData(String linkurl, Map data) async {
    // getResults();
    // var response;
    final http.Client client = http.Client();
    // response = await http.post(Uri.parse(linkurl), body: data);
    try {
      if (await networkInfo.isConnected) {
        // print("you in Curd ");
        // var response = await http.post(Uri.parse(linkurl), body: data);

        var response = await client.get(
          Uri.parse(linkurl),
        );

        print(
            " ============= $response One Condiation and ${response.statusCode}");
        if (response.statusCode == 200) {
          print("you in Curd ");
          Map responsebody = jsonDecode(response.body);
          print(responsebody);
          return Right(responsebody);
        } else {
          return const Left(StatusRequest.serverfailure);
        }
      } else {
        return const Left(StatusRequest.offlinefailure);
      }
    } catch (e) {
      print("You in Catch ===========$e");

      // print("you in Curd ");
      return const Left(StatusRequest.serverfailure);
    }
  }
}
