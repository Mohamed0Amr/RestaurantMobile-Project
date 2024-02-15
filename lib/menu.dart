// import 'package:angz_talbk/survey.dart';
import 'package:angz_talbk/survey.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

final RxInt total = 0.obs;
String? checked = null;
var counter = 0.obs;
List<RxInt> counterList = List.generate(25, (index) => 0.obs);
List<RxBool> addList = List.generate(25, (index) => false.obs);
RxBool isAdded = false.obs; // Track whether add icon is clicked

class menu extends StatelessWidget {
  final String name;

  const menu({Key? key, required this.name}) : super(key: key);

  int addTotal(int x) {
    total.value = total.value + x;
    return total.value;
  }

  int subTotal(int y) {
    if (total.value - y > 0) {
      total.value = total.value - y;
    } else {
      total.value = 0;
    }
    return total.value;
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black, // Set the desired color for the back icon
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/Spoon & Fork-logos_black.png'),
                  scale: 3,
                  alignment: Alignment.bottomCenter)),
        ),
      ),

      body: ListView(
        children: [
          Column(
            children: [
              SizedBox(height:20),
              Text(
                'Hello ${name}\n', // Use the name in the Text widget
                style: TextStyle(fontSize: 24 , fontWeight: FontWeight.bold ),
              ),
              // first row in two plates
              Padding(

                padding: EdgeInsets.only(left: screenWidth * 0.05),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Container(
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.only(left: 100),
                              child: IconButton(
                                icon: Icon(Icons.add_circle),
                                color: Colors.green,
                                onPressed: () {
                                  ++counterList[0].value;
                                  addTotal(180);
                                  addList[0].value = true;
                                },
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: screenWidth * 0.23 , top: screenWidth * 0.0826),
                              child: Obx(() {
                                return IconButton(
                                  icon: Icon(Icons.restore_from_trash_outlined),
                                  color: counterList[0].value > 0
                                      ? Colors.red
                                      : Colors.grey,
                                  // onPressed: null,
                                  onPressed: counterList[0].value > 0
                                      ? () {
                                    subTotal(180);
                                    --counterList[0].value;
                                  }
                                      :null,
                                );
                              }),
                            ),
                          ],
                        ),
                        height: 130,
                        width: 124,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/plate2.png'),
                            )),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: screenWidth * 0.2),
                      child: Container(
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.only(left: 100),
                              child: IconButton(
                                icon: Icon(Icons.add_circle),
                                color: Colors.green,
                                onPressed: () {
                                  ++counterList[1].value;
                                  addTotal(195);
                                  addList[1].value = true;
                                },
                              ),
                            ),
                            Container(
                               padding: EdgeInsets.only(left: screenWidth * 0.23 , top: screenWidth * 0.0826),
                              child: Obx(() {
                                return IconButton(
                                  icon: Icon(Icons.restore_from_trash_outlined),
                                  color: counterList[1].value > 0
                                      ? Colors.red
                                      : Colors.grey,
                                  // onPressed: null,
                                  onPressed: counterList[1].value > 0
                                      ? () {
                                    subTotal(195);
                                    --counterList[1].value;
                                  }
                                      :null,
                                );
                              }),
                            ),
                          ],
                        ),
                        height: 130,
                        width: 124,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/kobe.png'),
                            )),
                      ),
                    ),
                  ],
                ),
              ),
              // ------------------

              // The price

              Padding(
                padding: EdgeInsets.only(left: screenWidth * 0.02),
                child: Row(
                  children: [
                    Container(
                    padding: EdgeInsets.only(left: screenWidth * 0.15),
                    child: Container(
                    child: Text(
                      'Plate Kobe\n180',
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                    Container(
                    padding: EdgeInsets.only(left: screenWidth * 0.35),
                    child: Container(
                    child: Text('Chicken\n195', textAlign: TextAlign.center),
                  ),
                ),
                ],
                ),
              ),
              // -------------------------------------------------
              // Second row
              Padding(
                padding: EdgeInsets.only(top: screenWidth * 0.02),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: screenWidth * 0.1),
                      child: Container(
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.only(left: 100),
                              child: IconButton(
                                icon: Icon(Icons.add_circle),
                                color: Colors.green,
                                onPressed: () {
                                  ++counterList[2].value;
                                  addTotal(120);
                                  addList[2].value = true;
                                },
                              ),
                            ),
                            Container(
                               padding: EdgeInsets.only(left: screenWidth * 0.23 , top: screenWidth * 0.0826),
                              child: Obx(() {
                                return IconButton(
                                  icon: Icon(Icons.restore_from_trash_outlined),
                                  color: counterList[2].value > 0
                                      ? Colors.red
                                      : Colors.grey,
                                  // onPressed: null,
                                  onPressed: counterList[2].value > 0
                                      ? () {
                                    subTotal(120);
                                    --counterList[2].value;
                                  }
                                      :null,
                                );
                              }),
                            ),
                          ],
                        ),
                        height: 130,
                        width: 124,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/fubuoka.png'),
                            )),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: screenWidth * 0.2),
                      child: Container(
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.only(left: 100),
                              child: IconButton(
                                icon: Icon(Icons.add_circle),
                                color: Colors.green,
                                onPressed: () {
                                  ++counterList[3].value;
                                  addTotal(100);
                                  addList[3].value = true;
                                },
                              ),
                            ),
                            Container(
                               padding: EdgeInsets.only(left: screenWidth * 0.23 , top: screenWidth * 0.0826),
                              child: Obx(() {
                                return IconButton(
                                  icon: Icon(Icons.restore_from_trash_outlined),
                                  color: counterList[3].value > 0
                                      ? Colors.red
                                      : Colors.grey,
                                  // onPressed: null,
                                  onPressed: counterList[3].value > 0
                                      ? () {
                                    subTotal(100);
                                    --counterList[3].value;
                                  }
                                      :null,
                                );
                              }),
                            ),
                          ],
                        ),
                        height: 130,
                        width: 124,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/kyoto.png'),
                            )),
                      ),
                    ),
                  ],
                ),
              ),
              // the price
              Padding(
                padding: EdgeInsets.only(left: screenWidth * 0.02),
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: screenWidth * 0.15),
                      child: Container(
                        child: Text(
                          'Plate Kobe\n180',
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: screenWidth * 0.35),
                      child: Container(
                        child: Text('Chicken\n195', textAlign: TextAlign.center),
                      ),
                    ),
                  ],
                ),
              ),
              // --------------------------------------------
              // Third row
              Padding(
                padding: EdgeInsets.only(top: screenWidth * 0.02),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: screenWidth * 0.1),
                      child: Container(
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.only(left: 100),
                              child: IconButton(
                                icon: Icon(Icons.add_circle),
                                color: Colors.green,
                                onPressed: () {
                                  ++counterList[4].value;
                                  addTotal(150);
                                  addList[4].value = true;
                                },
                              ),
                            ),
                            Container(
                               padding: EdgeInsets.only(left: screenWidth * 0.23 , top: screenWidth * 0.0826),
                              child: Obx(() {
                                return IconButton(
                                  icon: Icon(Icons.restore_from_trash_outlined),
                                  color: counterList[4].value > 0
                                      ? Colors.red
                                      : Colors.grey,
                                  // onPressed: null,
                                  onPressed: counterList[4].value > 0
                                      ? () {
                                    subTotal(150);
                                    --counterList[4].value;
                                  }
                                      :null,
                                );
                              }),
                            ),
                          ],
                        ),
                        height: 130,
                        width: 124,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/nara.png'),
                            )),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: screenWidth * 0.2),
                      child: Container(
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.only(left: 100),
                              child: IconButton(
                                icon: Icon(Icons.add_circle),
                                color: Colors.green,
                                onPressed: () {
                                  ++counterList[5].value;
                                  addTotal(200);
                                  addList[5].value = true;
                                },
                              ),
                            ),
                            Container(
                               padding: EdgeInsets.only(left: screenWidth * 0.23 , top: screenWidth * 0.0826),
                              child: Obx(() {
                                return IconButton(
                                  icon: Icon(Icons.restore_from_trash_outlined),
                                  color: counterList[5].value > 0
                                      ? Colors.red
                                      : Colors.grey,
                                  // onPressed: null,
                                  onPressed: counterList[5].value > 0
                                      ? () {
                                    subTotal(200);
                                    --counterList[5].value;
                                  }
                                      :null,
                                );
                              }),
                            ),
                          ],
                        ),
                        height: 130,
                        width: 124,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/nogaya.png'),
                            )),
                      ),
                    ),
                  ],
                ),
              ),
              // the price
              Padding(
                padding: EdgeInsets.only(left: screenWidth * 0.02),
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: screenWidth * 0.15),
                      child: Container(
                        child: Text(
                          'Plate Kobe\n180',
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: screenWidth * 0.35),
                      child: Container(
                        child: Text('Chicken\n195', textAlign: TextAlign.center),
                      ),
                    ),
                  ],
                ),
              ),
              //   -----------------------------------
              //   Desert
              Padding(
                padding: EdgeInsets.only(top:screenWidth* 0.02),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: screenWidth * 0.1),
                      child: Container(
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.only(left: 100),
                              child: IconButton(
                                icon: Icon(Icons.add_circle),
                                color: Colors.green,
                                onPressed: () {
                                  ++counterList[10].value;
                                  addTotal(180);
                                  addList[10].value = true;
                                },
                              ),
                            ),
                            Container(
                               padding: EdgeInsets.only(left: screenWidth * 0.23 , top: screenWidth * 0.0826),
                              child: Obx(() {
                                return IconButton(
                                  icon: Icon(Icons.restore_from_trash_outlined),
                                  color: counterList[10].value > 0
                                      ? Colors.red
                                      : Colors.grey,
                                  // onPressed: null,
                                  onPressed: counterList[10].value > 0
                                      ? () {
                                    subTotal(180);
                                    --counterList[10].value;
                                  }
                                      :null,
                                );
                              }),
                            ),
                          ],
                        ),
                        height: 130,
                        width: 124,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/cup1.png'),
                            )),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: screenWidth * 0.2),
                      child: Container(
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.only(left: 100),
                              child: IconButton(
                                icon: Icon(Icons.add_circle),
                                color: Colors.green,
                                onPressed: () {
                                  ++counterList[11].value;
                                  addTotal(80);
                                  addList[11].value = true;
                                },
                              ),
                            ),
                            Container(
                               padding: EdgeInsets.only(left: screenWidth * 0.23 , top: screenWidth * 0.0826),
                              child: Obx(() {
                                return IconButton(
                                  icon: Icon(Icons.restore_from_trash_outlined),
                                  color: counterList[11].value > 0
                                      ? Colors.red
                                      : Colors.grey,
                                  // onPressed: null,
                                  onPressed: counterList[11].value > 0
                                      ? () {
                                    subTotal(80);
                                    --counterList[11].value;
                                  }
                                      :null,
                                );
                              }),
                            ),
                          ],
                        ),
                        height: 130,
                        width: 124,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/cup2.png'),
                            )),
                      ),
                    ),
                  ],
                ),
              ),
              // the price
              Padding(
                padding: EdgeInsets.only(left: screenWidth * 0.02),
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: screenWidth * 0.15),
                      child: Container(
                        child: Text(
                          'Plate Kobe\n180',
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: screenWidth * 0.35),
                      child: Container(
                        child: Text('Chicken\n195', textAlign: TextAlign.center),
                      ),
                    ),
                  ],
                ),
              ),
              // ------------------------------------
              //   second desert
              Padding(
                padding: EdgeInsets.only(top: screenWidth * 0.02),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: screenWidth * 0.1),
                      child: Container(
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.only(left: 100),
                              child: IconButton(
                                icon: Icon(Icons.add_circle),
                                color: Colors.green,
                                onPressed: () {
                                  ++counterList[12].value;
                                  addTotal(80);
                                  addList[12].value = true;
                                },
                              ),
                            ),
                            Container(
                               padding: EdgeInsets.only(left: screenWidth * 0.23 , top: screenWidth * 0.0826),
                              child: Obx(() {
                                return IconButton(
                                  icon: Icon(Icons.restore_from_trash_outlined),
                                  color: counterList[12].value > 0
                                      ? Colors.red
                                      : Colors.grey,
                                  // onPressed: null,
                                  onPressed: counterList[12].value > 0
                                      ? () {
                                    subTotal(80);
                                    --counterList[12].value;
                                  }
                                      :null,
                                );
                              }),
                            ),
                          ],
                        ),
                        height: 130,
                        width: 124,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/cup3.png'),
                            )),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: screenWidth * 0.2),
                      child: Container(
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.only(left: 100),
                              child: IconButton(
                                icon: Icon(Icons.add_circle),
                                color: Colors.green,
                                onPressed: () {
                                  ++counterList[13].value;
                                  addTotal(80);
                                  addList[13].value = true;
                                },
                              ),
                            ),
                            Container(
                               padding: EdgeInsets.only(left: screenWidth * 0.23 , top: screenWidth * 0.0826),
                              child: Obx(() {
                                return IconButton(
                                  icon: Icon(Icons.restore_from_trash_outlined),
                                  color: counterList[13].value > 0
                                      ? Colors.red
                                      : Colors.grey,
                                  // onPressed: null,
                                  onPressed: counterList[13].value > 0
                                      ? () {
                                    subTotal(80);
                                    --counterList[13].value;
                                  }
                                      :null,
                                );
                              }),
                            ),
                          ],
                        ),
                        height: 130,
                        width: 124,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/cup4.png'),
                            )),
                      ),
                    ),
                  ],
                ),
              ),
              // the price
              Padding(
                padding: EdgeInsets.only(left: screenWidth * 0.02),
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: screenWidth * 0.15),
                      child: Container(
                        child: Text(
                          'Plate Kobe\n180',
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: screenWidth * 0.35),
                      child: Container(
                        child: Text('Chicken\n195', textAlign: TextAlign.center),
                      ),
                    ),
                  ],
                ),
              ),
              // ------------------------------------------------
              // dounts
              Padding(
                padding: EdgeInsets.only(top: screenWidth * 0.02),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: screenWidth * 0.1),
                      child: Container(
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.only(left: 100),
                              child: IconButton(
                                icon: Icon(Icons.add_circle),
                                color: Colors.green,
                                onPressed: () {
                                  ++counterList[16].value;
                                  addTotal(70);
                                  addList[16].value = true;
                                },
                              ),
                            ),
                            Container(
                               padding: EdgeInsets.only(left: screenWidth * 0.23 , top: screenWidth * 0.0826),
                              child: Obx(() {
                                return IconButton(
                                  icon: Icon(Icons.restore_from_trash_outlined),
                                  color: counterList[16].value > 0
                                      ? Colors.red
                                      : Colors.grey,
                                  // onPressed: null,
                                  onPressed: counterList[16].value > 0
                                      ? () {
                                    subTotal(70);
                                    --counterList[16].value;
                                  }
                                      :null,
                                );
                              }),
                            ),
                          ],
                        ),
                        height: 130,
                        width: 124,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/dount1.png'),
                            )),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: screenWidth * 0.2),
                      child: Container(
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.only(left: 100),
                              child: IconButton(
                                icon: Icon(Icons.add_circle),
                                color: Colors.green,
                                onPressed: () {
                                  ++counterList[17].value;
                                  addTotal(65);
                                  addList[17].value = true;
                                },
                              ),
                            ),
                            Container(
                               padding: EdgeInsets.only(left: screenWidth * 0.23 , top: screenWidth * 0.0826),
                              child: Obx(() {
                                return IconButton(
                                  icon: Icon(Icons.restore_from_trash_outlined),
                                  color: counterList[17].value > 0
                                      ? Colors.red
                                      : Colors.grey,
                                  // onPressed: null,
                                  onPressed: counterList[17].value > 0
                                      ? () {
                                    subTotal(65);
                                    --counterList[17].value;
                                  }
                                      :null,
                                );
                              }),
                            ),
                          ],
                        ),
                        height: 130,
                        width: 124,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/dount3.png'),
                            )),
                      ),
                    ),
                  ],
                ),
              ),
              // the price
              Padding(
                padding: EdgeInsets.only(left: screenWidth * 0.02),
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: screenWidth * 0.15),
                      child: Container(
                        child: Text(
                          'Plate Kobe\n180',
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: screenWidth * 0.35),
                      child: Container(
                        child: Text('Chicken\n195', textAlign: TextAlign.center),
                      ),
                    ),
                  ],
                ),
              ),
              // -----------------------------------
              // drinks
              Padding(
                padding: EdgeInsets.only(top: screenWidth * 0.02),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: screenWidth * 0.1),
                      child: Container(
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.only(left: 100),
                              child: IconButton(
                                icon: Icon(Icons.add_circle),
                                color: Colors.green,
                                onPressed: () {
                                  ++counterList[20].value;
                                  addTotal(40);
                                  addList[20].value = true;
                                },
                              ),
                            ),
                            Container(
                               padding: EdgeInsets.only(left: screenWidth * 0.23 , top: screenWidth * 0.0826),
                              child: Obx(() {
                                return IconButton(
                                  icon: Icon(Icons.restore_from_trash_outlined),
                                  color: counterList[20].value > 0
                                      ? Colors.red
                                      : Colors.grey,
                                  // onPressed: null,
                                  onPressed: counterList[20].value > 0
                                      ? () {
                                    subTotal(40);
                                    --counterList[20].value;
                                  }
                                      :null,
                                );
                              }),
                            ),
                          ],
                        ),
                        height: 130,
                        width: 124,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/pepsi.png'),
                            )),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: screenWidth * 0.2),
                      child: Container(
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.only(left: 100),
                              child: IconButton(
                                icon: Icon(Icons.add_circle),
                                color: Colors.green,
                                onPressed: () {
                                  ++counterList[21].value;
                                  addTotal(40);
                                  addList[21].value = true;
                                },
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 102, top: 24),
                              child: Obx(() {
                                return IconButton(
                                  icon: Icon(Icons.restore_from_trash_outlined),
                                  color: counterList[21].value > 0
                                      ? Colors.red
                                      : Colors.grey,
                                  // onPressed: null,
                                  onPressed: counterList[21].value > 0
                                      ? () {
                                    subTotal(40);
                                    --counterList[21].value;
                                  }
                                      :null,
                                );
                              }),
                            ),
                          ],
                        ),
                        height: 120,
                        width: 124,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/7up.jpeg'),
                            )),
                      ),
                    ),
                  ],
                ),
              ),
              // the price
              Padding(
                padding: EdgeInsets.only(left: screenWidth * 0.02),
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: screenWidth * 0.15),
                      child: Container(
                        child: Text(
                          'Plate Kobe\n180',
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: screenWidth * 0.35),
                      child: Container(
                        child: Text('Chicken\n195', textAlign: TextAlign.center),
                      ),
                    ),
                  ],
                ),
              ),
              // -----------------------------------
              // second
              Padding(
                padding: EdgeInsets.only(top: screenWidth * 0.02),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: screenWidth * 0.1),
                      child: Container(
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.only(left: 100),
                              child: IconButton(
                                icon: Icon(Icons.add_circle),
                                color: Colors.green,
                                onPressed: () {
                                  ++counterList[22].value;
                                  addTotal(40);
                                  addList[22].value = true;
                                },
                              ),
                            ),
                            Container(
                               padding: EdgeInsets.only(left: screenWidth * 0.23 , top: screenWidth * 0.0826),
                              child: Obx(() {
                                return IconButton(
                                  icon: Icon(Icons.restore_from_trash_outlined),
                                  color: counterList[22].value > 0
                                      ? Colors.red
                                      : Colors.grey,
                                  // onPressed: null,
                                  onPressed: counterList[22].value > 0
                                      ? () {
                                    subTotal(40);
                                    --counterList[22].value;
                                  }
                                      :null,
                                );
                              }),
                            ),
                          ],
                        ),
                        height: 130,
                        width: 124,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/mirinda.png'),
                            )),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: screenWidth * 0.2),
                      child: Container(
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.only(left: 100),
                              child: IconButton(
                                icon: Icon(Icons.add_circle),
                                color: Colors.green,
                                onPressed: () {
                                  ++counterList[23].value;
                                  addTotal(30);
                                  addList[23].value = true;
                                },
                              ),
                            ),
                            Container(
                               padding: EdgeInsets.only(left: screenWidth * 0.23 , top: screenWidth * 0.0826),
                              child: Obx(() {
                                return IconButton(
                                  icon: Icon(Icons.restore_from_trash_outlined),
                                  color: counterList[23].value > 0
                                      ? Colors.red
                                      : Colors.grey,
                                  // onPressed: null,
                                  onPressed: counterList[23].value > 0
                                      ? () {
                                    subTotal(30);
                                    --counterList[23].value;
                                  }
                                      :null,
                                );
                              }),
                            ),
                          ],
                        ),
                        height: 130,
                        width: 124,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/water.png'),
                            )),
                      ),
                    ),
                  ],
                ),
              ),
              // the price
              Padding(
                padding: EdgeInsets.only(left: screenWidth * 0.02),
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: screenWidth * 0.15),
                      child: Container(
                        child: Text(
                          'Plate Kobe\n180',
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: screenWidth * 0.35),
                      child: Container(
                        child: Text('Chicken\n195', textAlign: TextAlign.center),
                      ),
                    ),
                  ],
                ),
              ),

              // ------------------------------------
              // the total price price
              SizedBox(
                height: 30,
              ),
              Text(
                'Total Price: ',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              Obx(() => Text('${total.value.toString()}\$',
                  // Access the value of the observable variable
                  style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold,color:Colors.green))),
              // ---------------
              // the checkout
              Container(
                padding: EdgeInsets.only(
                  top: 50,
                  bottom: 50,
                ),
                child: MaterialButton(
                  onPressed: () async{
                    Get.to(survey());
                    total.value = 0 ;
                    for(int i=0;i<counterList.length;i++){
                      counterList[i].value = 0 ;
                    }
                    // counterList.clear();
                  },
                  child: Text(
                    'Checkout',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                  ),

                  color: Colors.green,
                  textColor: Colors.white,
                  height: 50,
                  minWidth: 280,
                ),
              ),
              // -----------------------------------------
            ],
          ),
        ],
      ),
    );
  }
}
