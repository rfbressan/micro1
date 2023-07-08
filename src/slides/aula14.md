---
author:
- |
  **Docente Responsável:** Paulo Victor da Fonseca\
  **E-mail:** <paulo.fonseca@udesc.br>\
  **Disciplina:** 23MIC1 - Microeconomia I\
  **Universidade do Estado de Santa Catarina (UDESC)**\
  **Centro de Ciências da Administração e Socioeconômicas - ESAG**
date: 28 de Novembro, 2022
title: "Microeconomia I: Teoria da Firma"
---

::: frame
Sumário
:::

# Taxa técnica de substituição

## Definição

::: frame
Taxa técnica de substituição

-   [Taxa técnica de substituição (TTS).]{style="color: blue"} A taxa
    técnica de substituição (ou taxa marginal de substituição técnica)
    entre dois insumos mede o quanto a firma deve abrir mão de um desses
    insumos e acrescentar do outro insumo para continuar produzindo a
    mesma quantidade do bem final ao longo de uma isoquanta.

-   Intuitivamente, a taxa técnica de substituição do insumo $j$ por
    insumo $i$, denotada por $TTS(x_i,x_j)$, é a quantidade de insumo
    $j$ que a firma pode reduzir por usar uma unidade adicional do
    insumo $i$ e manter sua produção constante ou, alternativamente, é a
    quantidade adicional de insumo $j$ que a firma deve usar para abrir
    mão de uma unidade do insumo $i$ e manter constante sua produção.
:::

::: frame
Taxa técnica de substituição

-   A TTS entre os insumos $i$ e $j$ pode ser obtida do seguinte modo:
    suponha que alteramos os insumos $i$ e $j$ em $dx_i$ e $dx_j$,
    respectivamente, de modo a manter inalterado o nível de produção
    $(dq = 0)$.

-   Usando o conceito de diferencial total, obtemos: $$\begin{aligned}
                0 &=& dq = \frac{\partial f(x_1, \dots, x_n)}{\partial x_i}dx_i + \frac{\partial f(x_1, \dots, x_n)}{\partial x_j}dx_j \\
                &\Rightarrow & \left.\frac{dx_j}{dx_i}\right|_{q = f(\mathbf{x})} = -\frac{f_i}{f_j}.
            
    \end{aligned}$$
:::

::: frame
Taxa técnica de substituição

-   Portanto, a taxa técnica de substituição do insumo $j$ por insumo
    $i$, $TTS(x_i, x_j)$ é dada por:
    $$TTS(x_i, x_j) = -\left.\frac{dx_j}{dx_i}\right|_{q = f(\mathbf{x})} = \frac{f_i}{f_j} = \frac{PM_i}{PM_j}.
                \label{eq1}$$

-   Ou seja, a taxa técnica de substituição é dada pela razão entre as
    produtividades marginais dos insumos.

-   A TTS é o análogo para a teoria da firma da taxa marginal de
    substituição da teoria do consumidor.

-   Considerando nossa função de produção apenas com os insumos capital
    e trabalho temos que a TTS de trabalho por capital é dada por:
    $$TTS(l,k) = \frac{PM_l}{PM_k}.$$
:::

## Implicações das propriedades da tecnologia

::: frame
Implicações das propriedades da tecnologia

-   A propriedade de [livre descarte]{style="color: blue"} torna a TTS
    positiva.

-   A propriedade de convexidade implica que a TTS(l,k) é decrescente,
    ou seja, conforme aumenta-se a quantidade do insumo trabalho menor a
    quantidade do insumo capital que é possível reduzir para que o nível
    de produção mantenha-se constante.
:::

::: frame
Implicações das propriedades da tecnologia

<figure id="fig1">
<img src="isoquanta.JPG" style="width:70.0%" />
<figcaption>Isoquantas e convexidade. Fonte: Nicholson e Snyder
(2019).</figcaption>
</figure>
:::

## Exercícios

::: frame
Exercícios

-   Calcula a taxa técnica de substituição para cada uma das tecnologias
    de produção a seguir:

    1.  [Linear (Fatores de produção substitutos).]{style="color: blue"}
        $q = \alpha k + \beta l$.

    2.  [Leontief (Fatores de produção em proporções
        fixas.]{style="color: blue"} $q = \min\{\alpha k, \beta l\}$.

    3.  [Cobb-Douglas.]{style="color: blue"} $q = A k^\alpha l^\beta$.

    4.  [Elasticidade de substituição constante.]{style="color: blue"}
        $q = (k^\rho + l^\rho)^{\gamma/\rho}$.
:::

# Retornos de escala

## Introdução

::: frame
Retornos de escala

-   Uma questão importante relacionada ao conceito de função de produção
    é o que acontece com a quantidade produzida quando há um aumento
    generalizado nos insumos utilizados pelo processo produtivo?

-   Essa é uma questão de [rendimentos de escala]{style="color: blue"}
    que interessa os economistas de pelo menos desde a publicação de "A
    riqueza das nações" por Adam Smith em 1776.

-   Smith identificou duas forças em ação quando realizamos um
    experimento de dobrar todos os insumos produtivos.
:::

::: frame
Retornos de escala

1.  A duplicação de escala permite uma maior divisão do trabalho e a
    especialização da função. Por isso, pode-se argumentar que a
    eficiência pode aumentar - a produção pode aumentar mais do que o
    dobro.

2.  A duplicação dos insumos também implica alguma perda de eficiência,
    uma vez que a supervisão gerencial torna-se mais difícil, dada a
    maior escala da empresa.

-   Qual dessas duas tendências será prevalente é uma questão empírica
    de extrema relevância.
:::

## Definição

::: frame
Retornos de escala

1.  [Rendimentos decrescentes de escala.]{style="color: blue"} Uma firma
    apresenta rendimentos decrescentes de escala se ao aumentarmos todas
    as quantidades dos insumos utilizados na mesma proporção, a
    quantidade produzida varia numa proporção menor que a variação das
    quantidades utilizadas dos insumos.

2.  [Rendimentos constantes de escala.]{style="color: blue"} Uma firma
    apresenta rendimentos constantes de escala se ao aumentarmos todas
    as quantidades dos insumos utilizados na mesma proporção, a
    quantidade produzida varia na mesma proporção que a variação das
    quantidades utilizadas dos insumos.

3.  [Rendimentos crescentes de escala.]{style="color: blue"} Uma firma
    apresenta rendimentos crescentes de escala se ao aumentarmos todas
    as quantidades dos insumos utilizados na mesma proporção, a
    quantidade produzida varia numa proporção maior que a variação das
    quantidades utilizadas dos insumos.
:::

::: frame
Retornos de escala

-   Formalmente, temos as seguintes definições:

    1.  A função de produção $f(x_1, \dots, x_n)$ apresentará
        [rendimentos decrescentes de escala]{style="color: blue"} se:
        $$f(tx_1, \dots, tx_n) < tf(x_1, \dots, x_n), \forall t>1.
                    \label{eq2}$$

    2.  A função de produção $f(x_1, \dots, x_n)$ apresentará
        [rendimentos constantes de escala]{style="color: blue"} se:
        $$f(tx_1, \dots, tx_n) = tf(x_1, \dots, x_n), \forall t>1.
                    \label{eq3}$$

    3.  A função de produção $f(x_1, \dots, x_n)$ apresentará
        [rendimentos crescentes de escala]{style="color: blue"} se:
        $$f(tx_1, \dots, tx_n) > tf(x_1, \dots, x_n), \forall t>1.
                    \label{eq4}$$
:::

## Exercícios

::: frame
Exercícios

-   Para cada uma das tecnologias de produção a seguir, verifique os
    rendimentos de escala:

    1.  [Linear (Fatores de produção substitutos).]{style="color: blue"}
        $q = \alpha k + \beta l$.

    2.  [Leontief (Fatores de produção em proporções
        fixas.]{style="color: blue"} $q = \min\{\alpha k, \beta l\}$.

    3.  [Cobb-Douglas.]{style="color: blue"} $q = A k^\alpha l^\beta$.

    4.  [Elasticidade de substituição constante.]{style="color: blue"}
        $q = (k^\rho + l^\rho)^{\gamma/\rho}$.
:::

# Elasticidade de substituição

## Introdução

::: frame
Elasticidade de substituição

-   Outra característica importante da função de produção é a facilidade
    de substituição de um insumo por outro.

-   Essa é uma questão que diz respeito à forma de uma única isoquanta,
    em vez do mapa de isoquantas como um todo.

-   Ao longo de uma isoquanta, a TTS diminuirá à medida que a relação
    capital-trabalho diminuir (supondo convexidade).

-   Agora desejamos definir algum parâmetro que meça esse grau de
    capacidade de resposta.
:::

::: frame
Elasticidade de substituição

-   Se a TTS não se altera com as mudanças na razão capital-trabalho
    ($k/l$), podemos dizer que a substituição é fácil, uma vez que a
    razão das produtividades marginais dos insumos não muda à medida que
    a combinação de insumos muda.

-   Por outro lado, se a TTS muda rapidamente à medida que ocorrem
    pequenas mudanças em $k/l$, diríamos que a substituição é difícil,
    já que pequenas variações na combinação de insumos terão um efeito
    substancial sobre as produtividades relativas do insumo.

-   Uma medida sem escala dessa capacidade de resposta é proporcionada
    pela [elasticidade de substituição]{style="color: blue"}.

-   Enquanto a TTS mede a inclinação de uma isoquanta, a elasticidade de
    substituição é uma medida da curvatura de uma isoquanta.
:::

## Definição

::: frame
Elasticidade de substituição

-   [Elasticidade de substituição no arco.]{style="color: blue"} Mede a
    variação percentual média da razão entre os fatores de produção
    $k/l$ relativa à variação de um por cento (para cima ou para baixo)
    da $TTS(l,k)$ ao longo de uma isoquanta. Ou seja:
    $$\sigma = \frac{\Delta (k/l)/(k/l)}{\Delta TTS(l,k)/TTS(l,k)} = \frac{\Delta (k/l)}{\Delta TTS(l,k)} \frac{TTS(l,k)}{k/l}.
                \label{eq5}$$
:::

::: frame
Elasticidade de substituição

-   [Elasticidade de substituição no ponto.]{style="color: blue"} É uma
    aproximação da variação percentual média da razão entre os fatores
    de produção $k/l$ relativa à variação de um por cento (para cima ou
    para baixo) da $TTS(l,k)$, quando esta variação é infinitesimal, ao
    longo de uma isoquanta. Ou seja:
    $$\sigma = \frac{d (k/l)/(k/l)}{d TTS(l,k)/TTS(l,k)} = \frac{d \ln (k/l)}{d \ln TTS(l,k)}.
                \label{eq6}$$
:::

## Exercícios

::: frame
Exercícios

-   Para cada uma das tecnologias de produção a seguir, verifique a
    elasticidade de substituição:

    1.  [Linear (Fatores de produção substitutos).]{style="color: blue"}
        $q = \alpha k + \beta l$.

    2.  [Cobb-Douglas.]{style="color: blue"} $q = A k^\alpha l^\beta$.

    3.  [Elasticidade de substituição constante.]{style="color: blue"}
        $q = (k^\rho + l^\rho)^{\gamma/\rho}$.

    4.  [Leontief (Fatores de produção em proporções
        fixas.]{style="color: blue"} $q = \min\{\alpha k, \beta l\}$.
:::

::: thebibliography
MAS-COLELL, A.; WHINSTON M.D.; GREEN, J.R. Microeconomic Theory. New
York: Oxford University Press, 1995.

NICHOLSON, W.; SNYDER C. Teoria microeconômica: Princípios básicos e
aplicações. Cengage Learning Brasil, 2019. Disponível em:
[app.minhabiblioteca.com.br/books/9788522127030](https://app.minhabiblioteca.com.br/books/9788522127030/)

RESENDE, J. G. L. Microeconomia I: Notas de Aula.

VARIAN, H. R. Intermediate Microeconomics: A modern approach. 7.ed. New
York: W.W. Norton & Company, 2006.
:::
