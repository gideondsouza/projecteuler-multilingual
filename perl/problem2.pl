use Modern::Perl;
use bigint; #note you need this

my ($a,$b,$c) = (0,1,0);
my $A = 0;

while(1)
{
    $c = $a + $b;
    $A += $c if $c % 2 == 0;
    last if $c >= 4000000;
    $a = $b;
    $b = $c;
}
say $A;
