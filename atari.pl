#!perl -ln
$b[$.]=['',split//];
sub j{push@{$l{$_[0],$_[1]}},[@_[3,2]]if$_[4]eq$"?$b[$_[2]][$_[3]]eq$":$b[$_[0]][$_[1]]eq$_[4]}
for(1..length){
if($b[$.][$_]eq"w"){
    $l{$.,$_} = $l{$.-1,$_} if $b[ $. - 1 ][$_] eq"w";
    $l{$.,$_} = $l{$.,$_-1} if $b[$.][ $_ - 1 ] eq"w";
    j $.,$_,$.-1,$_,$";
    j $.,$_,$.,$_-1,$";
}
elsif($b[$.][$_]eq" "){
    j $.-1,$_,$.,$_,"w";
    j $.,$_-1,$.,$_,"w";
}}}{print for sort map@{$l{$_}}-1?():"@{$l{$_}[0]}",keys%l;
