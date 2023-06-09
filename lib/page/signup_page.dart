// 회원가입 페이지
import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  TextEditingController firstNameController = TextEditingController();  // firstNameController.text : 입력받은 성 값
  TextEditingController lastNameController = TextEditingController();   // lastNameController.text : 입력받은 이름 값
  TextEditingController signupIdController = TextEditingController();   // signupIdController.text : 입력받은 id 값
  TextEditingController signupPwController = TextEditingController();   // signupPwController.text : 입력받은 pw 값
  TextEditingController checkPwController = TextEditingController();    // checkPwController.text : 입력받은 pw재확인 값
  TextEditingController emailController = TextEditingController();      // emailController.text : 입력받은 이메일 값
  TextEditingController birthdayController = TextEditingController();   // birthdayController.text : 입력받은 생년월일 값

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('회원가입'),
      ),
      body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    controller: firstNameController,
                    decoration: InputDecoration(
                      labelText: '성',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: TextFormField(
                    controller: lastNameController,
                    decoration: InputDecoration(
                      labelText: '이름',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.0),
            SizedBox(height: 8.0),
            TextField(
              controller: signupIdController,
              decoration: InputDecoration(
                labelText: '아이디',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20.0),
            SizedBox(height: 8.0),
            TextField(
              controller: signupPwController,
              decoration: InputDecoration(
                labelText: '비밀번호',
                border: OutlineInputBorder(),
              ),
              obscureText: true,
            ),
            SizedBox(height: 20.0),
            SizedBox(height: 8.0),
            TextField(
              controller: checkPwController,
              decoration: InputDecoration(
                labelText: '비밀번호 확인',
                border: OutlineInputBorder(),
              ),
              obscureText: true,
            ),
            SizedBox(height: 20.0),
            SizedBox(height: 8.0),
            TextField(
              controller: emailController,
              decoration: InputDecoration(
                labelText: '이메일',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20.0),
            SizedBox(height: 8.0),
            TextField(
              controller: birthdayController,
              decoration: InputDecoration(
                labelText: '생년월일',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 50.0),
            ElevatedButton(
              onPressed: () {
                // 회원가입 버튼이 눌렸을 때 실행할 코드
              },
              style: ElevatedButton.styleFrom(
                primary: Theme.of(context).primaryColor, // 버튼의 배경색
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20), // 버튼의 모서리를 둥글게 설정
                ),
                minimumSize: Size(double.infinity, 50), // 버튼의 최소 크기를 설정
              ),
              child: Text('회원가입'),
            ),
          ],
        ),
      ),
      )
    );
  }
}
