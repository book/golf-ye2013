#!perl -ln
sub M{$k=shift;my%t;$l{$k}=[grep!$t{$_}++,@{$l{$k}},@_]}sub
S{($m,$n)=@_;($M,$N)=sort$$m,$$n;M$M,@{delete$l{$N}}if$N!=($$m=$$n=$M)}$i=1;for(split//){$b[$c=$..$i]=/w/?++$e:$_;$x=($R=$.-1).$i;$y=$..($C=$i-1);/w/&&do{$b[$_]>0&&S\$b[$c],\$b[$_]for$x,$y;M$b[$c],$b[$x]eq$"?"$R $i":(),$b[$y]eq$"?"$. $C":()};/ /&&do{$b[$_]>0&&M$b[$_],"$. $i"for$x,$y};$i++}}{print
for sort grep!$s{$_}++,map@$_-1?():@$_,values%l
