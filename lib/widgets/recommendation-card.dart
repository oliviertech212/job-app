

import 'package:flutter/material.dart';
import 'package:job_app/screens/job-page.dart';
import 'package:job_app/utils/colors.dart';
import 'package:job_app/utils/text_styles.dart';

Widget recommendationCard(
  BuildContext context,
  String company,
  String location,
  String position,
  String details,
  String salary,
  String imageUrl,
  List<String> skills,
  List<String> descriptions,
) {
  return GestureDetector(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => JobDetailPage(
            company: company,
            location: location,
            position: position,
            salary: salary,
            skills: skills,
            descriptions: descriptions,
            logoUrl: imageUrl,
          ),
        ),
      );
    },
    child: Card(
      color: company != "Facebook" ? AppColors.lightBlue : Colors.white,
      elevation: 2.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: LayoutBuilder(
        builder: (context, constraints) {
          double screenWidth = MediaQuery.of(context).size.width;
          double cardWidth = screenWidth < 500 ? 300 : 500;
          return SizedBox(
            width: cardWidth,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 6.0),
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
                    title: Text(
                      company,
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                    subtitle: Text(location, style: AppTextStyles.bodyText2),
                    trailing: Icon(Icons.description_outlined),
                  ),
                  SizedBox(height: 8.0),
                  Text(position, style: Theme.of(context).textTheme.headlineSmall),
                  SizedBox(height: 4.0),
                  Text(details, style: AppTextStyles.bodyText2),
                  SizedBox(height: 8.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.primaryColor,
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                        child: Text("Apply Now"),
                      ),
                      Row(
                        children: [
                          Text(
                            "${salary}",
                            style: Theme.of(context).textTheme.headlineSmall,
                          ),
                          Text("/Month", style: AppTextStyles.bodyText2),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    ),
  );
}