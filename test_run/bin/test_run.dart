import 'dart:io';

void main(List<String> arguments) {
  fileConverter();
}
dynamic fileConverter(){
    var inputTxt = File('input.txt');
    var outputTxt = File('output.txt');
    var excludeTxt = File('exclude.text');

    inputTxt.writeAsStringSync("\nFinal try", mode: FileMode.append);
    outputTxt.writeAsStringSync("\nFinal try", mode: FileMode.append);
    excludeTxt.writeAsStringSync("Let's keep some lines here");
    print('Successful');
    
  
    if(inputTxt != outputTxt){
      {
        return null;}
      
    }
    if (inputTxt == excludeTxt){
      return null;
    }
     else {return true;}

    } 