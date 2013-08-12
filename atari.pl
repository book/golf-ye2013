#!perl -ln
# $b[ row ][ col ] = cell value
$r = $b[$.] = [ '', split // ];

# check left and above neighbours
for ( 1 .. length ) {
    if ( $b[$.][$_] eq "w" ) {    # only check white stones
           # put in the same equivalence class if neighbour is the same colour
        $l{"$. $_"} = $l{"@{[$.-1,$_]}"} if $b[ $. - 1 ][$_] eq $b[$.][$_];
        $l{"$. $_"} = $l{"@{[$.,$_-1]}"} if $b[$.][ $_ - 1 ] eq $b[$.][$_];

        # record liberties in the equivalence class
        push @{ $l{"$. $_"} }, [ $_, $. - 1 ] if $b[ $. - 1 ][$_] eq " ";
        push @{ $l{"$. $_"} }, [ $_ - 1, $. ] if $b[$.][ $_ - 1 ] eq " ";
    }
    elsif ( $b[$.][$_] eq " " ) {

        # is this cell a liberty for a neighbouring white group?
        push @{ $l{"@{[$.-1,$_]}"} }, [ $_, $. ] if $b[ $. - 1 ][$_] eq "w";
        push @{ $l{"@{[$.,$_-1]}"} }, [ $_, $. ] if $b[$.][ $_ - 1 ] eq "w";
    }
}

}{  # show output
print for sort map "@{$l{$_}[0]}", grep @{ $l{$_} } == 1, keys %l;
