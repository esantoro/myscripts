#! /usr/bin/env perl

$totaltime=`mocp -Q "%tt"` ;
$currtime=`mocp -Q "%ct"` ;

# print $totaltime ;
# print $currtime ;

@tt = split /:/, $totaltime ;
$tt_m = @tt[0] ;
my $tt_secondi=1 ;
$tt_secondi = ($tt_m*60)+@tt[1] ;

@ct = split /:/, $currtime ;
$ct_m = @ct[0] ;
$ct_secondi = ($ct_m*60)+@ct[1] ;

# print $tt_secondi ;
# print "\n" ;
# print $ct_secondi ;
# print "\n" ;
if ($tt_secondi > 0) {
	$percent = (100*$ct_secondi)/$tt_secondi ;
}

@values = split /\./, "$percent" ;
if (defined @values[0]) {
	print @values[0] ;
}

