import 'package:mason_logger/mason_logger.dart';

String ansiSetColor(int color) => '\x1b[${color}m';
String ansiSetExtendedForegroundColor(int color) => '\x1b[38;5;${color}m';
String ansiSetExtendedBackgroundColor(int color) => '\x1b[48;5;${color}m';
const ansiResetColor = '\x1b[m';

final Logger _logger = Logger();

void resetDefaultConsoleColor(){
  _logger.write(ansiResetColor);
}


void write(String text)
{
    _logger.info(text); 
    resetDefaultConsoleColor();
}
