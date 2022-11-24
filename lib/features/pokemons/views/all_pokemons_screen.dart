import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokedex/features/pokemons/cubit/pokemons_cubit.dart';
import 'package:pokedex/features/pokemons/widgets/widgets.dart';
import 'package:pokedex/utils/utils.dart';
import 'package:pokedex/widgets/widgets.dart';
import 'package:flutter/material.dart';

import 'package:flutter_svg/svg.dart';

class AllPokemonsScreen extends StatefulWidget {
  const AllPokemonsScreen({super.key});

  @override
  State<AllPokemonsScreen> createState() => _AllPokemonsScreenState();
}

class _AllPokemonsScreenState extends State<AllPokemonsScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: pokedexColors.white,
          automaticallyImplyLeading: false,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                'assets/images/ic_logo.svg',
                height: 24.dy,
                width: 24.dx,
                fit: BoxFit.fitWidth,
              ),
              XBox(5.dy),
              Text(
                'Pokedex',
                style: TextStyle(
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w700,
                  color: pokedexColors.text,
                ),
              ),
            ],
          ),
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(70),
            child: Column(
              children: [
                Divider(
                  thickness: 2.dy,
                  color: pokedexColors.background,
                ),
                TabBar(
                  labelColor: pokedexColors.text,
                  unselectedLabelColor: pokedexColors.grey,
                  indicatorColor: pokedexColors.primary,
                  indicatorWeight: 4,
                  indicator: TabIndicator(),
                  labelStyle: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: pokedexColors.text,
                    fontSize: 16.sp,
                  ),
                  unselectedLabelStyle: TextStyle(
                    color: pokedexColors.grey,
                    fontSize: 16.sp,
                  ),
                  tabs: [
                    const Tab(
                      text: 'All Pokemons',
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Tab(
                          text: 'Favourites',
                        ),
                        XBox(4.dx),
                        Container(
                          height: 20.dy,
                          width: 20.dx,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: pokedexColors.primary,
                          ),
                          child: Center(
                            child:
                                BlocSelector<PokemonsCubit, PokemonsState, int>(
                              selector: (state) {
                                final favouritesPokemon = state.pokemons
                                    ?.where((pokemon) => pokemon.isFavourite)
                                    .toList();

                                return favouritesPokemon?.length ?? 0;
                              },
                              builder: (context, noOfFavourites) {
                                return Text(
                                  noOfFavourites.toString(),
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: pokedexColors.white,
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        body: const TabBarView(
          children: [
            _PokemonsViewTab(),
            _PokemonsViewTab(
              isFavourite: true,
            ),
          ],
        ),
      ),
    );
  }
}

class _PokemonsViewTab extends StatefulWidget {
  const _PokemonsViewTab({
    Key? key,
    this.isFavourite = false,
  }) : super(key: key);

  final bool isFavourite;
  @override
  State<_PokemonsViewTab> createState() => __PokemonsViewTabState();
}

class __PokemonsViewTabState extends State<_PokemonsViewTab> {
  final ScrollController _scrollController = ScrollController();
  final bool _isLoadingMore = false;

  @override
  void initState() {
    super.initState();

    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController
      ..removeListener(_onScroll)
      ..dispose();
    super.dispose();
  }

  void _onScroll() {
    if (!_scrollController.hasClients) return;
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.offset;
    final hasReachedBottom = currentScroll == maxScroll;
    if (hasReachedBottom) {}
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PokemonsCubit, PokemonsState>(
      builder: (context, state) {
        if (state.status == PokemonStatus.loading ||
            state.status == PokemonStatus.initial) {
          return const Center(
            child: LoadingIndicator(),
          );
        } else if (state.status == PokemonStatus.failure) {
          return const Center(
            child: Text('Something went wrong'),
          );
        }

        return Column(
          children: [
            Expanded(
              child: PokemonCharactersGrid(
                scrollController: _scrollController,
                pokemons: [
                  if (!widget.isFavourite)
                    ...state.pokemons!
                  else
                    ...state.pokemons!
                        .where((pokemon) => pokemon.isFavourite)
                        .toList()
                ],
              ),
            ),
            if (_isLoadingMore)
              Padding(
                padding: EdgeInsets.symmetric(vertical: 15.dy),
                child: const Align(
                  child: LoadingIndicator(
                    size: 20,
                  ),
                ),
              ),
          ],
        );
      },
    );
  }
}
