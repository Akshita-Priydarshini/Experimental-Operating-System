decl
	integer status;
enddecl
integer main()
{
	status = Delete("myfile.dat");
	print(status);
	return 0;
}
