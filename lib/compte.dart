import 'package:flutter/material.dart';
import 'package:rendez_vous/widget/CompteTab.dart';
import 'package:rendez_vous/widget/SecuriteTab.dart';
import 'package:rendez_vous/widget/NotificationTab.dart';
import 'package:rendez_vous/widget/PaimentTab.dart';

class CustomTab extends StatelessWidget {
  final String text;
  final IconData icon;

  const CustomTab({Key? key, required this.text, required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Row(
        mainAxisSize:
            MainAxisSize.min, // Ensures the Row does not take up extra space
        children: <Widget>[
          Icon(
            icon,
            // color: Colors.blue,
            size: 13,
          ), // Adjust icon color as needed
          SizedBox(width: 4.0), // Space between the icon and text
          Text(
            text,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 11),
          ),
        ],
      ),
    );
  }
}

class CompteScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4, // Number of tabs
      child: Scaffold(
        appBar: AppBar(
          title: Text('Compte'),
          automaticallyImplyLeading: false,

          bottom: TabBar(
            labelColor: Colors.blue, // Color for selected tab
            unselectedLabelColor:
                Color(0xFF9495a2), // Color for unselected tabs
            indicatorColor: Colors.blue, // Color for the tab indicator
            indicatorWeight: 3.0, // Thickness of the tab indicator
            tabs: [
              CustomTab(text: 'Compte', icon: Icons.search),
              CustomTab(text: 'Securité', icon: Icons.lock_open),
              CustomTab(text: 'Notifications', icon: Icons.notifications),
              CustomTab(text: 'Paiment', icon: Icons.euro),
            ],
          ),
          backgroundColor: Colors.white, // Background color of the AppBar
        ),
        body: TabBarView(
          children: [
            CompteTab(), // First tab's content
            SecuriteTab(), // Second tab's content
            NotificationTab(), // Third tab's content
            PaimentTab(), // Third tab's content
          ],
        ),
      ),
    );
  }
}

class CalendrierTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Content for Calendrier'));
  }
}

class AvisTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Card(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0), // Rounded corners
        ),
        margin: EdgeInsets.all(20.0), // Margin around the card
        child: Padding(
          padding: const EdgeInsets.all(20.0), // Padding inside the card
          child: Column(
            mainAxisSize: MainAxisSize.min, // To make the card wrap its content
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment
                    .spaceBetween, // Aligns children across the main axis
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment
                          .start, // Aligns children to the start of the cross axis
                      children: [
                        Text(
                          'Congratulations John! 🎉',
                          style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF000000)),
                        ),
                        SizedBox(
                            height: 8.0), // Space between the text elements
                        Text(
                          'Praeternitto iluc transiturus quod quidam per ampla spatia urbis subversasque silices sine periculi metu properantes equos velut publicos signatis quod dicitur calceis agitant.',
                          style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF4c4e64ad),
                          ),
                        ),
                      ],
                    ),
                  ),
                  CircleAvatar(
                    radius: 24.0, // Size of the avatar
                    backgroundImage: NetworkImage(
                        'https://i.imgur.com/f0bKfLs.jpg'), // Dummy image URL, replace with actual
                  ),
                ],
              ),
              SizedBox(height: 20.0), // Space between the text and the button
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  'PRENDRE RENDEZ-VOUS',
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
                    borderRadius:
                        BorderRadius.circular(8), // border-radius: 8px;
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
              SizedBox(height: 20.0),
              Row(
                mainAxisAlignment:
                    MainAxisAlignment.center, // Center align the icons
                children: List.generate(
                    5,
                    (index) => Icon(Icons.star,
                        color: Colors.blue)), // Generates 5 star icons
              )
            ],
          ),
        ),
      ),
    );
  }
}
