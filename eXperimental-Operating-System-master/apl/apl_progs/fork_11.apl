integer main()
{
	integer pid, x;
	print("Before Fork");
	x = Fork();
	print(x);
	print("After Fork");
	pid = Getppid();
	print(pid);
	return 0;
}
