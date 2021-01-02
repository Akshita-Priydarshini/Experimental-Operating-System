decl
	integer getRoot(integer k);
	integer isPrime(integer x);
enddecl

integer getRoot(integer k) 
{    
	integer start, end, ans, mid;
	start = 1;
	end = k;    
    	if (k == 0 || k == 1) then  
       		ans = k;
	else
  		while (start <= end) do
        		mid = (start + end) / 2;  
        		if (mid*mid == k) then 
            			ans = mid;
				break;
			endif;  
        		if (mid*mid < k) then
            			start = mid + 1; 
            			ans = mid;
        		else 
            			end = mid-1;
			endif;         
    		endwhile;
	endif;
    	return ans; 
} 
		

integer isPrime(integer x)
{
	integer i, r, m;
	i=2;
	r=1;
	m = getRoot(x);
	m = m+1;
	while(i<m) do
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
	integer n, m, i;
	print("Enter n:");
	read(n);
	print("Enter m:");
	read(m);
	i=n;
	while(i>=m) do
		if(isPrime(i)==1) then
			print(i);
			break;
		endif;
		i=i-1;
	endwhile;
	return 0;
}

