import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'forgetPassword.dart';
import 'inscriptions.dart';
import 'dashboard.dart';
import 'package:rendez_vous/l10n/app_localizations.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  FocusNode _emailFocusNode = FocusNode();
  FocusNode _passwordFocusNode = FocusNode();
  bool _isChecked = false;
  @override
  void initState() {
    super.initState();
    _emailFocusNode.addListener(() {
      setState(() {}); // Rebuild to reflect focus changes
    });
    _passwordFocusNode.addListener(() {
      setState(() {}); // Rebuild to reflect focus changes
    });
  }

  @override
  void dispose() {
    _emailFocusNode.dispose();
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
            Text(
              AppLocalizations.of(context)?.translate('welcome_message') ??
                  'Bienvenue sur RENDEZ_VOUS!👋🏻 ',
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
            SizedBox(height: 2),
            Text(
              AppLocalizations.of(context)?.translate('login_prompt') ??
                  'Veuillez vous connecter afin d’accèder à votre espace ',
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
            SizedBox(height: 15),
            TextField(
              focusNode: _emailFocusNode,
              decoration: InputDecoration(
                labelText:
                    AppLocalizations.of(context)?.translate('email_or_phone') ??
                        'Email ou numéro de téléphone',
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
            TextField(
              focusNode: _passwordFocusNode,
              obscureText: true,
              decoration: InputDecoration(
                labelText:
                    AppLocalizations.of(context)?.translate('password') ??
                        'Password',
                labelStyle: TextStyle(
                  color: _passwordFocusNode.hasFocus
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  // mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Checkbox(
                      value: _isChecked,
                      onChanged: (bool? newValue) {
                        setState(() {
                          _isChecked = newValue ??
                              false; // Update the state variable when checkbox is clicked
                        });
                      },
                      activeColor: Colors.blue,
                    ),
                    // SizedBox(
                    //     width:
                    //         5), // Adjust spacing between the Checkbox and Text
                    Text(
                      AppLocalizations.of(context)?.translate('remember_me') ??
                          'Se souvenir de moi',
                    ),
                  ],
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ForgetPasswordPage()),
                    );
                  },
                  child: Text(
                    AppLocalizations.of(context)
                            ?.translate('forgot_password') ??
                        'Mot de passe oublié ?',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.blue,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 0.18,
                      height: 1.334,
                    ),
                  ),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DahboardPage()),
                );
              },
              child: Text(
                AppLocalizations.of(context)?.translate('login_connect') ??
                    'SE CONNECTER',
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
            Text(
              AppLocalizations.of(context)?.translate('no_account') ??
                  'Vous n’avez pas compte ?',
              style: TextStyle(
                fontSize: 14,
                color: Color.fromRGBO(76, 78, 100, 0.6),
                fontWeight: FontWeight.w500,
                letterSpacing: 0.18,
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => InscriptionPage()),
                );
              },
              child: Text(
                AppLocalizations.of(context)?.translate('create_account') ??
                    'Créez un compte',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.blue,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 0.18,
                ),
              ),
            ),
            Text(AppLocalizations.of(context)?.translate('or') ?? ""),
            SizedBox(height: 20),
            Container(
              width: MediaQuery.of(context).size.width *
                  0.5, // 80% of screen width
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  IconButton(
                    icon: FaIcon(
                      FontAwesomeIcons.facebook,
                      color: Color(0xFF1877F2), // Facebook's official color
                    ),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: FaIcon(
                      FontAwesomeIcons.twitter,
                      color: Color(0xFF1DA1F2), // Twitter's official color
                    ),
                    onPressed: () {},
                  ),
                  // IconButton(
                  //   icon: FaIcon(
                  //     FontAwesomeIcons.github,
                  //     color: Color(0xFF181717), // GitHub's official color
                  //   ),
                  //   onPressed: () {},
                  // ),
                  IconButton(
                    icon: FaIcon(
                      FontAwesomeIcons.googlePlus,
                      color: Color(0xFFDB4437), // Google+'s official color
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
