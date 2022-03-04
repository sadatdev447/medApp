import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  bool charging = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 30,),
              Text('Toggle Charging', style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.redAccent
              )),
              const SizedBox(height: 20,),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        charging = true;
                      });
                    },
                    child: Column(
                      children: [
                        Text('START', textAlign: TextAlign.center,style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12
                        )),
                        Container(
                          margin: EdgeInsets.only(top: 2),
                          decoration: BoxDecoration(
borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                              color: Colors.black,
                              width: 1
                            ),
                          ),
                          padding: const EdgeInsets.all(6),
                          child: Icon(Icons.flash_on, size: 34, color: charging ? Colors.red : Colors.black,),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 6,),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        charging = false;
                      });
                    },
                    child: Column(
                      children: [
                        Text('STOP', textAlign: TextAlign.center,style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12
                        )),
                        Container(
                          margin: EdgeInsets.only(top: 2),
                          decoration: BoxDecoration(
borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                              color: Colors.black,
                              width: 1
                            ),
                          ),
                          padding: const EdgeInsets.all(6),
                          child: Icon(Icons.flash_off, size: 34, color: !charging ? Colors.red : Colors.black,),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30,),
              Text('New Log Entry', style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.redAccent
              )),
              const SizedBox(height: 8,),
              Row(
                children: ['25', '50', '75', '80', '100'].map((e) => GestureDetector(
                  onTap: () {
                    setState(() {
                      charging = true;
                    });
                  },
                  child: Container(
                    margin: EdgeInsets.only(top: 2),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                          color: Colors.black,
                          width: 1
                      ),
                    ),
                    padding: EdgeInsets.only(left: 8, right: 8, bottom: e == '100' ? 12 : 8, top: e == '100' ? 12 : 8),
                    child: e== '80' ? Icon(Icons.cell_wifi) : Text(e, style: TextStyle(fontSize: e == '100' ? 14 : 20, color: charging ? Colors.red : Colors.black, fontWeight: e == '100' ? FontWeight.bold : null)),
                  ),
                )).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
