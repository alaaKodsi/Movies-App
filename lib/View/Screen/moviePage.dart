import 'package:flutter/material.dart';
import 'package:movies_store/View/widget/moviePage/CastWidget.dart';
import 'package:movies_store/View/widget/moviePage/SummaryBody.dart';
import 'package:movies_store/View/widget/moviePage/coverImage.dart';
import 'package:movies_store/View/widget/moviePage/deteilsMovesContainer.dart';
import 'package:movies_store/View/widget/moviePage/summaryText.dart';
import 'package:movies_store/View/widget/moviePage/youtubePlayer.dart';
import 'package:movies_store/core/constant/color.dart';
import 'package:movies_store/core/constant/imageAssets.dart';
import 'package:movies_store/data/model/ListOfMoviesModel.dart';
import 'package:movies_store/service/getAllMovie.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MoviePage extends StatefulWidget {
  final Movies movie;
  MoviePage(this.movie, {super.key});

  @override
  State<MoviePage> createState() => _MoviePageState();
}

class _MoviePageState extends State<MoviePage> {
  void loadMovies(String title, String yera, String rate) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      var titleMovie = (prefs.setString('title', title));
      var yeraMovie = (prefs.setString('title', yera));
      var rateMovie = (prefs.setString('title', rate));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.backgroundColor,
        elevation: 0,
        title: Text(
          widget.movie.title!,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
        ),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {}, icon: IamgeAssets.notificationIcon)
        ],
      ),
      backgroundColor: AppColor.backgroundColor,
      body: Padding(
        padding: const EdgeInsets.all(13),
        child: Column(
          children: [
            const YoutubePlayer(),
            Row(
              children: [
                CoverMovie(
                    imageUrl:
                        "https://darsoft.b-cdn.net/assets/movies/${widget.movie.id}.jpg",
                    onTap: () {}),
                Expanded(
                  child: DeteilsMovies(
                    movieName: widget.movie.title!,
                    movieRate: widget.movie.rating.toString(),
                    movieYears: widget.movie.year!,
                    onPressed: () async {
                      loadMovies(
                        widget.movie.title!,
                        widget.movie.year!,
                        widget.movie.rating.toString(),
                      );
                    },
                  ),
                ),
              ],
            ),
            const SummaryText(),
            SummeryBody(
                directorName: widget.movie.director!,
                textbody: widget.movie.summary!,
                writers: widget.movie.writers.toString()),
            Padding(
              padding: const EdgeInsets.only(left: 27),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Text(
                    "Cast",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w800),
                  )
                ],
              ),
            ),
            Expanded(
              child: FutureBuilder<ListOfMoviesModel>(
                future: apiService.fetchAllMovies(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    final listMoveis = snapshot.data!.movies;
                    return ListView.builder(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: listMoveis!.length,
                      itemBuilder: (context, index) {
                        // final category = listMoveis[index];
                        return CastWidget(
                          urlImage:
                              "https://darsoft.b-cdn.net/assets/artists/${index + 1}.jpg",
                        );
                      },
                    );
                  } else if (snapshot.hasError) {
                    return Text('${snapshot.error}');
                  }
                  return const Center(child: CircularProgressIndicator());
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
