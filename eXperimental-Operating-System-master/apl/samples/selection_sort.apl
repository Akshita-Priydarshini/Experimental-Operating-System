decl
	integer a[10],selectionsort();
enddecl
integer selectionsort()
{
	integer i,j, min, k;
	i=0;
	min = 0;
	while i<10 do
		min = i;
		j=i+1;
		while j<10 do
			if a[j]<a[min] then
				min = j;
			endif;
		j = j + 1;
		endwhile;
		k=a[i];
		a[i]=a[min];
		a[min]=k;
		i=i+1;
	endwhile;	
	return 0;
}
integer main()
{
	integer i;
	i=0;
	while i<10 do
		a[i]=i;
		i=i+1;
	endwhile;
	i=selectionsort();
	while i<10 do
		print(a[i]);
		i=i+1;
	endwhile;
	return 0;
}
