import 'package:flutter/material.dart';

void main() {
  runApp( pointsCounter());
}
class pointsCounter extends StatefulWidget {
  @override
  State<pointsCounter> createState() => _pointsCounterState();
}

class _pointsCounterState extends State<pointsCounter> {
  //const pointsCounter({Key? key}) : super(key: key);
  int teamAPoints = 0;

  int teamBPoints = 0;

  void addOnePoint(){
    "print('add one point')" ;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.orange,
            title: const Text('Points Counter'),
          ),
          body:
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    height: 500,
                    child: Column(
                      children: [
                        const Text(
                          'Team A',
                          style: TextStyle(
                          fontSize: 32,
                        ),
                        ),
                        Text(
                          '$teamAPoints',
                          style: const TextStyle(
                            fontSize: 150,
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.orange,
                            maximumSize: const Size(150, 50),
                          ),
                          onPressed: (){
                            setState(() {
                              teamAPoints++;
                            });
                            'print(teamAPoints)';
                          },
                            child: const Text(
                              'Add 1 Point',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                            ),
                            ),
                        ),
                         const SizedBox(
                          height: 16,
                        ),

                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.orange,
                            maximumSize: const Size(150, 50),
                          ),
                          onPressed: (){
                            setState(() {
                              teamAPoints +=2;
                            });
                          },
                          child: const Text('Add 2 Point',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        const SizedBox(height: 16,),

                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.orange,
                            maximumSize: const Size(150, 50),
                          ),
                          onPressed: (){
                            setState(() {
                              teamAPoints +=3;
                            });
                          },
                          child: const Text('Add 3 Point',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 11,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 250,
                  ),
                  const VerticalDivider(
                    color: Colors.grey,
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: 500,
                        child:Column(
                          children: [
                            const Text(
                              'Team B',
                              style: TextStyle(
                                fontSize: 32,
                              ),
                            ),
                            Text(
                              '$teamBPoints',
                              style: const TextStyle(
                                fontSize: 150,
                              ),
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.orange,
                                maximumSize: const Size(150, 50),
                              ),
                              onPressed: (){
                                setState(() {
                                  teamBPoints ++;
                                });
                              },
                              child: const Text('Add 1 Point',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 18,
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.orange,
                                maximumSize: const Size(150, 50),
                              ),
                              onPressed: (){
                                setState(() {
                                  teamBPoints +=2;
                                });
                              },
                              child: const Text('Add 2 Point',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            const SizedBox(
                             height: 16,
                           ),
                            SizedBox(
                              height: 100,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.orange,
                                  maximumSize: const Size(150, 50),
                                ),
                                onPressed: (){
                                  setState(() {
                                    teamBPoints +=3;
                                  });
                                },
                                child: const Text('Add 3 Point',
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
  height: 10,
),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.orange,
                  maximumSize: const Size(150, 50),
                ),
                onPressed: (){
                  setState(() {
                    teamAPoints = 0;
                    teamBPoints = 0;
                  });
                },
                child: const Text('Reset',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          )
      ),
    );
  }
}
