/* paises.pl - jogo de identificação de países.

    inicia com ?- iniciar.     */
:- initialization(iniciar).
iniciar :- hipotese(Pais),
      write('Eu acho que o país é: '),
      write(Pais),
      nl,
      undo.

/* hipóteses a serem testadas */

/*America do sul*/
hipotese(brasil)      :- brasil, !.
hipotese(argentina)   :- argentina, !.
hipotese(chile)       :- chile, !.
hipotese(colombia)    :- colombia, !.
hipotese(peru)        :- peru, !.
hipotese(venezuela)   :- venezuela, !.
hipotese(uruguai)     :- uruguai, !.
hipotese(bolivia)     :- bolivia, !.
hipotese(paraguai)    :- paraguai, !.
hipotese(equador)     :- equador, !.
hipotese(guiana)      :- guiana, !.
hipotese(suriname)    :- suriname, !.

/*America do norte*/
hipotese(eua)         :- eua, !.
hipotese(canada)      :- canada, !.
hipotese(mexico)      :- mexico, !.

/*Europa*/
hipotese(reino_unido) :- reino_unido, !.
hipotese(portugal)    :- portugal, !.
hipotese(espanha)     :- espanha, !.
hipotese(franca)      :- franca, !.
hipotese(alemanha)    :- alemanha, !.
hipotese(austria)     :- austria, !.
hipotese(italia)      :- italia, !.
hipotese(polonia)     :- polonia, !.
hipotese(russia)      :- russia, !.

/*Ásia*/
hipotese(china)       :- china, !.
hipotese(japao)       :- japao, !.
hipotese(coreia_do_sul) :- coreia_do_sul, !.
hipotese(india)       :- india, !.
hipotese(indonesia)   :- indonesia, !.
hipotese(paquistao)   :- paquistao, !.
hipotese(israel)      :- israel, !.

/*Oceania*/
hipotese(australia)   :- australia, !.
hipotese(nova_zelandia) :- nova_zelandia, !.

 /*África*/
hipotese(africa_do_sul) :- africa_do_sul, !.
hipotese(egito)       :- egito, !.
hipotese(nigeria)     :- nigeria, !.
hipotese(angola)      :- angola, !.
hipotese(mocambique)  :- mocambique, !.
hipotese(desconhecido).             /* sem identificação */

/* Regras de identificação dos países - América do Sul */
brasil :- america_do_sul,
          verificar(tem_mais_de_150_milhoes_habitantes),
          verificar(capital_e_brasilia),
          verificar(fala_portugues),
          verificar(bandeira_tem_verde_amarelo_azul).

argentina :- america_do_sul,
             verificar(tem_entre_30_50_milhoes_habitantes),
             verificar(capital_e_buenos_aires),
             verificar(fala_espanhol),
             verificar(bandeira_tem_azul_branco).

chile :- america_do_sul,
         verificar(tem_entre_10_30_milhoes_habitantes),
         verificar(capital_e_santiago),
         verificar(fala_espanhol),
         verificar(bandeira_tem_azul_branco_vermelho),
         verificar(pais_medio).

colombia :- america_do_sul,
            verificar(tem_entre_30_50_milhoes_habitantes),
            verificar(capital_e_bogota),
            verificar(fala_espanhol),
            verificar(bandeira_tem_amarelo_azul_vermelho).

peru :- america_do_sul,
        verificar(tem_entre_30_50_milhoes_habitantes),
        verificar(capital_e_lima),
        verificar(fala_espanhol),
        verificar(bandeira_tem_vermelho_branco).

venezuela :- america_do_sul,
             verificar(tem_entre_10_30_milhoes_habitantes),
             verificar(capital_e_caracas),
             verificar(fala_espanhol),
             verificar(bandeira_tem_amarelo_azul_vermelho).

uruguai :- america_do_sul,
           verificar(tem_menos_de_5_milhoes_habitantes),
           verificar(capital_e_montevideu),
           verificar(fala_espanhol),
           verificar(bandeira_tem_azul_branco),
           verificar(pais_pequeno).

bolivia :- america_do_sul,
           verificar(tem_entre_10_30_milhoes_habitantes),
           verificar(capital_e_sucre_ou_la_paz),
           verificar(fala_espanhol),
           verificar(bandeira_tem_vermelho_amarelo_verde).

paraguai :- america_do_sul,
            verificar(tem_entre_5_10_milhoes_habitantes),
            verificar(capital_e_assuncao),
            verificar(fala_espanhol),
            verificar(bandeira_tem_vermelho_branco_azul).

equador :- america_do_sul,
           verificar(tem_entre_10_30_milhoes_habitantes),
           verificar(capital_e_quito),
           verificar(fala_espanhol),
           verificar(bandeira_tem_amarelo_azul_vermelho).

guiana :- america_do_sul,
          verificar(tem_menos_de_5_milhoes_habitantes),
          verificar(capital_e_georgetown),
          verificar(fala_ingles),
          verificar(bandeira_tem_verde_branco_vermelho).

suriname :- america_do_sul,
            verificar(tem_menos_de_5_milhoes_habitantes),
            verificar(capital_e_paramaribo),
            verificar(fala_holandes),
            verificar(bandeira_tem_verde_branco_vermelho).

/* América do Norte */
eua :- america_do_norte,
       verificar(tem_mais_de_150_milhoes_habitantes),
       verificar(capital_e_washington),
       verificar(fala_ingles),
       verificar(bandeira_tem_vermelho_branco_azul),
       verificar(pais_gigante).

canada :- america_do_norte,
          verificar(tem_entre_30_50_milhoes_habitantes),
          verificar(capital_e_ottawa),
          verificar(fala_ingles_frances),
          verificar(bandeira_tem_vermelho_branco),
          verificar(pais_gigante).

mexico :- america_do_norte,
          verificar(tem_entre_100_150_milhoes_habitantes),
          verificar(capital_e_cidade_do_mexico),
          verificar(fala_espanhol),
          verificar(bandeira_tem_verde_branco_vermelho),
          verificar(pais_grande).

/* Europa */
reino_unido :- europa,
               verificar(tem_entre_50_75_milhoes_habitantes),
               verificar(capital_e_londres),
               verificar(fala_ingles),
               verificar(bandeira_tem_azul_branco_vermelho),
               verificar(pais_pequeno).

portugal :- europa,
            verificar(tem_entre_10_30_milhoes_habitantes),
            verificar(capital_e_lisboa),
            verificar(fala_portugues),
            verificar(bandeira_tem_verde_vermelho),
            verificar(pais_pequeno).

espanha :- europa,
           verificar(tem_entre_30_50_milhoes_habitantes),
           verificar(capital_e_madrid),
           verificar(fala_espanhol),
           verificar(bandeira_tem_vermelho_amarelo),
           verificar(pais_medio).

franca :- europa,
          verificar(tem_entre_50_75_milhoes_habitantes),
          verificar(capital_e_paris),
          verificar(fala_frances),
          verificar(bandeira_tem_azul_branco_vermelho),
          verificar(pais_medio).

alemanha :- europa,
            verificar(tem_entre_75_100_milhoes_habitantes),
            verificar(capital_e_berlim),
            verificar(fala_alemao),
            verificar(bandeira_tem_preto_vermelho_amarelo),
            verificar(pais_pequeno).

austria :- europa,
           verificar(tem_entre_5_10_milhoes_habitantes),
           verificar(capital_e_viena),
           verificar(fala_alemao),
           verificar(bandeira_tem_vermelho_branco),
           verificar(pais_pequeno).

italia :- europa,
          verificar(tem_entre_50_75_milhoes_habitantes),
          verificar(capital_e_roma),
          verificar(fala_italiano),
          verificar(bandeira_tem_verde_branco_vermelho),
          verificar(pais_pequeno).

polonia :- europa,
           verificar(tem_entre_30_50_milhoes_habitantes),
           verificar(capital_e_varsovia),
           verificar(fala_polones),
           verificar(bandeira_tem_branco_vermelho),
           verificar(pais_pequeno).

russia :- europa,
          verificar(tem_entre_100_150_milhoes_habitantes),
          verificar(capital_e_moscou),
          verificar(fala_russo),
          verificar(bandeira_tem_branco_azul_vermelho),
          verificar(pais_gigante).

/* Ásia */
china :- asia,
         verificar(tem_mais_de_150_milhoes_habitantes),
         verificar(capital_e_pequim),
         verificar(fala_chines),
         verificar(bandeira_tem_vermelho_amarelo),
         verificar(pais_gigante).

japao :- asia,
         verificar(tem_entre_100_150_milhoes_habitantes),
         verificar(capital_e_toquio),
         verificar(fala_japones),
         verificar(bandeira_tem_branco_vermelho),
         verificar(pais_pequeno).

coreia_do_sul :- asia,
                 verificar(tem_entre_30_50_milhoes_habitantes),
                 verificar(capital_e_seul),
                 verificar(fala_coreano),
                 verificar(bandeira_tem_branco_azul_vermelho),
                 verificar(pais_pequeno).

india :- asia,
         verificar(tem_mais_de_150_milhoes_habitantes),
         verificar(capital_e_nova_delhi),
         verificar(fala_hindi_ingles),
         verificar(bandeira_tem_laranja_branco_verde),
         verificar(pais_grande).

indonesia :- asia,
             verificar(tem_entre_100_150_milhoes_habitantes),
             verificar(capital_e_jacarta),
             verificar(fala_indonesio),
             verificar(bandeira_tem_vermelho_branco),
             verificar(pais_grande).

paquistao :- asia,
             verificar(tem_mais_de_150_milhoes_habitantes),
             verificar(capital_e_islamabad),
             verificar(fala_urdu_ingles),
             verificar(bandeira_tem_verde_branco),
             verificar(pais_medio).

israel :- asia,
          verificar(tem_entre_5_10_milhoes_habitantes),
          verificar(capital_e_jerusalem),
          verificar(fala_hebraico_arabe),
          verificar(bandeira_tem_azul_branco),
          verificar(pais_pequeno).

/* Oceania */
australia :- oceania,
             verificar(tem_entre_10_30_milhoes_habitantes),
             verificar(capital_e_camberra),
             verificar(fala_ingles),
             verificar(bandeira_tem_azul_branco_vermelho),
             verificar(pais_gigante).

nova_zelandia :- oceania,
                 verificar(tem_menos_de_5_milhoes_habitantes),
                 verificar(capital_e_wellington),
                 verificar(fala_ingles),
                 verificar(bandeira_tem_azul_branco),
                 verificar(pais_pequeno).

/* África */
africa_do_sul :- africa,
                 verificar(tem_entre_50_75_milhoes_habitantes),
                 verificar(capital_e_pretoria_cidade_do_cabo_bloemfontein),
                 verificar(fala_africaner_ingles),
                 verificar(bandeira_tem_verde_azul_vermelho_amarelo_preto_branco),
                 verificar(pais_grande).

egito :- africa,
         verificar(tem_entre_75_100_milhoes_habitantes),
         verificar(capital_e_cairo),
         verificar(fala_arabe),
         verificar(bandeira_tem_vermelho_branco_preto),
         verificar(pais_grande).

nigeria :- africa,
           verificar(tem_mais_de_150_milhoes_habitantes),
           verificar(capital_e_abuja),
           verificar(fala_ingles),
           verificar(bandeira_tem_verde_branco),
           verificar(pais_medio).

angola :- africa,
          verificar(tem_entre_10_30_milhoes_habitantes),
          verificar(capital_e_luanda),
          verificar(fala_portugues),
          verificar(bandeira_tem_vermelho_preto_amarelo),
          verificar(pais_grande).

mocambique :- africa,
              verificar(tem_entre_10_30_milhoes_habitantes),
              verificar(capital_e_maputo),
              verificar(fala_portugues),
              verificar(bandeira_tem_verde_branco_preto_vermelho_amarelo),
              verificar(pais_medio).

/* regras de classificação por continente */
america_do_sul :- verificar(fica_na_america_do_sul).
america_do_norte :- verificar(fica_na_america_do_norte).
europa :- verificar(fica_na_europa).
asia :- verificar(fica_na_asia).
oceania :- verificar(fica_na_oceania).
africa :- verificar(fica_na_africa).

/* Como fazer perguntas */
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

:- dynamic yes/1,no/1.

/* Como verificar algo */
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

/* Desfaz todas as afirmações sim / não */
undo :- retract(yes(_)),fail.
undo :- retract(no(_)),fail.
undo.