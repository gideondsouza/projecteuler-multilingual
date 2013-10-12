#!/usr/bin/perl

use Modern::Perl;
use Math::Prime::XS qw(primes is_prime);

my @factors;

my $n = 600851475143;#13195;

my @primes = primes(2, sqrt($n));

populate_factors($n);
#say  join(",", @factors);
say $factors[-1];

sub populate_factors
{
    my $nn = shift;
    my $p = 0;
    my $d = $nn;
    my $t = 1;
    for (1..$nn)
    {
        if(is_prime($d)) 
        {
            push @factors, $d;
            last;
        }
        $t = $primes[$p++]; 
        if($d % $t == 0)
        { 
            $d = $d / $t;
            push @factors, $t;
            
        }

    }
}
