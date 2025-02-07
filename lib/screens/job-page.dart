import 'package:flutter/material.dart';
import 'package:job_app/utils/colors.dart';
import 'package:job_app/utils/text_styles.dart';

class JobDetailPage extends StatelessWidget {
  final String company;
  final String location;
  final String position;
  final String salary;
  final List<String> skills;
  final List<String> descriptions;
  final String logoUrl;

  JobDetailPage({
    required this.company,
    required this.location,
    required this.position,
    required this.salary,
    required this.skills,
    required this.descriptions,
    required this.logoUrl,
  });

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: 0,
      child: Scaffold(
        backgroundColor: AppColors.backgroundColor,
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                       SizedBox(height: 230),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(height: 46.0),
                          Text(position, style: Theme.of(context).textTheme.headlineLarge),
                          SizedBox(height: 8.0),
                          Text(location, style: AppTextStyles.bodyText2),
                          SizedBox(height: 16.0),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Column(
                      children: [
                      //  const  TabBar(
                      //     labelStyle: TextStyle(fontStyle: FontStyle.normal),
                      //       physics: AlwaysScrollableScrollPhysics(), 
                      //     isScrollable: false,
                      //     tabs:  [
                      //       Tab(text: 'Description'),
                      //       Tab(text: 'Company'),
                      //       Tab(text: 'Applicant'),
                      //       Tab(text: 'Salary'),
                      //     ],
                      //   ),

                        const TabBar(
                          tabAlignment: TabAlignment.start  ,
                          labelStyle: TextStyle(fontStyle: FontStyle.normal),
                          physics: AlwaysScrollableScrollPhysics(),
                          isScrollable: true,
                          tabs: [
                            Tab(text: 'Description'),
                            Tab(text: 'Company'),
                            Tab(text: 'Applicant'),
                            Tab(text: 'Salary'),
                          ],
                        ),
                        IntrinsicHeight(
                          child: SizedBox(
                            height: 250,
                            child: TabBarView(
                              children: [
                                SingleChildScrollView(
                                  child: Padding(
                                    padding: const EdgeInsets.all(16.0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Job Responsibilities:",
                                          style: Theme.of(context).textTheme.headlineSmall,
                                        ),
                                        ...descriptions.map((desc) => ListTile(
                                          leading: const Icon(Icons.circle, size: 8.0),
                                          title: Text(desc, style: AppTextStyles.bodyText2),
                                        )),
                                      ],
                                    ),
                                  ),
                                ),
                                Center(
                                  child: Text(
                                    "Company Information",
                                    style: AppTextStyles.bodyText1,
                                  ),
                                ),
                                Center(
                                  child: Text(
                                    "Applicant Information",
                                    style: AppTextStyles.bodyText1,
                                  ),
                                ),
                                Center(
                                  child: Text(
                                    "Salary Information",
                                    style: AppTextStyles.bodyText1,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 0.0),   
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 16.0),
                        Text(
                          "Skills Needed:",
                          style: Theme.of(context).textTheme.headlineSmall,
                        ),
                        SizedBox(height: 8.0),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: skills
                                .map((skill) => Text(
                                      ".${skill}    ",
                                      style: AppTextStyles.bodyText2,
                                    ))
                                .toList(),
                          ),
                        ),
                      ],
                    ),
                  ),


                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 16.0),                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width - 150,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: AppColors.primaryColor,
                              foregroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                            child: const  Text("Apply Now"),
                          ),
                        ),
                    
                    
                          ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.primaryColor,
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                          child: const Icon(Icons.message_outlined , color: Colors.white,),
                        ),
                       
                      ],
                    ),
                  ),
                ],
              ),
            ),

            
             Container(
                    height: 230,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      image:  DecorationImage(
                        image: AssetImage("assets/images/teamgoogle.jpeg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  
                  ),
               
            
                
            Positioned(
              top: 160,
              left: MediaQuery.of(context).size.width / 2 - 50,
              child: CircleAvatar( 
                radius: 50,
                backgroundImage: AssetImage(logoUrl),
              ),
            ),

      
            
          ],
        ),
      ),
    );
  }
}