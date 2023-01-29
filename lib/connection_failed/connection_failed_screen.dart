import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ConnectionFailedScreen extends StatefulWidget {
  const ConnectionFailedScreen({super.key});

  @override
  State<ConnectionFailedScreen> createState() => _ConnectionFailedScreenState();
}

class _ConnectionFailedScreenState extends State<ConnectionFailedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset('assets/images/19_Error.png',
          fit: BoxFit.cover,
          height: MediaQuery.of(context).size.height,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children:  [
              const Text('Connection Failed',
              style: TextStyle(
                color: Colors.black54,
                fontSize: 30,fontWeight: FontWeight.bold
              ),
              ),
              const SizedBox(height: 16),
             const Padding(
                padding: EdgeInsets.symmetric(vertical: 8,horizontal: 40),
                child: Text('Could not connect to the network, Please check & retry again',
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 18,
                ),
                textAlign: TextAlign.center,
                ),
              ),
             const SizedBox(height: 30),
              MaterialButton(onPressed: () {},
              padding: const EdgeInsets.all(16),
              child:  Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child:   Text("RETRY",
                style:  TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold
                )),
              ),
              color: const Color(0xff5ecb42),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
              ),const SizedBox(height: 100),
            ],
          )
        ],
      ),
    );
  }
}