use 5.006;
use strict;
use warnings;

# this test was generated with Dist::Zilla::Plugin::Test::Compile 2.039

use Test::More  tests => 17 + ($ENV{AUTHOR_TESTING} ? 1 : 0);



my @module_files = (
    'POE/Component/App/PNGCrush.pm',
    'POE/Component/Bundle/WebDevelopment.pm',
    'POE/Component/CSS/Minifier.pm',
    'POE/Component/JavaScript/Minifier.pm',
    'POE/Component/Syntax/Highlight/CSS.pm',
    'POE/Component/Syntax/Highlight/HTML.pm',
    'POE/Component/WWW/Alexa/TrafficRank.pm',
    'POE/Component/WWW/Cache/Google.pm',
    'POE/Component/WWW/DoctypeGrabber.pm',
    'POE/Component/WWW/GetPageTitle.pm',
    'POE/Component/WWW/Google/PageRank.pm',
    'POE/Component/WWW/HTMLTagAttributeCounter.pm',
    'POE/Component/WWW/Lipsum.pm',
    'POE/Component/WWW/WebDevout/BrowserSupportInfo.pm',
    'POE/Component/WebService/HtmlKitCom/FavIconFromImage.pm',
    'POE/Component/WebService/Validator/CSS/W3C.pm',
    'POE/Component/WebService/Validator/HTML/W3C.pm'
);



# no fake home requested

my $inc_switch = -d 'blib' ? '-Mblib' : '-Ilib';

use File::Spec;
use IPC::Open3;
use IO::Handle;

open my $stdin, '<', File::Spec->devnull or die "can't open devnull: $!";

my @warnings;
for my $lib (@module_files)
{
    # see L<perlfaq8/How can I capture STDERR from an external command?>
    my $stderr = IO::Handle->new;

    my $pid = open3($stdin, '>&STDERR', $stderr, $^X, $inc_switch, '-e', "require q[$lib]");
    binmode $stderr, ':crlf' if $^O eq 'MSWin32';
    my @_warnings = <$stderr>;
    waitpid($pid, 0);
    is($?, 0, "$lib loaded ok");

    if (@_warnings)
    {
        warn @_warnings;
        push @warnings, @_warnings;
    }
}



is(scalar(@warnings), 0, 'no warnings found') if $ENV{AUTHOR_TESTING};


