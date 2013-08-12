#!perl -ln
sub j{push@{$l{$_[0]}},"@_[2,1]"if$_[3]eq$"?$b[$_[1].$_[2]]eq$":$b[$_[0]]eq w}
$i=1;for(split//){
$b[$..$i]=$_;$R=$.-1;$C=$i-1;
{b=>sub{},w=>sub{
$l{$c}=$l{$R.$i}if$b[$R.$i]eq w;
$l{$c}=$l{$..$C}if$b[$..$C]eq w;
j$..$i,$R,$i,$";
j$..$i,$.,$C,$";
},$",sub{
j$R.$i,$.,$i;
j$..$C,$.,$i;
}}->{$b[$c=$..$i]||b}->();$i++
}}{print for sort map$s{$_}++||@{$_}-1?():"$_->[0]",values%l;
