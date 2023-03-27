import 'package:flutter/material.dart';
import 'package:movies_store/View/Screen/CategoryPage.dart';
import 'package:movies_store/View/widget/HomePage/CustomContainer.dart';
import 'package:movies_store/View/widget/moviePage/searchBar.dart';
import 'package:movies_store/core/constant/color.dart';
import 'package:movies_store/data/model/MoviesCategoriesModel.dart';
import 'package:movies_store/service/getApiGetagory.dart';

class Home extends StatefulWidget {
  Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        color: AppColor.backgroundColor,
        child: Padding(
          padding: const EdgeInsets.all(35),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const TextFormFieldSearch(),
              Padding(
                padding: const EdgeInsets.only(bottom: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Text(
                      "Trending Categories",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w800),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: FutureBuilder<MoviesCategoriesModel>(
                  future: apiService.fetchcategories(),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      final listMoveis = snapshot.data!.categories;
                      return GridView.builder(
                        // ignore: prefer_const_constructors
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisSpacing: 12,
                            crossAxisSpacing: 12),
                        itemCount: listMoveis!.length,
                        itemBuilder: (context, index) {
                          final category = listMoveis[index];
                          return CustomContainer(
                              text: category.title.toString(),
                              onTap: () {
                                Navigator.of(context)
                                    .push(MaterialPageRoute(builder: (context) {
                                  return CategoryPage(category);
                                }));
                              });
                        },
                      );
                    } else if (snapshot.hasError) {
                      return Text('${snapshot.error}');
                    }
                    return const Center(child: CircularProgressIndicator());
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
