use strict;
use warnings;

# this test was generated with Dist::Zilla::Plugin::NoTabsTests 0.06

use Test::More 0.88;
use Test::NoTabs;

my @files = (
    'lib/POE/Component/App/PNGCrush.pm',
    'lib/POE/Component/Bundle/WebDevelopment.pm',
    'lib/POE/Component/CSS/Minifier.pm',
    'lib/POE/Component/JavaScript/Minifier.pm',
    'lib/POE/Component/Syntax/Highlight/CSS.pm',
    'lib/POE/Component/Syntax/Highlight/HTML.pm',
    'lib/POE/Component/WWW/Alexa/TrafficRank.pm',
    'lib/POE/Component/WWW/Cache/Google.pm',
    'lib/POE/Component/WWW/DoctypeGrabber.pm',
    'lib/POE/Component/WWW/GetPageTitle.pm',
    'lib/POE/Component/WWW/Google/PageRank.pm',
    'lib/POE/Component/WWW/HTMLTagAttributeCounter.pm',
    'lib/POE/Component/WWW/Lipsum.pm',
    'lib/POE/Component/WWW/WebDevout/BrowserSupportInfo.pm',
    'lib/POE/Component/WebService/HtmlKitCom/FavIconFromImage.pm',
    'lib/POE/Component/WebService/Validator/CSS/W3C.pm',
    'lib/POE/Component/WebService/Validator/HTML/W3C.pm'
);

notabs_ok($_) foreach @files;
done_testing;
