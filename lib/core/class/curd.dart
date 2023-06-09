import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:ecommerece/core/class/staterequest.dart';
import 'package:ecommerece/core/functions/cheackinternet.dart';
// ignore: unused_import
import 'package:http/http.dart' as http;

// use dartz to programing work "وظيفية" to get data by 2 state
// number one use to check state data example if didn't falure
// state tow is Map is same Json to convert Data and storage
// if state rsponse from http url databasre return the data fitch correct or did falure

class Curd {
  Future<Either<StateRequest, Map>> postData(String linkurl, Map data) async {
    try {
      if (await checkInternet()) {
        var response = await http.post(Uri.parse(linkurl), body: data);
        if (response.statusCode == 200 || response.statusCode == 201) {
          Map responsebody = jsonDecode(response.body);
          return Right(responsebody);
        } else {
          return const Left(StateRequest.serverfailure);
        }
      } else {
        return const Left(StateRequest.offlinefailure);
      }
    } catch (_) {
      return const Left(StateRequest.serverfailure);
    }
  }
}
