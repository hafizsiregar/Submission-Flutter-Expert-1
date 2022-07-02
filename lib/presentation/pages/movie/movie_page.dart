import 'package:ditonton/presentation/pages/movie/popular_movies_page.dart';
import 'package:ditonton/presentation/provider/movie/movie_list_notifier.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../common/constants.dart';
import '../../../common/state_enum.dart';
import 'movie_list.dart';
import 'nowplay_movie_page.dart';
import 'top_rated_movies_page.dart';

class MoviePage extends StatefulWidget {
  const MoviePage({Key? key}) : super(key: key);

  @override
  State<MoviePage> createState() => _MoviePageState();
}

class _MoviePageState extends State<MoviePage> {

  @override
  void initState() {
    super.initState();
    Future.microtask(
        () => Provider.of<MovieListNotifier>(context, listen: false)
          ..fetchNowPlayingMovies()
          ..fetchPopularMovies()
          ..fetchTopRatedMovies());
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Movie
                  _buildSubHeading(
                    title: 'Now Playing Movies',
                    onTap: () => Navigator.pushNamed(
                        context, NowplayMoviePage.routeName),
                  ),
                  Consumer<MovieListNotifier>(builder: (context, data, child) {
                    final state = data.nowPlayingState;
                    if (state == RequestState.Loading) {
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    } else if (state == RequestState.Loaded) {
                      return MovieList(data.nowPlayingMovies);
                    } else {
                      return Text('Failed');
                    }
                  }),
                  _buildSubHeading(
                    title: 'Popular Movies',
                    onTap: () => Navigator.pushNamed(
                        context, PopularMoviesPage.routeName),
                  ),
                  Consumer<MovieListNotifier>(builder: (context, data, child) {
                    final state = data.popularMoviesState;
                    if (state == RequestState.Loading) {
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    } else if (state == RequestState.Loaded) {
                      return MovieList(data.popularMovies);
                    } else {
                      return Text('Failed');
                    }
                  }),
                  _buildSubHeading(
                    title: 'Top Rated Movie',
                    onTap: () => Navigator.pushNamed(
                        context, TopRatedMoviesPage.routeName),
                  ),
                  Consumer<MovieListNotifier>(builder: (context, data, child) {
                    final state = data.topRatedMoviesState;
                    if (state == RequestState.Loading) {
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    } else if (state == RequestState.Loaded) {
                      return MovieList(data.topRatedMovies);
                    } else {
                      return Text('Failed');
                    }
                  }),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Row _buildSubHeading({required String title, required Function() onTap}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: kHeading6,
        ),
        InkWell(
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [Text('See More'), Icon(Icons.arrow_forward_ios)],
            ),
          ),
        ),
      ],
    );
  }