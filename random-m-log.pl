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

@hosp1={UTMB Galveston, 121, TIRR, 30, Methodist, 30, St Luke, 30, Dunn Tower, Memorial Herman, 20, Scurlock Tower, 30, Ben Taub, 30, Baylor Clinic, 30}
@patient_hou={Patient2,Houston TX,43,Patient3 Houston TX,32,Patient4 Houston TX,93,Patient5 Houston TX,36,Patient6 Houston TX,74,Patient7 Houston TX,25,Patient8 Houston TX,44,Patient9 Houston TX,39,Patient10 Houston TX,51,Patient11 Houston TX,33,Patient12 Houston TX,53,Patient13 Houston TX,44,Patient14 Houston TX,57,Patient15 Houston TX,63,Patient16 Houston TX,16,Patient17 Houston TX,77,Patient18 Houston TX,Patient19 Houston TX,27,Patient20 Houston TX,76,  }
@patient_out={Patient21 Baytown TX,62,Patient22 Woodlands TX, 102, Patient23, 126}

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