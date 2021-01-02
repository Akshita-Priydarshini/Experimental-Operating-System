decl
	integer isPrime(integer x);
enddecl

integer isPrime(integer x)
{
	integer i, r;
	i=2;
	r=1;
	while(i<x) do
		if(x%i==0) then
			r=0;
			break;
		endif;
		i=i+1;
	endwhile;
	if(x<=1) then
		r=0;
	else
		if(x==2) then
			r=1;
		endif;
	endif;
	return r;
}
integer main()
{
	integer n, i;
	print("Enter n:");
	read(n);
	i=1;
	while(i<=n) do
		if(isPrime(i)==1) then
			print(i);
		endif;
		i=i+1;
	endwhile;
	return 0;
}
	
				
