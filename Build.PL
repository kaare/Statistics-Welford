#!perl

use Module::Build;

my $build = Module::Build->new(
    dist_version_from => 'lib/Statistics/Welford.pm',
    module_name => 'Statistics::Welford',
    license     => 'perl',
    requires    => {
        'perl'       => '5.8.3',
    },
    create_makefile_pl => 'traditional',
);
$build->create_build_script;
