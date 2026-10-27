import 'package:dartchess/dartchess.dart' show Side;
import 'package:flutter/widgets.dart';
import 'widgets/background.dart';
import 'models.dart';

@immutable
class ChessboardColorScheme {
  const ChessboardColorScheme({
    required this.lightSquare,
    required this.darkSquare,
    required this.background,
    required this.whiteCoordBackground,
    required this.blackCoordBackground,
    required this.lastMove,
    required this.selected,
    required this.validMoves,
    required this.validPremoves,
  });

    const ChessboardColorScheme.solid({
    required Color light,
    required Color dark,
  }) : this(
         lightSquare: light,
         darkSquare: dark,
         background: const SolidColorChessboardBackground(
           lightSquare: light,
           darkSquare: dark,
         ),
         whiteCoordBackground: const SolidColorChessboardBackground(
           lightSquare: light,
           darkSquare: dark,
           coordinates: true,
         ),
         blackCoordBackground: const SolidColorChessboardBackground(
           lightSquare: light,
           darkSquare: dark,
           coordinates: true,
           orientation: Side.black,
         ),
         lastMove: const HighlightDetails(solidColor: Color(0x809cc700)),
         selected: const HighlightDetails(solidColor: Color(0x6014551e)),
         validMoves: const Color(0x4014551e),
         validPremoves: const Color(0x40203085),
       );

  final Color lightSquare;
  final Color darkSquare;
  final ChessboardBackground background;
  final ChessboardBackground whiteCoordBackground;
  final ChessboardBackground blackCoordBackground;
  final HighlightDetails lastMove;
  final HighlightDetails selected;
  final Color validMoves;
  final Color validPremoves;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other.runtimeType != runtimeType) return false;

    return other is ChessboardColorScheme &&
        other.lightSquare == lightSquare &&
        other.darkSquare == darkSquare &&
        other.background == background &&
        other.whiteCoordBackground == whiteCoordBackground &&
        other.blackCoordBackground == blackCoordBackground &&
        other.lastMove == lastMove &&
        other.selected == selected &&
        other.validMoves == validMoves &&
        other.validPremoves == validPremoves;
  }

  @override
  int get hashCode => Object.hash(
    lightSquare,
    darkSquare,
    background,
    whiteCoordBackground,
    blackCoordBackground,
    lastMove,
    selected,
    validMoves,
    validPremoves,
  );

  ChessboardColorScheme copyWith({
    Color? lightSquare,
    Color? darkSquare,
    ChessboardBackground? background,
    ChessboardBackground? whiteCoordBackground,
    ChessboardBackground? blackCoordBackground,
    HighlightDetails? lastMove,
    HighlightDetails? selected,
    Color? validMoves,
    Color? validPremoves,
  }) {
    return ChessboardColorScheme(
      lightSquare: lightSquare ?? this.lightSquare,
      darkSquare: darkSquare ?? this.darkSquare,
      background: background ?? this.background,
      whiteCoordBackground: whiteCoordBackground ?? this.whiteCoordBackground,
      blackCoordBackground: blackCoordBackground ?? this.blackCoordBackground,
      lastMove: lastMove ?? this.lastMove,
      selected: selected ?? this.selected,
      validMoves: validMoves ?? this.validMoves,
      validPremoves: validPremoves ?? this.validPremoves,
    );
  }

  static const green = ChessboardColorScheme(
    lightSquare: Color(0xffffffdd),
    darkSquare: Color(0xff86a666),
    background: SolidColorChessboardBackground(
      lightSquare: Color(0xffffffdd),
      darkSquare: Color(0xff86a666),
    ),
    whiteCoordBackground: SolidColorChessboardBackground(
      lightSquare: Color(0xffffffdd),
      darkSquare: Color(0xff86a666),
      coordinates: true,
    ),
    blackCoordBackground: SolidColorChessboardBackground(
      lightSquare: Color(0xffffffdd),
      darkSquare: Color(0xff86a666),
      coordinates: true,
      orientation: Side.black,
    ),
    lastMove: HighlightDetails(solidColor: Color.fromRGBO(0, 155, 199, 0.41)),
    selected: HighlightDetails(solidColor: Color.fromRGBO(216, 85, 0, 0.3)),
    validMoves: Color.fromRGBO(0, 0, 0, 0.20),
    validPremoves: Color(0x40203085),
  );
}
