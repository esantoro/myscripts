#! /usr/bin/env perl

$DIALOG = '/usr/bin/xmessage -nearmouse -timeout 10' ;
#$DIALOG = '/usr/bin/kdialog' ;

while (<STDIN>) {
  if ( m/^From.\:*/) {
    $FROM=$_ ;
    last ;
  } 
}

`$DIALOG  "Mail from $FROM"`
