import 'dart:io';

void main(List<String> arguments) {
  fileConverter();
}

dynamic fileConverter() {
  var outputTxt = File('output.txt');
  File('file.txt').readAsString().then((String contents) {
    print(contents);
  });

  outputTxt.writeAsStringSync("\nFinal try", mode: FileMode.append);

  outputTxt.readAsLinesSync();

  if (outputTxt != File('input.txt')) {
    {
      return null;
    }
  }
  if (outputTxt.lengthSync() == 0) {
    return null;
  }
  if (File('input.txt').readAsLinesSync() == File('exclude.txt').readAsLinesSync()) {
    return content('');
  } else if (File('input.txt').lengthSync() > File('exclude.txt').lengthSync()) {
    String contain = File('input.txt') as String;
    outputTxt = contain as File;
    return outputTxt;
  }
}

String content(String let) {
  let = File('output.txt').readAsLinesSync() as String;
  return let;
}
