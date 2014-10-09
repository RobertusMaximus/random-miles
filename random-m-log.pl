#  Build a random mileage log creator based on travel parameters - FBB
#  Written by Robert Day CISSP 10/9/2014
#
#   file : random-m-log.pl
#
#   function : Build a random log that seems permissible to a human 
#
#   part of : N/A
#
#
#
##############################################

#!/usr/bin/perl

# vars
my @fuzzy1;
my @fuzzy2;
my $trip1;
my $trip2;
my $weeks;
my $weeks-ss;
my $fuzzyconf = "/etc/fuzz.conf";
my $fuzzypath = "/etc/";
my $tmp1;

# tools

my $mv = "/bin/mv";
my $cat = "/bin/cat";

# Program

main();


sub main{

  $fuzzyconf = $ARGV[0];
  $weeks = $ARGV[1];
  $weeks-ss = $ARGV[2];
  chomp $fuzzyconf;
  chomp $weeks;
  chomp $weeks-ss;
  
  #functions
  fileload();
  zoneload();
  
};

sub fileload{
  open(CONFFILE, "< ./$fuzzyconf") or die "$filename file is missing from the working directory!\n";    
  @zone_names = <CONFFILE>;
  close(CONFFILE);
};