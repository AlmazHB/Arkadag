// ignore_for_file: file_names

import 'package:audioplayers/audioplayers.dart';

import 'package:flutter/material.dart';

import '../../data/data.dart';

class AudioBookScreen extends StatefulWidget {
  const AudioBookScreen({
    super.key,
    required this.addressImage,
    required this.addressAudio,
    required this.title,
  });
  final String addressAudio;
  final String addressImage;
  final String title;

  @override
  State<AudioBookScreen> createState() => _AudioBookScreenState();
}

class _AudioBookScreenState extends State<AudioBookScreen> {
  AudioPlayer audioPlayer = AudioPlayer();
  AudioCache audioCache = AudioCache();
  bool isPlaying = false;
  bool isSongPlaing = false;
  Duration duration = const Duration();
  Duration position = const Duration();

  void seelToSeconds(int second) {
    Duration newDuration = Duration(seconds: second);
    audioPlayer.seek(newDuration);
  }

  Future<void> playAudioFromAsset(String addres) async {
    await audioPlayer.play(AssetSource(addres));
  }

  @override
  void initState() {
    super.initState();
    isPlaying;
  }

  @override
  void dispose() {
    // Dispose of the audio player when the state is disposed (leaving the screen)
    audioPlayer.dispose();
    super.dispose();
  }

  @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     appBar: AppBar(
  //       title: Text(widget.title),
  //     ),
  //     body: Column(
  //       children: [
  //         Container(
  //           height: MediaQuery.sizeOf(context).height * 0.7,
  //           decoration: const BoxDecoration(color: Colors.white),
  //           child: Center(
  //             child: Container(
  //               decoration: BoxDecoration(
  //                 image: DecorationImage(
  //                   image: AssetImage(widget.addressImage),
  //                 ),
  //               ),
  //             ),
  //           ),
  //         ),
  //         Column(
  //           children: [
  //             // Slider(
  //             //   value: position.inSeconds.toDouble(),
  //             //   min: 0,
  //             //   max: duration.inSeconds.toDouble(),
  //             //   onChanged: (value) async {
  //             //     final position = Duration(seconds: value.toInt());
  //             //     await audioPlayer.seek(position);
  //             //     await audioPlayer.resume();
  //             //   },
  //             // ),
  //             // Row(
  //             //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //             //   children: [
  //             //     Text(formatTime(position)),
  //             //     Text(formatTime(duration - position)),
  //             //   ],
  //             // ),
  //             const SizedBox(
  //               height: 20,
  //             ),
  //             CircleAvatar(
  //               radius: 30,
  //               child: IconButton(
  //                 icon: Icon(
  //                   isPlaying ? Icons.pause : Icons.play_arrow,
  //                 ),
  //                 iconSize: 25,
  //                 onPressed: () async {
  //                   if (isPlaying) {
  //                     await audioPlayer.pause();
  //                     setState(() {
  //                       isPlaying = false;
  //                     });
  //                   } else {
  //                     await playAudioFromAsset(widget.addressAudio);
  //                     setState(() {
  //                       isPlaying = true;
  //                     });
  //                   }
  //                 },
  //               ),
  //             )
  //           ],
  //         ),
  //       ],
  //     ),
  //   );
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        title: Text(
          "Audio Kitap",
          style: theme.appBarTheme.titleTextStyle,
        ),
        centerTitle: true,
      ),
      backgroundColor: theme.colorScheme.background,
      body: Container(
        decoration: BoxDecoration(color: theme.colorScheme.background),
        margin: const EdgeInsets.only(top: 30),
        child: Stack(
          children: [
            Positioned(
              top: 0,
              child: Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: 60,
                ),
                width: size.width - 120,
                height: size.height * 0.5,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      widget.addressImage,
                    ),
                    fit: BoxFit.fill,
                  ),
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: tColor, width: 1),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              child: Container(
                height: size.height * 0.18,
                width: size.width,
                padding: const EdgeInsets.only(
                  top: 28,
                ),
                decoration: BoxDecoration(
                  color: theme.colorScheme.background,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(54),
                    topRight: Radius.circular(54),
                  ),
                  border: Border.all(color: tColor, width: 1),
                ),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        height: 60,
                        width: 60,
                        child: CircleAvatar(
                          backgroundColor: theme.primaryColor,
                          radius: 48,
                          child: IconButton(
                            icon:  Icon(
                              Icons.keyboard_double_arrow_left,color: theme.colorScheme.background,
                            ),
                            iconSize: 32,
                            onPressed: () async {
                              // if (isPlaying) {
                              //   await audioPlayer.pause();
                              //   setState(() {
                              //     isPlaying = false;
                              //   });
                              // } else {
                              //   await playAudioFromAsset(widget.addressAudio);
                              //   setState(() {
                              //     isPlaying = true;
                              //   });
                              // }
                            },
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 80,
                        width: 80,
                        child: CircleAvatar(
                          backgroundColor: theme.primaryColor,
                          radius: 48,
                          child: IconButton(
                            icon: Icon(
                              isPlaying ? Icons.pause : Icons.play_arrow,color: theme.colorScheme.background,
                            ),
                            iconSize: 32,
                            onPressed: () async {
                              if (isPlaying) {
                                await audioPlayer.pause();
                                setState(() {
                                  isPlaying = false;
                                });
                              } else {
                                await playAudioFromAsset(widget.addressAudio);
                                setState(() {
                                  isPlaying = true;
                                });
                              }
                            },
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 60,
                        width: 60,
                        child: CircleAvatar(
                          backgroundColor: theme.primaryColor,
                          radius: 48,
                          child: IconButton(
                            icon:  Icon(Icons.keyboard_double_arrow_right,color: theme.colorScheme.background,),
                            iconSize: 32,
                            onPressed: () async {
                              // if (isPlaying) {
                              //   await audioPlayer.pause();
                              //   setState(() {
                              //     isPlaying = false;
                              //   });
                              // } else {
                              //   await playAudioFromAsset(widget.addressAudio);
                              //   setState(() {
                              //     isPlaying = true;
                              //   });
                              // }
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

String formatTime(Duration duration) {
  String twoDigits(int n) => n.toString().padLeft(2, '0');
  final hours = twoDigits(duration.inHours);
  final minutes = twoDigits(duration.inMinutes.remainder(60));
  final seconds = twoDigits(duration.inSeconds.remainder(60));
  return [if (duration.inHours > 0) hours, minutes, seconds].join(':');
}
