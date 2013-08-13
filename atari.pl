#!perl -ln
sub S{($m,$n)=@_;($M,$N)=sort$$m,$$n;push$l{$M},@{delete$l{$N}}if$N!=($$m=$$n=$M)}
$i=1;for(split//){$b[$c=$..$i]=/w/?++$e:$_;$x=($R=$.-1).$i;$y=$..($C=$i-1);/w/&&do{$b[$_]>0&&S\$b[$c],\$b[$_]for$x,$y;push@{$l{$b[$c]}},$b[$x]eq$"?"$R $i":(),$b[$y]eq$"?"$. $C":()};/ /&&do{$b[$_]>0&&push$l{$b[$_]},"$. $i"for$x,$y};$i++}}{print
for sort grep!$s{$_}++,map@$_-1?():@$_,map{my%t;[grep!$t{$_}++,@$_]}values%l
