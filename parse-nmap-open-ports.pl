my ($filename) = @ARGV;
print "processing '$filename'";
perl -lne '/Host:\s*([\d.]+)/; $h=$1; print "$h $_" for (/(\d+)\/open[^\s]/g);' $filename;

# print the `IP PORT` for each open port in an nmap gnmap format file
