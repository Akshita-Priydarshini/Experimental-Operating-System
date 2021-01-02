integer main()
{
	integer status;
	print("Init Process");
	status = Exec("even.xsm");
	if(status == -1) then
		print("Invalid file");
	endif;
	return 0;
}
