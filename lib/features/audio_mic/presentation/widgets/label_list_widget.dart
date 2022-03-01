import 'package:flutter/material.dart';
import 'package:flutter_tensorflow_audio/common/ui/widgets/card_detector_widget.dart';

// Se o a stream bater com o resultado ira mudar o estado do card
Widget labelListWidget(List<String>? labelList, [String? result]) {
  return Center(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: labelList!.map((labels) {
            if (labels == result) {
              return cardDetectorWidget(
                  1,
                  1,
                  'Resultado',
                  labels.toString() == "0 Background Noise"
                      ? "Ruído 💨"
                      : labels.toString() == "1 Music"
                      ? "Música 🎵"
                      : labels.toString() == "2 Speech"
                      ? "Podcast 🎙️"
                      : "Desconhecido");
            } else {
              return cardDetectorWidget(
                  2,
                  1,
                  'Resultado',
                  labels.toString() == "0 Background Noise"
                      ? "Ruído 💨"
                      : labels.toString() == "1 Music"
                      ? "Música 🎵"
                      : labels.toString() == "2 Speech"
                      ? "Podcast 🎙️"
                      : "Desconhecido");
            }
          }).toList()));
}