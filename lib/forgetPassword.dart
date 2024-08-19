import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'login_screen.dart';

class ForgetPasswordPage extends StatefulWidget {
  @override
  _ForgetPasswordPageState createState() => _ForgetPasswordPageState();
}

class _ForgetPasswordPageState extends State<ForgetPasswordPage> {
  FocusNode _nomFocusNode = FocusNode();
  FocusNode _emailFocusNode = FocusNode();
  FocusNode _vousetesFocusNode = FocusNode();
  FocusNode _passwordFocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _nomFocusNode.addListener(() {
      setState(() {}); // Rebuild to reflect focus changes
    });
    _emailFocusNode.addListener(() {
      setState(() {}); // Rebuild to reflect focus changes
    });
    _vousetesFocusNode.addListener(() {
      setState(() {}); // Rebuild to reflect focus changes
    });
    _passwordFocusNode.addListener(() {
      setState(() {}); // Rebuild to reflect focus changes
    });
  }

  @override
  void dispose() {
    _nomFocusNode.dispose();
    _emailFocusNode.dispose();
    _vousetesFocusNode.dispose();
    _passwordFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Align(
              alignment: Alignment.centerLeft, // Aligns the text to the left
              child: Text(
                'Mot de passe oublié ? 🔒',
                style: TextStyle(
                  fontFamily:
                      'Inter, sans-serif, -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, sans-serif, "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol"',
                  fontSize: 24,
                  color: Color.fromRGBO(76, 78, 100, 0.87),
                  fontWeight: FontWeight.w500,
                  letterSpacing: 0.18,
                  height: 1.334,
                ),
              ),
            ),
            SizedBox(height: 2),
            Align(
              alignment: Alignment.centerLeft, // Aligns the text to the left
              child: Text(
                'Entrez votre email et nous vous enverrons dans quelques instants les instructions pour renouveller votre email',
                style: TextStyle(
                  fontFamily:
                      'Inter, sans-serif, -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, sans-serif, "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol"',
                  fontSize: 14,
                  color: Color.fromRGBO(76, 78, 100, 0.6),
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.15,
                  height: 1.4,
                ),
              ),
            ),
            SizedBox(height: 15),
            TextField(
              focusNode: _emailFocusNode,
              decoration: InputDecoration(
                labelText: 'Email',
                labelStyle: TextStyle(
                  color: _emailFocusNode.hasFocus
                      ? Colors.blue // Color when focused
                      : Colors.grey, // Color when not focused
                ),
                contentPadding: EdgeInsets.only(left: 15, top: 19, bottom: 19),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(color: Color(0xFFe5e7eb)),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(color: Colors.white),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(color: Colors.blue),
                ),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                'ENVOYER',
                style: TextStyle(
                  fontFamily:
                      'Inter, sans-serif, -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, sans-serif, "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol"',
                  fontWeight: FontWeight.w500,
                  fontSize: 15, // 0.9375rem converted to pixels
                  letterSpacing: 0.4,
                  color: Colors.white, // color: #FFF;
                  height: 1.5, // line-height: 1.75;
                ),
              ),
              style: ElevatedButton.styleFrom(
                minimumSize: Size(
                    double.infinity, 50), // min-width: 64px, height set to 50
                padding: EdgeInsets.symmetric(
                    vertical: 8, horizontal: 22), // padding: 8px 22px;
                backgroundColor: Colors.blue, // background-color: #666CFF;
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8), // border-radius: 8px;
                ),
                shadowColor:
                    Color.fromRGBO(76, 78, 100, 0.2), // Adjust shadow color
                elevation: 3, // Corresponding to the box-shadow
              ).copyWith(
                alignment: Alignment
                    .center, // align-items: center, justify-content: center
                tapTargetSize: MaterialTapTargetSize
                    .shrinkWrap, // Removes additional padding around the button
                side: MaterialStateProperty.all(
                    BorderSide.none), // border: 0; border-color: transparent;
                textStyle: MaterialStateProperty.all(TextStyle(
                  textBaseline: TextBaseline.alphabetic,
                )),
              ),
            ),
            SizedBox(height: 20),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                );
              },
              child: Row(
                mainAxisSize: MainAxisSize
                    .min, // Ensures the Row takes up only as much space as it needs
                children: [
                  Icon(
                    Icons.chevron_left, // Left arrow icon
                    size: 25.0, // Size of the icon
                    color: Colors
                        .blue, // Color of the icon, matching the text color
                  ),
                  SizedBox(
                      width: 5), // Adds a small space between the icon and text
                  Text(
                    'Retour à la connexion',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.blue,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 0.18,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
