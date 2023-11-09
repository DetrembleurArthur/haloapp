import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:haloapp/models/game.dart';

import '../halo_api/api.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Game? game;
  @override
  void initState() {
    super.initState();
    HaloApi.getLastGame("SirArthurias").then((value) {
      setState(() {
        game = value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Text((game != null
              ? (game?.data[0].player.stats.core.scores.personal)!.toString()
              : "none"))),
    );
  }
}
