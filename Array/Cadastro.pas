Program COVID ;
uses crt;
Const MAX=3;
Type usuario=record
       nome:string;
       sexo:string;
       idade:string;
       dose:string;
      End; 
      
tipo_cliente=array[1..MAX] of usuario;  

var      
 cadastro:tipo_usuario;
 i:integer;
 res:boolean;
 
procedure cadastrar(var cadastro:tipo_usuario); 
var
i : integer;
 Begin
  for i := 1 to MAX do 
   Begin
        Write(i,' Nome    : ');
        readln(cadastro[i].nome);
        
        If cadastro[i].nome = 'fim' Then
            Break;
        
        Write(i,' Idade: ');
        readln(cadastro[i].sexo);
        Write(i,' Sexo(M-F): ');
        readln(cadastro[i].idade);
        Write(i,' Dose(1-2): ');
        readln(cadastro[i].dose);
        
        Writeln;
   End; 
 End;
 
procedure consulta(cadastro:tipo_usuario; j:integer);
 Begin
   clrscr;
   Writeln('Codigo: ',j);
   Writeln('Nome      : ',cadastro[j].nome);
   Writeln('Idade  : ',cadastro[j].idade);
   Writeln('Sexo  : ',cadastro[j].sexo);   
   Writeln('Dose  : ',cadastro[j].dose); 
 End; 
 
 Begin
  res:= true;
  cadastrar(cadastro);
  While res do
   Begin
   
        Write('  Informe Codigo do Cliente: ');    
        readln(i);
            if i = 999 then
                res:=false
            else consulta(cadastro,i);
                Writeln('Obrigado');
   end;     
 End.