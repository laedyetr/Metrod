
_n = argument0;
_d = argument2 - argument1;
while(_n<0){
_n+=_d+1;
}
while(_n>_d)
_n-=_d;
return _n;