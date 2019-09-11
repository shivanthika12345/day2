#/user/bin/perl

#https://www.tutorialspoint.com/perl/perl_regular_expressions.htm

$string = "The cat sat on the mat";
$string =~ s/cat/dog/;

print "$string\n";
#Translation is similar, but not identical, to the principles of substitution, but unlike substitution, translation (or transliteration) does not use regular #expressions for its search on replacement values


$string = 'The cat sat on the mat';
$string =~ tr/a/o/;

print "$string\n";

#----------------------------------------------------

$string = 'the cat sat on the mat.';
$string =~ tr/a-k/b/d;

print "$string\n";


#----------------------------------------------------

$string = 'food';
$string = 'food';
$string =~ tr/a-z/a-z/s;

print "$string\n";

#----------------------------------------------------

$string = "Cats go Catatonic\nWhen given Catnip";
($start) = ($string =~ /\A(.*?) /);
@lines = $string =~ /^(.*?) /gm;
print "First word: $start\n","Line starts: @lines\n";


#---------------------------------------------------
#The \G Assertion
$string = "The time is: 12:31:02 on 4/12/00";

$string =~ /:\s+/g;
($time) = ($string =~ /\G(\d+:\d+:\d+)/);
$string =~ /.+\s+/g;
($date) = ($string =~ m{\G(\d+/\d+/\d+)});

print "Time: $time, Date: $date\n";