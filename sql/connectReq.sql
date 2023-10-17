
if ((LEN(@user) = 6) and (LEN(@psw) = 8))
	begin
		if (@psw = (select Password from Professor where @user = IdProf))
			begin
				select * 
				from Blog as b
				where b.IdClasse = (select idclasse from Professor where Password = @psw and IdProf = @user)
				union all
				select * , null as other
				from BlogCom as bc 
				where bc.IdClasse = (select idclasse from Professor where Password = @psw and IdProf = @user)
				print 'je suis prof'
			end
		else
			begin
				print 'Prof : ERROR'
			end
	end

if ((LEN(@user) = 7) and (LEN(@psw) = 9))
	begin
		if ((@psw = (select Password1 from Student where @user = IdStudent)) or (@psw = (select Password2 from Student where @user = IdStudent)))
			begin
				select * 
				from Blog as b
				where b.IdClasse = (select idclasse from Student where IdStudent = @user and ((@psw = Password1) or (@psw = Password2)))
				union all
				select * , null as other
				from BlogCom as bc 
				where bc.IdClasse = (select idclasse from Student where IdStudent = @user and ((@psw = Password1) or (@psw = Password2)))
				print 'je suis student'
			end
		else
			begin
				print 'Student : ERROR'
			end
	end
else
	begin
		print 'Else : ERROR'
	end
