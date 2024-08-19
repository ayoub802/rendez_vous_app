import 'package:flutter/material.dart';

class CreditCardsPage extends StatefulWidget {
  @override
  _CreditCardsPageState createState() => _CreditCardsPageState();
}

class _CreditCardsPageState extends State<CreditCardsPage> {
  final TextEditingController _cardNumberController = TextEditingController();
  final TextEditingController _cardHolderController = TextEditingController();
  final TextEditingController _cardExpirationController =
      TextEditingController();
  final TextEditingController _cardCVCController = TextEditingController();
  final TextEditingController _billingAddressController =
      TextEditingController(); // Added new controller
  @override
  void initState() {
    super.initState();
    // Add listeners to update the UI whenever the text changes.
    _cardNumberController.addListener(() => setState(() {}));
    _cardHolderController.addListener(() => setState(() {}));
    _cardExpirationController.addListener(() => setState(() {}));
    _cardCVCController.addListener(() => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            _buildTitleSection(
                title: "Payment Details",
                subTitle: "How would you like to pay ?"),
            _buildCreditCard(
              color: Color(0xFF090943),
              cardNumber: _cardNumberController.text,
              cardHolder: _cardHolderController.text,
              cardExpiration: _cardExpirationController.text,
              cardCVC: _cardCVCController.text,
            ),
            SizedBox(
              height: 20,
            ),
            _buildInputField(_cardNumberController, 'Card Number'),
            _buildInputField(_cardHolderController, 'Card Holder'),
            _buildInputField(_cardExpirationController, 'Expiration Date'),
            _buildInputField(_cardCVCController, 'CVC', isNumber: true),
            SizedBox(
              height: 20,
            ),
            _buildInputField(_billingAddressController,
                'Billing Address'), // Added new input field
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }

  // Build the title section
  Column _buildTitleSection({@required title, @required subTitle}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 8.0, top: 16.0),
          child: Text(
            '$title',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0, bottom: 16.0),
          child: Text(
            '$subTitle',
            style: TextStyle(fontSize: 21, color: Colors.black45),
          ),
        )
      ],
    );
  }

  Widget _buildInputField(TextEditingController controller, String label,
      {bool isNumber = false}) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        labelText: label,
        border: OutlineInputBorder(),
      ),
      keyboardType: isNumber ? TextInputType.number : TextInputType.text,
    );
  }

  // Build the credit card widget
  Card _buildCreditCard(
      {@required color,
      @required cardNumber,
      @required cardHolder,
      @required cardExpiration,
      @required cardCVC}) {
    return Card(
      elevation: 4.0,
      color: color,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(14),
      ),
      child: Container(
        height: 200,
        padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 22.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            _buildLogosBlock(),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: Text(
                cardNumber.isEmpty ? '#### #### #### ####' : cardNumber,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 21,
                    fontFamily: 'CourrierPrime'),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                _buildDetailsBlock(
                  label: 'CARDHOLDER',
                  value: cardHolder.isEmpty ? 'Full Name' : cardHolder,
                ),
                _buildDetailsBlock(
                    label: 'VALID THRU',
                    value: cardExpiration.isEmpty ? 'MM/YY' : cardExpiration),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // Build the top row containing logos
  Row _buildLogosBlock() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Image.asset(
          "assets/LandingPage/contact_less.png",
          height: 20,
          width: 18,
        ),
        Image.asset(
          "assets/LandingPage/mastercard.png",
          height: 50,
          width: 50,
        ),
      ],
    );
  }

// Build Column containing the cardholder and expiration information
  Column _buildDetailsBlock({required String label, required String value}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          '$label',
          style: TextStyle(
              color: Colors.grey, fontSize: 9, fontWeight: FontWeight.bold),
        ),
        Text(
          '$value',
          style: TextStyle(
              color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
