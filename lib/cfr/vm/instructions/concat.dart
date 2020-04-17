import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/frame.dart';
import 'package:meta/meta.dart';

void concat(
    {@required Frame frame,
    @required int A,
    @required int B,
    @required int C}) {
  var o = frame.GR(B);
  for (int i = B + 1; i <= C; i++) {
    o = Context.luaConcat(o, frame.GR(i));
  }
  frame.SR(A, o);
}
