import 'dart:io';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter_sns_form/src/app.dart';
import 'package:flutter_sns_form/src/pages/login.dart';
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
        'http://ec2-13-209-75-120.ap-northeast-2.compute.amazonaws.com/posts/missing/create/',
        data: formData,
      );

      print(response);

      if (response.statusCode == 201) {
        print("201입니다윤");
        // Uncomment the next lines if you want to navigate after a successful upload
        // Navigator.of(context).pushReplacement(
        //   MaterialPageRoute(
        //     builder: (context) => const App(),
        //   ),
        // );
      } else {
        print("400이에요");
      }
    } catch (e) {
      print("응 아예 서버로부터 값도 못받아옴 ㅅㄱ");
      print('Error: $e'); 
      print(imagePath);
    }
  }



/*
Future<dynamic> uploadImage(dynamic input,BuildContext context) async {
    print("사진을 서버에 업로드 합니다.");
    var dio = new Dio();
    try {
      dio.options.headers = {
      'Authorization': 'Bearer $token',
    };
      dio.options.contentType = 'multipart/form-data';
      dio.options.maxRedirects.isFinite;

      Response response = await dio.post(
        'http://ec2-13-209-75-120.ap-northeast-2.compute.amazonaws.com/post/missing/create/',
        data: input,
      );
      print('성공적으로 업로드했습니다');
      return response.data;
    } catch (e) {
      print(e);
    }
  }
*/















  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('사진 표시'),
        backgroundColor: Color.fromARGB(149, 51, 77, 143),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.file(File(imagePath)),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () async {
              String newImagePath = await _moveImageToExternalStorage();
              await uploadImage(File(newImagePath), context);
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromARGB(149, 51, 77, 143),
            ),
            child: Text('확인'),
          ),
        ],
      ),
    );
  }
}
