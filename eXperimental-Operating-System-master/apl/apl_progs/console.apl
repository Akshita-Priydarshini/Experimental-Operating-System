integer main()
{
	integer id;
	string process;
	print("Process Name:");
	read(process);
	while(process != "exit") do
		id = Fork();
		if(id == -2) then
			id = Exec(process);
			if(id == -1) then
				print("file not found");
				Exit();
			endif;
		endif;
		id = Wait(id);
		print("Process Name:");
		read(process);
	endwhile;
	return 0;
}
