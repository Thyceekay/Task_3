import 'dart:io';

void main(List<String> arguments) {
  fileConverter();
}
void fileConverter(){
  var inputLines = File('input.txt').readAsLinesSync();
  var excludeLines = File('exclude.txt').readAsLinesSync();

  var outputLines = inputLines.where((line) => line.trim().isNotEmpty && !excludeLines.contains(line.trim()));

  var outputTxt = outputLines.join('\n');
  File('output.txt').writeAsStringSync(outputTxt);
}
