// import 'package:angz_talbk/survey.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

final RxInt total = 0.obs;
String? checked = null;

List addList = [
  false.obs,
  false.obs,
  false.obs,
  false.obs,
  false.obs,
  false.obs,
  false.obs,
  false.obs,
  false.obs,
  false.obs,
  false.obs,
  false.obs,
  false.obs,
  false.obs,
  false.obs,
  false.obs,
  false.obs,
  false.obs,
  false.obs,
  false.obs,
  false.obs,
  false.obs,
  false.obs,
  false.obs
].obs;
RxBool isAdded = false.obs; // Track whether add icon is clicked

//  bool isAddSelected()  {
//   return isAdded;
// }

class menu extends StatelessWidget {
  const menu({super.key});

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
              // first row in two plates
              Padding(
                padding: EdgeInsets.only(top: 40),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 40),
                      child: Container(
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.only(left: 100),
                              child: IconButton(
                                icon: Icon(Icons.add_circle),
                                color: Colors.green,
                                onPressed: () {
                                  addTotal(180);
                                  addList[0].value = true;
                                },
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 102, top: 34),
                              child: Obx(() {
                                return IconButton(
                                  icon: Icon(Icons.restore_from_trash_outlined),
                                  color: addList[0].value
                                      ? Colors.red
                                      : Colors.grey,
                                  // onPressed: null,
                                  onPressed: addList[0].value
                                      ? () {
                                    subTotal(180);
                                    addList[0].value = false;
                                    // isAdded.value =
                                    // false; // Reset add icon status
                                  }
                                      : null,
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
                      padding: EdgeInsets.only(left: 80),
                      child: Container(
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.only(left: 100),
                              child: IconButton(
                                icon: Icon(Icons.add_circle),
                                color: Colors.green,
                                onPressed: () {
                                  addTotal(195);
                                  addList[1].value = true;
                                },
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 102, top: 34),
                              child: Obx(() {
                                return IconButton(
                                  icon: Icon(Icons.restore_from_trash_outlined),
                                  color: addList[1].value
                                      ? Colors.red
                                      : Colors.grey,
                                  // onPressed: null,
                                  onPressed: addList[1].value
                                      ? () {
                                    subTotal(195);
                                    addList[1].value = false;
                                    // isAdded.value =
                                    // false; // Reset add icon status
                                  }
                                      : null,
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
                padding: EdgeInsets.only(top: 10),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 90),
                      child: Container(
                        child: Text(
                          '180',
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 180),
                      child: Container(
                        child: Text('195', textAlign: TextAlign.center),
                      ),
                    ),
                  ],
                ),
              ),
              // -------------------------------------------------
              // Second row
              Padding(
                padding: EdgeInsets.only(top: 40),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 40),
                      child: Container(
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.only(left: 100),
                              child: IconButton(
                                icon: Icon(Icons.add_circle),
                                color: Colors.green,
                                onPressed: () {
                                  addTotal(120);
                                  addList[2].value = true;
                                },
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 102, top: 34),
                              child: Obx(() {
                                return IconButton(
                                  icon: Icon(Icons.restore_from_trash_outlined),
                                  color: addList[2].value
                                      ? Colors.red
                                      : Colors.grey,
                                  // onPressed: null,
                                  onPressed: addList[2].value
                                      ? () {
                                    subTotal(120);
                                    addList[2].value = false;
                                    // isAdded.value =
                                    // false; // Reset add icon status
                                  }
                                      : null,
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
                      padding: EdgeInsets.only(left: 80),
                      child: Container(
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.only(left: 100),
                              child: IconButton(
                                icon: Icon(Icons.add_circle),
                                color: Colors.green,
                                onPressed: () {
                                  addTotal(100);
                                  addList[3].value = true;
                                },
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 102, top: 34),
                              child: Obx(() {
                                return IconButton(
                                  icon: Icon(Icons.restore_from_trash_outlined),
                                  color: addList[3].value
                                      ? Colors.red
                                      : Colors.grey,
                                  // onPressed: null,
                                  onPressed: addList[3].value
                                      ? () {
                                    subTotal(100);
                                    addList[3].value = false;
                                    // isAdded.value =
                                    // false; // Reset add icon status
                                  }
                                      : null,
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
                padding: EdgeInsets.only(top: 10),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 90),
                      child: Container(
                        child: Text(
                          '120',
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 185),
                      child: Container(
                        child: Text('100', textAlign: TextAlign.center),
                      ),
                    ),
                  ],
                ),
              ),
              // --------------------------------------------
              // Third row
              Padding(
                padding: EdgeInsets.only(top: 40),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 40),
                      child: Container(
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.only(left: 100),
                              child: IconButton(
                                icon: Icon(Icons.add_circle),
                                color: Colors.green,
                                onPressed: () {
                                  addTotal(150);
                                  addList[4].value = true;
                                },
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 102, top: 34),
                              child: Obx(() {
                                return IconButton(
                                  icon: Icon(Icons.restore_from_trash_outlined),
                                  color: addList[0].value
                                      ? Colors.red
                                      : Colors.grey,
                                  // onPressed: null,
                                  onPressed: addList[0].value
                                      ? () {
                                    subTotal(150);
                                    addList[4].value = false;
                                    // isAdded.value =
                                    // false; // Reset add icon status
                                  }
                                      : null,
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
                      padding: EdgeInsets.only(left: 80),
                      child: Container(
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.only(left: 100),
                              child: IconButton(
                                icon: Icon(Icons.add_circle),
                                color: Colors.green,
                                onPressed: () {
                                  addTotal(200);
                                  addList[5].value = true;
                                },
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 102, top: 34),
                              child: Obx(() {
                                return IconButton(
                                  icon: Icon(Icons.restore_from_trash_outlined),
                                  color: addList[5].value
                                      ? Colors.red
                                      : Colors.grey,
                                  // onPressed: null,
                                  onPressed: addList[5].value
                                      ? () {
                                    subTotal(200);
                                    addList[5].value = false;
                                    // isAdded.value =
                                    // false; // Reset add icon status
                                  }
                                      : null,
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
                padding: EdgeInsets.only(top: 10),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 90),
                      child: Container(
                        child: Text(
                          '150',
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 180),
                      child: Container(
                        child: Text('200', textAlign: TextAlign.center),
                      ),
                    ),
                  ],
                ),
              ),
              // -------------------------------------------------------
              // fourth row
              Padding(
                padding: EdgeInsets.only(top: 40),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 40),
                      child: Container(
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.only(left: 100),
                              child: IconButton(
                                icon: Icon(Icons.add_circle),
                                color: Colors.green,
                                onPressed: () {
                                  addTotal(150);
                                  addList[6].value = true;
                                },
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 102, top: 34),
                              child: Obx(() {
                                return IconButton(
                                  icon: Icon(Icons.restore_from_trash_outlined),
                                  color: addList[6].value
                                      ? Colors.red
                                      : Colors.grey,
                                  // onPressed: null,
                                  onPressed: addList[6].value
                                      ? () {
                                    subTotal(150);
                                    addList[6].value = false;
                                    // isAdded.value =
                                    // false; // Reset add icon status
                                  }
                                      : null,
                                );
                              }),
                            ),
                          ],
                        ),
                        height: 130,
                        width: 124,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/osaka.png'),
                            )),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 80),
                      child: Container(
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.only(left: 100),
                              child: IconButton(
                                icon: Icon(Icons.add_circle),
                                color: Colors.green,
                                onPressed: () {
                                  addTotal(180);
                                  addList[7].value = true;
                                },
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 102, top: 34),
                              child: Obx(() {
                                return IconButton(
                                  icon: Icon(Icons.restore_from_trash_outlined),
                                  color: addList[7].value
                                      ? Colors.red
                                      : Colors.grey,
                                  // onPressed: null,
                                  onPressed: addList[7].value
                                      ? () {
                                    subTotal(180);
                                    addList[7].value = false;
                                    // isAdded.value =
                                    // false; // Reset add icon status
                                  }
                                      : null,
                                );
                              }),
                            ),
                          ],
                        ),
                        height: 130,
                        width: 124,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/sapporo.png'),
                            )),
                      ),
                    ),
                  ],
                ),
              ),
              // the price
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 90),
                      child: Container(
                        child: Text(
                          '150',
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 180),
                      child: Container(
                        child: Text('180', textAlign: TextAlign.center),
                      ),
                    ),
                  ],
                ),
              ),
              // -----------------------------------------
              //   five row
              Padding(
                padding: EdgeInsets.only(top: 40),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 40),
                      child: Container(
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.only(left: 100),
                              child: IconButton(
                                icon: Icon(Icons.add_circle),
                                color: Colors.green,
                                onPressed: () {
                                  addTotal(220);
                                  addList[8].value = true;
                                },
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 102, top: 34),
                              child: Obx(() {
                                return IconButton(
                                  icon: Icon(Icons.restore_from_trash_outlined),
                                  color: addList[8].value
                                      ? Colors.red
                                      : Colors.grey,
                                  // onPressed: null,
                                  onPressed: addList[8].value
                                      ? () {
                                    subTotal(220);
                                    addList[8].value = false;
                                    // isAdded.value =
                                    // false; // Reset add icon status
                                  }
                                      : null,
                                );
                              }),
                            ),
                          ],
                        ),
                        height: 130,
                        width: 124,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/tokyo.png'),
                            )),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 80),
                      child: Container(
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.only(left: 100),
                              child: IconButton(
                                icon: Icon(Icons.add_circle),
                                color: Colors.green,
                                onPressed: () {
                                  addTotal(100);
                                  addList[9].value = true;
                                },
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 102, top: 34),
                              child: Obx(() {
                                return IconButton(
                                  icon: Icon(Icons.restore_from_trash_outlined),
                                  color: addList[9].value
                                      ? Colors.red
                                      : Colors.grey,
                                  // onPressed: null,
                                  onPressed: addList[9].value
                                      ? () {
                                    subTotal(100);
                                    addList[9].value = false;
                                    // isAdded.value =
                                    // false; // Reset add icon status
                                  }
                                      : null,
                                );
                              }),
                            ),
                          ],
                        ),
                        height: 130,
                        width: 124,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/zaatar.png'),
                            )),
                      ),
                    ),
                  ],
                ),
              ),
              // the price
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 90),
                      child: Container(
                        child: Text(
                          '220',
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 180),
                      child: Container(
                        child: Text('100', textAlign: TextAlign.center),
                      ),
                    ),
                  ],
                ),
              ),
              //   -----------------------------------
              //   Desert
              Padding(
                padding: EdgeInsets.only(top: 50),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 40),
                      child: Container(
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.only(left: 100),
                              child: IconButton(
                                icon: Icon(Icons.add_circle),
                                color: Colors.green,
                                onPressed: () {
                                  addTotal(80);
                                  addList[10].value = true;

                                },
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 102, top: 34),
                              child: Obx(() {
                                return IconButton(
                                  icon: Icon(Icons.restore_from_trash_outlined),
                                  color: addList[10].value ? Colors.red : Colors
                                      .grey,
                                  // onPressed: null,
                                  onPressed: addList[10].value ? () {
                                    subTotal(80);
                                    addList[10].value = false;
                                    // isAdded.value =
                                    // false; // Reset add icon status
                                  }
                                      : null,
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
                      padding: EdgeInsets.only(left: 80),
                      child: Container(
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.only(left: 100),
                              child: IconButton(
                                icon: Icon(Icons.add_circle),
                                color: Colors.green,
                                onPressed: () {
                                  addTotal(80);
                                  addList[11].value = true;

                                },
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 102, top: 34),
                              child: Obx(() {
                                return IconButton(
                                  icon: Icon(Icons.restore_from_trash_outlined),
                                  color: addList[11].value ? Colors.red : Colors
                                      .grey,
                                  // onPressed: null,
                                  onPressed: addList[11].value ? () {
                                    subTotal(80);
                                    addList[11].value = false;
                                    // isAdded.value =
                                    // false; // Reset add icon status
                                  }
                                      : null,
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
                padding: EdgeInsets.only(top: 10),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 95),
                      child: Container(
                        child: Text(
                          '80',
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 185),
                      child: Container(
                        child: Text('80', textAlign: TextAlign.center),
                      ),
                    ),
                  ],
                ),
              ),
              // ------------------------------------
              //   second desert
              Padding(
                padding: EdgeInsets.only(top: 50),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 40),
                      child: Container(
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.only(left: 100),
                              child: IconButton(
                                icon: Icon(Icons.add_circle),
                                color: Colors.green,
                                onPressed: () {
                                  addTotal(80);
                                  addList[12].value = true;

                                },
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 102, top: 34),
                              child: Obx(() {
                                return IconButton(
                                  icon: Icon(Icons.restore_from_trash_outlined),
                                  color: addList[12].value ? Colors.red : Colors
                                      .grey,
                                  // onPressed: null,
                                  onPressed: addList[12].value ? () {
                                    subTotal(80);
                                    addList[12].value = false;
                                    // isAdded.value =
                                    // false; // Reset add icon status
                                  }
                                      : null,
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
                      padding: EdgeInsets.only(left: 80),
                      child: Container(
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.only(left: 100),
                              child: IconButton(
                                icon: Icon(Icons.add_circle),
                                color: Colors.green,
                                onPressed: () {
                                  addTotal(80);
                                  addList[13].value = true;

                                },
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 102, top: 34),
                              child: Obx(() {
                                return IconButton(
                                  icon: Icon(Icons.restore_from_trash_outlined),
                                  color: addList[13].value ? Colors.red : Colors
                                      .grey,
                                  // onPressed: null,
                                  onPressed: addList[13].value ? () {
                                    subTotal(80);
                                    addList[13].value = false;
                                    // isAdded.value =
                                    // false; // Reset add icon status
                                  }
                                      : null,
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
                padding: EdgeInsets.only(top: 10),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 95),
                      child: Container(
                        child: Text(
                          '80',
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 185),
                      child: Container(
                        child: Text('80', textAlign: TextAlign.center),
                      ),
                    ),
                  ],
                ),
              ),
              // ---------------------------------
              // Third desert
              Padding(
                padding: EdgeInsets.only(top: 80),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 40),
                      child: Container(
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.only(left: 100),
                              child: IconButton(
                                icon: Icon(Icons.add_circle),
                                color: Colors.green,
                                onPressed: () {
                                  addTotal(95);
                                  addList[14].value = true;

                                },
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 102, top: 34),
                              child: Obx(() {
                                return IconButton(
                                  icon: Icon(Icons.restore_from_trash_outlined),
                                  color: addList[14].value ? Colors.red : Colors
                                      .grey,
                                  // onPressed: null,
                                  onPressed: addList[14].value ? () {
                                    subTotal(95);
                                    addList[14].value = false;
                                    // isAdded.value =
                                    // false; // Reset add icon status
                                  }
                                      : null,
                                );
                              }),

                            ),
                          ],
                        ),
                        height: 130,
                        width: 124,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/cup5.png'),
                            )),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 80),
                      child: Container(
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.only(left: 100),
                              child: IconButton(
                                icon: Icon(Icons.add_circle),
                                color: Colors.green,
                                onPressed: () {
                                  addTotal(60);
                                  addList[15].value = true;

                                },
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 102, top: 34),
                              child: Obx(() {
                                return IconButton(
                                  icon: Icon(Icons.restore_from_trash_outlined),
                                  color: addList[15].value ? Colors.red : Colors
                                      .grey,
                                  // onPressed: null,
                                  onPressed: addList[15].value ? () {
                                    subTotal(60);
                                    addList[15].value = false;
                                    // isAdded.value =
                                    // false; // Reset add icon status
                                  }
                                      : null,
                                );
                              }),

                            ),
                          ],
                        ),
                        height: 130,
                        width: 124,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/cup6.png'),
                            )),
                      ),
                    ),
                  ],
                ),
              ),
              // the price
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 95),
                      child: Container(
                        child: Text(
                          '95',
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 185),
                      child: Container(
                        child: Text('60', textAlign: TextAlign.center),
                      ),
                    ),
                  ],
                ),
              ),
              // ------------------------------------------------
              // dounts
              Padding(
                padding: EdgeInsets.only(top: 50),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 40),
                      child: Container(
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.only(left: 100),
                              child: IconButton(
                                icon: Icon(Icons.add_circle),
                                color: Colors.green,
                                onPressed: () {
                                  addTotal(70);
                                  addList[16].value = true;

                                },
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 102, top: 34),
                              child: Obx(() {
                                return IconButton(
                                  icon: Icon(Icons.restore_from_trash_outlined),
                                  color: addList[16].value ? Colors.red : Colors
                                      .grey,
                                  // onPressed: null,
                                  onPressed: addList[16].value ? () {
                                    subTotal(70);
                                    addList[16].value = false;
                                    // isAdded.value =
                                    // false; // Reset add icon status
                                  }
                                      : null,
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
                      padding: EdgeInsets.only(left: 80),
                      child: Container(
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.only(left: 100),
                              child: IconButton(
                                icon: Icon(Icons.add_circle),
                                color: Colors.green,
                                onPressed: () {
                                  addTotal(65);
                                  addList[17].value = true;

                                },
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 102, top: 34),
                              child: Obx(() {
                                return IconButton(
                                  icon: Icon(Icons.restore_from_trash_outlined),
                                  color: addList[17].value ? Colors.red : Colors
                                      .grey,
                                  // onPressed: null,
                                  onPressed: addList[17].value ? () {
                                    subTotal(65);
                                    addList[17].value = false;
                                    // isAdded.value =
                                    // false; // Reset add icon status
                                  }
                                      : null,
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
                padding: EdgeInsets.only(top: 10),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 95),
                      child: Container(
                        child: Text(
                          '70',
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 185),
                      child: Container(
                        child: Text('65', textAlign: TextAlign.center),
                      ),
                    ),
                  ],
                ),
              ),
              // -----------------------------------
              // second
              Padding(
                padding: EdgeInsets.only(top: 50),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 40),
                      child: Container(
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.only(left: 100),
                              child: IconButton(
                                icon: Icon(Icons.add_circle),
                                color: Colors.green,
                                onPressed: () {
                                  addTotal(100);
                                  addList[18].value = true;

                                },
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 102, top: 34),
                              child: Obx(() {
                                return IconButton(
                                  icon: Icon(Icons.restore_from_trash_outlined),
                                  color: addList[18].value ? Colors.red : Colors
                                      .grey,
                                  // onPressed: null,
                                  onPressed: addList[18].value ? () {
                                    subTotal(100);
                                    addList[18].value = false;
                                    // isAdded.value =
                                    // false; // Reset add icon status
                                  }
                                      : null,
                                );
                              }),

                            ),
                          ],
                        ),
                        height: 130,
                        width: 124,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/dount4.png'),
                            )),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 80),
                      child: Container(
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.only(left: 100),
                              child: IconButton(
                                icon: Icon(Icons.add_circle),
                                color: Colors.green,
                                onPressed: () {
                                  addTotal(120);
                                  addList[19].value = true;

                                },
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 102, top: 34),
                              child: Obx(() {
                                return IconButton(
                                  icon: Icon(Icons.restore_from_trash_outlined),
                                  color: addList[19].value ? Colors.red : Colors
                                      .grey,
                                  // onPressed: null,
                                  onPressed: addList[19].value ? () {
                                    subTotal(120);
                                    addList[19].value = false;
                                    // isAdded.value =
                                    // false; // Reset add icon status
                                  }
                                      : null,
                                );
                              }),

                            ),
                          ],
                        ),
                        height: 130,
                        width: 124,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/dount5.png'),
                            )),
                      ),
                    ),
                  ],
                ),
              ),
              // the price
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 90),
                      child: Container(
                        child: Text(
                          '100',
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 180),
                      child: Container(
                        child: Text('120', textAlign: TextAlign.center),
                      ),
                    ),
                  ],
                ),
              ),
              // --------------------------------
              // drinks
              Padding(
                padding: EdgeInsets.only(top: 50),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 40),
                      child: Container(
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.only(left: 100),
                              child: IconButton(
                                icon: Icon(Icons.add_circle),
                                color: Colors.green,
                                onPressed: () {
                                  addTotal(40);
                                  addList[20].value = true;

                                },
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 102, top: 34),
                              child: Obx(() {
                                return IconButton(
                                  icon: Icon(Icons.restore_from_trash_outlined),
                                  color: addList[20].value ? Colors.red : Colors
                                      .grey,
                                  // onPressed: null,
                                  onPressed: addList[20].value ? () {
                                    subTotal(40);
                                    addList[20].value = false;
                                    // isAdded.value =
                                    // false; // Reset add icon status
                                  }
                                      : null,
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
                      padding: EdgeInsets.only(left: 80),
                      child: Container(
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.only(left: 100),
                              child: IconButton(
                                icon: Icon(Icons.add_circle),
                                color: Colors.green,
                                onPressed: () {
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
                                  color: addList[21].value ? Colors.red : Colors
                                      .grey,
                                  // onPressed: null,
                                  onPressed: addList[21].value ? () {
                                    subTotal(40);
                                    addList[21].value = false;
                                    // isAdded.value =
                                    // false; // Reset add icon status
                                  }
                                      : null,
                                );
                              }),

                            ),
                          ],
                        ),
                        height: 120,
                        width: 124,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/sprite.jpg'),
                            )),
                      ),
                    ),
                  ],
                ),
              ),
              // the price
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 95),
                      child: Container(
                        child: Text(
                          '40',
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 185),
                      child: Container(
                        child: Text('40', textAlign: TextAlign.center),
                      ),
                    ),
                  ],
                ),
              ),
              // -----------------------------------
              // second
              Padding(
                padding: EdgeInsets.only(top: 50),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 40),
                      child: Container(
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.only(left: 100),
                              child: IconButton(
                                icon: Icon(Icons.add_circle),
                                color: Colors.green,
                                onPressed: () {
                                  addTotal(40);
                                  addList[22].value = true;

                                },
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 102, top: 34),
                              child: Obx(() {
                                return IconButton(
                                  icon: Icon(Icons.restore_from_trash_outlined),
                                  color: addList[22].value ? Colors.red : Colors
                                      .grey,
                                  // onPressed: null,
                                  onPressed: addList[22].value ? () {
                                    subTotal(40);
                                    addList[22].value = false;
                                    // isAdded.value =
                                    // false; // Reset add icon status
                                  }
                                      : null,
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
                      padding: EdgeInsets.only(left: 80),
                      child: Container(
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.only(left: 100),
                              child: IconButton(
                                icon: Icon(Icons.add_circle),
                                color: Colors.green,
                                onPressed: () {
                                  addTotal(30);
                                  addList[23].value = true;

                                },
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 102, top: 34),
                              child: Obx(() {
                                return IconButton(
                                  icon: Icon(Icons.restore_from_trash_outlined),
                                  color: addList[23].value ? Colors.red : Colors
                                      .grey,
                                  // onPressed: null,
                                  onPressed: addList[23].value ? () {
                                    subTotal(30);
                                    addList[23].value = false;
                                    // isAdded.value =
                                    // false; // Reset add icon status
                                  }
                                      : null,
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
                padding: EdgeInsets.only(top: 10),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 95),
                      child: Container(
                        child: Text(
                          '40',
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 185),
                      child: Container(
                        child: Text('30', textAlign: TextAlign.center),
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
              Obx(() => Text(total.value.toString(),
                  // Access the value of the observable variable
                  style: TextStyle(fontSize: 20))),
              // ---------------
              // the checkout
              Container(
                padding: EdgeInsets.only(
                  top: 50,
                  bottom: 50,
                ),
                child: MaterialButton(
                  onPressed: () {
                    // Get.to(survey());
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
