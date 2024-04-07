import 'package:audioplayers/audioplayers.dart';

Future<void> demo() async {
  final player = AudioPlayer();
  final dong = AssetSource('dong.ogg');
  await player.play(dong);
}

void main() {}
