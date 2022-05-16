%Documento para anotar correções a serem feitas

%Na função Newton há uma função de erro caso x1 seja minimo local.
%Sugestão: Alterar para retornar erro = 1. Nesse caso, em metNewton colocar
%apos a linha 25
%if erro == 1
%    fprintf('Identificado minimo local, encerrando processo.\nRetornando ao Menu.');
%    m = '1';
%    break
%else
%    Conteudo da Linha 26 a 35
%end

