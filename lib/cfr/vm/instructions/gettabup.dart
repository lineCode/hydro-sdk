import 'package:hydro_sdk/cfr/vm/frame.dart';
import 'package:meta/meta.dart';

void gettabup(
    {@required Frame frame,
    @required int A,
    @required int B,
    @required int C}) {
  var v = frame.context.tableIndex(frame.getUpval(B), frame.RK(C));
  frame.SR(A, v);
}
