import 'package:flutter/material.dart';
import 'package:rendez_vous/VoirLaFicheScreen.dart'; // Import the new screen

class DoctorCard extends StatelessWidget {
  final String name;
  final String specialty;
  final String availability;
  final Color availabilityColor;
  final String address;
  final String imagePath;

  const DoctorCard({
    Key? key,
    required this.name,
    required this.specialty,
    required this.availability,
    required this.availabilityColor,
    required this.address,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
          maxHeight: 380.0, // Maximum height for the card
          maxWidth: double.infinity,
          minWidth: double.infinity),
      child: Card(
        margin: EdgeInsets.all(8.0),
        color: Colors.white,
        elevation: 0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 160.0, // Height for the image
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xFFf4f4f5),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12),
                    topRight: Radius.circular(12)), // Border radius
              ),
              child: Container(
                height: 10.0, // Height for the image
                child: Image.asset(
                  imagePath,
                  // fit: BoxFit.cover, // Ensures the image covers the container
                ),
              ),
            ),
            SizedBox(height: 8.0),
            Container(
              height: 20.0, // Height for the image
              width: 20,

              decoration: BoxDecoration(
                  color: availabilityColor,
                  borderRadius: BorderRadius.all(Radius.circular(50))),
            ),
            SizedBox(height: 8.0),
            Text(
              '$name - $specialty',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                color: Color.fromRGBO(76, 78, 100, 0.87),
                fontSize: 20,
                letterSpacing: 0.15,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              availability,
              style: TextStyle(
                color: availabilityColor,
                fontWeight: FontWeight.w500,
                fontSize: 16,
                letterSpacing: 0.15,
              ),
            ),
            SizedBox(height: 8.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                address,
              ),
            ),
            SizedBox(height: 12.0),
            ElevatedButton(
              onPressed: () {
                // Handle button press
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => VoirLaFicheScreen()),
                );
              },
              style: ElevatedButton.styleFrom(
                minimumSize: Size(200, 50), // min-width: 64px, height set to 50
                padding: EdgeInsets.symmetric(
                    vertical: 8, horizontal: 22), // padding: 8px 22px;
                backgroundColor: Colors.blue, // background-color: #666CFF;
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0), // border-radius: 8px;
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
              child: Text(
                'VOIR LA FICHE',
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
            ),
          ],
        ),
      ),
    );
  }
}
