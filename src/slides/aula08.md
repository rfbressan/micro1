---
author:
- |
  **Docente Responsável:** Paulo Victor da Fonseca\
  **E-mail:** <paulo.fonseca@udesc.br>\
  **Disciplina:** 23MIC1 - Microeconomia I\
  \
  **Universidade do Estado de Santa Catarina (UDESC)**\
  **Centro de Ciências da Administração e Socioeconômicas - ESAG**
date: 21 de Setembro, 2022
title: Microeconomia I - Maximização de utilidade e escolha
---

::: frame
Sumário
:::

# Função de utilidade indireta

## Funções de demanda Marshallianas

::: frame
Funções de demanda Marshallianas

-   Na aula anterior vimos como manipular as condições de primeira ordem
    para um problema de otimização com restrições para solucionar o
    problema primal do consumidor e encontrar os valores ótimos de
    $x_1, x_2, \dots, x_n$.

-   De maneira geral, estes valores ótimos serão funções dos preços
    unitários de todos os bens e da renda monetária do indivíduo. Isto
    é: $$\begin{aligned}
        x_1^* &=& x_1(p_1, p_2, \dots, p_n, I), \nonumber \\
        x_2^* &=& x_2(p_1, p_2, \dots, p_n, I), \nonumber \\
        &\vdots& \nonumber \\
        x_n^* &=& x_n(p_1, p_2, \dots, p_n, I).
        \label{eq1}
        
    \end{aligned}$$

-   A este conjunto de [funções de demanda]{style="color: blue"}
    ([\[eq1\]](#eq1){reference-type="ref" reference="eq1"}) damos o nome
    de [demandas Marshallianas]{style="color: blue"}, para
    diferenciá-las das demandas Hicksianas.

-   Ambas serão estudadas em maior profundidade nas próximas aulas.
:::

## Função de utilidade indireta

::: frame
Função de utilidade indireta

-   O conjunto de funções de demandas Marshallianas
    ([\[eq1\]](#eq1){reference-type="ref" reference="eq1"}) mostra qual
    a escolha ótima de consumo quando os preços são
    $p_1, p_2, \dots, p_n$ e a renda $I$.

-   Se substituirmos os valores ótimos de $x$ na função utilidade
    original $U(x_1, x_2, \dots, x_n)$, obtemos: $$\begin{aligned}
                \text{utilidade máxima} &=& U[x_1^*(p_1, \dots, p_n, I), \dots, x_n^*(p_1, \dots, p_n, I)] \nonumber \\
                &=& V(p_1, p_2, \dots, p_n, I).
            
    \end{aligned}$$

-   Dado o objetivo do consumidor em maximizar sua utilidade dada sua
    restrição orçamentária, o nível ótimo de utilidade atingível
    dependerá *indiretamente* dos preços dos bens e da renda monetária à
    disposição deste consumidor.

-   Esta dependência é observada pela [função de utilidade
    indireta]{style="color: blue"} $V$.

-   Mudanças nos preços dos bens ou na renda alteram o nível de
    utilidade que pode ser obtido.
:::

::: frame
Função de utilidade indireta

-   A função de utilidade indireta é um exemplo de uma [função
    valor]{style="color: blue"}.

-   Essa função soluciona todas as variáveis endógenas em um problema de
    otimização deixando o valor ótimo obtido como uma função somente das
    variáveis exógenas.

-   Tal abordagem nos permite explorar como mudanças nas variáveis
    exógenas afetam o resultado final sem precisarmos refazer o problema
    de otimização original.

-   É importante ressaltar, no entanto, que a dependência de $x_i$ em
    $p_1, \dots, p_n$ e $I$, e não diretamente nas quantidades
    consumidas dos outros bens, não implica que a escolha de consumo de
    um bem qualquer não dependa da escolha de consumo dos outros bens.

-   Significa, apenas, que as escolhas de $x_j$ ($j \neq i$) estão
    implicitamente incorporadas na solução e foram substituídas pelos
    seus preços e pela renda.
:::

## Exemplos

::: frame
Função do tipo Cobb-Douglas Obtenha as funções de demanda Marshallianas
e a função de utilidade indireta para a seguinte função utilidade do
tipo Cobb-Douglas: $$U(x,y) = x^{0,5}y^{0,5},$$ considerando a restrição
orçamentária: $p_xx + p_yy = I$.

Calcule o nível de utilidade máximo quando $p_x = 1$, $p_y = 4$ e
$I = 8$.
:::

::: frame
Bens complementares Obtenha as funções de demanda Marshallianas e a
função de utilidade indireta para a seguinte função utilidade de bens
complementares: $$U(x,y) = \min(x,4y)$$ considerando a restrição
orçamentária: $p_xx + p_yy = I$.

Calcule o nível de utilidade máximo quando $p_x = 1$, $p_y = 4$ e
$I = 8$.
:::

::: frame
Função Cobb-Douglas Obtenha as funções de demanda Marshallianas e a
função de utilidade indireta para a seguinte função utilidade do tipo
Cobb-Douglas:
$$U(x,y) = x^{\alpha}y^{1-\alpha}, \qquad \alpha \in (0,1)$$
considerando a restrição orçamentária: $p_xx + p_yy = I$.

Mostre que a fração da renda consumida em cada bem é constante.
:::

# Princípio do lump-sum

## Princípio do lump-sum

::: frame
-   Muitos insights da análise econômica tem origem no reconhecimento de
    que a utilidade depende, em última instância, da renda dos
    indivíduos e dos preços que eles enfrentam.

-   Um dos mais importantes é o chamado [princípio
    lump-sum]{style="color: blue"} que ilustra a superioridade dos
    impostos sobre a renda (poder de compra) em relação aos impostos
    sobre bens específicos.

-   Uma ideia relacionada é que transferências de renda para pessoas de
    baixa renda elevarão mais a utilidade (o bem-estar) do que a
    utilização da mesma quantidade de dinheiro para subsidiar bens
    específicos.

-   A intuição por trás destes resultados deriva diretamente da hipótese
    de maximização de utilidade: um imposto ou subsídio sobre a renda
    deixa o indivíduo livre para decidir como alocar sua renda da melhor
    maneira que considerar.
:::

::: frame
-   Por outro lado, impostos ou subsídios sobre bens específicos alteram
    o poder de compra dos indivíduos e distorcem suas escolhas em razão
    dos preços artificiais incorporados nesses esquemas.

-   Por isso, impostos de renda e subsídios gerais devem ser preferidos
    se a eficiência for um critério importante na política social.
:::

::: frame
<figure id="fig1">
<img src="lumpsum.JPG" style="width:70.0%" />
<figcaption>Princípio da tributação do tipo lump-sum. Fonte: Nicholson e
Snyder (2019).</figcaption>
</figure>
:::

::: frame
-   Suponha que, inicialmente, o consumidor disponha de uma renda $I$ e
    sua cesta de consumo ótima seja dada por $(x^*, y^*)$.

-   Um imposto sobre o bem $x$ elevaria seu preço, rotacionando a
    restrição orçamentária "para dentro". A este novo preço, a escolha
    ótima que maximiza a utilidade é dada por $(x_1, y_1)$.

-   A arrecação de impostos seria dada por $\tau x_1$, sendo $\tau$ a
    alíquota de imposto sobre o bem $x$.

-   Suponha, agora, que a incidência do imposto seja sobre a renda do
    consumidor, de modo que a arrecadação total seja mantida.

-   Neste caso, a receita orçamentária é deslocada para baixo, para o
    novo nível de renda $I^'$.

-   Como $I = (p_x + \tau)x_1 + p_yy_1$, temos que
    $I' = I-\tau x_1 = p_x x_1 + p_y y_1$, que mostra que a restrição
    orçamentária com imposto de renda igual também passa pelo ponto
    $x_1, y_1$.

-   Porém, a utilidade obtida pelo imposto de renda ($U_2$) é superior
    àquela obtida com imposto incidindo sobre o preço do bem x ($U_1$).

-   Logo, **a perda de utilidade do imposto de renda é menor que a perda
    observada com um imposto sobre o preço do bem $x$**.
:::

## Exemplos

::: frame
Função utilidade do tipo Cobb-Douglas Considere que a relação de
preferências de um indivíduo seja representada pela seguinte função
utilidade do tipo Cobb-Douglas: $$U(x,y) = x^{0,5}y^{0,5},$$
considerando a restrição orçamentária: $p_xx + p_yy = I$.

Calcule o nível de utilidade máximo quando $p_x = 1$, $p_y = 4$ e
$I = 8$.

Suponha, agora, um imposto de $\$ 1$ sobre $p_x$. Mostre que o nível de
utilidade, neste caso, é menor que a utilidade obtida sob um imposto de
renda que preserve a quantidade total arrecadada.
:::

::: frame
Bens complementares Considere que a relação de preferências de um
indivíduo seja representada pela seguinte função utilidade:
$$U(x,y) = \min(x, 4y),$$ considerando a restrição orçamentária:
$p_xx + p_yy = I$.

Calcule o nível de utilidade máximo quando $p_x = 1$, $p_y = 4$ e
$I = 8$.

Suponha, agora, um imposto de $\$ 1$ sobre $p_x$. Mostre que o nível de
utilidade, neste caso, é igual à utilidade obtida sob um imposto de
renda que preserve a quantidade total arrecadada. **Neste caso, o
princípio lump-sum não é válido pois o consumidor consome proporções
fixas dos dois bens e, portanto, o imposto não vai distorcer as escolhas
deste agente.**
:::

# Função dispêndio e dualidade

::: frame
Problema dual do consumidor

-   Até agora focamos no problema primal do consumidor: dados os preços
    de mercado e a renda, quais são as quantidades de cada bem
    escolhidas que maximizam sua utilidade.

-   Muitos dos problemas de maximização com restrições possuem um
    problema "dual" associado de minimização com restrições.

-   Para o caso de maximização de utilidade, o problema dual de
    minimização associado consiste em alocar a renda do indivíduo de
    forma a atingir um nível específico de utilidade com o menor gasto
    possível.
:::

::: frame
Problema dual do consumidor

<figure id="fig2">
<img src="dual.JPG" style="width:65.0%" />
<figcaption>Problema dual da minimização de dispêndio. Fonte: Nicholson
e Snyder (2019).</figcaption>
</figure>
:::

## Problema dual do consumidor: estrutra formal

::: frame
Problema dual do consumidor

-   O dispêndio (ou gasto) do consumidor com a cesta de bens
    $\textbf{x} = (x_1, x_2, \dots, x_n)$ é dado por:
    $$E = p_1x_1 + p_2x_2 + \dots + p_nx_n.$$

-   O [problema dual de minimização de dispêndio do
    consumidor]{style="color: blue"} é, então, dado por:
    $$\begin{aligned}
                    &\min_{x_1, \dots, x_n}& p_1x_1 + p_2x_2 + \dots + p_nx_n \nonumber \\
                    &\text{s.a.}& U(x_1, x_2, \dots, x_n) = \bar{U}.
                    \label{eq3}
                
    \end{aligned}$$

-   Ou seja, o consumidor minimiza seus gastos para um certo nível de
    utilidade $\bar{U}$ que deseja alcançar.
:::

::: frame
Problema dual do consumidor: Lagrangeano

-   Para os casos de pontos ótimos interiores, podemos resolver o
    problema de minimização via método de Lagrange.

-   O Lagrangeano do problema ([\[eq3\]](#eq3){reference-type="ref"
    reference="eq3"}) é dado por:
    $$\mathcal{L} = p_1x_1 + \dots + p_nx_n + \mu\left[\bar{U} - U(x_1, x_2, \dots, x_n)\right].$$

-   As condições de primeira ordem associadas são dadas pelo seguinte
    sistema de $n + 1$ equações: $$\begin{aligned}
                        p_1 &=& \mu^* \frac{\partial U}{\partial x_1}(x_1^*, x_2^*, \dots, x_n^*) \nonumber \\
                        p_2 &=& \mu^* \frac{\partial U}{\partial x_2}(x_1^*, x_2^*, \dots, x_n^*) \nonumber \\
                        &\vdots& \nonumber \\
                        p_n &=& \mu^* \frac{\partial U}{\partial x_n}(x_1^*, x_2^*, \dots, x_n^*) \nonumber \\
                        \bar{U} &=& U(x_1^*, x_2^*, \dots, x_n^*).
                
    \end{aligned}$$
:::

::: frame
Problema dual do consumidor

-   As $n$ primeiras CPOs são idênticas às CPOs do problema primal do
    consumidor de maximização de utilidade.

-   A condição de que a TMS entre dois bens seja igual à razão entre
    seus preços de mercado continua válida.

-   Portanto, a solução do problema dual do consumidor satisfaz a
    condição de tangência entre a curva de indiferença dada por
    $\bar{U}$ e a reta de dispêndio.

-   Apenas a última CPO é diferente, pois diz que o consumidor deseja
    consumir a cesta de consumo ótima que garanta um nível de utilidade
    igual à $\bar{U}$.
:::

## Demandas compensadas

::: frame
Função dispêndio

-   As quantidades ótimas consumidas de $x_1, \dots, x_n$ neste problema
    são funções dos preços dos bens ($p_1, \dots, p_n$) e do nível de
    utilidade desejado $\bar{U}$.

-   Se algum dos preços for alterado, ou a meta de utilidade desejada, a
    cesta de consumos ótima também será alterada.

    ::: defi
    **Definição 1** (Função dispêndio). *A [função
    dispêndio]{style="color: blue"} do indivíduo mostra os gastos
    mínimos necessários para atingir um determinado nível de utilidade
    para um dado vetor de preços:
    $$\text{dispêndios mínimos} = E(p_1, p_2, \dots, p_n, U).$$*
    :::

-   Essa definição mostra que **a função dispêndio, que também é uma
    função valor, e a função utilidade indireta são inversas**.
:::

::: frame
Demandas compensadas (Hicksianas)

-   As funções demanda desse problema são funções dos preços e do nível
    de utilidade: $$\begin{aligned}
                        x_1^h &=& x_1^h(p_1, p_2, \dots, p_n, \bar{U}), \nonumber \\
                        x_2^h &=& x_2^h(p_1, p_2, \dots, p_n, \bar{U}), \nonumber \\
                        &\vdots& \nonumber \\
                        x_n^h &=& x_n^h(p_1, p_2, \dots, p_n, \bar{U}).
                
    \end{aligned}$$

-   Essas funções de demanda são chamadas [demandas Hicksianas (ou
    demandas compensadas)]{style="color: blue"}.

-   As demandas Hicksianas são funções dos preços e nível de utilidade.
    As demandas Marshallianas são funções dos preços e do nível de
    renda.
:::

::: frame
Demandas compensadas (Hicksianas)

-   São chamadas demandas compensadas pois elas "compensam" o consumidor
    de modo a mantê-lo sempre na mesma curva de indiferença $\bar{U}$.

<figure id="fig3">
<img src="compensada.JPG" style="width:60.0%" />
<figcaption>Demandas compensadas.</figcaption>
</figure>
:::

::: frame
Demandas compensadas (Hicksianas)

-   A demanda Hicksiana não é diretamente observável, pois depende do
    nível de utilidade $\bar{U}$.

-   A demanda Marshalliana, por sua vez, é diretamente observável pois
    depende apenas dos preços dos bens e da renda - variáveis
    mensuráveis.

-   Substituindo as demandas Hicksianas no gasto do consumidor, obtemos
    a função dispêndio definida anteriormente:
    $$E(p_1, p_2, \dots, p_n, \bar{U}) = p_1 x_1^h(p_1, \dots, p_n, \bar{U}) + \dots + p_n x_n^h (p_1, \dots, p_n, \bar{U}).$$

-   A função dispêndio mostra o gasto mínimo necessário para se alcançar
    o nível de utilidade $\bar{U}$, aos preços
    $\textbf{p} = (p_1, \dots, p_n)$ de mercado.
:::

::: frame
Demandas compensadas (Hicksianas)

-   O multiplicador de Lagrange representa o custo marginal para se
    obter uma unidade adicional de utilidade.

-   Existe uma relação entre o multiplicador de Lagrange do problema
    dual $\mu$ com o multiplicador de Lagrange $\lambda$ do problema
    primal:
    $$\mu = \frac{p_i}{U_i}, \qquad \lambda = \frac{U_i}{p_i} \Rightarrow \mu = \frac{1}{\lambda}.$$

-   Portanto, o multiplicador de Lagrange do problema de minimização é o
    inverso do multiplicador de Lagrange do problema de maximização.
:::

## Exemplos

::: frame
Função do tipo Cobb-Douglas Dados $U(x,y) = x^{0,5}y^{0,5}$ e
$I = p_xx + p_yy$, a função utilidade indireta é dada por:
$V(p_x,p_y,I) = \frac{I}{2p_x^{0,5}p_y^{0,5}}$. Como a função dispêndio
é o inverso da utilidade indireta, temos:
$$E(p_x,p_y,U) = 2p_x^{0,5}p_y^{0,5}U.$$

Mostre que este resultado é o mesmo obtido quando resolvemos o problema
de minimização.

Mostre, também, que para $p_x = 1$, $p_y = 4$ e uma meta de utilidade
$U = 2$, o nível mínimo de dispêndio é $I = 8$.

Se o preço do bem $y$ aumentar de $\$4$ para \$5, qual a compensação
monetária o indivíduo necessita para manter o mesmo nível de utilidade?
:::

::: frame
Bens complementares Dada a função utilidade $U(x,y) = \min(x,4y)$,
podemos calcular a função utilidade indireta:
$$V(p_x,p_y,I) = \frac{I}{p_x + 0,25p_y}.$$

Portanto, a função dispêndio é dada por:
$$E(p_x,p_y,U) = (p_x + 0,25p_y)U.$$

Dados, $p_x = 1, p_y = 4$ e uma meta de utilidade $\bar{U} = 4$, obtemos
o dispêndio total de \$8 como no exercício anterior.

Neste caso, se o preço do bem $y$ aumentar de \$4 para \$5, os gastos
deste consumidor deveriam aumentar em quanto para manter o mesmo nível
de utilidade?
:::

## Propriedades da função dispêndio

::: frame
Propriedades da função dispêndio: Homogeneidade

-   As funções dispêndio são [homogêneas de grau
    um]{style="color: blue"} em todos os preços.

    ::: defi
    **Definição 2** (Função homogênea de grau $k$). *Uma função
    $f(x_1, x_2, \dots, x_n)$ é dita [homogênea de grau
    $k$]{style="color: blue"} se:
    $$f(tx_1, tx_2, \dots, tx_n) = t^kf(x_1, x_2, \dots, x_n), \qquad \forall t\geq 0.$$*
    :::

-   Isto quer dizer que, se todos os preços dos bens dobrarem, então, a
    renda dispendida também deve dobrar para que o consumidor permaneça
    na mesma curva de indiferença (mesmo nível de utilidade).
:::

::: frame
Propriedades da função dispêndio: Homogeneidade **Exemplo 1.** Vimos que
a função dispêndio associada a uma função utilidade do tipo Cobb-Douglas
$U(x,y) = x^{0,5}y^{0,5}$ é dada por:
$$E(p_x, p_y, U) = 2p_x^{0,5}p_y^{0,5}U.$$ Vamos mostrar que esta função
é homogênea de grau 1.
:::

::: frame
Propriedades da função dispêndio: Homogeneidade **Exemplo 2.** Vimos que
a função dispêndio associada a uma função utilidade de proporções fixas
$U(x,y) = \min(x,4y)$ é dada por: $$E(p_x, p_y, U) = (p_x + 0,25p_y)U.$$
Vamos mostrar que esta função é homogênea de grau 1.
:::

::: frame
Propriedades da função dispêndio: não decrescente nos preços

-   As funções dispêndio são [não-decrescentes nos
    preços]{style="color: blue"}:
    $$\frac{\partial E(p_1, \dots, p_i, \dots, p_n, U)}{\partial p_i} \geq 0, \qquad \forall i.$$

-   Como a função dispêndio nos diz o gasto mínimo necessário para que o
    consumidor atinja um nível específico de utilidade, um aumento de
    preços em um bem qualquer deve aumentar esse gasto mínimo.
:::

::: frame
Propriedades da função dispêndio: não decrescente nos preços

-   Suponha que o preço de um bem aumente e dos outros permaneçam
    constante.

-   Seja $A$ a cesta de consumos adquirida antes do aumento de preços, e
    $B$ a cesta de consumos adquirida após o aumento de preços.

-   Claramente a cesta $B$ custa mais após o aumento de preços do que
    custava antes.

-   No entanto, $B$ antes do aumento de preços custava mais que a cesta
    $A$ - pois $A$ é a cesta ótima de minimiza o dispêndio do consumidor
    para um dado nível de utilidade.

-   Portanto: a cesta de consumo $A$ custa menos que a cesta de consumo
    $B$ antes do aumento de preços que, por sua vez, custa menos que a
    cesta de consumo $B$ após o aumento de preços.

-   Logo, a cesta de consumo escolhida após o aumento de preços ($B$)
    custa mais que a cesta escolhida antes do aumento de preços ($A$) -
    função dispêndio é não decrescente nos preços.
:::

::: frame
Propriedades da função dispêndio: côncava nos preços

-   A função dispêndio $E(\textbf{p}, \bar{U})$ é [côncava nos
    preços]{style="color: blue"} - ou seja, o gráfico da função está
    sempre abaixo de retas tangentes a ele.

    <figure id="fig3">
    <img src="dispendioconc.JPG" style="width:60.0%" />
    <figcaption>Função dispêndio: concavidade nos preços. Fonte: Nicholson e
    Snyder (2019).</figcaption>
    </figure>
:::

::: frame
Propriedades da função dispêndio: côncava nos preços

-   A Figura [4](#fig3){reference-type="ref" reference="fig3"} mostra a
    função dispêndio de um consumidor como função de um único preço,
    $p_1$.

-   Ao preço inicial, $p_1^*$, o gasto mínimo deste indivíduo é dado por
    $E(p_1^*, \dots)$.

-   Agora considere preços maiores ou mais baixos que $p_1^*$. Se esse
    indivíduo continuasse adquirindo a mesma cesta de consumo, seus
    gastos iriam aumentar ou diminuir de maneira linear com as mudanças
    de preço.

-   Isso corresponde à função pseudodispêndio - ou dispêndio passivo -
    $E^{\text{pseudo}}$ na figura.

-   Esta reta mostra o nível de gastos que permitiria a aquisição da
    cesta de consumo original independentemente da variação de preços.

-   Se, no entanto, esta pessoa ajustar sua compra à medida que $p_1$
    mudasse, sabemos que (em decorrência da minimização de gastos) os
    gastos reais seriam menores que esse gasto passivo.
:::

::: frame
Propriedades da função dispêndio: côncava nos preços

-   Portanto, a função dispêndio real, $E$, ficará abaixo de
    $E^{\text{pseudo}}$ em todos os pontos e a função será côncava.

-   Um resultado da concavidade é que
    $f_{ii} = \partial^2 E/\partial p_i^2\leq 0$, precisamente o que
    mostra a Figura [4](#fig3){reference-type="ref" reference="fig3"}.

-   A concavidade da função dispêndio é um dos resultados mais
    importantes da aula de hoje e será uma propriedade útil para
    inúmeras aplicações, sobretudo para as relacionadas ao efeito
    substituição das mudanças de preços - que veremos nas próximas
    aulas.
:::

::: thebibliography
NICHOLSON, W.; SNYDER C. Teoria microeconômica: Princípios básicos e
aplicações. Cengage Learning Brasil, 2019. Disponível em:
[app.minhabiblioteca.com.br/#/books/9788522127030](https://app.minhabiblioteca.com.br/#/books/9788522127030/)

VARIAN, H. R. Microeconomia: uma abordagem moderna. 9.ed. Rio de
Janeiro: Elsevier, 2015. Disponível em:
[app.minhabiblioteca.com.br/books/9788595155107](https://app.minhabiblioteca.com.br/books/9788595155107)
:::
