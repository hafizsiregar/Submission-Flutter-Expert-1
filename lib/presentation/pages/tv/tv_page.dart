import 'package:ditonton/common/constants.dart';
import 'package:ditonton/presentation/pages/tv/nowplay_tv_page.dart';
import 'package:ditonton/presentation/pages/tv/popular_tv_page.dart';
import 'package:ditonton/presentation/pages/tv/top_rated_tv_page.dart';
import 'package:ditonton/presentation/pages/tv/tv_list.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../common/state_enum.dart';
import '../../provider/tv/tv_list_notifier.dart';

class TvPage extends StatefulWidget {
  static const routeName = 'tv-page';
  const TvPage({ Key? key }) : super(key: key);

  @override
  State<TvPage> createState() => _TvPageState();
}

class _TvPageState extends State<TvPage> {

  @override
  void initState() {
    super.initState();
    Future.microtask(() => Provider.of<TvListNotifier>(context, listen: false)
      ..fetchNowPlayingTV()
      ..fetchPopularTV()
      ..fetchTopRatedTV());
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
                    title: 'Now Playing TV',
                    onTap: () => Navigator.pushNamed(
                        context, NowplayingTvPage.routeName),
                  ),
                  Consumer<TvListNotifier>(builder: (context, data, child) {
                    final state = data.nowPlayingState;
                    if (state == RequestState.Loading) {
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    } else if (state == RequestState.Loaded) {
                      return TvList(data.nowPlayingTV);
                    } else {
                      return Text('Failed');
                    }
                  }),
                  _buildSubHeading(
                    title: 'Popular TV',
                    onTap: () => Navigator.pushNamed(
                        context, PopularTvPage.routeName),
                  ),
                  Consumer<TvListNotifier>(builder: (context, data, child) {
                    final state = data.popularTVState;
                    if (state == RequestState.Loading) {
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    } else if (state == RequestState.Loaded) {
                      return TvList(data.popularTV);
                    } else {
                      return Text('Failed');
                    }
                  }),
                  _buildSubHeading(
                    title: 'Top Rated TV',
                    onTap: () => Navigator.pushNamed(
                        context, TopRatedTvPage.routeName),
                  ),
                  Consumer<TvListNotifier>(builder: (context, data, child) {
                    final state = data.topRatedTVState;
                    if (state == RequestState.Loading) {
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    } else if (state == RequestState.Loaded) {
                      return TvList(data.topRatedTV);
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