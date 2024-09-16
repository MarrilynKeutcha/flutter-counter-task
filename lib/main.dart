import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Counter and Image Toggle',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // Counter value for Task 1
  int _counter = 0;

  // Boolean to track which image to show for Task 2
  bool _isFirstImage = true;

  // Paths to the images in the assets folder
  String _image1 = 'assets/image1.jpg';
  String _image2 = 'assets/image2.jpeg';

  // Function to increment the counter (Task 1)
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  // Function to toggle between two images (Task 2)
  void _toggleImage() {
    setState(() {
      _isFirstImage = !_isFirstImage;
    });
  }

  // Function to reset both the counter and the image (Graduate Task)
  void _reset() {
    setState(() {
      _counter = 0; // Reset the counter to 0
      _isFirstImage = true; // Reset to the first image
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter and Image Toggle'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Display the counter value
            Text(
              'Counter Value:',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              '$_counter',  // Display the current counter value
              style: Theme.of(context).textTheme.headlineMedium,  // Updated from headline4
            ),
            SizedBox(height: 20),

            // Button to increment the counter
            ElevatedButton(
              onPressed: _incrementCounter,
              child: Text('Increment Counter'),
            ),
            SizedBox(height: 20),

            // Display the current image (either image1 or image2)
            Image.asset(
              _isFirstImage ? _image1 : _image2,  // Toggle between the two images
              height: 200,
            ),
            SizedBox(height: 20),

            // Button to toggle between the images
            ElevatedButton(
              onPressed: _toggleImage,
              child: Text('Toggle Image'),
            ),
            SizedBox(height: 20),

            // Button to reset both the counter and the image
            ElevatedButton(
              onPressed: _reset,
              child: Text('Reset'),
            ),
          ],
        ),
      ),
    );
  }
}
