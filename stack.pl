#!/usr/bin/perl

## Simple Data Structure
# A stack
#https://www.tjhsst.edu/~dhyatt/perl/ex8.html

print "Making a stack\n";
@stack =qw(awk bash chmod);
print "Inital stack:\n @stack  \n";
push(@stack,"diff");
print "push item in stack:\n @stack \n";
$item ="Emacs";
push(@stack,$item);
print "Push item on stack:\n  @stack \n";
$top = pop @stack;
print "Popping top of stack:  $top\n";
print "Final stack:\n  @stack \n\n";

# A Queue

print "Making a \"First In First Out\" Queue\n";
@queue = qw( lpr mcopy ps );
print "Initial queue:\n  @queue \n";
unshift(@queue, "kill");
print "Add item to queue:\n  @queue \n";
$item = "df";
unshift(@queue, $item);
print "Add item to queue:\n  @queue \n";
$fifo = pop @queue;
print "Remove FIFO item: $fifo\n"; 
print "Final queue:\n  @queue \n\n";




# Linked Lists

print "Making Linked Lists\n";
## Method #1 using 2D Arrays

sub print_list {
  $max = $_[0];
  for ($i=0; $i<$max; $i++)
  {
    print "$i.  $list[$i][0]\t $list[$i][1]\n";
  }
}

# Declaring a 2-D Array, which is just an array of 1-D arrays

@list = ( ["vi   ", "Null"], ["emacs", "Null"], ["joe  ", "Null" ]);

$max = $#list + 1;

print "Initial Values\n";
print_list($max);

print "\n\n";


## Method #2  Reference Variables, or Pointers

@links = qw( 2 Null 1);

print "Using Pointers\n";

@nodes = qw (finger:Null  whois:Null  who:Null);
for ($i = 0; $i <= $#nodes; $i++)
  { $ptr = \$nodes[$i];
    @data = split(/:/,$$ptr);
    print "Before:  $ptr  @data ";
    $data[1] = $links[$i];
    print "->  @data \n";
    $$ptr = join ':',@data;
  }

print "\n\n";