import 'package:dartchess/dartchess.dart';
import 'package:flutter/widgets.dart';
import 'models.dart';

const _pieceSetsPath = 'assets/piece_sets';

enum PieceSet {
  cburnett('Syntoxan', PieceSet.syntoxanAssets);

  const PieceSet(this.label, this.assets);

  final String label;

  final PieceAssets assets;

  static const PieceAssets syntoxanAssets = {
    PieceKind.blackRook: AssetImage('$_pieceSetsPath/syntoxan/bR.webp', package: 'chessground'),
    PieceKind.blackPawn: AssetImage('$_pieceSetsPath/syntoxan/bP.webp', package: 'chessground'),
    PieceKind.blackKnight: AssetImage('$_pieceSetsPath/syntoxan/bN.webp', package: 'chessground'),
    PieceKind.blackBishop: AssetImage('$_pieceSetsPath/syntoxan/bB.webp', package: 'chessground'),
    PieceKind.blackQueen: AssetImage('$_pieceSetsPath/syntoxan/bQ.webp', package: 'chessground'),
    PieceKind.blackKing: AssetImage('$_pieceSetsPath/syntoxan/bK.webp', package: 'chessground'),
    PieceKind.whiteRook: AssetImage('$_pieceSetsPath/syntoxan/wR.webp', package: 'chessground'),
    PieceKind.whitePawn: AssetImage('$_pieceSetsPath/syntoxan/wP.webp', package: 'chessground'),
    PieceKind.whiteKnight: AssetImage('$_pieceSetsPath/syntoxan/wN.webp', package: 'chessground'),
    PieceKind.whiteBishop: AssetImage('$_pieceSetsPath/syntoxan/wB.webp', package: 'chessground'),
    PieceKind.whiteQueen: AssetImage('$_pieceSetsPath/syntoxan/wQ.webp', package: 'chessground'),
    PieceKind.whiteKing: AssetImage('$_pieceSetsPath/syntoxan/wK.webp', package: 'chessground'),
  };
}
