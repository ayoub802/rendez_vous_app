import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rendez_vous/l10n/app_localizations.dart';

class SecuriteTab extends StatefulWidget {
  @override
  _SecuriteTabState createState() => _SecuriteTabState();
}

class _SecuriteTabState extends State<SecuriteTab> {
  FocusNode _adressFocusNode = FocusNode();
  FocusNode _telephoneFocusNode = FocusNode();
  FocusNode _bioFocusNode = FocusNode(); // New FocusNode for bio
  FocusNode _moyenFocusNode = FocusNode(); // New FocusNode for bio
  FocusNode _specialieFocusNode = FocusNode(); // New FocusNode for bio
  FocusNode _list1FocusNode = FocusNode(); // New FocusNode for bio
  FocusNode _list2FocusNode = FocusNode(); // New FocusNode for bio
  FocusNode _passwordFocusNode = FocusNode();
  bool _isPasswordVisible = false;
  @override
  void initState() {
    super.initState();
    _adressFocusNode.addListener(() {
      setState(() {}); // Rebuild to reflect focus changes
    });
    _passwordFocusNode.addListener(() {
      setState(() {}); // Rebuild to reflect focus changes
    });

    _telephoneFocusNode.addListener(() {
      setState(() {}); // Rebuild to reflect focus changes
    });
    _bioFocusNode.addListener(() {
      setState(() {}); // Rebuild to reflect focus changes
    });
    _moyenFocusNode.addListener(() {
      setState(() {}); // Rebuild to reflect focus changes
    });
    _specialieFocusNode.addListener(() {
      setState(() {}); // Rebuild to reflect focus changes
    });
    _list1FocusNode.addListener(() {
      setState(() {}); // Rebuild to reflect focus changes
    });
    _list2FocusNode.addListener(() {
      setState(() {}); // Rebuild to reflect focus changes
    });
  }

  @override
  void dispose() {
    _adressFocusNode.dispose();
    _telephoneFocusNode.dispose();
    _passwordFocusNode.dispose();
    _bioFocusNode.dispose();
    _moyenFocusNode.dispose();
    _specialieFocusNode.dispose();
    _list1FocusNode.dispose();
    _list2FocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 16.0),
            TextField(
              focusNode: _passwordFocusNode,
              obscureText: !_isPasswordVisible,
              decoration: InputDecoration(
                labelText: localizations.translate('current_password'),
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
                suffixIcon: IconButton(
                  icon: Icon(
                    _isPasswordVisible
                        ? Icons.visibility_off
                        : Icons.visibility,
                  ),
                  onPressed: () {
                    setState(() {
                      _isPasswordVisible = !_isPasswordVisible;
                    });
                  },
                ),
              ),
            ),
            SizedBox(height: 15.0),
            TextField(
              focusNode: _telephoneFocusNode,
              obscureText: !_isPasswordVisible,
              decoration: InputDecoration(
                labelText: localizations.translate('new_password'),
                labelStyle: TextStyle(
                  color: _telephoneFocusNode.hasFocus
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
                suffixIcon: IconButton(
                  icon: Icon(
                    _isPasswordVisible
                        ? Icons.visibility_off
                        : Icons.visibility,
                  ),
                  onPressed: () {
                    setState(() {
                      _isPasswordVisible = !_isPasswordVisible;
                    });
                  },
                ),
              ),
            ),
            SizedBox(height: 15.0),
            TextField(
              focusNode: _moyenFocusNode,
              obscureText: !_isPasswordVisible,
              decoration: InputDecoration(
                labelText: localizations.translate('confirm_password'),
                labelStyle: TextStyle(
                  color: _moyenFocusNode.hasFocus
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
                suffixIcon: IconButton(
                  icon: Icon(
                    _isPasswordVisible
                        ? Icons.visibility_off
                        : Icons.visibility,
                  ),
                  onPressed: () {
                    setState(() {
                      _isPasswordVisible = !_isPasswordVisible;
                    });
                  },
                ),
              ),
            ),
            SizedBox(height: 20.0), // Space between the button and divider
            Divider(
              color: Color(0xFFe9e9ec), // Color of the divider
              thickness: 1.0, // Thickness of the divider
            ),
            SizedBox(height: 1.0),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.key,
                        size: 25,
                        color: Color(0xff636578),
                      ),
                      SizedBox(width: 15.0),
                      Text(
                        localizations.translate('two_factor_authentication') ??
                            "",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff636578)),
                      ),
                    ],
                  ),
                  SizedBox(height: 25),
                  Container(
                    padding: EdgeInsets.all(
                        15), // You can adjust the padding to fit your design
                    decoration: BoxDecoration(
                      color: Color(
                          0xFFEDEDFF), // Hex color code for the background
                      borderRadius: BorderRadius.circular(
                          8), // Applies rounded corners with a radius of 8
                    ),
                    child: Icon(
                      Icons.lock_outline,
                      size: 30,
                      color: Colors.blue,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    localizations.translate('two_factor_not_enabled') ?? "",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    localizations.translate('two_factor_description') ?? "",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.grey[600],
                    ),
                  ),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {
                // Handle appointment scheduling here
              },
              child: Text(localizations.translate('modify')!.toUpperCase(),
                  style: TextStyle(
                    fontFamily:
                        'Inter, sans-serif, -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, sans-serif, "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol"',
                    fontWeight: FontWeight.w500,
                    fontSize: 15, // 0.9375rem converted to pixels
                    letterSpacing: 0.4,
                    color: Colors.white, // color: #FFF;
                    height: 1,
                  )),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                minimumSize: Size(double.infinity, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8), // border-radius: 8px;
                ),
                padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
                textStyle: TextStyle(fontSize: 16),
              ),
            ),
            SizedBox(height: 15.0),
            ElevatedButton(
              onPressed: () {
                // Handle appointment scheduling here
              },
              child: Text(localizations.translate('cancel')!.toUpperCase(),
                  style: TextStyle(
                    fontFamily:
                        'Inter, sans-serif, -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, sans-serif, "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol"',
                    fontWeight: FontWeight.w500,
                    fontSize: 15, // 0.9375rem converted to pixels
                    letterSpacing: 0.4,
                    color: Color(0xff6D788D), // color: #FFF;
                    height: 1,
                  )),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                elevation: 0,
                minimumSize: Size(double.infinity, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8), // border-radius: 8px;
                  side: BorderSide(
                    color: Color.fromRGBO(109, 120, 141, 0.5), // Border color
                    width: 1.0, // Border width
                  ),
                ),
                padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
                textStyle: TextStyle(fontSize: 16),
              ),
            ),
            SizedBox(height: 25.0),
          ],
        ),
      ),
    );
    // Padding(
  }
}
