#!perl -ln
sub S{($m,$n)=@_;($M,$N)=sort$$m,$$n;($$m,$$n)=($M)x2;push@{$l{$M}},@{delete$l{$N}}if$N!=$M}
$i=1;
for(split//){
$b[$c=$..$i]=/w/?++$e:$_;
$R=$.-1;$C=$i-1;
if(/w/) {
S\$b[$c],\$b[$R.$i]if$b[$R.$i]>0;
S\$b[$c],\$b[$..$C]if$b[$..$C]>0;#&&$b[$..$C]!=$b[$c];
push@{$l{$b[$c]}},"$R $i"if$b[$R.$i]eq$";
push@{$l{$b[$c]}},"$. $C"if$b[$..$C]eq$";
}elsif(/ /){
push@{$l{$b[$R.$i]}},"$. $i"if$b[$R.$i]>0;
push@{$l{$b[$..$C]}},"$. $i"if$b[$..$C]>0;
}
$i++;
}
}{
print for sort grep!$s{$_}++,map@$_-1?():@$_,map{my%t;[grep!$t{$_}++,@$_]}values%l;
