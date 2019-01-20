program projeto_2_0;

uses
   Crt ;

var
    nome : array [ 1..1000 ] of string ;
    cpf  : array [ 1..1000 ] of string ;
    nproduto : array [ 1..1000 ] of string ;
    pproduto : array [ 1..1000 ] of real ;
    no : string ;  // Nome para consulta
    np : string ; // Nome do produto
    p : integer ; // Indice de pesquisa
    op : integer ; // Opções do menu principal
    op_exc : char; // Armazena opção de excluir ou não o cliente
    l : integer; // Quantidade de posições do vetor nome e cpf
    pesq : integer; // Quantidade de registros encontrados
    cad_cliente : integer; // Total de clientes
    cad_produto : integer; // Total de Produtos
    exc : string; // Armazena nome para excluir
    alt : string; // Armazena nome para alterar
    op_alt : char; // Armazena oção de alterar ou não os dados do cliente
    y : integer; // Quantidade de posições do vetor nproduto e pproduto
    c : integer ;


begin

  for c := 1 to 100 do
	begin
	  writeln;
		writeln;	
    write ( ' ------------------------------------ ', c,'% ------------------------------------- ');		 
		delay(10);
		clrscr;
	end;
	
			 textcolor(lightcyan);
			 writeln;                                       
			 writeln ( ' :::::::::::::::::::::::::::::::::: BEM VINDO ::::::::::::::::::::::::::::::::: ') ;  
			 writeln ; 
			 writeln;  
			 writeln ( '                                      MENU ') ;
			 writeln;
			 writeln ( '                                       DE ') ;
			 writeln;
			 writeln;																									 
			 write   ( ' ---------> CADASTRO ') ;  writeln ( '>----------------------------> PESQUISA >-----------------') ; 
			 writeln ; 
			 write ( ' --------------------------> ALTERAÇÃO ' ) ;    writeln ( '>--------------------------> DELEÇÃO --' ) ;   
			 writeln;
			 writeln;
			 writeln ( '          ::::::::::::::::::::::: LOJA AGRICOLA ::::::::::::::::::::') ; 	 
			 writeln;
			 writeln;
			 writeln ( '                          PROGRAM LOADED SUCCESSFULLY! ' ) ;  	 
			 writeln; 
			 writeln;
			 writeln ('                    --> Pressione "Enter" para continuar.. <-- ') ;   
			 readkey;  
			 clrscr;

  p := 1; pesq := 0; cad_cliente := 0; cad_produto := 0; l := 1; y := 1; op := 11;
  
  repeat
    textcolor(lightgreen);
    writeln;
    writeln (' ------------------------------- MENU PRINCIPAL ------------------------------ ' );
    writeln;
    writeln ('                    >>> ESCOLHA UMA DAS OPÇÕES ABAIXO <<<');
    writeln;
    writeln;
    write (' >>> AREA CLIENTE');                writeln ('                                >>> AREA PRODUTO');
    writeln;
    write ('  1 - Cadastrar Cliente');            writeln ('                           6 - Cadastrar Produto');
    writeln;                                               
    write ('  2 - Pesquisar Cliente');            writeln ('                           7 - Pesquisar Produto');
    writeln;
    write ('  3 - Excluir Cliente');              writeln ('                             8 - Excluir Produto');
    writeln;                                  
    write ('  4 - Alterar Cliente');              writeln ('                             9 - Alterar Produto');
	  writeln;
    write ('  5 - Exibir Todos os Clientes');     writeln( '                    10 - Exibir Todos os Produtos');
    writeln;
    writeln;
    writeln; 
	  writeln ('                                   0 - SAIR');
    writeln;     write (' ------------- Clientes Cadastrados: ',cad_cliente,' || ');
    write ('Produtos Cadastrados: ',cad_produto,' ------------'); 
    writeln;
    writeln;
    read (op); 
    
    if ( op = 1 ) then
    begin
    	for p := 1 to l do
    	begin
    		if ( l = 1 ) then
    		begin
    			clrscr;
      		writeln ('---- Cadastrar Cliente ----');
      		writeln;
        	write ('Digite o nome do cliente: ') ;
        	read ( nome[p] );
        	writeln;
        	write ('Digite o cpf do cliente: ');
        	read ( cpf[p] ) ;
        	cad_cliente := cad_cliente + 1;
        	writeln;
        	writeln ('Cadastro efetuado com sucesso!');
        	writeln;
        	writeln('Pressione Enter para retornar ao menu principal...');
        	readkey;
        	clrscr;
      	end
      	else
      	if ( nome[p] = '' ) and ( p = l ) then
      	begin
      		clrscr;
      		writeln ('---- Cadastrar Cliente ----');
      		writeln;
        	write ('Digite o nome do cliente: ') ;
        	read ( nome[p] );
        	writeln;
        	write ('Digite o cpf do cliente: ');
        	read ( cpf[p] ) ;
        	cad_cliente := cad_cliente + 1;
        	writeln;
        	writeln ('Cadastro efetuado com sucesso!');
        	writeln;
        	writeln('Pressione Enter para retornar ao menu principal...');
        	readkey;
        	clrscr;
				end
				else
				if ( nome[p] = ' ' ) and ( p <> l ) then
				begin
					clrscr;
      		writeln ('---- Cadastrar Cliente ----');
      		writeln;
        	write ('Digite o nome do cliente: ') ;
        	read ( nome[p] );
        	writeln;
        	write ('Digite o cpf do cliente: ');
        	read ( cpf[p] ) ;
        	cad_cliente := cad_cliente + 1;
        	p := l +1;
        	writeln;
        	writeln ('Cadastro efetuado com sucesso!');
        	writeln;
        	writeln('Pressione Enter para retornar ao menu principal...');
        	readkey;
        	clrscr;
				end;		
    	end;
    	if ( p = l ) then
    	begin
    		l := l +1;
    	end;
    end;
    
    if ( op = 2 ) then
    begin
      if ( cad_cliente = 0 ) then
      begin
        clrscr;
        textcolor(lightred);
        writeln('Até o momento não a cliente cadastrado!');
        writeln;
        writeln('Pressione Enter para retornar ao menu principal...');
        readkey;
        clrscr;
        textcolor(lightgreen);
      end
      else
      begin
        clrscr;
        writeln (' ---- Pesquisar Cliente ---- ');
        writeln;
        write ('Digite o nome do cliente para consultar: ');
        read ( no ) ;
        for p:=1 To l do
        begin
          if ( no = nome[p] ) then
          begin
            writeln;
            writeln ('---- Dados do Cliente ----');
            writeln;
            writeln ( 'Nome: ', nome[p] ) ;
            writeln;
            writeln ( 'CPF: ', cpf[p] ) ;
            writeln;
            writeln('___________________________');
            pesq := pesq + 1;
            no := ' ';
            writeln;
            writeln('Pressione Enter para retornar ao menu principal...');
            readkey;
            clrscr;
          end;
        end;
        if ( pesq = 0 ) then
        begin
          clrscr;
          writeln('Cliente não cadastrado!');
          writeln;
          writeln('Pressione Enter para retornar ao menu principal...');
          readkey;
          clrscr;
        end;
        pesq := 0;
      end;
    end;
    
    if ( op = 3 ) then
    begin
      if cad_cliente = 0 then
      begin
        clrscr;
        textcolor(lightred);
        writeln('Até o momento não a cliente cadastrado!');
        writeln;
        writeln('Pressione Enter para retornar ao menu principal...');
        readkey;
        clrscr;
        textcolor(lightgreen);
      end
      else
      begin
        clrscr;
        write('Digite o nome do cliente que deseja excluir: ');
        read( exc );
        for p := 1 to l do
        begin
          if ( exc = nome[p] ) then
          begin
            writeln;
            writeln ('---- Dados do Cliente ----');
            writeln;
            writeln ( 'Nome: ', nome[p] );
            writeln;
            writeln ( 'CPF: ', cpf[p] ) ;
            writeln('____________________________');
            writeln;
            write('Excluir Registro? Digite (s) >>> Sim <<< || Digite (n) >>> Não <<<:');
            read( op_exc );
            pesq := pesq + 1;
            if ( op_exc = 's' ) or ( op_exc = 'S' ) then
            begin
              nome[p] := ' ';
              cpf[p] := ' ';
              cad_cliente := cad_cliente - 1;
              clrscr;
              writeln('Registro excluido com sucesso!');
              writeln;
              writeln('Pressione Enter para retornar ao menu principal...');
              readkey;
              clrscr;
              op_exc := ' ';
            end;
            if ( op_exc = 'n' ) or ( op_exc = 'N' )then
            begin
              clrscr;
              writeln('Operação cancelada pelo usuário!');
              writeln;
              writeln('Pressione Enter para retornar ao menu principal...');
              readkey;
              clrscr;
              op_exc := ' ';
            end;
          end;
        end;
        if ( pesq = 0 ) then
        begin
          clrscr;
          writeln('Cliente não cadastrado!');
          writeln;
          writeln('Pressione Enter para retornar ao menu principal...');
          readkey;
          clrscr;
        end;
        pesq := 0;
      end;
    end;
    
    if ( op = 4 ) then
    begin
    	if ( cad_cliente = 0 ) then
      begin
        clrscr;
        textcolor(lightred);
        writeln('Até o momento não a cliente cadastrado!');
        writeln;
        writeln('Pressione Enter para retornar ao menu principal...');
        readkey;
        clrscr;
        textcolor(lightgreen);
      end
			else
			begin
				clrscr;
        write('Digite o nome do cliente que deseja editar: ');
        read( alt );
        for p := 1 to l do
        begin
          if ( alt = nome[p] ) then
          begin
            writeln;
            writeln ('---- Dados do Cliente ----');
            writeln;
            writeln ( 'Nome: ', nome[p] );
            writeln;
            writeln ( 'CPF: ', cpf[p] ) ;
            writeln('____________________________');
            writeln;
            write('Alterar Registro? Digite (s) >>> Sim <<< || Digite (n) >>> Não <<<: ');
            read(op_alt);
            pesq := pesq + 1;
            if ( op_alt = 's' ) or ( op_exc = 'S' ) then
            begin
            	clrscr;
              write('Digite novo nome para editar este registro: ');
              read( nome[p] );
              writeln;
              write('Digite novo cpf para editar este registro: ');
              read( cpf[p] );
              clrscr;
              writeln('Registro alterado com sucesso!');
              writeln;
              writeln('Pressione Enter para retornar ao menu principal...');
              readkey;
              clrscr;
              op_alt := ' ';
            end;
            if ( op_alt = 'n' ) or ( op_exc = 'N' ) then
            begin
              clrscr;
              writeln('Operação cancelada pelo usuário!');
              writeln;
              writeln('Pressione Enter para retornar ao menu principal...');
              readkey;
              clrscr;
              op_alt := ' ';
            end;
          end;
        end;
        if ( pesq = 0 ) then
        begin
          clrscr;
          writeln('Cliente não cadastrado!');
          writeln;
          writeln('Pressione Enter para retornar ao menu principal...');
          readkey;
          clrscr;
        end;
        pesq := 0;
      end;
    end;	
    
		if ( op = 6 ) then
    begin
    	for p := 1 to y do
    	begin
    		if ( y = 1 ) then
    		begin
    			clrscr;
      		writeln ('---- Cadastrar Produto ----');
      		writeln;
        	write ('Digite o nome do produto: ') ;
        	read ( nproduto[p] );
        	writeln;
        	write ('Digite o valor do produto: ');
        	read ( pproduto[p] ) ;
        	cad_produto := cad_produto + 1;
        	writeln;
        	writeln ('Cadastro efetuado com sucesso!');
        	writeln;
        	writeln('Pressione Enter para retornar ao menu principal...');
        	readkey;
        	clrscr;
      	end
      	else
      	if ( nproduto[p] = '' ) and ( p = y ) then
      	begin
      		clrscr;
      		writeln ('---- Cadastrar Produto ----');
      		writeln;
        	write ('Digite o nome do produto: ') ;
        	read ( nproduto[p] );
        	writeln;
        	write ('Digite o valor do produto: ');
        	read ( pproduto[p] ) ;
        	cad_produto := cad_produto + 1;
        	writeln;
        	writeln ('Cadastro efetuado com sucesso!');
        	writeln;
        	writeln('Pressione Enter para retornar ao menu principal...');
        	readkey;
        	clrscr;
				end
				else
				if ( nproduto [p] = ' ' ) and ( p <> y ) then
				begin
					clrscr;
      		writeln ('---- Cadastrar Produto ----');
      		writeln;
        	write ('Digite o nome do produto: ') ;
        	read ( nproduto[p] );
        	writeln;
        	write ('Digite o valor do produto: ');
        	read ( pproduto[p] ) ;
        	cad_produto := cad_produto + 1;
        	p := y +1;
        	writeln;
        	writeln ('Cadastro efetuado com sucesso!');
        	writeln;
        	writeln('Pressione Enter para retornar ao menu principal...');
        	readkey;
        	clrscr;
				end;		
    	end;
    	if ( p = y ) then
    	begin
    		y := y + 1;
    	end;
    end;
		
		if ( op = 7 ) then
    begin
      if ( cad_produto = 0 ) then
      begin
        clrscr;
        textcolor(lightred);
        writeln('Até o momento não a produto cadastrado!');
        writeln;
        writeln('Pressione Enter para retornar ao menu principal...');
        readkey;
        clrscr;
        textcolor(lightgreen);
      end
      else
      begin
        clrscr;
        writeln (' ---- Pesquisar Produto ---- ');
        writeln;
        write ('Digite o nome do produto: ');
        read ( np ) ; 
        for p:=1 To y do
        begin
          if  ( np = nproduto[p] ) then
          begin
            writeln;
            writeln ('---- Dados do Produto ----');
            writeln;
            writeln ( 'Produto: ', nproduto[p] ) ;
            writeln;
            writeln ( 'Valor R$: ', pproduto[p]:0:2 ) ;
            writeln;
            writeln('___________________________');
            pesq := pesq + 1;
            np := ' ';
            writeln;
            writeln('Pressione Enter para retornar ao menu principal...');
            readkey;
            clrscr;
          end;
        end;
        if ( pesq = 0 ) then
        begin
          clrscr;
          writeln('Produto não cadastrado!');
          writeln;
          writeln('Pressione Enter para retornar ao menu principal...');
          readkey;
          clrscr;
        end;
        pesq := 0;
      end;
    end;
		
		if ( op = 8 ) then
    begin
      if ( cad_produto = 0 ) then
      begin
        clrscr;
        textcolor(lightred);
        writeln('Até o momento não a produto cadastrado!');
        writeln;
        writeln('Pressione Enter para retornar ao menu principal...');
        readkey;
        clrscr;
        textcolor(lightgreen);
      end
      else
      begin
        clrscr;
        write('Digite o nome do produto que deseja excluir: ');
        read( exc );
        for p := 1 to y do
        begin
          if ( exc = nproduto[p] ) then
          begin
            writeln;
            writeln ('---- Dados do Produto ----');
            writeln;
            writeln ( 'Produto: ', nproduto[p] );
            writeln;
            writeln ( 'Valor R$: ', pproduto[p]:0:2 ) ;
            writeln('____________________________');
            writeln;
            write('Excluir Registro? Digite (s) >>> Sim <<< || Digite (n) >>> Não <<<: ');
            read( op_exc );
            pesq := pesq + 1;
            if ( op_exc = 's' ) or ( op_exc = 'S' )then
            begin
              nproduto[p] := ' ';
              pproduto[p] := 0;
              cad_produto := cad_produto - 1;
              clrscr;
              writeln('Registro excluido com sucesso!');
              writeln;
              writeln('Pressione Enter para retornar ao menu principal...');
              readkey;
              clrscr;
              op_exc := ' ';
            end;
            if ( op_exc = 'n' ) or ( op_exc = 'N' ) then
            begin
              clrscr;
              writeln('Operação cancelada pelo usuário!');
              writeln;
              writeln('Pressione Enter para retornar ao menu principal...');
              readkey;
              clrscr;
              op_exc := ' ';
            end;
          end;
        end;
        if ( pesq = 0 ) then
        begin
          clrscr;
          writeln('Produto não cadastrado!');
          writeln;
          writeln('Pressione Enter para retornar ao menu principal...');
          readkey;
          clrscr;
        end;
        pesq := 0;
      end;
    end;
		
		if ( op = 9 ) then
    begin
    	if ( cad_produto = 0 ) then
      begin
        clrscr;
        textcolor(lightred);
        writeln('Até o momento não a produto cadastrado!');
        writeln;
        writeln('Pressione Enter para retornar ao menu principal...');
        readkey;
        clrscr;
        textcolor(lightgreen);
      end
			else
			begin
				clrscr;
        write('Digite o nome do produto que deseja editar: ');
        read( alt );
        for p := 1 to y do
        begin
          if ( alt = nproduto[p] ) then
          begin
            writeln;
            writeln ('---- Dados do Produto ----');
            writeln;
            writeln ( 'Produto: ', nproduto[p] );
            writeln;
            writeln ( 'Valor R$: ', pproduto[p]:0:2 ) ;
            writeln('____________________________');
            writeln;
            write('Alterar Registro? Digite (s) >>> Sim <<< || Digite (n) >>> Não <<<: ');
            read( op_alt );
            pesq := pesq + 1;
            if ( op_alt = 's' ) or ( op_exc = 'S' ) then
            begin
            	clrscr;
              write('Digite novo nome do produto para editar este registro: ');
              read( nproduto[p] );
              writeln;
              write('Digite novo valor do produto para editar este registro: ');
              read( pproduto[p] );
              clrscr;
              writeln('Registro alterado com sucesso!');
              writeln;
              writeln('Pressione Enter para retornar ao menu principal...');
              readkey;
              clrscr;
              op_alt := ' ';
            end;
            if ( op_alt = 'n' ) or ( op_exc = 'N' ) then
            begin
              clrscr;
              writeln('Operção cancelada pelo usuário!');
              writeln;
              writeln('Pressione Enter para retornar ao menu principal...');
              readkey;
              clrscr;
              op_alt := ' ';
            end;
          end;
        end;
        if ( pesq = 0 )then
        begin
          clrscr;
          writeln('Produto não Cadastrado!');
          writeln;
          writeln('Pressione Enter para retornar ao menu principal...');
          readkey;
          clrscr;
        end;
        pesq := 0;
      end;
    end;
		
		if ( op = 5 ) then
		begin
			if ( cad_cliente = 0 ) then
      begin
        clrscr;
        textcolor(lightred);
        writeln('Até o momento não a cliente cadastrado!');
        writeln;
        writeln('Pressione Enter para retornar ao menu principal...');
        readkey;
        clrscr;
        textcolor(lightgreen);
      end
      else
      begin
      	clrscr;
				writeln('*****************************************************');
				writeln('--------------Clientes Cadastrados-------------------');
				writeln('*****************************************************');
				l := l -1;
				for p := 1 to l do
				begin
					writeln;
					write( p ,'ª Nome: ', nome[p] ,'     CPF: ', cpf[p] );
					writeln; 
				end;
				writeln;
				writeln('Pressione Enter para retornar ao menu principal...');
				readkey;
				clrscr;
				l := l +1;
			end;
		end;
		
		if ( op = 10 ) then
		begin
			if ( cad_produto = 0 ) then
      begin
        clrscr;
        textcolor(lightred);
        writeln('Até o momento não a produto cadastrado!');
        writeln;
        writeln('Pressione Enter para retornar ao menu principal...');
        readkey;
        clrscr;
        textcolor(lightgreen);
      end
      else
      begin
      	clrscr;
				writeln('*****************************************************');
				writeln('--------------Produtos Cadastrados-------------------');
				writeln('*****************************************************');
				y := y -1;
				for p := 1 to y do
				begin
					writeln;
					write( p ,'ª Produto: ', nproduto[p] ,'    R$: ', pproduto[p] :2:2);
					writeln;		  
				end;
				writeln; writeln;
				writeln('Pressione Enter para retornar ao menu principal...');
				readkey;
				clrscr;
				y := y +1;
			end;
		end;	
    	
    if (op <> 0) and (op <> 1) and (op <> 2) and (op <> 3) and (op <> 4) and (op <> 5) and (op <> 6) and (op <> 7) and (op <> 8) and (op <> 9) and (op <> 10) then
    begin
      clrscr;
      textcolor(lightred);
      writeln('>>>>>>>>>>>>>>> OPÇÃO INVÁLIDA <<<<<<<<<<<<<<<');
      writeln;
      writeln('Pressione Enter para retornar ao menu principal!');
      readkey;
      clrscr;
      textcolor(lightgreen);
    end;
		    
  until op = 0;
  clrscr;
  textcolor(lightred);
  writeln;
  writeln('                      >>>> PROGRAMA FINALIZADO <<<<');
  writeln;
  writeln('                        Pressione Enter para Sair...');
  readkey;
end.

