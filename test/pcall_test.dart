import 'package:flua/src/5_2/context.dart';
import 'package:flua/src/5_2/state.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('', () async {
    var state = LuaState();

    List<String> outLines = [];

    state.context.env["print"] = (List<dynamic> args) {
      outLines
          .add(args.map((a) => Context.luaToString(a).toString()).join("\t"));
    };

    List<String> expectedOutLines = [
      "ayy",
      "false	pcall.lc:3: md",
      "69",
      "true	420"
    ];

    var res = await state.doFile("pcall.lc");

    expect(res.success, true);
    expect(outLines.length, expectedOutLines.length);

    for (var i = 0; i != outLines.length; ++i) {
      expect(outLines[i], expectedOutLines[i]);
    }
  });
}