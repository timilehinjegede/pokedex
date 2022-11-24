import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokedex/core/models/pokemon_model.dart';
import 'package:pokedex/features/pokemon_details/cubit/pokemon_details_cubit.dart';
import 'package:pokedex/features/pokemon_details/widgets/widgets.dart';
import 'package:pokedex/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:pokedex/widgets/widgets.dart';

class PokemonDetailsScreen extends StatefulWidget {
  const PokemonDetailsScreen({
    super.key,
    required this.pokemonModel,
    required this.color,
  });

  final PokemonModel pokemonModel;
  final Color color;

  @override
  State<PokemonDetailsScreen> createState() => _PokemonDetailsScreenState();
}

class _PokemonDetailsScreenState extends State<PokemonDetailsScreen> {
  ScrollController? _scrollController;
  bool lastShrinkStatus = true;
  double expandedHeight = 240.dy;

  late PokemonModel _pokemon;

  @override
  void initState() {
    super.initState();
    _pokemon = widget.pokemonModel;

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
        onPressed: () {
          
        },
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
                    ? Text(
                        _pokemon.name,
                        style: const TextStyle(
                          color: Colors.black,
                        ),
                      )
                    : null,
                background: SafeArea(
                  child: PokemonDetailsInformation(
                    color: widget.color,
                    pokemon: _pokemon,
                  ),
                ),
              ),
              actions: _isShrink
                  ? [
                      Padding(
                        padding: const EdgeInsets.only(left: 8, right: 12),
                        child: PokemonCollapsedDetailsInformation(
                          pokemon: _pokemon,
                        ),
                      ),
                    ]
                  : null,
            ),

            // weight, height and bmi of a pokemon
            Builder(
              builder: (context) {
                final weight = context.select(
                  (PokemonDetailsCubit c) => c.state.pokemonModel?.weight,
                );
                final height = context.select(
                  (PokemonDetailsCubit c) => c.state.pokemonModel?.height,
                );
                final bmi = context.select(
                  (PokemonDetailsCubit cubit) => cubit.state.pokemonModel?.bmi,
                );

                if (bmi != null) {
                  return SliverPersistentHeader(
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
                            children: [
                              PokemonVitalItem(
                                vitalName: 'Height',
                                vitalValue: height.toString(),
                              ),
                              PokemonVitalItem(
                                vitalName: 'Weight',
                                vitalValue: weight.toString(),
                              ),
                              PokemonVitalItem(
                                vitalName: 'BMI',
                                vitalValue: bmi.toStringAsFixed(2),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                }

                return const SliverToBoxAdapter(
                  child: SizedBox.shrink(),
                );
              },
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
            BlocBuilder<PokemonDetailsCubit, PokemonDetailsState>(
              builder: (context, state) {
                if (state.status == PokemonStatus.loading ||
                    state.status == PokemonStatus.initial) {
                  return SliverToBoxAdapter(
                    child: SizedBox(
                      height: 250.dy,
                      child: const LoadingIndicator(),
                    ),
                  );
                } else if (state.status == PokemonStatus.failure) {
                  return SliverToBoxAdapter(
                    child: SizedBox(
                      height: 250.dy,
                      child: const Center(
                        child: Text('Something went wrong'),
                      ),
                    ),
                  );
                }

                // update the pokemon variable
                _pokemon = state.pokemonModel!.copyWith(
                  url: _pokemon.url,
                );

                return SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (
                      BuildContext context,
                      int index,
                    ) {
                      final stats = state.pokemonModel!.stats;

                      if (index == stats.length) {
                        return const PokemonStatsTile(
                          statName: 'Avg. Power',
                          statValue: 56,
                        );
                      }
                      return PokemonStatsTile(
                        statName: stats[index].stat.name,
                        statValue: stats[index].baseStat,
                      );
                    },
                    childCount: 5,
                  ),
                );
              },
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
