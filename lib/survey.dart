import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';

import 'form.dart';

final RxInt rTotal = 0.obs;
int r1 = 0, r2 = 0, r3 = 0;

class survey extends StatelessWidget {
  const survey({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white, // Set the desired color for the back icon
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/survey.png'),
                  scale: 6,
                  alignment: Alignment.bottomCenter)),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(85.0),
        child: ListView(
          children: [
            _buildRatingBar(
              title: 'Food Quality',
              onRatingUpdate: (rating) {
                r1 = rating.toInt();
                _updateTotalRating();
              },
            ),
            _buildRatingBar(
              title: 'Service Quality',
              onRatingUpdate: (rating) {
                r2 = rating.toInt();
                _updateTotalRating();
              },
            ),
            _buildRatingBar(
              title: 'Price Level',
              onRatingUpdate: (rating) {
                r3 = rating.toInt();
                _updateTotalRating();
              },
            ),
            SizedBox(height: 20),
            Column(
              children: [
                Obx(() => Text(
                  'Average: ${rTotal.value}%',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                )),
              ],
            ),
            SizedBox(height: MediaQuery.sizeOf(context).height*0.04,),
            Container(
              padding: EdgeInsets.only(
                top: 20,
                bottom: 50,
              ),
              child: MaterialButton(
                onPressed: () {
                  Get.to(form());
                  rTotal.value = 0;
                },
                child: Text(
                  'Submit',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  ),
                ),
                color: Colors.green,
                textColor: Colors.white,
                height: 50,
                minWidth: 180,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _updateTotalRating() {
    rTotal.value = (((r1 + r2 + r3) * 20) / 3).toInt();
    print('Average: ${rTotal.value}%');
  }

  Widget _buildRatingBar({required String title, required Function(double) onRatingUpdate}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22, color: Colors.green),
          ),
        ),
        RatingBar.builder(
          initialRating: 3,
          minRating: 1,
          direction: Axis.horizontal,
          allowHalfRating: true,
          itemCount: 5,
          itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
          itemBuilder: (_, __) => Icon(Icons.star, color: Colors.amber),
          onRatingUpdate: onRatingUpdate,
        ),
      ],
    );
  }
}
