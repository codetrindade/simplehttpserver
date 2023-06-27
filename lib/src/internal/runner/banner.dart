import 'package:simplehttpserver/src/internal/console/console.dart';

const banner = '''
   _____ _                 __     __  __________________                                
  / ___/(_)___ ___  ____  / /__  / / / /_  __/_  __/ __ ________  ______   _____  _____
  __ / / __ -__ / __ / / _ / /_/ / / /   / / / /_/ / ___/ _ / ___/ | / / _ / ___/
 ___/ / / / / / / / /_/ / /  __/ __  / / /   / / / ____(__  )  __/ /   | |/ /  __/ /    
/____/_/_/ /_/ /_/ .___/_/___/_/ /_/ /_/   /_/ /_/   /____/___/_/    |___/___/_/     
                /_/                                                       - v0.0.1
''';

// Version is the current version
const version = '0.0.1';

// showBanner is used to show the banner to the user
void showBanner() {
  write('${ansiSetColor(33)} $banner');
}

// 	ListenAddress   string
// 	HTTPHeaders     HTTPHeaders
// 	Folder          string
// 	BasicAuth       string
// 	username        string
// 	password        string
// 	Realm           string
// 	TLSCertificate  string
// 	TLSKey          string
// 	TLSDomain       string
// 	HTTPS           bool
// 	Verbose         bool
// 	EnableUpload    bool
// 	EnableTCP       bool
// 	RulesFile       string
// 	TCPWithTLS      bool
// 	Version         bool
// 	Silent          bool
// 	Sandbox         bool
// 	MaxFileSize     int
// 	HTTP1Only       bool
// 	MaxDumpBodySize int
// 	Python          bool
// 	CORS            bool
