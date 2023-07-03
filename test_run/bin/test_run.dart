import 'dart:io';

void f1leConverter() {
  // Read input.txt and exclude.txt files
  var inputLines = File('input.txt').readAsLinesSync();
  var excludeLines = File('exclude.txt').readAsLinesSync();

  // List to store output lines
  var outputLines = <String>[];

  // Iterate over each line in inputLines
  for (var line in inputLines) {
    // Separate the line before trimming
    var separatedLine = separateLine(line);

    // Check if the separated line is non-empty and not present in excludeLines
    if (separatedLine.trim().isNotEmpty && !excludeLines.contains(separatedLine.trim())) {
      // Add the separated line to the outputLines list
      outputLines.add(separatedLine);
    }
  }

  // Join outputLines with newline separator
  var outputText = outputLines.join('\n');

  // Write outputText to output.txt file
  File('output.txt').writeAsStringSync(outputText);
}

// Function to separate the line by spaces
String separateLine(String line) {
  var separatedParts = line.split(' ');
  var separatedLine = separatedParts.join(' ');
  return separatedLine;
}

