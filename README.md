# Sistema Especialista de Identificação de Países em Prolog

## Descrição

Este é um sistema especialista desenvolvido em Prolog que atua como um jogo de adivinhação inteligente, capaz de identificar países através de perguntas interativas sobre suas características geográficas, populacionais, linguísticas e outros atributos distintivos.

## Funcionalidade

O sistema funciona como um "especialista virtual" que:
- Faz perguntas estratégicas ao usuário sobre características de um país
- Utiliza as respostas para navegar através de uma árvore de decisão
- Identifica o país com base nas informações coletadas
- Cobre 47 países distribuídos pelos 6 continentes

## Como Usar

### Iniciando o Sistema
```prolog
?- iniciar.
```

### Funcionamento
1. O sistema começará fazendo perguntas sobre o país que você tem em mente
2. Responda com `s` (sim) ou `n` (não) para cada pergunta
3. O sistema utilizará suas respostas para identificar o país
4. Ao final, o sistema apresentará sua conclusão

### Exemplo de Execução
```
O país tem o seguinte atributo: fica_na_america_do_sul (s|n) ? s
O país tem o seguinte atributo: tem_mais_de_150_milhoes_habitantes (s|n) ? s
O país tem o seguinte atributo: capital_e_brasilia (s|n) ? s
O país tem o seguinte atributo: fala_portugues (s|n) ? s
O país tem o seguinte atributo: bandeira_tem_verde_amarelo_azul (s|n) ? s
Eu acho que o país é: brasil
```

## Estrutura do Código

### 1. Inicialização
```prolog
:- initialization(iniciar).
```
Define que o predicado `iniciar` será executado automaticamente.

### 2. Predicado Principal
```prolog
iniciar :- hipotese(Pais),
      write('Eu acho que o país é: '),
      write(Pais),
      nl,
      undo.
```
Controla o fluxo principal do programa, testando hipóteses e apresentando o resultado.

### 3. Hipóteses de Países
O sistema organiza os países por continentes:

#### América do Sul (12 países)
- Brasil, Argentina, Chile, Colômbia, Peru, Venezuela, Uruguai, Bolívia, Paraguai, Equador, Guiana, Suriname

#### América do Norte (3 países)
- Estados Unidos, Canadá, México

#### Europa (9 países)
- Reino Unido, Portugal, Espanha, França, Alemanha, Áustria, Itália, Polônia, Rússia

#### Ásia (7 países)
- China, Japão, Coreia do Sul, Índia, Indonésia, Paquistão, Israel

#### Oceania (2 países)
- Austrália, Nova Zelândia

#### África (5 países)
- África do Sul, Egito, Nigéria, Angola, Moçambique

### 4. Regras de Identificação
Cada país possui regras específicas baseadas em:
- **Localização geográfica** (continente)
- **População** (faixas populacionais)
- **Capital**
- **Idioma principal**
- **Cores da bandeira**
- **Tamanho territorial**

Exemplo para o Brasil:
```prolog
brasil :- america_do_sul,
          verificar(tem_mais_de_150_milhoes_habitantes),
          verificar(capital_e_brasilia),
          verificar(fala_portugues),
          verificar(bandeira_tem_verde_amarelo_azul).
```

### 5. Sistema de Perguntas Interativas
```prolog
perguntar(Questao) :-
    write('O país tem o seguinte atributo: '),
    write(Questao),
    write(' (s|n) ? '),
    read(Resposta),
    nl,
    ( (Resposta == sim ; Resposta == s)
      ->
       assert(yes(Questao)) ;
       assert(no(Questao)), fail).
```

### 6. Sistema de Verificação
```prolog
verificar(S) :-
   (yes(S)
    ->
    true ;
    (no(S)
     ->
     fail ;
     perguntar(S)
    )
   ).
```
Verifica se uma característica já foi confirmada, negada, ou se precisa ser perguntada.

### 7. Sistema de Limpeza
```prolog
undo :- retract(yes(_)),fail.
undo :- retract(no(_)),fail.
undo.
```
Remove todas as respostas armazenadas para permitir nova execução.

## Categorias de Atributos

### População
- `tem_menos_de_5_milhoes_habitantes`
- `tem_entre_5_10_milhoes_habitantes`
- `tem_entre_10_30_milhoes_habitantes`
- `tem_entre_30_50_milhoes_habitantes`
- `tem_entre_50_75_milhoes_habitantes`
- `tem_entre_75_100_milhoes_habitantes`
- `tem_entre_100_150_milhoes_habitantes`
- `tem_mais_de_150_milhoes_habitantes`

### Tamanho Territorial
- `pais_pequeno`
- `pais_medio`
- `pais_grande`
- `pais_gigante`

### Idiomas
- Português, Espanhol, Inglês, Francês, Alemão, Russo, Chinês, Japonês, Coreano, Hindi, Árabe, Hebraico, entre outros

### Características das Bandeiras
Combinações de cores como:
- `bandeira_tem_verde_amarelo_azul` (Brasil)
- `bandeira_tem_azul_branco_vermelho` (França, Reino Unido)
- `bandeira_tem_vermelho_branco` (Japão, Indonésia)

## Tecnologia Utilizada

**Linguagem**: Prolog (Programming in Logic)
- Paradigma de programação lógica
- Baseado em fatos, regras e consultas
- Ideal para sistemas especialistas e inteligência artificial

## Vantagens do Sistema

1. **Eficiência**: Utiliza lógica de primeira ordem para navegação inteligente
2. **Escalabilidade**: Fácil adição de novos países e características
3. **Interatividade**: Interface conversacional natural
4. **Precisão**: Sistema determinístico com regras bem definidas
5. **Educativo**: Ensina características geográficas e culturais dos países

## Limitações

- Base de conhecimento limitada a 47 países
- Informações podem desatualizar com o tempo
- Dependente da precisão das respostas do usuário
- Interface apenas textual

## Possíveis Melhorias

1. Expansão da base de países
2. Adição de mais características distintivas
3. Interface gráfica
4. Sistema de aprendizado para casos não identificados
5. Atualização automática de dados populacionais
   
## Requisitos

- Interpretador Prolog (SWI-Prolog, GNU Prolog, etc.)
- Conhecimento básico de Prolog para modificações

## Execução

1. Carregue o arquivo `paises.pl` no interpretador Prolog
2. Execute o comando `?- iniciar.`
3. Responda às perguntas com `s` ou `n`
4. Aguarde a identificação do país

Este sistema representa um excelente exemplo de aplicação prática de Prolog em sistemas especialistas, demonstrando como a programação lógica pode ser utilizada para criar soluções inteligentes e interativas.
