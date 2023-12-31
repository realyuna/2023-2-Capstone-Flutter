import 'dart:io';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:flutter_sns_form/src/pages/ai_result.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter_sns_form/src/app.dart';
import 'package:flutter_sns_form/src/pages/login.dart';


//void main() {
  //runApp(FigmaToCodeApp());
//}
/*

class MatchList extends StatelessWidget {
  final String imagePath;
  final String token = globalToken;

  MatchList({required this.imagePath});

  Future<String> _moveImageToExternalStorage() async {
    final appDir = await getDownloadsDirectory();
    final newImagePath =
        '${appDir!.path}/${DateTime.now().millisecondsSinceEpoch}.png';

    await File(imagePath).copy(newImagePath);

    return newImagePath;
    
  }

  Future<void> uploadImage(File file, BuildContext context) async {
    Dio dio = Dio();
    String fileName = file.path.split('/').last;
    dio.options.headers = {
      'Authorization': 'Bearer $token',
    };
    dio.options.contentType = 'multipart/form-data';
    FormData formData = FormData.fromMap({
      "image": await MultipartFile.fromFile(file.path, filename: fileName),
    });
    print("ㅇㅇㅇ");
    print(file.path);
    try {
      Response response = await dio.post(
        'http://ec2-3-39-24-207.ap-northeast-2.compute.amazonaws.com/posts/missing/create/',
        data: formData,
      );

      print(response);

      if (response.statusCode == 201) {
        print("201입니다윤");

        // Uncomment the next lines if you want to navigate after a successful upload
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) => AIResult(),
          ),
        );
      } else {
        print("400이에요");
      }
    } catch (e) {
      print("응 아예 서버로부터 값도 못받아옴 ㅅㄱ");
      print('Error: $e'); 
      print(imagePath);
    }
  }


  @override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      // Your existing app bar code
    ),
    body: FutureBuilder(
      future: uploadImage(File(imagePath)),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          // 서버 응답이 완료된 경우
          if (snapshot.hasError) {
            // 에러가 있는 경우
            return Center(
              child: Text('에러: ${snapshot.error}'),
            );
          } else {
            // 정상적인 응답을 받은 경우, 다음 페이지로 이동
            Map<String, dynamic> responseData = snapshot.data as Map<String, dynamic>;
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (context) => AIResult(responseData: responseData),
              ),
            );
            return Container(); // 이동 중이므로 빈 컨테이너 반환
          }
        } else {
          // 서버 응답을 기다리는 동안 로딩 표시
          return Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    ),
  );
}
*/