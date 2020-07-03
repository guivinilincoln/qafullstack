### Ruby básico, orientação a objetos e tests unitarios com Rpesc:


## Pré-requisitos:
<ul>
<li>Visual Studio Code</li> 
<li>Ruby Installer(Windows)</li>
<li>Cmder</li>
</ul>

## Configuração de variaveis de ambiente
<ul>
<li>cmder_root C:\qa\tools\cmder</li>
</ul>


## Primeiros Passos:
<ul>
<li>Após baixar e instalar o VSCode, Cmder e o Ruby Installer(LTS)</li>
<li>Abrir o Cmder e utilizar o comando "ruby --version" para verificar a versão do Ruby instalada.</li>
<li>Verificada a versão utilizar "ridk install" para fazer a instalação do quit de dev do Ruby, ao executar esse comando deve aparecer três opções. Digitar 3 e enter. Esperar finalizar e enter novamente. </li>
<li>Agora vamos utilizar o comando "gem install bundler" sera instalado o gereciador de dependencia do Ruby.</li>
<li>Verficar a versão do bundler instalada, usar "bundler --version" </li>
li>Verficar configuração de ambiente do ruby "gem env" </li>
</ul>

## Projeto:

Para dar inicio ao projeto com Rspec devemos utilziar o comando ```"bandle init"``` no Cmder para que seja gerado um arquivo Gemfile dentro da nossa pasta 

Esse arquivo e como o arquivo pom.xlm do maven no java, onde podemos adicionar nossas dependencias.

Dentro desse arquivo devemos adiconar o seguinte comando ```"gem 'rspec'"```, esse comando serve para indicar que vamos precisar do Rspec em nosso projeto.

Após salver, voltar até o terminal e executar o comando ```"bundle install"```, esse comando serve para fazer o download dos arquivos da dependencia Rspec.

##### Observação 1:
Se quiser verificar qual é a versão do Rspec, utilizar ```  "rspec --version" ``` 


Agora execute o comando ```  "rspec --init" ``` , esse comando ira cirar nossa estrutura basica do projeto de automação. 


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

#### Extra:
Rodandos os testes por arquivo especifico ``` rspec spec\saque_spec.rb ```

Rodandos os testes por arquivo especifico com formatação de documento``` rspec spec\saque_spec.rb -fd ```

Rodandos os testes e grando um relatorio HTMl ``` rspec --format html --out report.html ```

Para extrairmos relatorios em servidores (Exemplo: Jenkins e Azure) devemos implementar um nova biblioteceta  ``` gem 'rspec_junit_formatter' ``` logo após utilizar ``` bundler install ``` e depois executar  ``` rspec --format RspecJunitFormatter --out report.xml ``` no terminal.
	
	
	
	
