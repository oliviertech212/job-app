import 'package:flutter/material.dart';
import 'package:job_app/utils/colors.dart';
import 'package:job_app/utils/text_styles.dart';
import 'package:job_app/widgets/recommendation-card.dart';

class LandingPageScreen extends StatefulWidget {
  @override
  State<LandingPageScreen> createState() => _LandingPageScreenState();
}

class _LandingPageScreenState extends State<LandingPageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Stack(
        children: [
         
          Column(
            children: [
              SizedBox(height: 200), 
              Expanded(
                child: ListView(
                  padding: EdgeInsets.zero,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Text(
                        'Recommendation',
                       style: Theme.of(context).textTheme.headlineLarge,
                      ),
                    ),
                    SizedBox(height: 16.0),
                    SizedBox(
                      height: 220.0,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        children: [
                          recommendationCard( context,
                            'Pinterest, Inc.',
                            'California, USA',
                            'Motion Designer',
                            'Senior • Fulltime • Remote',
                            '\$7K',""
                          ),
                          SizedBox(width: 16.0),
                          recommendationCard( context,
                            'Facebook',
                            'California, USA',
                            'UI Design',
                            'Senior • Fulltime',
                            '\$6K',
                            ""
                          ),
                          SizedBox(width: 16.0),
                          recommendationCard( context,
                            'Google',
                            'California, USA',
                            'Product Designer',
                            'Senior • Fulltime • Remote',
                            '\$5K',
                            ""
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 16.0),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Text(
                        'Recent Jobs',
                        style: AppTextStyles.bodyText1,
                      ),
                    ),
                    SizedBox(height: 16.0),
                    _buildRecentJobCard(
                      'Google',
                      'Product Designer',
                      'Senior • Fulltime • Remote',
                      '\$5K',
                      '12 Minute Ago',
                      
                    ),
                    SizedBox(height: 16.0),
                    _buildRecentJobCard(
                      'Apple',
                      'UI/UX Designer',
                      'Fulltime • Remote',
                      '\$6K',
                      '30 Minute Ago',
                    ),
                  ],
                ),
              ),
            ],
          ),

          /// The AppBar
          Container(
            height: 150,
            width: double.infinity,
            padding: const EdgeInsets.all(16.0),
            decoration: const BoxDecoration(
              color: AppColors.primaryColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(0),
                bottomRight: Radius.circular(0),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween ,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 40), 
                    Text(
                      'Hello',
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'Leslie Alexander',
                      style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                        color: Colors.white,
                      ))
                  ],
                ),


                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(10),
                    
                  ),
                  child: Stack(
                    children: [
                     const Center(
                        child:  Icon(
                          size: 30,
                          Icons.notifications_none_sharp,
                          color: Colors.white,
                        ),
                      ),
                      Positioned(
                        top: 10,
                        right: 10,
                        child: Container(
                          height: 10,
                          width: 8,
                          decoration: const BoxDecoration(
                            color: Colors.red,
                            shape: BoxShape.circle,
                          ),
                          child: Center(
                            child: Container()
                            
                          ),
                        ),
                      ),
                    ],

                  ),
                )


              ],
            ),
          ),

        
          Positioned(
            top: 130,
            left: 16,
            right: 16,
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 1,
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: TextField(
                decoration: InputDecoration(

                  hintText: 'Search job, company, etc...',
                  prefixIcon: const Icon(Icons.search , color: Colors.grey, size: 30,),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(vertical: 15),
                  hintStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: Colors.grey,
                      ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  

  Widget _buildRecentJobCard(
      String company, String position, String details, String salary, String timeSince) {
    return Card(
      elevation: 2.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(company, style: AppTextStyles.bodyText1),
                Text(timeSince, style: AppTextStyles.bodyText2),
              ],
            ),
            SizedBox(height: 8.0),
            Text(position, style: AppTextStyles.bodyText1),
            SizedBox(height: 4.0),
            Text(details, style: AppTextStyles.bodyText2),
            SizedBox(height: 8.0),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primaryColor,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              child: Text(salary),
            ),
          ],
        ),
      ),
    );
  }
}
