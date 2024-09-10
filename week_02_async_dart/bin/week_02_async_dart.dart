import 'package:week_02_async_dart/week_02_async_dart.dart';

Future<void> main(List<String> arguments) async {
  // Get a random dog image
  const dogUrl = 'https://dog.ceo/api/breeds/image/random';
  var dogData = await getJson(dogUrl);
  print(dogData['message']);

  // TODO: fetch data from the breeds endpoint
}
