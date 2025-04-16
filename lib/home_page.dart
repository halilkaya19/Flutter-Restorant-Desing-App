import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final List<String> categoryList = [
    "Burger",
    "Sushi",
    "Soup",
    "Pasta",
    "test1",
    "test 2",
  ];

  final List<String> restorantList = [
    "Italiano Restaurant 1",
    "Italiano Restaurant 2",
    "Italiano Restaurant 3",
  ];

  final List<String> menuList = [
    "Spaghetti bolognize 1",
    "Spaghetti bolognize 2",
  ];

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final TextTheme = theme.textTheme;
    final schameColor = theme.colorScheme;
    final size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.symmetric(vertical: 5, horizontal: 6),
          padding: EdgeInsets.only(top: 40, right: 12, left: 12, bottom: 20),
          width: size.width,
          height: size.height * 0.3 - 30,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            gradient: LinearGradient(
              colors: [Color(0xffe6b87f), Color(0xff290a0a)],
              stops: [0, 1],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FadeInLeft(
                    duration: Duration(seconds: 1),
                    child: SizedBox(
                      width: 40,
                      height: 40,
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                          "https://cdn-icons-png.flaticon.com/256/219/219983.png",
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 15),
                  Expanded(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hi,Ronald",
                          style: theme.textTheme.bodyMedium?.copyWith(
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "Lets's choose your food!",
                          style: theme.textTheme.bodyMedium?.copyWith(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                  FadeInRight(
                    duration: Duration(seconds: 1),
                    child: Container(
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Icon(Icons.shopping_basket, color: Colors.white),
                    ),
                  ),
                ],
              ),
              Spacer(),
              Container(
                margin: EdgeInsets.only(bottom: 5),
                width: size.width,
                height: size.height * 0.07,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.black45.withOpacity(0.5),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Search for food",
                    hintStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                      fontWeight: FontWeight.w300,
                    ),
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.search, color: Colors.white),
                    suffixIcon: Container(
                      margin: EdgeInsets.only(right: 15, top: 7, bottom: 7),
                      width: 35,
                      height: 30,
                      padding: EdgeInsets.all(5),
                      child: Icon(
                        Icons.indeterminate_check_box_outlined,
                        color: Colors.white,
                        size: 22,
                      ),
                      decoration: BoxDecoration(
                        color: schameColor.primary,
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: ListView(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Food Category",
                      style: TextTheme.bodyLarge?.copyWith(color: Colors.black),
                    ),
                    SizedBox(height: 15),
                    Container(
                      width: size.width,
                      height: size.height * 0.2 - 55,
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 60,
                                height: 62,
                                margin: EdgeInsets.only(right: 20),
                                padding: EdgeInsets.all(12),
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: Image.asset(
                                  "assets/images/m${index + 1}.png",
                                  fit: BoxFit.cover,
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                categoryList[index].toString(),
                                style: TextTheme.bodyMedium?.copyWith(
                                  color: Colors.grey.shade700,
                                ),
                              ),
                            ],
                          );
                        },
                        itemCount: categoryList.length,
                        scrollDirection: Axis.horizontal,
                      ),
                    ),
                    SizedBox(height: 1),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Nearby restorant",
                          style: TextTheme.bodyLarge?.copyWith(
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          "See more",
                          style: TextTheme.bodyLarge?.copyWith(
                            color: schameColor.primary,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 12),
                    Container(
                      width: size.width,
                      height: size.height * 0.3 - 30,
                      child: ListView.builder(
                        itemBuilder: (context, index) {
                          return Container(
                            margin: EdgeInsets.only(right: 14),
                            width: size.width / 2 - 35,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.4),
                                  blurRadius: 5,
                                  spreadRadius: 1,
                                  offset: Offset.infinite,
                                ),
                              ],
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  width: size.width,
                                  height: 144,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      topRight: Radius.circular(10),
                                    ),
                                    image: DecorationImage(
                                      image: AssetImage(
                                        "assets/images/r${index + 1}.jpg",
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        restorantList[index].toString(),
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.black,
                                        ),
                                      ),
                                      SizedBox(height: 6),
                                      Text(
                                        "0.5 km",
                                        style: TextStyle(
                                          fontSize: 13,
                                          color: schameColor.primary,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                        itemCount: restorantList.length,
                        scrollDirection: Axis.horizontal,
                      ),
                    ),
                    SizedBox(height: 12),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Recomended for you",
                          style: TextTheme.bodyLarge?.copyWith(
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          "See more",
                          style: TextTheme.bodyLarge?.copyWith(
                            color: schameColor.primary,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height:15),
                for (var i = 0; i < menuList.length;i++)
                  Container(
                    margin: EdgeInsets.only(bottom: 10),
                    height: size.height * 0.2 - 30,
                    padding: EdgeInsets.all(3),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: size.width * 0.3,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(image: AssetImage("assets/images/y${i + 1}.jpg"),fit: BoxFit.cover),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 14),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(menuList[i].toString(),style: TextStyle(color: Colors.black),),
                                SizedBox(height: 15,),
                                Text("Lorem borem lorem lorem lorem lorem lorem",style: TextStyle(color: Colors.grey,fontSize: 14),)
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
