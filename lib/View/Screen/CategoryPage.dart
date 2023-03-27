import 'package:flutter/material.dart';
import 'package:movies_store/View/Screen/moviePage.dart';
import 'package:movies_store/View/widget/gategoryPage.dart/ListtileOfGategory.dart';
import 'package:movies_store/View/widget/gategoryPage.dart/Textbody.dart';
import 'package:movies_store/View/widget/moviePage/searchBar.dart';
import 'package:movies_store/core/constant/color.dart';
import 'package:movies_store/core/constant/imageAssets.dart';

import 'package:movies_store/data/model/ListOfMoviesModel.dart';
import 'package:movies_store/data/model/MoviesCategoriesModel.dart';
import 'package:movies_store/service/getAllMovie.dart';

class CategoryPage extends StatefulWidget {
  final Categories category;
  CategoryPage(this.category, {super.key});

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.backgroundColor,
        elevation: 0,
        title: const Text(
          'Movies Store',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
        ),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {}, icon: IamgeAssets.notificationIcon)
        ],
      ),
      backgroundColor: AppColor.backgroundColor,
      body: widget.category.id == null
          ? Container()
          : Padding(
              padding: const EdgeInsets.all(37),
              child: Column(
                children: [
                  const TextFormFieldSearch(),
                  GategoryText(text: widget.category.title!),
                  Expanded(
                    child: FutureBuilder<ListOfMoviesModel>(
                      future: apiService.fetchAllMovies(),
                      builder: (context, snapshot) {
                        if (snapshot.hasData) {
                          final listMoveis = snapshot.data!.movies
                              ?.where((element) =>
                                  element.categoryId == widget.category.id)
                              .toList();

                          return listMoveis!.isEmpty
                              ? const Center(
                                  child: Text(
                                    "Coming Soon",
                                    style: TextStyle(
                                        color: AppColor.red,
                                        fontWeight: FontWeight.w800,
                                        fontSize: 25),
                                  ),
                                )
                              : ListView.builder(
                                  itemCount: listMoveis.length,
                                  itemBuilder: (context, int i) {
                                    final movies = listMoveis[i];
                                    return ListtileOfGategory(
                                      rate: movies.rating.toString(),
                                      imageUrl:
                                          "https://darsoft.b-cdn.net/assets/movies/${i + 1}.jpg",
                                      movieName: movies.title.toString(),
                                      onTap: () {
                                        Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder: (context) {
                                          return MoviePage(movies);
                                        }));
                                      },
                                      yearOfMovie: movies.year.toString(),
                                    );
                                  });
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
    );
  }
}
