import 'package:flutter/material.dart';
import 'package:job_app/utils/colors.dart';
import 'package:job_app/utils/text_styles.dart';
import 'package:job_app/widgets/recent-job-card.dart';
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
                            '\$7K',"assets/images/pinterest.png",
                            //skills
                            ["UI Design", "UX Design", "Interaction Design"],
                            //descriptions
                            ["Designing and prototyping user interfaces", "Designing and prototyping user interfaces", "Designing and prototyping user interfaces"]
                          ),
                          SizedBox(width: 16.0),
                          recommendationCard( context,
                            'Facebook',
                            'California, USA',
                            'UI Design',
                            'Senior • Fulltime',
                            '\$6K',
                            "assets/images/facebook.png",
                            ["UI Design", "UX Design", "Interaction Design"],
                            ["Designing and prototyping user interfaces", "Designing and prototyping user interfaces", "Designing and prototyping user interfaces"]
                          ),
                          SizedBox(width: 16.0),
                          recommendationCard( context,
                            'Google',
                            'California, USA',
                            'Product Designer',
                            'Senior • Fulltime • Remote',
                            '\$5K',
                            "assets/images/google.png",
                            ["UI Design", "UX Design", "Interaction Design"],
                            ["Designing and prototyping user interfaces", "Designing and prototyping user interfaces", "Designing and prototyping user interfaces"]
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 16.0),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Text(
                        'Recent Jobs List',
                         style: Theme.of(context).textTheme.headlineLarge,
                      ),
                    ),
                    SizedBox(height: 16.0),
                    recentJobCard(
                      context,
                      'Google',
                      'Product Designer',
                      'Senior • Fulltime • Remote',
                      '\$5K',
                      '12 Minute Ago',
                      'assets/images/google.png',
                      
                    ),
                    SizedBox(height: 16.0),
                    recentJobCard(
                      context,
                      'Apple',
                      'UI/UX Designer',
                      'Fulltime • Remote',
                      '\$6K',
                      '30 Minute Ago',
                       'assets/images/apple.png',
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

  

  
}
