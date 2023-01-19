import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class NewsUpdate extends StatelessWidget {
  String tp =
      'https://media.istockphoto.com/photos/file-folder-of-latest-updates-picture-id1214940965?k=20&m=1214940965&s=612x612&w=0&h=Hv6ybBBfEnQTrgPuGnBXgMkG6HC42KqhZ6zF3w4TvuY=';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image(
                image: CachedNetworkImageProvider(tp),
                fit: BoxFit.contain,
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 100,
                width: 300,
                child: Text(
                    "1.In a huge blow for the ruling government, Pakistan Supreme Court today struck down the National Assembly deputy speaker's decision to reject the no-trust motion against Prime Minister Imran Khan"),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                height: 100,
                width: 300,
                child: Text(
                    "2. Pakistan's Supreme Court has ruled that Prime Minister Imran Khan's move to dissolve parliament and call for early elections was illegal"),
              ),
              SizedBox(
                height: 0,
              ),
              Container(
                height: 100,
                width: 300,
                child: Text(
                    "3.Pakistan's Supreme Court will today resume the hearing on the dismissal of a no-confidence vote against Prime Minister Imran Khan"),
              ),
              Container(
                height: 100,
                width: 300,
                child: Text(
                    "4.The Supreme Court of Pakistan has 51,138 pending cases.In district and high courts across the country, 1,048 posts of judges lie vacant waiting to be filled. The Supreme Court of Pakistan has to hear 51,138 pending cases with a total strength of 17 judges, of which two posts are vacant"),
              ),
              SizedBox(
                height: 19,
              ),
              Container(
                height: 100,
                width: 300,
                child: Text(
                    "5.The Supreme Court:\n There shall be paid to the Chief Justice of Pakistan a salary of Rs. 7,900 per mensem, and to every other Judge of the Supreme Court a salary of Rs. 7,400 per mensem."),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 100,
                width: 300,
                child: Text(
                    "6.The average salary for an Army Officer is PKR 91,500 per month in Pakistan, which is 14% higher than the average Pakistan Army salary of PKR 80,000 per month for this job."),
              ),
              Container(
                height: 100,
                width: 300,
                child: Text(
                    "7.It would be worthwhile to mention that the Federal Court and the Chief Justices of various High Courts of India recommended the retirement age of 68 years for the judges of the Supreme Court and 65 years for the judges of High Courts."),
              )
            ],
          ),
        ],
      ),
    );
  }
}
