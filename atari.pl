#!perl -ln
sub M{$k=pop;my%t;$l[$k]=[grep!$t{$_}++,@{$l[$k]},@_]}sub
S{($m,$n)=@_;($M,$N)=sort$$m,$$n;M@{delete$l[$N]},$M
if$N!=($$m=$$n=$M)}$i=1;for(split//){$b[$c=$..$i]=/w/?++$e:$_;$x=($R=$.-1).$i;$y=$..($C=$i-1);/w/&&do{$b[$_]>0&&S\$b[$c],\$b[$_]for$x,$y;M$b[$x]eq$"?"$R $i":(),$b[$y]eq$"?"$. $C":(),$b[$c]};/ /&&do{$b[$_]>0&&M"$. $i",$b[$_]for$x,$y};$i++}}{print
for sort grep!$s{$_}++,map@$_-1?():@$_,@l
