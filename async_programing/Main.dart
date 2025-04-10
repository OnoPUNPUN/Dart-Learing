/* we use async programing to wait for something or a thing that we don't know it'll give
   error or not like problem of inter in our uni portal or facebook opeing screen or get 
   data from a website for all of them we use future, async, await*/

void main() async {
  // here async means block by block code run that's mean if a step succesful others will come. like smesters in our uni
  print("Hello");
  giveResultsAfter2Sce().then((val) {
    // this is waiting for two 2 sec but after all other oparations end to fix that we use await
    print(val);
  });
  final results =
      await giveResultsAfter2Sce(); // but this will always wait for 2 sec
  print(results);
  print("that peinted after two sec");
}

Future<String> giveResultsAfter2Sce() {
  return Future.delayed(Duration(seconds: 2), () async {
    // this will make this hey!!! wait for two sec to print
    return 'Hey!!!!!!!!';
  });
}
