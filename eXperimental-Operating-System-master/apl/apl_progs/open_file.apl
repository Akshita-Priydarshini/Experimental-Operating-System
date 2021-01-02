decl
	integer status;
	integer num;
	string word;
enddecl
integer main()
{
	status = Open("myfile.dat");
	//print(status);
	if(status == -1) then
		print("file created");
		status = Create("myfile.dat");
		if(status == 0) then
			status = Open("myfile.dat");
			if(status != -1) then
				print("File openned");
			endif;
		endif;
	endif;
	num = 2707;
	num = Read(0, word);
	if(num != -1) then
		print("Success");
	endif;
	print(word);
	num = Write(0,"Chutiya hai");
	num = Seek(0, 1);
	num = Read(0, word);
	print(word);
	status = Close(status);
	//print(status);
	return 0;
}
