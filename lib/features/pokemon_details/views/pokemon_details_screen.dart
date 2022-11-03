import 'package:pokedex/features/pokemon_details/widgets/widgets.dart';
import 'package:pokedex/utils/utils.dart';
import 'package:flutter/material.dart';

class PokemonDetailsScreen extends StatefulWidget {
  const PokemonDetailsScreen({
    super.key,
    required this.color,
  });

  final Color color;

  @override
  State<PokemonDetailsScreen> createState() => _PokemonDetailsScreenState();
}

class _PokemonDetailsScreenState extends State<PokemonDetailsScreen> {
  ScrollController? _scrollController;
  bool lastShrinkStatus = true;
  double expandedHeight = 240.dy;

  @override
  void initState() {
    super.initState();

    _scrollController = ScrollController()..addListener(_scrollListener);
  }

  @override
  void dispose() {
    _scrollController?.removeListener(_scrollListener);
    _scrollController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: pokedexColors.white,
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: pokedexColors.primary,
        foregroundColor: pokedexColors.white,
        extendedTextStyle: const TextStyle(
          fontWeight: FontWeight.w700,
        ),
        onPressed: () {},
        label: const Text(
          'Mark as favourite',
        ),
      ),
      body: NestedScrollView(
        controller: _scrollController,
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            // sliver app bar - as adked to be used a s a requirement
            SliverAppBar(
              floating: false,
              elevation: 0,
              backgroundColor: widget.color.withOpacity(.1),
              pinned: true,
              expandedHeight: expandedHeight,
              automaticallyImplyLeading: false,
              leading: InkWell(
                customBorder: const CircleBorder(),
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.chevron_left_rounded,
                  color: pokedexColors.black,
                  size: 30.sp,
                ),
              ),
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: false,
                collapseMode: CollapseMode.parallax,
                title: _isShrink
                    ? const Text(
                        'Bulbasaur',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      )
                    : null,
                background: SafeArea(
                  child: PokemonDetailsInformation(
                    color: widget.color,
                  ),
                ),
              ),
              actions: _isShrink
                  ? [
                      const Padding(
                        padding: EdgeInsets.only(left: 8, right: 12),
                        child: PokemonCollapsedDetailsInformation(),
                      ),
                    ]
                  : null,
            ),

            // weight, height and bmi of a pokemon
            SliverPersistentHeader(
              pinned: true,
              delegate: _SliverAppBarDelegate(
                PreferredSize(
                  preferredSize: Size.fromHeight(75.dy),
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: pokedexColors.white,
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        PokemonVitalItem(
                          vitalName: 'Height',
                          vitalValue: '23',
                        ),
                        PokemonVitalItem(
                          vitalName: 'Weight',
                          vitalValue: '45',
                        ),
                        PokemonVitalItem(
                          vitalName: 'BMI',
                          vitalValue: '2.34',
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ];
        },
        body: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Divider(
                height: 10,
                thickness: 8.sp,
                color: pokedexColors.background,
              ),
            ),
            SliverPadding(
              padding: EdgeInsets.only(left: 15.sp, top: 15.sp),
              sliver: SliverToBoxAdapter(
                child: Text(
                  'Base stats',
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                    color: pokedexColors.text,
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Divider(
                color: pokedexColors.background,
                height: 20.sp,
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (
                  BuildContext context,
                  int index,
                ) {
                  final stats = [''];
                  if (index == stats.length) {
                    return const PokemonStatsTile(
                      statName: 'Avg. Power',
                      statValue: 56,
                    );
                  }
                  return const PokemonStatsTile(
                    statName: 'Speed Accuracy',
                    statValue: 3,
                  );
                },
                childCount: 5,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _scrollListener() {
    if (_isShrink != lastShrinkStatus) {
      setState(() {
        lastShrinkStatus = _isShrink;
      });
    }
  }

  bool get _isShrink {
    return _scrollController != null &&
        _scrollController!.hasClients &&
        _scrollController!.offset > (expandedHeight - kToolbarHeight);
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate(this._tabBar);

  final PreferredSize _tabBar;

  @override
  double get minExtent => _tabBar.preferredSize.height;
  @override
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return _tabBar;
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return false;
  }
}
