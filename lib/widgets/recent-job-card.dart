

import 'package:flutter/material.dart';
import 'package:job_app/utils/colors.dart';
import 'package:job_app/utils/text_styles.dart';
Widget recentJobCard(
   BuildContext context,
      String company, String position, String details, String salary, String timeSince , String imageUrl) {
    return Card(
      color: Colors.white,
      margin: EdgeInsets.all(16.0),
      elevation: 1.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ListTile(
              contentPadding: EdgeInsets.zero,
               leading: CircleAvatar(
                 radius: 20.0,
                 backgroundImage: Image.asset(imageUrl!).image,
               ),
               title: Text(position, style: Theme.of(context).textTheme.headlineSmall,),
               subtitle: Text(details, style: AppTextStyles.bodyText2),
               trailing: Icon(Icons.description_outlined),
              ),
              SizedBox(height: 8.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
            
                Row(
                children: [
                 Text("${salary}",style: Theme.of(context).textTheme.headlineSmall,),
                  Text("/Month", style: AppTextStyles.bodyText2),
                ],
              ),
                Text(timeSince, style: AppTextStyles.bodyText2),
              ],
            ),
          
           
          ],
        ),
      ),
    );
  }