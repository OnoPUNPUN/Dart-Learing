import 'package:http/http.dart'
    as http; // this is package to fect data from the wensiter
import 'dart:convert'; // the package to convert data from web as we wnat

void main() async {
  var url = Uri.https('jsonplaceholder.typicode.com', 'users/1');
  // users/1 jsonplaceholder.typicode.com

  try {
    final res = await http.get(url); // it'll wait for all data to collect
    //print(res.body); // we are printing the body of the website but all of this is string wen need it as     map to get data from the website

    print(
      jsonDecode(res.body)['name'],
    ); // this will convert the json to map I can fect the data i want form there by using key.
  } catch (e) {
    print(
      "something went wrong",
    ); // we used try cath what will happen if user doesn't have internet that's why to handle the error
  }
}
