

import 'package:args/command_runner.dart';

class ListenCommand extends Command<int>{
  @override
  String get description => 'Listen Adress on Server 0.0.0.0:8000 [Address:Port]';

  @override
  String get name => 'listen';

}
