use inc::Module::Install;
name 'CSS-Clever';
all_from 'lib/CSS/Clever.pm';

# requires '';

tests 't/*.t';
author_tests 'xt';

build_requires 'Test::More';
use_test_base;
auto_include;
WriteAll;
