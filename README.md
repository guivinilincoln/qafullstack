### Descrição:
Nesse repositorio temos alguns exemplos de programação básica com Ruby, orientação a objetos, herança e exeções(avançado) e tests unitarios com Rpesc.

Para dar inicio ao projeto com Rspec devemos utilziar o comando ```"bandle init"``` no Cmder para que seja gerado um arquivo Gemfile dentro da nossa pasta 

Esse arquivo e como o arquivo pom.xlm do maven no java, onde podemos adicionar nossas dependencias.

Dentro desse arquivo devemos adiconar o seguinte comando ```"gem 'rspec'"```, esse comando serve para indicar que vamos precisar do Rspec em nosso projeto.

Após salver, voltar até o terminal e executar o comando ```"gem install"```, esse comando serve para fazer o download dos arquivos da dependencia Rspec.

##### Observação 1:
Se quiser verificar qual é a versão do Rspec, utilizar ```  "rspec --version" ``` 


Agora execute o comando ```  "rspec --init" ``` , esse comando ira cirar nossa extrutura basica do projeto de automação. 


##### Observação 2:
O arquivo ``` "spec_helper.rb" ``` é onde temos nossa configuração do tests
O arquivo ``` ".rspec" ``` é onde o arquivo spec, sera importado.
A pasta ```spec ``` é onde vamos escrever nossas automações.
  ##### Extra:
   Por convenção os arquivos da automação deveram ter o seguinte formato, "exemplo_spec.rb", seguindo:	
		
		
#### Exemplo de suite de test:
``` 
 describe 'exemplo de suite' do
	it 'exemplo de cenario' do
		 idade = 20
		 expect(idade).to eql 20  # Fazendo um assert para saber se idade é igual a 20
		end
	 end
```

Para rodar um suite de test, utilize o comando ``` "rspec" ```  no Cmder
