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
                            child: Text(
                              '2',
                              style: TextStyle(
                                fontSize: 12,
                                color: pokedexColors.white,
                              ),
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
        body: TabBarView(
          children: [
            Column(
              children: [
                Expanded(
                  child: PokemonCharactersGrid(
                    scrollController: _scrollController,
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
            ),
            const PokemonCharactersGrid(),
          ],
        ),
      ),
    );
  }
}
