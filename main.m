clear a b c 
row=input('Numero de linhas:');
column=input('Numero de colunas:');
a=input('Matrix:');
b=a;
fprintf('\n\n--\n');
counter=1;counter1=1;
while counter<column
    counter1=counter+1;
    while counter1<=row
         if a(counter,counter)== 0
            a(counter,:)=a(counter1,:);
            a(counter1,:)=a(counter1,:)-(a(counter1,counter)/a(counter,counter))*a(counter,:);
         counter1=counter1+1;
         end
        a(counter1,:)=a(counter1,:)-(a(counter1,counter)/a(counter,counter))*a(counter,:);
        counter1=counter1+1;
        disp(a);
        fprintf('--\n\n');
    end
    counter=counter+1;
   
end
fprintf('A matriz escalonada é:\n\n');
disp(a);
