integer main()
{
	integer pid, x;
	print("Before Fork");
	x = Fork();
	if(Getpid() == 0) then
		pid = Wait(x);
		print(pid);
	endif;
	print("After Fork");
	pid = Getppid();
	print(pid);
	pid = Signal();
	print(pid);
	return 0;
}
