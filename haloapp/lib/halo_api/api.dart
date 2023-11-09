import 'dart:convert';

import 'package:haloapp/models/game.dart';
import 'package:http/http.dart';

class HaloApi {
  static const URL =
      "https://sr-nextjs.vercel.app/api/halodotapi?path=%2Fgames%2Fhalo-infinite%2Fstats%2Fmultiplayer";

  static String getStatsPlayerUrl(String player) {
    return "$URL%2Fplayers%2F$player%2Fservice-record%2Fmatchmade%3Ffilter%3Dall";
  }

  static String getLastGamePlayerUrl(String player) {
    return "$URL%2Fplayers%2F$player%2Fmatches%3Ftype%3Dmatchmaking%26count%3D1%26offset%3D0";
  }

  static String getMedalImageUrl(String medalId, {int size = 128}) {
    return "https://etxvqmdrjezgtwgueiar.supabase.co/storage/v1/render/image/public/assets/games/halo-infinite/metadata/multiplayer/medals/$medalId.png?width=$size&height=$size";
  }

  static Future<Game?> getLastGame(String player) async {
    final url = Uri.parse(getLastGamePlayerUrl(player));
    Response response = await get(url);
    if (response.statusCode == 200) {
      dynamic json = jsonDecode(response.body);
      Game game = Game.fromJson(json);
      return game;
    }
    return null;
  }
}
