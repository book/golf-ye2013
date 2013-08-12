#!perl -ln
$i=0;map$b[$..$i++]=$_,'',split//;
sub j{push@{$l{$_[0]}},"@_[2,1]"if$_[3]eq$"?$b[$_[1].$_[2]]eq$":$b[$_[0]]eq w}
for(1..length){
$R=$.-1;$C=$_-1;
{b=>sub{},w=>sub{
$l{$c}=$l{$R.$_}if$b[$R.$_]eq w;
$l{$c}=$l{$..$C}if$b[$..$C]eq w;
j$..$_,$R,$_,$";
j$..$_,$.,$C,$";
},$",sub{
j$R.$_,$.,$_;
j$..$C,$.,$_;
}}->{$b[$c=$..$_]}->()
}}{print for grep!$s{$_}++,sort map@{$_}-1?():"$_->[0]",values%l;
