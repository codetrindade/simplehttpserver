import 'package:mason_logger/mason_logger.dart';

const banner = '''
╔═══╗          ╔╗     ╔╗ ╔╗╔════╗╔════╗╔═══╗╔═══╗                  
║╔═╗║          ║║     ║║ ║║║╔╗╔╗║║╔╗╔╗║║╔═╗║║╔═╗║                  
║╚══╗╔╗╔╗╔╗╔══╗║║ ╔══╗║╚═╝║╚╝║║╚╝╚╝║║╚╝║╚═╝║║╚══╗╔══╗╔═╗╔╗╔╗╔══╗╔═╗
╚══╗║╠╣║╚╝║║╔╗║║║ ║╔╗║║╔═╗║  ║║    ║║  ║╔══╝╚══╗║║╔╗║║╔╝║╚╝║║╔╗║║╔╝
║╚═╝║║║║║║║║╚╝║║╚╗║║═╣║║ ║║ ╔╝╚╗  ╔╝╚╗ ║║   ║╚═╝║║║═╣║║ ╚╗╔╝║║═╣║║ 
╚═══╝╚╝╚╩╩╝║╔═╝╚═╝╚══╝╚╝ ╚╝ ╚══╝  ╚══╝ ╚╝   ╚═══╝╚══╝╚╝  ╚╝ ╚══╝╚╝ 
           ║║                                       VERVISON: 0.0.1 BETA                                                
           ╚╝                                                      
''';

// Version is the current version
const version = '0.0.1 BETA';

// ShowBanner is used to show the banner to the user
void showBanner() {
  Logger().info(banner);
}
