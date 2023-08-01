import 'package:flutter/material.dart';

class BmiResult extends StatelessWidget {
  //const BmiResult({ Key? key }) : super(key: key);
  final int result;
  final bool isMale;
  final int age;

  BmiResult({
    @required this.result,
    @required this.isMale,
    @required this.age,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.keyboard_arrow_left,
            
          )
        ),
        title: Text(
          'BMI Result',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Container(
          height: 300,
          width: 300
          ,
           decoration: BoxDecoration(color: Colors.black,
           borderRadius: BorderRadius.circular(10),
           ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                isMale? Center(
                  child: CircleAvatar(
                                    radius: 60,
                                    backgroundColor:
                                        isMale ? Colors.blue : Colors.white,
                                    child: CircleAvatar(
                                      backgroundColor: Colors.white,
                                      radius: 55,
                                      child: Image(
                                        image: AssetImage(
                                          'assets/images/images.jpeg',
                                        ),
                                        fit: BoxFit.fill,
                                        height: 75.0,
                                        width: 75.0,
                                      ),
                                    ),
                                  ),
                ): Center(
                  child: CircleAvatar(
                                    radius: 60,
                                    backgroundColor:
                                        isMale ? Colors.blue : Colors.pink,
                                    child: CircleAvatar(
                                      backgroundColor: Colors.white,
                                      radius: 55,
                                      child: Image(
                                        image: AssetImage(
                                          'assets/images/images.jpeg',
                                        ),
                                        fit: BoxFit.fill,
                                        height: 75.0,
                                        width: 75.0,
                                      ),
                                    ),
                                  ),
                ),
                                SizedBox(
                                  height: 15.0,
                                ),
                
                Text(
                  
                  'Gender : ${isMale?'Male':'Female'}',
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                  ),
                ),
                Text(
                  'Age : $age',
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                        color: Colors.white
                  ),
                ),
                Text(
                  'Result : $result',
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                        color: Colors.white
                  ),
                ),
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}