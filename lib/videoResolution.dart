import 'package:flutter_ffmpeg/flutter_ffmpeg.dart';

class VideoResolution {
  void changeRes() {
    final FlutterFFmpeg ffmpeg = FlutterFFmpeg();
    ffmpeg.execute(
        "-i input.mp4 -vf scale=640x480:flags=lanczos -c:v libx264 -preset slow -crf 21 output_compress_480p.mp4");
  }
}
