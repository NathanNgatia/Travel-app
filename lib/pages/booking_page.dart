import 'package:flutter/material.dart';

class BookingPage extends StatefulWidget {
  const BookingPage({super.key});

  @override
  State<BookingPage> createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> {
  bool isLoading = false;

  void _handleBooking() async {
    setState(() {
      isLoading = true;
    });

    await Future.delayed(Duration(seconds: 2));

    setState(() {
      isLoading = false;
    });

    // Show success message after booking
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Booking successful!')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Booking Page"),
      ),
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Text(
                "Welcome to the Booking Page!",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: isLoading ? null : _handleBooking,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepPurple,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: isLoading
                    ? CircularProgressIndicator(
                        valueColor:
                            AlwaysStoppedAnimation<Color>(Colors.white),
                      )
                    : Text(
                        'Book Now',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
