#!perl -ln
sub S{($m,$n)=@_;($M,$N)=sort$$m,$$n;($$m,$$n)=($M)x2;push@{$l{$M}},@{delete$l{$N}}if$N!=$M}
$i=1;for(split//){$b[$c=$..$i]=/w/?++$e:$_;$R=$.-1;$C=$i-1;
$x=($R=$.-1).$i;$y=$..($C=$i-1);
if(/w/){
$b[$_]>0&&S\$b[$c],\$b[$_]for$x,$y;
push@{$l{$b[$c]}},"$R $i"if$b[$x]eq$";
push@{$l{$b[$c]}},"$. $C"if$b[$y]eq$";
}elsif(/ /){
$b[$_]>0&&push@{$l{$b[$_]}},"$. $i"for$x,$y;
}
$i++;
}
}{
print for sort grep!$s{$_}++,map@$_-1?():@$_,map{my%t;[grep!$t{$_}++,@$_]}values%l;
