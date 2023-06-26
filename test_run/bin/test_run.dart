import 'dart:io';

void main(List<String> arguments) {
  fileConverter();
}
void fileConverter(){

// Read input.txt and exclude.txt files

  var inputLines = File('input.txt').readAsLinesSync();
  var excludeLines = File('exclude.txt').readAsLinesSync();

// Filter lines that are in input.txt but not in exclude.txt 
// Remove empty lines by trimming the spaces at the beginnings and ends of lines
// Ensuring that inputLines is not empty
 
  var outputLines = inputLines.where((line) => line.trim().isNotEmpty && !excludeLines.contains(line.trim()));
  
// Write outputLines to output.txt file

  var outputTxt = outputLines.join('\n');   File('output.txt').writeAsStringSync(outputTxt);
}
