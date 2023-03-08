import 'dart:convert';
import 'package:cookup/Const.dart';
import 'package:http/http.dart' as http;

Future<void> openai(String promt,int x) async {

  final apiUrl = 'https://api.openai.com/v1/completions';

  final headers = {
    'Content-Type': 'application/json',
    'Authorization': 'Bearer $OpenapiKey',
  };

  final data = {
    'model': 'text-davinci-003',
    'prompt': promt,
    "temperature": 0.6,
    "max_tokens": 150,
    "top_p": 1,
    "frequency_penalty": 1,
    "presence_penalty": 1
  };

  final response = await http.post(
    Uri.parse(apiUrl),
    headers: headers,
    body: jsonEncode(data),
  );

  if (response.statusCode == 200) {
    final result = jsonDecode(response.body);
    for(int i = 0 ;i<result['choices'].length;i++){
      String s1 = result['choices'][i]['text'].trim().replaceAll('.','');
      print(promt);
      print(s1);
      if(x==1){
        dishName = s1;
      }else if(x==2){
        totalProteins = s1;
      }else if(x==3){
        totalCarbs = s1;
      }else if(x==4){
        totalKcal = s1;
      }else if(x==5){
        totalFats = s1;
      }else if(x==6){
        about = s1;
      }
      else {
        instruction = s1;
      }
    }
  } else {
    print('Request failed with status: ${response.statusCode}.');
  }
}
Future<void> generateImage(String promt) async {
  final apiUrl = 'https://api.openai.com/v1/images/generations';
  final requestBody = {
    'prompt': promt,
    'n': 1,
    'size': '1024x1024'
  };

  final response = await http.post(
    Uri.parse(apiUrl),
    headers: {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $OpenapiKey'
    },
    body: json.encode(requestBody),
  );

  final responseData = json.decode(response.body);
  imageurl = responseData['data'][0]['url'];
  print(imageurl);


}

Future<void> openaiMain(String promt) async{
  await openai(promt,1);
  openai(aboutPromt, 6);
  openai(proteinsPromt,2);
  openai(cabsPromt,3);
  openai(kCalPromt,4);
  openai(fatsPromt,5);
  await openai(instructionPromt,0);
  await generateImage(dishName);

}
