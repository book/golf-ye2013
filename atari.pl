#!perl -ln
sub j{push@{$l[$_[0]]},"@_[1,2]"if$_[3]eq$"?$b[$_[1].$_[2]]eq$":$b[$_[0]]eq
w}$i=1;for(split//){$b[$..$i]=$_;$R=$.-1;$C=$i-1;{b=>sub{},w,sub{$l[$c]=$b[$R.$i]eq
w?$l[$R.$i]:$b[$..$C]eq
w?$l[$..$C]:$l[$c]||[];j$..$i,$R,$i,$";j$..$i,$.,$C,$"},$",sub{j$R.$i,$.,$i;j$..$C,$.,$i}}->{$b[$c=$..$i]||b}->();$i++}}{print
for map~~reverse,sort grep!$s{$_}++,map@$_-1?():$_->[0],@l
