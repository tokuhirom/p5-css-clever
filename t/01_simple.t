use strict;
use warnings;
use Test::Base tests => 1;
use CSS::Clever;

filters {
    input => [qw/clever/],
    expected => [qw/chomp/],
};

sub clever {
    CSS::Clever->convert(shift)
}


run_is input => 'expected';

__END__

===
--- input
li:
    margin: 3px
    span:
        padding:4px
--- expected
li {
  margin: 3px;
}

li span {
  padding: 4px;
}

