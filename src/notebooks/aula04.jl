### A Pluto.jl notebook ###
# v0.19.22

using Markdown
using InteractiveUtils

# This Pluto notebook uses @bind for interactivity. When running this notebook outside of Pluto, the following 'mock version' of @bind gives bound variables a default value (instead of an error).
macro bind(def, element)
    quote
        local iv = try Base.loaded_modules[Base.PkgId(Base.UUID("6e696c72-6542-2067-7265-42206c756150"), "AbstractPlutoDingetjes")].Bonds.initial_value catch; b -> missing; end
        local el = $(esc(element))
        global $(esc(def)) = Core.applicable(Base.get, el) ? Base.get(el) : iv(el)
        el
    end
end

# ╔═╡ 6046ae30-c151-11ed-19df-473395d5ddb2
begin
	using PlutoUI
	using Plots
	using LaTeXStrings
	using Measures
	import PlutoUI: combine	
	theme(:ggplot2)
	gr(size=(800,600), lw = 2, fontfamily = "Computer Modern", grid=true, tickfontsize = 12, guidefontsize=16, framestyle=:box, margin=3mm, right_margin=7mm, guidefonthalign=:right, guidefontvalign=:top)	
end

# ╔═╡ 60ed736c-ba77-41c8-a858-7376cf119e9e
PlutoUI.TableOfContents(title="Sumário", indent=true)

# ╔═╡ 36839e00-d631-4e8c-863e-d725ed2f741a
html"<button onclick=present()>Apresentação</button>"

# ╔═╡ a3e77c4e-9b1e-4867-91e2-df2de22bcabe
md"""
# Preferências e Utilidade $~~~~~~~~~$ $(Resource("https://www1.udesc.br/imagens/id_submenu/899/cor_horizontal_rgb.jpg", :width => 150))
"""

# ╔═╡ ea1f30d7-6cb6-4911-9ef4-894e4f7516a8
md"
* **Disciplina:** 23MICI - Microeconomia I
* **Data:** 14/03/2023
* **Docente:** [Paulo Victor da Fonseca](https://pvfonseca.github.io)
* **Contato:** [paulo.fonseca@udesc.br](mailto:paulo.fonseca@udesc.br)
"

# ╔═╡ 54db757e-8487-47f2-b725-f57e4a1836e6
md"""
!!! danger "Aviso"
	O texto que segue não tem a menor pretensão de originalidade. Ele serve apenas como registro dos principais princípios, conceitos e técnicas analíticas que são trabalhados em sala de aula.
"""

# ╔═╡ 19743b8d-b34a-408d-8546-d8806ab69f42
md"
## Introdução
"

# ╔═╡ 14ab972e-9ca7-4000-a79c-5b63796d6fe0
md"
* Os processos econômicos são resultados das interações entre as decisões tomadas por inúmeros agentes econômicos
* Portanto, qualquer teoria econômica deve basear-se em algum modelo que especifique o processo de tomada de decisão desses agentes. Sejam eles agentes individuais, famílias, firmas ou governo
* Postulados acerca do comportamento com objetivos por parte dos agentes levou, naturalmente, ao desenvolvimento de modelos matemáticos que envolvem a maximização de alguma função que dependa de vários fatores
"

# ╔═╡ dbb062dc-fecf-44af-addd-236794857a8a
md"""
!!! warning "Racionalidade limitada"
	Recentemente, novas teorias tem sido desenvolvidas baseadas em, por exemplo, _racionalidade limitada_ e _satisficing_, como alternativa ao **modelo de escolha racional**.

	A abordagem de racionalidade limitada relaxa a hipótese de comportamento otimizador ou de expectativas modelo-consistentes (ou ambas). Para o aluno interessado, consultar o seguinte [**`link`**](https://plato.stanford.edu/entries/bounded-rationality).
"""

# ╔═╡ b4166dbc-38f8-43c6-9be0-9a8ead4ae71d
md"""
Racionalidade limitada - autores:

$(Resource("https://www.nobelprize.org/images/simon-13300-content-portrait-mobile-tiny.jpg", :width => 160))

$(Resource("https://www.nobelprize.org/images/kahneman-13673-portrait-mini-2x.jpg", :width => 150))

$(Resource("https://www.nobelprize.org/images/smith-13674-content-portrait-mobile-tiny.jpg", :width => 160))

$(Resource("https://www.nobelprize.org/images/thaler-15229-content-portrait-mobile-tiny.jpg", :width => 150))

Figura (da esquerda para direita):
* [Herbert Simon](https://www.nobelprize.org/prizes/economic-sciences/1978/simon/biographical/)
* [Daniel Kahneman](https://www.nobelprize.org/prizes/economic-sciences/2002/kahneman/biographical/)
* [Vernon Smith](https://www.nobelprize.org/prizes/economic-sciences/2002/smith/biographical/)
* [Richard Thaler](https://www.nobelprize.org/prizes/economic-sciences/2017/thaler/biographical/)

"""

# ╔═╡ 39bfb551-0034-40b5-bb4f-2cb96551b7da
md"
* No entanto, a teoria da otimização e o modelo de escolha racional continuam sendo os pilares da análise econômica
"

# ╔═╡ 1a5f148d-1124-434a-a12e-be29673d8fdd
md"""
!!! info "Modelo de escolha racional"
	Modelos de escolha racional consistem de dois elementos:
	* Racionalidade individual: agentes econômicos tomam a **melhor** decisão dadas as oportunidades **percebidas**
	* Consistência mútua das ações: ações individuais são **mutuamente consistentes** (conhecimento comum de racionalidade e coordenação em um equilíbrio)

	Modelo de escolha racional = otimização + equilíbrio

	O que a racionalidade individual implica?
	* **Conhecimento do problema**: tomador de decisão tem pleno conhecimento do problema de decisão com que se depara e do conjunto de alternativas do qual tem de escolher
	* **Preferências claras**: ordenamento completo sobre o conjunto completo de alternativas
	* **Capacidade de otimizar**: possui as habilidades necessárias para realizar quaisquer cálculos complicados necessários para encontrar sua trajetória ótima de ações. Sua habilidade de calcular é ilimitada e não comete erros
	* **Indiferença a descrições logicamente equivalentes de alternativas e conjuntos escolhas**: Substituir uma descrição de alternativas por outra que seja "logicamente equivalente" não afeta a escolha
"""

# ╔═╡ 9e14b8c4-00c3-43f3-b4ac-555229f0adbc
md"""
> Na aula anterior estudamos o problema da escassez que um consumidor está sujeito, vimos a definição do conjunto orçamentário Walrasiano
> 
> Nosso objetivo, nas próximas aulas, é estudar o objetivo do consumidor
>
> A maximização deste objetivo, sujeita à restrição orçamentária, é conhecida como **problema (primal) do consumidor**
"""

# ╔═╡ 40bd6a71-a40b-4449-889e-6bed2a9ba1ed
md"""
---
### Preferências do consumidor
* Pressupomos que o consumidor seja capaz de ordenar as cestas de consumo do seu espaço de mercadorias de acordo com suas preferências, comparando-as em pares
* Ou seja, para quaisquer duas cestas de consumo $\textbf{x}$ e $\textbf{y}$ diferentes, o consumidor é capaz de compará-las: ou $\textbf{x}$ é pelo menos tão boa quanto $\textbf{y}$, ou $\textbf{y}$ é pelo menos tão boa quanto $\textbf{x}$
* Chamamos essa relação de **preferência**, e a denotamos por $\succeq$
* Tecnicamente, $\succeq$ é uma relação binária sobre o conjunto consumo
"""

# ╔═╡ 89ed5717-0c6c-4970-82cd-8b9d371fac2d
md"""
!!! correct "Definição 4.1 (Preferência fraca, estrita e indiferença)"
	1. **Preferência fraca**: se o consumidor afirma que $\textbf{x} = (x_1, \dots, x_n)$ é pelo menos tão boa quanto a cesta de consumo $\textbf{y} = (y_1, \dots, y_n)$, dizemos que o consumidor **prefere fracamente** $\textbf{x}$ a $\textbf{y}$ e denotamos essa relação por $\textbf{x} \succeq \textbf{y}$

	2. **Indiferença**: se $\textbf{x}$ é pelo menos tão boa quanto $\textbf{y}$, e $\textbf{y}$ é pelo menos tão boa quanto $\textbf{x}$, o consumidor mostra-se **indiferente** entre as duas cestas de consumo. Essa relação de _indiferença_ é denotada por $\textbf{x} \sim \textbf{y}$. Em síntese $\textbf{x} \sim \textbf{y} \Leftrightarrow ((\textbf{x} \succeq \textbf{y})\wedge (\textbf{y}\succeq\textbf{x}))$

	3. **Preferência estrita**: se $\textbf{x}$ é pelo menos tão boa quanto $\textbf{y}$, e não é o caso que $\textbf{y}$ seja pelo menos tão boa quanto $\textbf{x}$, dizemos que $\textbf{x}$ é **estritamente preferida** a $\textbf{y}$, denotado por $\textbf{x} \succ \textbf{y}$. Em síntese $\textbf{x} \succ \textbf{y} \Leftrightarrow ((\textbf{x} \succeq \textbf{y})\wedge \neg(\textbf{y}\succeq\textbf{x}))$
"""

# ╔═╡ a789ae63-04ba-4f35-a401-6b7f9c514c04
md"""
!!! correct "Definição 4.2 (Conjuntos derivados das preferências)"
	Para um dado $\textbf{x} \in X$, podemos definir:

	* Conjunto de cestas pelo menos tão boas quanto $\textbf{x}$: 

	$\succeq(\textbf{x}) \equiv \{\textbf{y} \in X: \textbf{y} \succeq \textbf{x}\}$

	* Conjunto de cestas que não são melhores $\textbf{x}$: 

	$\preceq(\textbf{x}) \equiv \{\textbf{y} \in X: \textbf{y} \preceq \textbf{x}\}$

	* Conjunto de cestas estritamente melhores que $\textbf{x}$: 

	$\succ(\textbf{x}) \equiv \{\textbf{y} \in X: \textbf{y} \succ \textbf{x}\}$

	* Conjunto de cestas estritamente preteridas a $\textbf{x}$: 

	$\prec(\textbf{x}) \equiv \{\textbf{y} \in X: \textbf{y} \prec \textbf{x}\}$

	* Conjunto de indiferença a $\textbf{x}$: 

	$\sim(\textbf{x}) \equiv \{\textbf{y} \in X: \textbf{y} \sim \textbf{x}\}$
"""

# ╔═╡ c98a81f7-6bbb-40a5-b887-bbc74c911c44
md"""
## Axiomas da escolha racional
"""

# ╔═╡ 24f2b9dc-c704-4458-9e86-86f8a4743c6e
md"""
!!! danger "Axioma 1. Completeza"
	Para quaisquer cestas de consumo $\textbf{x}$ e $\textbf{y}$ do espaço de mercadorias, temos $\textbf{x} \succeq \textbf{y}$ ou $\textbf{y} \succeq \textbf{x}$ (ou ambos)
"""

# ╔═╡ 88929730-f0da-4094-aaf5-ba0b31acad1b
md"
* Consequentemente, os consumidores não são paralisados pela indecisão: eles conhecem todas as cestas de bens disponíveis e sempre são capazes de compará-las
"

# ╔═╡ f131a27b-4194-4dac-a852-1caf39ab2bd6
md"""
!!! danger "Axioma 2. Transitividade"
	Para quaisquer cestas de consumo $\textbf{x}$, $\textbf{y}$ e $\textbf{z}$ do espaço de mercadorias, se $\textbf{x} \succeq \textbf{y}$ e $\textbf{y} \succeq \textbf{z}$, então $\textbf{x} \succeq \textbf{z}$
"""

# ╔═╡ c17b7eb0-776d-42a7-b0ba-460d2bedf69f
md"
* As escolhas de um indivíduo são consistentes internamente
"

# ╔═╡ 454e7f21-0c2b-45f4-8110-25ca7893d380
md"""
!!! correct "Definição 4.3 (Racionalidade)"
	Seja $\succeq$ uma relação de preferências, $\succeq$ é dita **racional** se satisfaz os axiomas de completeza e transitividade
"""

# ╔═╡ a1b3afbc-7b7e-4b4d-b610-da4154f1f4f6
md"""
Preferências hipotéticas que satisfazem hipóteses de racionalidade
 $(Resource("https://raw.githubusercontent.com/pvfonseca/micro1/main/notas/figures/aula4_fig1.PNG", :width=>800))

* Neste caso, $X = \mathbb{R}^2_+$

* Axiomas 1 e 2 nos dizem que o consumidor deve colocar *qualquer* ponto de $X$ em alguma das três categorias mutuamente exclusivas, relativa a $\textbf{x}^0$: para qualquer cesta de consumo $\textbf{x}^0$, os três conjuntos $\succ{\textbf{x}^0}, \prec{\textbf{x}^0}, \sim{\textbf{x}^0}$ formam uma *partição* do conjunto consumo
"""

# ╔═╡ c1491d55-f924-4303-8dc7-1232a488dbe7
md"""
!!! warning "Contra-exemplos"
	* Nenhuma das duas hipóteses (completude e transitividade) é fraca
	* Contra-exemplos de preferências não-completas e não-transitivas na lousa
	* Ver [**`paradoxo de Condorcet`**](https://en.wikipedia.org/wiki/Condorcet_paradox)
"""

# ╔═╡ 3c6866f4-7e57-4215-a937-a763b215dfa7
md"
* As preferências hipotéticas representadas na figura anterior podem parecer estranhas
* Possuem apenas a estrutura mais limitada possível e, ainda assim, são inteiramente consistentes com os axiomas de racionalidade
* Nenhuma das hipóteses, até agora, proíbe as ''irreguladidades'' representadas
* Estas irregularidades podem ser descartadas com a imposição de hipóteses adicionais sobre as preferências
"

# ╔═╡ 062b14ae-48ca-45eb-88b9-aa2ed2078e6c
md"""
!!! danger "Axioma 3. Continuidade"
	Se um indivíduo afirma que $\textbf{x} \succeq \textbf{y}$, então, cestas de consumo ''muito próximas'' a $\textbf{x}$ também são fracamente preferidas a $\textbf{y}$.

	Formalmente, para quaisquer sequências de pares $\{\textbf{x}^n, \textbf{y}^n\}_{n=1}^\infty$, tais que $\textbf{x}^n \succeq \textbf{y}^n$ para qualquer $n \in \mathbb{N}$, $\textbf{x} = \lim_{n\to \infty}\textbf{x}^n$ e $\textbf{y} = \lim_{n\to \infty}\textbf{y}^n$, então, $\textbf{x} \succeq \textbf{y}$
"""

# ╔═╡ 173b488f-b45a-4a8e-baa6-02d4aa522d0e
md"
* Se o axioma de continuidade é imposto, não haverá saltos ou mudanças bruscas nas preferências
"

# ╔═╡ 57576b33-2697-4973-a88d-e6a482cd7cc0
md"""
!!! warning "Preferências contínuas: contra-exemplo"
	[**`Preferências lexicográficas`**](https://en.wikipedia.org/wiki/Lexicographic_preferences) - ver [Código Eleitoral Brasileiro (Lei 4.737/65) - Art. 110](https://www.planalto.gov.br/ccivil_03/leis/l4737compilado.htm#:~:text=LEI%20N%C2%BA%204.737,%20DE%2015%20DE%20JULHO%20DE%201965.&text=Institui%20o%20C%C3%B3digo%20Eleitoral.,9%20de%20abril%20de%201964.)
"""

# ╔═╡ a9c25d3c-e602-4324-ab61-cd8d315f71eb
md"""
!!! danger "Axioma 4. Monotonicidade"
	Dizemos que a relação de preferências $\succeq$ em $X$ é *monotônica* se $\textbf{x}>>\textbf{y}$ implica que $\textbf{x} \succ \textbf{y}$.

	A relação é *estritamente monotônica* se $\textbf{x} \geq \textbf{y}$ e $\textbf{x} \neq \textbf{y}$ implica que $\textbf{x} \succ \textbf{y}$.
"""

# ╔═╡ 51733e18-0396-456d-83bf-a4cf627b00a7
md"
* A hipótese de que as preferências são monotônicas é satisfeita desde que as mercadorias sejam *bens econômicos*, ao invés de *maus econômicos*
* Mesmo que uma mercadoria seja um mau econômico, podemos ter ainda preferências monótonas
* Note que se $\succeq$ é monótona, podemos ser indiferentes com relação a um aumento na quantidade de algumas, mas não todas, mercadorias
* Por outro lado, monotonicidade estrita diz que se $\textbf{x}$ é maior que $\textbf{y}$ para *algum* bem e não é menor para qualquer outra, então, $\textbf{x}$ é estritamente preferida a $\textbf{y}$
* Preferências monotônicas indicam que o consumidor sempre prefere consumir mais a menos
"

# ╔═╡ 878ec5df-10bc-45b5-bcdf-898a27dfb5c6
md"""
!!! danger "Axioma 5. Convexidade"
	Se $\textbf{x}$ e $\textbf{y}$ são cestas de consumo tais que $\textbf{x} \sim \textbf{y}$, então $\lambda\textbf{x} + (1-\lambda)\textbf{y} \succeq \textbf{x}$, $\forall \lambda \in [0, 1]$.

	Isto é, o consumidor prefere fracamente cestas de consumo mais balanceadas, ou seja, as médias são fracamente preferidas aos extremos.

	**Convexidade estrita**: se $\textbf{x}$ e $\textbf{y}$ são cestas de consumo tais que $\textbf{x} \sim \textbf{y}$, então $\lambda\textbf{x} + (1-\lambda)\textbf{y} \succ \textbf{x}$, $\forall \lambda \in (0, 1)$.

	Isto é, o consumidor prefere de maneira estrita cestas de consumo mais balanceadas, ou seja, as médias são estritamente preferidas aos extremos.
"""

# ╔═╡ 9b35c758-ba89-499e-a02c-4663f90737e5
md"
## Utilidade
"

# ╔═╡ d4bb5bfe-8682-4ef9-a850-994a9b636acc
md"""
* Consumidores são caracterizados por suas preferências
* No entanto, do ponto de vista prático, preferências nem sempre são fáceis de manusear e de se extrair inferências econômicas
* Dados os axiomas de **completeza, transitividade e continuidade**, é possível demonstrar, formalmente, que as pessoas são capazes de rankear todas as situações possíveis da menos desejada para a mais desejada
* Esse ranking, seguindo a terminologia introduzida no século XIX por Jeremy Bentham, é denominado **utilidade**

$(Resource("https://upload.wikimedia.org/wikipedia/commons/c/c8/Jeremy_Bentham_by_Henry_William_Pickersgill_detail.jpg", :width=>300))
[Jeremy Bentham (1748 - 1832)](https://pt.wikipedia.org/wiki/Jeremy_Bentham)
"""

# ╔═╡ bc5f817f-3481-4fb8-a611-3f63586f64a7
md"""
!!! correct "Definição 4.4 (Função utilidade)"
	Uma **função utilidade** é um modo de atribuir um número real a cada cesta de consumo, de maneira que se atribuam às cestas mais preferidas números mais altos do que os atribuídos às cestas menos preferidas.

	Formalmente, é uma função $u: M \to \mathbb{R}$ representando a relação de preferência fraca $\succeq$ sobre o espaço de mercadorias $M$ se para quaisquer cestas de consumo $\textbf{x}$ e $\textbf{y}$ tem-se:

	$$\textbf{x} \succeq \textbf{y} \Leftrightarrow u(\textbf{x}) \geq u(\textbf{y})$$
"""

# ╔═╡ 940ea348-4b47-48f5-acee-ae5145e5fee0
md"
#### Não-unicidade da função utilidade
"

# ╔═╡ 3490d5d6-415c-4e77-b50f-3e86667c1bc4
md"
* Note que a transformação monotônica positiva de uma função utilidade é uma função utilidade que representa a mesma ordenação de preferências da função utilidade original
* Formalmente, para qualquer transformação positiva $f: \mathbb{R} \to \mathbb{R}$, a função composta $v(\textbf{x}) = f(u(\textbf{x}))$ é uma nova função utilidade representando a mesma relação de preferências da função utilidade original $u: M \to \mathbb{R}$
* Lembrando que uma função $f: \mathbb{R} \to \mathbb{R}$ é dita realizar uma **transformação monotônica positiva** se $f(u_1) > f(u_2)$ sempre que $u_1 > u_2$
* Ou seja, a função $f(\bullet)$ preserva a ordem dos números $u_1$ e $u_2$
"

# ╔═╡ 69995c4f-25a8-4c6b-b41a-d608d4eadc03
md"
* A não-unicidade da função utilidade implica que não faz sentido perguntar ''o quanto a cesta de consumo $\textbf{x}$ é preferível à cesta $\textbf{y}$?''
* Portanto, os rankings de utilidade são como os rankings de ordenação de restaurantes, hoteis ou filmes (uma, duas ou três estrelas)
* A não-unicidade também implica que **não é possível comparar utilidades entre pessoas diferentes!!**
* De maneira similar, não é possível mensurar se uma mudança de uma situação $\textbf{x}$ para uma situação $\textbf{y}$ provê mais utilidade para uma pessoa ou para outra 
"

# ╔═╡ 93200014-954b-4b1e-8fdc-8325ace0abcc
md"
#### *Ceteris paribus*
"

# ╔═╡ 8ce37301-4417-4c01-97ba-31f50cf6dc64
md"
* Como a utilidade se refere à satisfação geral de um consumidor, essa medida é afetada por uma variedade de fatores
* A utilidade de um consumidor é afetada não apenas pelo seu consumo de bens físicos ou serviços. Mas, também, por atitudes psicológicas, pressões sociais, experiências sociais e o ambiente cultural de maneira geral
* Apesar de essas influências serem de interesse geral dos economistas, nesta disciplina focaremos exclusivamente nas escolhas entre opções quantificáveis, enquanto mantemos constante os outros fatores que influenciam o comportamento - *ceteris paribus*
"

# ╔═╡ 00e4abfc-a5d7-43c1-b393-f4e6640048e9
md"""
#### Bens econômicos
"""

# ╔═╡ 494634d9-8c74-4068-bf78-86d078f23177
md"
* Assumimos que as preferências de um indivíduo podem ser representadas por uma função utilidade da forma:

$U(x_1, \dots, x_n) \tag{1}$
onde $x_1, \dots, x_n$ são as quantidades de cada um dos $n$ bens ou serviços que podem ser consumidas em um período de tempo

* Nessa representação, assumimos que as variáveis são **bens econômicos**. Isto é, quaisquer que sejam as quantidades que elas representem, assumimos que uma quantidade maior qualquer de um $x_i$ em particular, durante algum dado período, será preferida a menos
"

# ╔═╡ faed2ee7-5cf1-44cb-b42c-2ed2ecdb69b9
md"""
Bens econômicos e implicação de monotonicidade
$(Resource("https://raw.githubusercontent.com/pvfonseca/micro1/main/notas/figures/aula4_fig2.PNG", :width=>800))
"""

# ╔═╡ ed0f7556-b035-4454-adfe-f4f24051ed66
md"
## Curvas de indiferença e TMS
"

# ╔═╡ 2551b81d-c640-4974-b4ea-3ba1368e879a
md"
* A maioria das atividades econômicas envolvem trocas voluntárias entre indivíduos
* Essas trocas voluntárias podem ser melhor estudadas utilizando o conceito de **curvas de indiferença**
"

# ╔═╡ 5a6a70ed-852c-4a13-9e94-182b9f9b01bf
md"""
!!! correct "Definição 4.5 (Curvas de indiferença)"
	Uma **curva (superfície) de indiferença** representa um conjunto de cestas de consumo indiferentes entre si. Ou seja, contém todas as combinações de consumo que dão o mesmo nível de satisfação ao indivíduo.

	Formalmente, como já vimos, a curva ou superfície de indiferença de um bem $\textbf{x}$ qualquer, em termos de preferências, é dada por:

	$$\sim(\textbf{x}) \equiv \{\textbf{y}\in\mathbb{R}_+^n| \mathbb{y}\sim\mathbb{x}\}$$

	Em termos de função utilidade:

	$$\sim(\textbf{x}) \equiv \{\mathbb{y}\in \mathbb{R}_+^n| u(\mathbb{y}) = \bar{u}, \text{ onde } u(\textbf{x}) = \bar{u}\}$$
"""

# ╔═╡ d4d2e11c-9f47-43e2-aadd-1e8771a9832b
md"
Curvas de indiferença: representação gráfica
"

# ╔═╡ ff720a5a-3d3a-4850-893a-bc48c980794d
begin			
	x1 = range(0, 15, length=200)	
	contour(x1, x1, (x, y)-> x^0.5*y^0.5, c=:bone_1, legend=:none, levels = [1, 2, 3, 4, 5, 6, 7, 8], clabels=true)
	vline!([0], lw=0.5, lc=:black, label=:none)
	hline!([0], lw=0.5, lc=:black, label=:none)
end

# ╔═╡ e2f49996-30a0-4d2d-8052-2a912e07e7c8
md"""
!!! info "Curvas de indiferença: propriedades"
	1. Implicação do axioma da **transitividade**: curvas de indiferença que representam níveis distintos de utilidade **não** podem se cruzar, ou seja, se $\textbf{x} \succ \textbf{y}$, então $\sim(\textbf{x})\cap\sim(\textbf{y}) = \emptyset$

	2. Implicação do axioma da **monotonicidade**: curvas de indiferença são negativamente inclinadas

	3. Implicação do axioma da **convexidade estrita**: para qualquer cesta de consumo $\textbf{x}$ do espaço de mercadorias, o conjunto fracamente preferido $\succeq(\textbf{x})$ é **convexo**
"""

# ╔═╡ 2daa99e1-3adf-4781-8bc1-a17aa9e0383a
md"""
!!! warning "Conjunto convexo"
	Lembrando que um conjunto qualquer $S$ é dito **convexo** se para quaisquer $x, y \in S$ temos $\lambda x + (1-\lambda)y \in S$, para todo $\lambda\in[0,1]$.

	Essa definição é equivalente a assumir que a função utilidade é **quasi-côncava**.
"""

# ╔═╡ 864c8dd3-5e47-41ce-9c48-649a0663e29d
md"""
Implicação do axioma de transitividade
$(Resource("https://raw.githubusercontent.com/pvfonseca/micro1/main/notas/figures/aula4_fig3.PNG", :width=>800))
"""

# ╔═╡ a105af31-af7b-47c1-877d-5fc662f3efb5
md"""
Implicação do axioma de convexidade estrita
$(Resource("https://raw.githubusercontent.com/pvfonseca/micro1/main/notas/figures/aula4_fig4.PNG", :width=>800))
"""

# ╔═╡ 6540545c-80c0-40b9-bab0-3b17527a68dd
md"
#### Taxa marginal de substituição

* A inclinação da curva de indiferença, pelo axioma da monotonicidade, é negativa

* Portanto, se um indivíduo é forçado a abrir mão de uma certa quantidade do bem $y$, ele deve ser recompensado por uma certa quantidade de $x$ para manter-se indiferente entre as duas cestas de consumo
"

# ╔═╡ 06594e62-03e0-4c1e-88c9-198d89f9b002
md"""
!!! correct "Definição 4.6 (Taxa marginal de substituição)"
	A **taxa marginal de substituição (TMS)** mede a taxa à qual o indivíduo está propenso a substituir um bem por outro.

	Mais precisamente, a TMS de $y$ por $x$, $\text{TMS}_{x,y}$, é o negativo da inclinação de uma curva de indiferença $U_1$ em um determinado ponto:

	$$\text{TMS}_{x, y} \equiv - \left.\frac{dy}{dx}\right|_{U=U_1}\tag{2}$$

	onde a notação indica que a inclinação é calculada ao longo da curva de indiferença $U_1$.
"""

# ╔═╡ 84fab7a4-18aa-4bc3-8db3-3d504774e3c4
md"""
!!! info "Taxa marginal de substituição: propriedades"
	1. Pelo axioma de **monotonicidade**, as curvas de indiferença são negativamente inclinadas. Portanto, a TMS assim definida é sempre um número positivo. Ou seja, o consumidor só se mantém indiferente se a redução de consumo de um bem for compensada pelo aumento no consumo de outro bem.

	2. Pelo axioma da **convexidade estrita**, vimos que o conjunto fracamente preferido $\succeq(\textbf{x})$ é convexo. Isso é equivalente a dizer que a **taxa marginal de substituição é decrescente**. Ou seja, a taxa à qual um indivíduo com preferências estritamente convexas deseja trocar um bem $x$ por $y$ diminui à medida que aumentamos a quantidade do bem $y$.
"""

# ╔═╡ 7bfc57e7-76ef-4bc4-b26c-c42686788ca7
md"""
> Suponha que um indivíduo derive utilidade do consumo de dois bens $x$ e $y$. E que suas preferências sejam representadas pela seguinte função utilidade:
>
> $$U(x,y) = \sqrt{xy}$$
>
> 1. Calcule a taxa marginal de substituição para este indivíduo.
>
> 2. Qual é a taxa marginal de substituição de $y$ por $x$ no ponto (5,20)? E no ponto (20,5)? Como interpretar os resultados economicamente?
>
> 3. Mostre que a taxa marginal de substituição é decrescente.
>
> 4. Mostre que uma cesta de consumo balanceada é preferível.
"""

# ╔═╡ 4d3deda9-325d-4357-a50d-fd975588aa5c
md"
#### Utilidade e TMS
"

# ╔═╡ a6b9ce84-1eeb-4d85-bc4b-540641b9bf60
md"
* Suponha que um indivíduo derive utilidade do consumo de dois bens cujas quantidades são dadas por $x$ e $y$
* As preferências desse consumidor são representadas pela função utilidade $U(x,y)$
* As combinações de $x$ e $y$ que dão um nível determinado de utilidade a esse agente de $k$ são representadas pelas soluções da função implícita
$$U(x,y) = k$$
* Tomando o diferencial total da expressão anterior, obtemos:
$$U_x dx + U_y dy = 1dk$$
* Note que $U_x \equiv \frac{\partial U(x,y)}{\partial x}$ e $U_y \equiv \frac{\partial U(x,y)}{\partial y}$ medem o acréscimo na utilidade devido a um aumento marginal no consumo de um bem - **utilidades marginais** dos bens $x$ e $y$
* Como estamos interessados nas mudanças feitas em $x$ e $y$ de forma a manter o nível de satisfação constante, então, $dk = 0$. Portanto:
$$U_x dx + U_y dy = 0$$
* Logo, temos que:
$$\text{TMS}_{x, y} = -\left.\frac{dy}{dx}\right|_{U(x,y) = k} = \frac{U_x}{U_y}\tag{3}$$
"

# ╔═╡ 394c2549-30d1-47bb-8136-477b9e659727
md"""
> **Exercício**. Calcule a taxa marginal de substituição das seguintes funções utilidade e verifique se as curvas de indiferença são convexas:
>
> 1. $U(x,y) = \sqrt{xy}$
>
> 2. $U(x,y) = x + xy + y$
>
> 3. $U(x,y) = \sqrt{x^2 + y^2}$
"""

# ╔═╡ a640c720-4c19-41c9-9dd9-aea6b965cb9c
begin			
	ex1 = range(0, 15, length=200)	
	contour(ex1, ex1, (x, y)-> x^0.5*y^0.5, c=:bone_1, legend=:none, levels = [2, 3, 4, 5], clabels=true, title=L"U(x,y)=\sqrt{xy}")
	vline!([0], lw=0.5, lc=:black, label=:none)
	hline!([0], lw=0.5, lc=:black, label=:none)
end

# ╔═╡ 9e4a81fc-ded7-4fd0-9f1b-119a249926df
begin			
	ex2 = range(0, 5, length=200)	
	contour(ex2, ex2, (x, y)-> x + x*y + y, c=:bone_1, legend=:none, levels = [6, 8, 10, 12, 14], clabels=true, title=L"U(x,y)=x + xy + y")
	vline!([0], lw=0.5, lc=:black, label=:none)
	hline!([0], lw=0.5, lc=:black, label=:none)
end

# ╔═╡ c73a3366-9e83-4696-be15-43ec3640e17e
begin			
	ex3 = range(0, 15, length=200)	
	contour(ex3, ex3, (x, y)-> sqrt(x^2+y^2), c=:bone_1, legend=:none, levels = [6, 8, 10, 12, 14], clabels=true, title=L"U(x,y)=\sqrt{x^2 + y^2}")
	vline!([0], lw=0.5, lc=:black, label=:none)
	hline!([0], lw=0.5, lc=:black, label=:none)
end

# ╔═╡ 5f4a7c08-1844-4999-abf5-26a7bfdf97b1
md"
## Funções utilidade para preferências específicas
"

# ╔═╡ 3765c3aa-fe8c-456c-ad89-77c1e4f72bec
md"
### Função Cobb-Douglas
"

# ╔═╡ 5225b53a-d21f-45e1-993c-3b0dcaa355ae
md"""
!!! info "Função Cobb-Douglas"
	Em 1928, [Charles Cobb](https://en.wikipedia.org/wiki/Charles_Cobb_(economist)) e [Paul Douglas](https://en.wikipedia.org/wiki/Paul_Douglas) modelaram o crescimento da economia norte-americana de 1899-1922.

	Supondo uma função de produção do tipo:

	$$F(K, L) = A K^{\alpha}L^{1-\alpha}$$

	Por MQO, Cobb e Douglas estimaram a seguinte função de produção para a economia dos EUA no período amostral:
	
	$$F(K, L) = 1,01 K^{0,25}L^{0,75}$$
"""

# ╔═╡ 433a96e1-b036-4f7d-a0ff-b99acf927488
md"
* Para o caso da teoria do consumidor, a função utilidade do tipo Cobb-Douglas apresenta a seguinte forma funcional:

$$U(x,y) = x^\alpha y^\beta, \qquad 0<\alpha,\beta<1\tag{4}$$

* De maneira geral, os parâmetros $\alpha$ e $\beta$ representam a importância relativa dos bens para este indivíduo

* Normalmente, é conveniente normalizar os parâmetros de forma com que $\alpha + \beta = 1$. Neste caso, a função utilidade seria dada por:

$$U(x,y) = x^\delta y^{1-\delta},\tag{5}$$
onde $\delta = \frac{\alpha}{\alpha + \beta}$ e $1-\delta = \frac{\beta}{\alpha + \beta}$.

* Preferências estritamente convexas e estritamente monotônicas
"

# ╔═╡ 4162d44e-0cab-4d73-913b-547688d722c1
begin
	cobb_delta = @bind δ Slider(0.01:0.1:0.99, default=0.5)	

	md"""
	Parâmetro $\delta$: $(cobb_delta)
	"""
end

# ╔═╡ efeb2d68-e71c-479f-b3ff-1ba7ded4a893
begin		
	cobb_x = range(0, 50, length=200)	
	cobb_plot = @layout [a b]
	cobb1 = surface(
	  cobb_x, cobb_x, (x, y)-> x^δ * y^(1-δ), c=:bone_1, legend=:none, 
	  nx=50, ny=50, display_option=Plots.GR.OPTION_SHADED_MESH, camera=(40,20)
	)
	cobb2 = contour(cobb_x, cobb_x, (x, y)-> x^δ * y^(1-δ), c=:bone_1, legend=:none, levels = [10, 14, 18, 20, 24], clabels=true)	
	plot(cobb1, cobb2, layout = cobb_plot)	
end

# ╔═╡ 4d099574-68d0-4a15-93bd-2ebf4e05116a
md"
### Bens substitutos
"

# ╔═╡ ff4dd614-3b3a-4aa0-b994-87d8efd21ae5
md"
* A função utilidade para o caso de bens substitutos é dada por:
$$U(x,y) = \alpha x + \beta y, \qquad \alpha, \beta>0\tag{6}$$
* Neste caso, as curvas de indiferença são lineares
* A linearidade das curvas de indiferença motiva a denominação de bens substitutos para descrever a relação entre $x$ e $y$
* Uma pessoa com esse tipo de preferências está disposta a abrir mão da mesma quantidade do bem $y$ para adquirir uma unidade adicional de $x$, não importa quanto de $x$ esteja sendo consumido
* ⚠️ Note que, neste caso, a TMS é constante e o princípio de taxa marginal de substituição decrescente não se aplica
* Preferências são convexas (mas não estritamente convexas) e fortemente monótonas
"

# ╔═╡ fd22fe93-b0a2-467b-a4fb-ff810f011d52
begin		
	sub_x = range(0, 5, length=100)	
	sub_plot = @layout [a b]
	sub1 = surface(
	  sub_x, sub_x, (x, y)-> x + y, c=:thermal, legend=:none, 
	  nx=50, ny=50, display_option=Plots.GR.OPTION_SHADED_MESH, camera=(40,30,30)
	)
	sub2 = contour(sub_x, sub_x, (x, y)-> x + y, c=:thermal, legend=:none, levels = [2, 3, 4, 5, 6, 7, 8, 9, 10], clabels=true, fill=false)	
	plot(sub1, sub2, layout = sub_plot)	
end

# ╔═╡ 593f67a9-e3de-4964-84cc-5814d88717a1
md"
### Bens complementares
"

# ╔═╡ 7cafc090-d619-49f3-a339-2195ab38ed7c
md"
* Uma situação oposta à de bens substitutos é ilustrada para o caso de bens complementares, cuja função utilidade é da forma:
$$U(x,y) = \min\{\alpha x, \beta y\}, \qquad \alpha, \beta>0\tag{7}$$
* Neste caso, as curvas de indiferença tem um formato de L e a razão da quantidade consumida de $y$ com relação ao bem $x$ é constante e igual a:
$$\frac{y}{x} = \frac{\alpha}{\beta}$$
* Indicando que nenhum dos bens especificados na função utilidade será consumido de maneira supérflua quando $\alpha x = \beta y$
* Preferências são convexas (mas não estritamente convexas) e fracamente monótonas
* TMS não existe na quina, é infinita acima da quina ou zero à direita da quina
"

# ╔═╡ e3fb0987-3a7b-4c3f-95ef-ce855bd481db
begin		
	comp_x = range(0, 5, length=100)	
	comp_plot = @layout [a b]
	comp1 = surface(
	  comp_x, comp_x, (x, y)-> min(x,y), c=:roma, legend=:none, 
	  nx=50, ny=50, display_option=Plots.GR.OPTION_SHADED_MESH, camera=(45,45)
	)
	comp2 = contour(comp_x, comp_x, (x, y)-> min(x,y), c=:bone, legend=:none, levels = 8, clabels=false, fill=true, alpha=0.4)	
	plot(comp1, comp2, layout = comp_plot)	
end

# ╔═╡ 813ac96d-fab3-47d0-95ad-fb0f2662af74
md"
### Função de elasticidade de substituição constante (CES)
"

# ╔═╡ 91f75eed-a603-4748-a4ad-c5782b882c86
md"
* Um problema com as funções utilidade supracitadas é que assumem curvas de indiferença com formas pré-definidas
* Uma função utilidade que permite vários formatos distintos é a função utilidade de **elasticidade de substituição constante (CES)**:
$$U(x,y) = \left[x^\delta + y^\delta\right]^{\frac{1}{\delta}}, \qquad \delta \leq 1, \quad \delta\neq 0\tag{8}$$
* Essa função incorpora as três vistas anteriormente:
    * Se $\delta = 1$, temos o caso de bens substitutos perfeitos
    * Se $\delta \to 0$, a CES tende a uma função do tipo Cobb-Douglas
    * Se $\delta \to -\infty$, a CES tende ao caso de complementares perfeitos
* Podemos fazer uma transformação monotônica $U^* = U^\delta/\delta$ e obter uma forma mais tratével:
$$U(x,y) = \frac{x^\delta}{\delta} + \frac{y^\delta}{\delta}$$
"

# ╔═╡ 1aba0df0-c7c6-4ee0-8da5-6e79155729dd
begin		
	ces_δ1 = 1
	ces_x = range(0, 5, length=100)	
	ces_plot = @layout [a b]
	ces1 = surface(
	  ces_x, ces_x, (x, y)-> x^ces_δ1/ces_δ1 + y^ces_δ1/ces_δ1, c=:roma, legend=:none, 
	  nx=50, ny=50, display_option=Plots.GR.OPTION_SHADED_MESH, camera=(45,45)
	)
	ces2 = contour(ces_x, ces_x, (x, y)-> x^ces_δ1/ces_δ1 + y^ces_δ1, c=:bone, legend=:none, levels = 8, clabels=false, fill=true, alpha=0.3)	
	plot(ces1, ces2, layout = ces_plot, title=L"δ = 1")	
end

# ╔═╡ 23211c53-5475-442e-b1f3-0cf94c58f38a
begin		
	ces_cobb = 0.1
	ces_xcobb = range(0, 5, length=45)	
	ces_plotcobb = @layout [a b]
	ces1cobb = surface(
	  ces_xcobb, ces_xcobb, (x, y)-> (x^ces_cobb + y^ces_cobb)^(1/ces_cobb), c=:roma, legend=:none, 
	  nx=50, ny=50, display_option=Plots.GR.OPTION_SHADED_MESH, camera=(45,30)
	)
	ces2cobb = contour(ces_xcobb, ces_xcobb, (x, y)-> (x^ces_cobb + y^ces_cobb)^(1/ces_cobb), c=:thermal, legend=:none, levels = 10, clabels=false, fill=true, alpha=0.4)	
	plot(ces1cobb, ces2cobb, layout = ces_plotcobb, title=L"δ = 0.1")	
end

# ╔═╡ cd857e39-4177-4e53-9389-12a2d4468154
begin		
	ces_l = -50
	ces_xl = range(0, 5, length=100)	
	ces_plotl = @layout [a b]
	ces1l = surface(
	  ces_xl, ces_xl, (x, y)-> (x^ces_l + y^ces_l)^(1/ces_l), c=:roma, legend=:none, 
	  nx=50, ny=50, display_option=Plots.GR.OPTION_SHADED_MESH, camera=(45,45)
	)
	ces2l = contour(ces_xl, ces_xl, (x, y)-> (x^ces_l + y^ces_l)^(1/ces_l), c=:bone, legend=:none, levels = 10, clabels=false, fill=true, alpha=0.4)	
	plot(ces1l, ces2l, layout = ces_plotl, title=L"δ = -50")	
end

# ╔═╡ c57e60fe-f578-421c-b9d0-ce65b6e0599e
md"
### Função quasi-linear
"

# ╔═╡ 89781173-14a3-4db2-8f27-ed4f3deb2339
md"
* Uma função utilidade quasi-linear é definida pela seguinte forma funcional:
$$U(x, y) =  v(x) + y$$
* Abaixo ilustramos o gráfico e as curvas de indiferença associadas a função utilidade quasi-linear com a seguinte forma funcional específica:
$$U(x, y) = \ln(1 + x) + y$$
"

# ╔═╡ 89d61705-0fc9-445f-8e36-3a7cdd84191c
begin		
	ql_x = range(0, 5, length=100)	
	ql_plotl = @layout [a b]
	ql = surface(
	  ql_x, ql_x, (x, y)-> log(1 + x) + y, c=:roma, legend=:none, 
	  nx=50, ny=50, display_option=Plots.GR.OPTION_SHADED_MESH, camera=(45,30)
	)
	ql2 = contour(ql_x, ql_x, (x, y)-> log(1+x) + y, c=:bone, legend=:none, levels = 10, clabels=false, fill=true, alpha=0.4)	
	plot(ql, ql2, layout = ql_plotl)	
end

# ╔═╡ e8e2392e-60ba-4687-9ba6-2a0252a0ce0f
md"
## Preferências homotéticas e não-homotéticas
"

# ╔═╡ 6dc2605f-1aa1-4d8a-96b8-7b846be8aa40
md"
* Uma função utilidade é **homotética** se sua taxa marginal de substituição depende apenas da *razão* entre as quantidades de bens, e não de suas quantidades totais
* A importância de funções utilidade homotéticas é que suas curvas de indiferença são similares
* A inclinação das curvas depende apenas da razão entre os bens, e não do quão distante as curvas estão da origem
* As curvas de indiferença associadas a utilidades mais altas são cópias das de utilidades mais baixas
* Portanto, podemos estudar o comportamento de um indivíduo que tenha preferências homotéticas olhando apenas uma curva de indiferença (ou um número pequeno)
* Sem nos preocupar que o resultado altere drasticamente para diferentes níveis de utilidade
"

# ╔═╡ afcb1930-d7b1-4b12-b4be-88b9d53a5bee
md"""
> 1. Mostre que as quatro funções utilidade estudadas anteriormente exibem preferências homotéticas:
> 
> (a) Função Cobb-Douglas
>
> (b) Bens substitutos
>
> (c) Bens complementares
>
> (d) Função de elasticidade de substituição constante
"""

# ╔═╡ 9d033013-7b5e-4233-8eae-b6caf884cc6b
md"""
!!! hint "Respostas"
	(a) Função Cobb-Douglas: $U(x,y) = x^\alpha y^\beta$

	$$\text{TMS} = \frac{\alpha y}{\beta x}$$

	(b) Bens substitutos: $U(x,y) = \alpha x + \beta y$

	$$\text{TMS} = \frac{\alpha}{\beta}$$

	(c) Bens complementares: $U(x,y) = \min\{\alpha x + \beta y\}$

	$$\text{TMS} = \begin{cases} \infty, &\quad& \alpha x< \beta y \\ \text{indefinida}, &\quad& \alpha x = \beta y \\ 0, &\quad& \alpha x > \beta y\end{cases}$$

	(d) Função CES: $U(x,y) = \left[x^\delta + y^\delta\right]^{\frac{1}{\delta}}$

	$$\text{TMS} = \left(\frac{y}{x}\right)^{1-\delta}$$
"""

# ╔═╡ cbe05382-5bbc-4021-8a8e-864abebc28b0
md"""
> 2. Mostre que a função utilidade quasi-linear abaixo não exibe preferências homotéticas:
>
> $$U(x,y) = x + \ln y$$
"""

# ╔═╡ d67dffd4-bd85-4703-86f8-f430359944fc
md"""
!!! hint "Resposta"
	$$\text{TMS} = y$$
"""

# ╔═╡ 2d955598-f428-4b93-9125-ec27d379c1b0
begin			
	q_linear = range(0, 20, length=100)	
	contour(q_linear, q_linear, (x, y)-> x + log(y), c=:roma, legend=:none, levels = 10, clabels=false, title=L"U(x,y) = x + \ln y", fill=true, alpha=0.4)	
end

# ╔═╡ 0897295b-11bd-4c8d-b913-c3c636106738
md"
* Note que no caso da função utilidade quasi-linear, a TMS diminui à medida que a quantidade escolhida de $y$ diminui, mas é independente da quantidade consumida de $x$
* Como $x$ tem uma utilidade marginal constante, a disposição de um indivíduo a abrir mão de $y$ para adquirir uma unidade adicional de $x$ depende, apenas, do quanto de $y$ possui
* Ao contrário do caso homotético, quando as quantidades de $x$ e $y$ dobram, a TMS também dobra (ao invés de permanecer invariante)
"

# ╔═╡ 1c4d0148-7cf0-4e0f-9a76-f754c4a2ecda
md"
## Superfície de indiferença
"

# ╔═╡ bfceef2c-24a8-458b-8034-7a9f595dc971
md"
* Se o indivíduo deriva utilidade do consumo de $n$ bens, sua função utilidade por ser representada como:
$$U(x_1, \dots, x_n)$$
* Portanto, a equação:
$$U(x_1, \dots, x_n) = k,$$
neste caso, define uma **superfície de indiferença** $n$-dimensional
* Continuaremos assumindo que a superfície de indiferença é convexa
* Isto é, cestas de consumo mais balanceadas são preferíveis às cestas não-balanceadas
* Portanto, assume-se que a função utilidade é quasi-côncava
* Podemos estudar as trocas voluntárias que um indivíduo esteja disposto a fazer entre dois bens quaisquer ($x_1$ e $x_2$) usando o teorema da função implícita para obter a TMS:
$$\text{TMS}_{x_1, x_2} = -\left.\frac{dx_2}{dx_1}\right|_{U(x_1, \dots, x_n) = k} = \frac{U_1(x_1, \dots, x_n)}{U_2(x_1, \dots, x_n)}$$
* A disposição de um indivíduo em trocar $x_2$ por $x_1$ depende não só da quantidade desses bens mas, também, das quantidades de todos os outros bens
"

# ╔═╡ b514f905-7bb6-4c47-9aa4-388859cfed4e
md"
## 📚 Bibliografia

JEHLE, G. A.; RENY, P. J. Advanced microeconomic theory. 3.ed. Pearson Education Limited, 2011.

MAS-COLELL, A.; WHINSTON, M.D.; GREEN, J.R. Microeconomic Theory. New York, NY: Oxford University Press, 1995.

NICHOLSON, W.; SNYDER C. Teoria microeconômica: Princípios básicos e aplicações. Cengage Learning Brasil, 2019.
"

# ╔═╡ 00000000-0000-0000-0000-000000000001
PLUTO_PROJECT_TOML_CONTENTS = """
[deps]
LaTeXStrings = "b964fa9f-0449-5b57-a5c2-d3ea65f4040f"
Measures = "442fdcdd-2543-5da2-b0f3-8c86c306513e"
Plots = "91a5bcdd-55d7-5caf-9e0b-520d859cae80"
PlutoUI = "7f904dfe-b85e-4ff6-b463-dae2292396a8"

[compat]
LaTeXStrings = "~1.3.0"
Measures = "~0.3.2"
Plots = "~1.38.6"
PlutoUI = "~0.7.50"
"""

# ╔═╡ 00000000-0000-0000-0000-000000000002
PLUTO_MANIFEST_TOML_CONTENTS = """
# This file is machine-generated - editing it directly is not advised

julia_version = "1.8.5"
manifest_format = "2.0"
project_hash = "9d8e0b5eb44ada63f68e061ff9afa8d2a96e47f7"

[[deps.AbstractPlutoDingetjes]]
deps = ["Pkg"]
git-tree-sha1 = "8eaf9f1b4921132a4cff3f36a1d9ba923b14a481"
uuid = "6e696c72-6542-2067-7265-42206c756150"
version = "1.1.4"

[[deps.ArgTools]]
uuid = "0dad84c5-d112-42e6-8d28-ef12dabb789f"
version = "1.1.1"

[[deps.Artifacts]]
uuid = "56f22d72-fd6d-98f1-02f0-08ddc0907c33"

[[deps.Base64]]
uuid = "2a0f44e3-6c83-55bd-87e4-b1978d98bd5f"

[[deps.BitFlags]]
git-tree-sha1 = "43b1a4a8f797c1cddadf60499a8a077d4af2cd2d"
uuid = "d1d4a3ce-64b1-5f1a-9ba4-7e7e69966f35"
version = "0.1.7"

[[deps.Bzip2_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "19a35467a82e236ff51bc17a3a44b69ef35185a2"
uuid = "6e34b625-4abd-537c-b88f-471c36dfa7a0"
version = "1.0.8+0"

[[deps.Cairo_jll]]
deps = ["Artifacts", "Bzip2_jll", "CompilerSupportLibraries_jll", "Fontconfig_jll", "FreeType2_jll", "Glib_jll", "JLLWrappers", "LZO_jll", "Libdl", "Pixman_jll", "Pkg", "Xorg_libXext_jll", "Xorg_libXrender_jll", "Zlib_jll", "libpng_jll"]
git-tree-sha1 = "4b859a208b2397a7a623a03449e4636bdb17bcf2"
uuid = "83423d85-b0ee-5818-9007-b63ccbeb887a"
version = "1.16.1+1"

[[deps.ChainRulesCore]]
deps = ["Compat", "LinearAlgebra", "SparseArrays"]
git-tree-sha1 = "c6d890a52d2c4d55d326439580c3b8d0875a77d9"
uuid = "d360d2e6-b24c-11e9-a2a3-2a2ae2dbcce4"
version = "1.15.7"

[[deps.ChangesOfVariables]]
deps = ["ChainRulesCore", "LinearAlgebra", "Test"]
git-tree-sha1 = "485193efd2176b88e6622a39a246f8c5b600e74e"
uuid = "9e997f8a-9a97-42d5-a9f1-ce6bfc15e2c0"
version = "0.1.6"

[[deps.CodecZlib]]
deps = ["TranscodingStreams", "Zlib_jll"]
git-tree-sha1 = "9c209fb7536406834aa938fb149964b985de6c83"
uuid = "944b1d66-785c-5afd-91f1-9de20f533193"
version = "0.7.1"

[[deps.ColorSchemes]]
deps = ["ColorTypes", "ColorVectorSpace", "Colors", "FixedPointNumbers", "Random", "SnoopPrecompile"]
git-tree-sha1 = "aa3edc8f8dea6cbfa176ee12f7c2fc82f0608ed3"
uuid = "35d6a980-a343-548e-a6ea-1d62b119f2f4"
version = "3.20.0"

[[deps.ColorTypes]]
deps = ["FixedPointNumbers", "Random"]
git-tree-sha1 = "eb7f0f8307f71fac7c606984ea5fb2817275d6e4"
uuid = "3da002f7-5984-5a60-b8a6-cbb66c0b333f"
version = "0.11.4"

[[deps.ColorVectorSpace]]
deps = ["ColorTypes", "FixedPointNumbers", "LinearAlgebra", "SpecialFunctions", "Statistics", "TensorCore"]
git-tree-sha1 = "600cc5508d66b78aae350f7accdb58763ac18589"
uuid = "c3611d14-8923-5661-9e6a-0046d554d3a4"
version = "0.9.10"

[[deps.Colors]]
deps = ["ColorTypes", "FixedPointNumbers", "Reexport"]
git-tree-sha1 = "fc08e5930ee9a4e03f84bfb5211cb54e7769758a"
uuid = "5ae59095-9a9b-59fe-a467-6f913c188581"
version = "0.12.10"

[[deps.Compat]]
deps = ["Dates", "LinearAlgebra", "UUIDs"]
git-tree-sha1 = "7a60c856b9fa189eb34f5f8a6f6b5529b7942957"
uuid = "34da2185-b29b-5c13-b0c7-acf172513d20"
version = "4.6.1"

[[deps.CompilerSupportLibraries_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "e66e0078-7015-5450-92f7-15fbd957f2ae"
version = "1.0.1+0"

[[deps.Contour]]
git-tree-sha1 = "d05d9e7b7aedff4e5b51a029dced05cfb6125781"
uuid = "d38c429a-6771-53c6-b99e-75d170b6e991"
version = "0.6.2"

[[deps.DataAPI]]
git-tree-sha1 = "e8119c1a33d267e16108be441a287a6981ba1630"
uuid = "9a962f9c-6df0-11e9-0e5d-c546b8b5ee8a"
version = "1.14.0"

[[deps.DataStructures]]
deps = ["Compat", "InteractiveUtils", "OrderedCollections"]
git-tree-sha1 = "d1fff3a548102f48987a52a2e0d114fa97d730f0"
uuid = "864edb3b-99cc-5e75-8d2d-829cb0a9cfe8"
version = "0.18.13"

[[deps.Dates]]
deps = ["Printf"]
uuid = "ade2ca70-3891-5945-98fb-dc099432e06a"

[[deps.DelimitedFiles]]
deps = ["Mmap"]
uuid = "8bb1440f-4735-579b-a4ab-409b98df4dab"

[[deps.DocStringExtensions]]
deps = ["LibGit2"]
git-tree-sha1 = "2fb1e02f2b635d0845df5d7c167fec4dd739b00d"
uuid = "ffbed154-4ef7-542d-bbb7-c09d3a79fcae"
version = "0.9.3"

[[deps.Downloads]]
deps = ["ArgTools", "FileWatching", "LibCURL", "NetworkOptions"]
uuid = "f43a241f-c20a-4ad4-852c-f6b1247861c6"
version = "1.6.0"

[[deps.Expat_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "bad72f730e9e91c08d9427d5e8db95478a3c323d"
uuid = "2e619515-83b5-522b-bb60-26c02a35a201"
version = "2.4.8+0"

[[deps.FFMPEG]]
deps = ["FFMPEG_jll"]
git-tree-sha1 = "b57e3acbe22f8484b4b5ff66a7499717fe1a9cc8"
uuid = "c87230d0-a227-11e9-1b43-d7ebe4e7570a"
version = "0.4.1"

[[deps.FFMPEG_jll]]
deps = ["Artifacts", "Bzip2_jll", "FreeType2_jll", "FriBidi_jll", "JLLWrappers", "LAME_jll", "Libdl", "Ogg_jll", "OpenSSL_jll", "Opus_jll", "PCRE2_jll", "Pkg", "Zlib_jll", "libaom_jll", "libass_jll", "libfdk_aac_jll", "libvorbis_jll", "x264_jll", "x265_jll"]
git-tree-sha1 = "74faea50c1d007c85837327f6775bea60b5492dd"
uuid = "b22a6f82-2f65-5046-a5b2-351ab43fb4e5"
version = "4.4.2+2"

[[deps.FileWatching]]
uuid = "7b1f6079-737a-58dc-b8bc-7a2ca5c1b5ee"

[[deps.FixedPointNumbers]]
deps = ["Statistics"]
git-tree-sha1 = "335bfdceacc84c5cdf16aadc768aa5ddfc5383cc"
uuid = "53c48c17-4a7d-5ca2-90c5-79b7896eea93"
version = "0.8.4"

[[deps.Fontconfig_jll]]
deps = ["Artifacts", "Bzip2_jll", "Expat_jll", "FreeType2_jll", "JLLWrappers", "Libdl", "Libuuid_jll", "Pkg", "Zlib_jll"]
git-tree-sha1 = "21efd19106a55620a188615da6d3d06cd7f6ee03"
uuid = "a3f928ae-7b40-5064-980b-68af3947d34b"
version = "2.13.93+0"

[[deps.Formatting]]
deps = ["Printf"]
git-tree-sha1 = "8339d61043228fdd3eb658d86c926cb282ae72a8"
uuid = "59287772-0a20-5a39-b81b-1366585eb4c0"
version = "0.4.2"

[[deps.FreeType2_jll]]
deps = ["Artifacts", "Bzip2_jll", "JLLWrappers", "Libdl", "Pkg", "Zlib_jll"]
git-tree-sha1 = "87eb71354d8ec1a96d4a7636bd57a7347dde3ef9"
uuid = "d7e528f0-a631-5988-bf34-fe36492bcfd7"
version = "2.10.4+0"

[[deps.FriBidi_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "aa31987c2ba8704e23c6c8ba8a4f769d5d7e4f91"
uuid = "559328eb-81f9-559d-9380-de523a88c83c"
version = "1.0.10+0"

[[deps.GLFW_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Libglvnd_jll", "Pkg", "Xorg_libXcursor_jll", "Xorg_libXi_jll", "Xorg_libXinerama_jll", "Xorg_libXrandr_jll"]
git-tree-sha1 = "d972031d28c8c8d9d7b41a536ad7bb0c2579caca"
uuid = "0656b61e-2033-5cc2-a64a-77c0f6c09b89"
version = "3.3.8+0"

[[deps.GR]]
deps = ["Artifacts", "Base64", "DelimitedFiles", "Downloads", "GR_jll", "HTTP", "JSON", "Libdl", "LinearAlgebra", "Pkg", "Preferences", "Printf", "Random", "Serialization", "Sockets", "TOML", "Tar", "Test", "UUIDs", "p7zip_jll"]
git-tree-sha1 = "660b2ea2ec2b010bb02823c6d0ff6afd9bdc5c16"
uuid = "28b8d3ca-fb5f-59d9-8090-bfdbd6d07a71"
version = "0.71.7"

[[deps.GR_jll]]
deps = ["Artifacts", "Bzip2_jll", "Cairo_jll", "FFMPEG_jll", "Fontconfig_jll", "GLFW_jll", "JLLWrappers", "JpegTurbo_jll", "Libdl", "Libtiff_jll", "Pixman_jll", "Qt5Base_jll", "Zlib_jll", "libpng_jll"]
git-tree-sha1 = "d5e1fd17ac7f3aa4c5287a61ee28d4f8b8e98873"
uuid = "d2c73de3-f751-5644-a686-071e5b155ba9"
version = "0.71.7+0"

[[deps.Gettext_jll]]
deps = ["Artifacts", "CompilerSupportLibraries_jll", "JLLWrappers", "Libdl", "Libiconv_jll", "Pkg", "XML2_jll"]
git-tree-sha1 = "9b02998aba7bf074d14de89f9d37ca24a1a0b046"
uuid = "78b55507-aeef-58d4-861c-77aaff3498b1"
version = "0.21.0+0"

[[deps.Glib_jll]]
deps = ["Artifacts", "Gettext_jll", "JLLWrappers", "Libdl", "Libffi_jll", "Libiconv_jll", "Libmount_jll", "PCRE2_jll", "Pkg", "Zlib_jll"]
git-tree-sha1 = "d3b3624125c1474292d0d8ed0f65554ac37ddb23"
uuid = "7746bdde-850d-59dc-9ae8-88ece973131d"
version = "2.74.0+2"

[[deps.Graphite2_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "344bf40dcab1073aca04aa0df4fb092f920e4011"
uuid = "3b182d85-2403-5c21-9c21-1e1f0cc25472"
version = "1.3.14+0"

[[deps.Grisu]]
git-tree-sha1 = "53bb909d1151e57e2484c3d1b53e19552b887fb2"
uuid = "42e2da0e-8278-4e71-bc24-59509adca0fe"
version = "1.0.2"

[[deps.HTTP]]
deps = ["Base64", "CodecZlib", "Dates", "IniFile", "Logging", "LoggingExtras", "MbedTLS", "NetworkOptions", "OpenSSL", "Random", "SimpleBufferStream", "Sockets", "URIs", "UUIDs"]
git-tree-sha1 = "37e4657cd56b11abe3d10cd4a1ec5fbdb4180263"
uuid = "cd3eb016-35fb-5094-929b-558a96fad6f3"
version = "1.7.4"

[[deps.HarfBuzz_jll]]
deps = ["Artifacts", "Cairo_jll", "Fontconfig_jll", "FreeType2_jll", "Glib_jll", "Graphite2_jll", "JLLWrappers", "Libdl", "Libffi_jll", "Pkg"]
git-tree-sha1 = "129acf094d168394e80ee1dc4bc06ec835e510a3"
uuid = "2e76f6c2-a576-52d4-95c1-20adfe4de566"
version = "2.8.1+1"

[[deps.Hyperscript]]
deps = ["Test"]
git-tree-sha1 = "8d511d5b81240fc8e6802386302675bdf47737b9"
uuid = "47d2ed2b-36de-50cf-bf87-49c2cf4b8b91"
version = "0.0.4"

[[deps.HypertextLiteral]]
deps = ["Tricks"]
git-tree-sha1 = "c47c5fa4c5308f27ccaac35504858d8914e102f9"
uuid = "ac1192a8-f4b3-4bfe-ba22-af5b92cd3ab2"
version = "0.9.4"

[[deps.IOCapture]]
deps = ["Logging", "Random"]
git-tree-sha1 = "f7be53659ab06ddc986428d3a9dcc95f6fa6705a"
uuid = "b5f81e59-6552-4d32-b1f0-c071b021bf89"
version = "0.2.2"

[[deps.IniFile]]
git-tree-sha1 = "f550e6e32074c939295eb5ea6de31849ac2c9625"
uuid = "83e8ac13-25f8-5344-8a64-a9f2b223428f"
version = "0.5.1"

[[deps.InteractiveUtils]]
deps = ["Markdown"]
uuid = "b77e0a4c-d291-57a0-90e8-8db25a27a240"

[[deps.InverseFunctions]]
deps = ["Test"]
git-tree-sha1 = "49510dfcb407e572524ba94aeae2fced1f3feb0f"
uuid = "3587e190-3f89-42d0-90ee-14403ec27112"
version = "0.1.8"

[[deps.IrrationalConstants]]
git-tree-sha1 = "630b497eafcc20001bba38a4651b327dcfc491d2"
uuid = "92d709cd-6900-40b7-9082-c6be49f344b6"
version = "0.2.2"

[[deps.JLFzf]]
deps = ["Pipe", "REPL", "Random", "fzf_jll"]
git-tree-sha1 = "f377670cda23b6b7c1c0b3893e37451c5c1a2185"
uuid = "1019f520-868f-41f5-a6de-eb00f4b6a39c"
version = "0.1.5"

[[deps.JLLWrappers]]
deps = ["Preferences"]
git-tree-sha1 = "abc9885a7ca2052a736a600f7fa66209f96506e1"
uuid = "692b3bcd-3c85-4b1f-b108-f13ce0eb3210"
version = "1.4.1"

[[deps.JSON]]
deps = ["Dates", "Mmap", "Parsers", "Unicode"]
git-tree-sha1 = "3c837543ddb02250ef42f4738347454f95079d4e"
uuid = "682c06a0-de6a-54ab-a142-c8b1cf79cde6"
version = "0.21.3"

[[deps.JpegTurbo_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl"]
git-tree-sha1 = "6f2675ef130a300a112286de91973805fcc5ffbc"
uuid = "aacddb02-875f-59d6-b918-886e6ef4fbf8"
version = "2.1.91+0"

[[deps.LAME_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "f6250b16881adf048549549fba48b1161acdac8c"
uuid = "c1c5ebd0-6772-5130-a774-d5fcae4a789d"
version = "3.100.1+0"

[[deps.LERC_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "bf36f528eec6634efc60d7ec062008f171071434"
uuid = "88015f11-f218-50d7-93a8-a6af411a945d"
version = "3.0.0+1"

[[deps.LZO_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "e5b909bcf985c5e2605737d2ce278ed791b89be6"
uuid = "dd4b983a-f0e5-5f8d-a1b7-129d4a5fb1ac"
version = "2.10.1+0"

[[deps.LaTeXStrings]]
git-tree-sha1 = "f2355693d6778a178ade15952b7ac47a4ff97996"
uuid = "b964fa9f-0449-5b57-a5c2-d3ea65f4040f"
version = "1.3.0"

[[deps.Latexify]]
deps = ["Formatting", "InteractiveUtils", "LaTeXStrings", "MacroTools", "Markdown", "OrderedCollections", "Printf", "Requires"]
git-tree-sha1 = "2422f47b34d4b127720a18f86fa7b1aa2e141f29"
uuid = "23fbe1c1-3f47-55db-b15f-69d7ec21a316"
version = "0.15.18"

[[deps.LibCURL]]
deps = ["LibCURL_jll", "MozillaCACerts_jll"]
uuid = "b27032c2-a3e7-50c8-80cd-2d36dbcbfd21"
version = "0.6.3"

[[deps.LibCURL_jll]]
deps = ["Artifacts", "LibSSH2_jll", "Libdl", "MbedTLS_jll", "Zlib_jll", "nghttp2_jll"]
uuid = "deac9b47-8bc7-5906-a0fe-35ac56dc84c0"
version = "7.84.0+0"

[[deps.LibGit2]]
deps = ["Base64", "NetworkOptions", "Printf", "SHA"]
uuid = "76f85450-5226-5b5a-8eaa-529ad045b433"

[[deps.LibSSH2_jll]]
deps = ["Artifacts", "Libdl", "MbedTLS_jll"]
uuid = "29816b5a-b9ab-546f-933c-edad1886dfa8"
version = "1.10.2+0"

[[deps.Libdl]]
uuid = "8f399da3-3557-5675-b5ff-fb832c97cbdb"

[[deps.Libffi_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "0b4a5d71f3e5200a7dff793393e09dfc2d874290"
uuid = "e9f186c6-92d2-5b65-8a66-fee21dc1b490"
version = "3.2.2+1"

[[deps.Libgcrypt_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Libgpg_error_jll", "Pkg"]
git-tree-sha1 = "64613c82a59c120435c067c2b809fc61cf5166ae"
uuid = "d4300ac3-e22c-5743-9152-c294e39db1e4"
version = "1.8.7+0"

[[deps.Libglvnd_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Xorg_libX11_jll", "Xorg_libXext_jll"]
git-tree-sha1 = "6f73d1dd803986947b2c750138528a999a6c7733"
uuid = "7e76a0d4-f3c7-5321-8279-8d96eeed0f29"
version = "1.6.0+0"

[[deps.Libgpg_error_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "c333716e46366857753e273ce6a69ee0945a6db9"
uuid = "7add5ba3-2f88-524e-9cd5-f83b8a55f7b8"
version = "1.42.0+0"

[[deps.Libiconv_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "c7cb1f5d892775ba13767a87c7ada0b980ea0a71"
uuid = "94ce4f54-9a6c-5748-9c1c-f9c7231a4531"
version = "1.16.1+2"

[[deps.Libmount_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "9c30530bf0effd46e15e0fdcf2b8636e78cbbd73"
uuid = "4b2f31a3-9ecc-558c-b454-b3730dcb73e9"
version = "2.35.0+0"

[[deps.Libtiff_jll]]
deps = ["Artifacts", "JLLWrappers", "JpegTurbo_jll", "LERC_jll", "Libdl", "Pkg", "Zlib_jll", "Zstd_jll"]
git-tree-sha1 = "3eb79b0ca5764d4799c06699573fd8f533259713"
uuid = "89763e89-9b03-5906-acba-b20f662cd828"
version = "4.4.0+0"

[[deps.Libuuid_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "7f3efec06033682db852f8b3bc3c1d2b0a0ab066"
uuid = "38a345b3-de98-5d2b-a5d3-14cd9215e700"
version = "2.36.0+0"

[[deps.LinearAlgebra]]
deps = ["Libdl", "libblastrampoline_jll"]
uuid = "37e2e46d-f89d-539d-b4ee-838fcccc9c8e"

[[deps.LogExpFunctions]]
deps = ["ChainRulesCore", "ChangesOfVariables", "DocStringExtensions", "InverseFunctions", "IrrationalConstants", "LinearAlgebra"]
git-tree-sha1 = "0a1b7c2863e44523180fdb3146534e265a91870b"
uuid = "2ab3a3ac-af41-5b50-aa03-7779005ae688"
version = "0.3.23"

[[deps.Logging]]
uuid = "56ddb016-857b-54e1-b83d-db4d58db5568"

[[deps.LoggingExtras]]
deps = ["Dates", "Logging"]
git-tree-sha1 = "cedb76b37bc5a6c702ade66be44f831fa23c681e"
uuid = "e6f89c97-d47a-5376-807f-9c37f3926c36"
version = "1.0.0"

[[deps.MIMEs]]
git-tree-sha1 = "65f28ad4b594aebe22157d6fac869786a255b7eb"
uuid = "6c6e2e6c-3030-632d-7369-2d6c69616d65"
version = "0.1.4"

[[deps.MacroTools]]
deps = ["Markdown", "Random"]
git-tree-sha1 = "42324d08725e200c23d4dfb549e0d5d89dede2d2"
uuid = "1914dd2f-81c6-5fcd-8719-6d5c9610ff09"
version = "0.5.10"

[[deps.Markdown]]
deps = ["Base64"]
uuid = "d6f4376e-aef5-505a-96c1-9c027394607a"

[[deps.MbedTLS]]
deps = ["Dates", "MbedTLS_jll", "MozillaCACerts_jll", "Random", "Sockets"]
git-tree-sha1 = "03a9b9718f5682ecb107ac9f7308991db4ce395b"
uuid = "739be429-bea8-5141-9913-cc70e7f3736d"
version = "1.1.7"

[[deps.MbedTLS_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "c8ffd9c3-330d-5841-b78e-0817d7145fa1"
version = "2.28.0+0"

[[deps.Measures]]
git-tree-sha1 = "c13304c81eec1ed3af7fc20e75fb6b26092a1102"
uuid = "442fdcdd-2543-5da2-b0f3-8c86c306513e"
version = "0.3.2"

[[deps.Missings]]
deps = ["DataAPI"]
git-tree-sha1 = "f66bdc5de519e8f8ae43bdc598782d35a25b1272"
uuid = "e1d29d7a-bbdc-5cf2-9ac0-f12de2c33e28"
version = "1.1.0"

[[deps.Mmap]]
uuid = "a63ad114-7e13-5084-954f-fe012c677804"

[[deps.MozillaCACerts_jll]]
uuid = "14a3606d-f60d-562e-9121-12d972cd8159"
version = "2022.2.1"

[[deps.NaNMath]]
deps = ["OpenLibm_jll"]
git-tree-sha1 = "0877504529a3e5c3343c6f8b4c0381e57e4387e4"
uuid = "77ba4419-2d1f-58cd-9bb1-8ffee604a2e3"
version = "1.0.2"

[[deps.NetworkOptions]]
uuid = "ca575930-c2e3-43a9-ace4-1e988b2c1908"
version = "1.2.0"

[[deps.Ogg_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "887579a3eb005446d514ab7aeac5d1d027658b8f"
uuid = "e7412a2a-1a6e-54c0-be00-318e2571c051"
version = "1.3.5+1"

[[deps.OpenBLAS_jll]]
deps = ["Artifacts", "CompilerSupportLibraries_jll", "Libdl"]
uuid = "4536629a-c528-5b80-bd46-f80d51c5b363"
version = "0.3.20+0"

[[deps.OpenLibm_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "05823500-19ac-5b8b-9628-191a04bc5112"
version = "0.8.1+0"

[[deps.OpenSSL]]
deps = ["BitFlags", "Dates", "MozillaCACerts_jll", "OpenSSL_jll", "Sockets"]
git-tree-sha1 = "6503b77492fd7fcb9379bf73cd31035670e3c509"
uuid = "4d8831e6-92b7-49fb-bdf8-b643e874388c"
version = "1.3.3"

[[deps.OpenSSL_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "9ff31d101d987eb9d66bd8b176ac7c277beccd09"
uuid = "458c3c95-2e84-50aa-8efc-19380b2a3a95"
version = "1.1.20+0"

[[deps.OpenSpecFun_jll]]
deps = ["Artifacts", "CompilerSupportLibraries_jll", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "13652491f6856acfd2db29360e1bbcd4565d04f1"
uuid = "efe28fd5-8261-553b-a9e1-b2916fc3738e"
version = "0.5.5+0"

[[deps.Opus_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "51a08fb14ec28da2ec7a927c4337e4332c2a4720"
uuid = "91d4177d-7536-5919-b921-800302f37372"
version = "1.3.2+0"

[[deps.OrderedCollections]]
git-tree-sha1 = "85f8e6578bf1f9ee0d11e7bb1b1456435479d47c"
uuid = "bac558e1-5e72-5ebc-8fee-abe8a469f55d"
version = "1.4.1"

[[deps.PCRE2_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "efcefdf7-47ab-520b-bdef-62a2eaa19f15"
version = "10.40.0+0"

[[deps.Parsers]]
deps = ["Dates", "SnoopPrecompile"]
git-tree-sha1 = "478ac6c952fddd4399e71d4779797c538d0ff2bf"
uuid = "69de0a69-1ddd-5017-9359-2bf0b02dc9f0"
version = "2.5.8"

[[deps.Pipe]]
git-tree-sha1 = "6842804e7867b115ca9de748a0cf6b364523c16d"
uuid = "b98c9c47-44ae-5843-9183-064241ee97a0"
version = "1.3.0"

[[deps.Pixman_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "b4f5d02549a10e20780a24fce72bea96b6329e29"
uuid = "30392449-352a-5448-841d-b1acce4e97dc"
version = "0.40.1+0"

[[deps.Pkg]]
deps = ["Artifacts", "Dates", "Downloads", "LibGit2", "Libdl", "Logging", "Markdown", "Printf", "REPL", "Random", "SHA", "Serialization", "TOML", "Tar", "UUIDs", "p7zip_jll"]
uuid = "44cfe95a-1eb2-52ea-b672-e2afdf69b78f"
version = "1.8.0"

[[deps.PlotThemes]]
deps = ["PlotUtils", "Statistics"]
git-tree-sha1 = "1f03a2d339f42dca4a4da149c7e15e9b896ad899"
uuid = "ccf2f8ad-2431-5c83-bf29-c5338b663b6a"
version = "3.1.0"

[[deps.PlotUtils]]
deps = ["ColorSchemes", "Colors", "Dates", "Printf", "Random", "Reexport", "SnoopPrecompile", "Statistics"]
git-tree-sha1 = "c95373e73290cf50a8a22c3375e4625ded5c5280"
uuid = "995b91a9-d308-5afd-9ec6-746e21dbc043"
version = "1.3.4"

[[deps.Plots]]
deps = ["Base64", "Contour", "Dates", "Downloads", "FFMPEG", "FixedPointNumbers", "GR", "JLFzf", "JSON", "LaTeXStrings", "Latexify", "LinearAlgebra", "Measures", "NaNMath", "Pkg", "PlotThemes", "PlotUtils", "Preferences", "Printf", "REPL", "Random", "RecipesBase", "RecipesPipeline", "Reexport", "RelocatableFolders", "Requires", "Scratch", "Showoff", "SnoopPrecompile", "SparseArrays", "Statistics", "StatsBase", "UUIDs", "UnicodeFun", "Unzip"]
git-tree-sha1 = "da1d3fb7183e38603fcdd2061c47979d91202c97"
uuid = "91a5bcdd-55d7-5caf-9e0b-520d859cae80"
version = "1.38.6"

[[deps.PlutoUI]]
deps = ["AbstractPlutoDingetjes", "Base64", "ColorTypes", "Dates", "FixedPointNumbers", "Hyperscript", "HypertextLiteral", "IOCapture", "InteractiveUtils", "JSON", "Logging", "MIMEs", "Markdown", "Random", "Reexport", "URIs", "UUIDs"]
git-tree-sha1 = "5bb5129fdd62a2bbbe17c2756932259acf467386"
uuid = "7f904dfe-b85e-4ff6-b463-dae2292396a8"
version = "0.7.50"

[[deps.Preferences]]
deps = ["TOML"]
git-tree-sha1 = "47e5f437cc0e7ef2ce8406ce1e7e24d44915f88d"
uuid = "21216c6a-2e73-6563-6e65-726566657250"
version = "1.3.0"

[[deps.Printf]]
deps = ["Unicode"]
uuid = "de0858da-6303-5e67-8744-51eddeeeb8d7"

[[deps.Qt5Base_jll]]
deps = ["Artifacts", "CompilerSupportLibraries_jll", "Fontconfig_jll", "Glib_jll", "JLLWrappers", "Libdl", "Libglvnd_jll", "OpenSSL_jll", "Pkg", "Xorg_libXext_jll", "Xorg_libxcb_jll", "Xorg_xcb_util_image_jll", "Xorg_xcb_util_keysyms_jll", "Xorg_xcb_util_renderutil_jll", "Xorg_xcb_util_wm_jll", "Zlib_jll", "xkbcommon_jll"]
git-tree-sha1 = "0c03844e2231e12fda4d0086fd7cbe4098ee8dc5"
uuid = "ea2cea3b-5b76-57ae-a6ef-0a8af62496e1"
version = "5.15.3+2"

[[deps.REPL]]
deps = ["InteractiveUtils", "Markdown", "Sockets", "Unicode"]
uuid = "3fa0cd96-eef1-5676-8a61-b3b8758bbffb"

[[deps.Random]]
deps = ["SHA", "Serialization"]
uuid = "9a3f8284-a2c9-5f02-9a11-845980a1fd5c"

[[deps.RecipesBase]]
deps = ["SnoopPrecompile"]
git-tree-sha1 = "261dddd3b862bd2c940cf6ca4d1c8fe593e457c8"
uuid = "3cdcf5f2-1ef4-517c-9805-6587b60abb01"
version = "1.3.3"

[[deps.RecipesPipeline]]
deps = ["Dates", "NaNMath", "PlotUtils", "RecipesBase", "SnoopPrecompile"]
git-tree-sha1 = "e974477be88cb5e3040009f3767611bc6357846f"
uuid = "01d81517-befc-4cb6-b9ec-a95719d0359c"
version = "0.6.11"

[[deps.Reexport]]
git-tree-sha1 = "45e428421666073eab6f2da5c9d310d99bb12f9b"
uuid = "189a3867-3050-52da-a836-e630ba90ab69"
version = "1.2.2"

[[deps.RelocatableFolders]]
deps = ["SHA", "Scratch"]
git-tree-sha1 = "90bc7a7c96410424509e4263e277e43250c05691"
uuid = "05181044-ff0b-4ac5-8273-598c1e38db00"
version = "1.0.0"

[[deps.Requires]]
deps = ["UUIDs"]
git-tree-sha1 = "838a3a4188e2ded87a4f9f184b4b0d78a1e91cb7"
uuid = "ae029012-a4dd-5104-9daa-d747884805df"
version = "1.3.0"

[[deps.SHA]]
uuid = "ea8e919c-243c-51af-8825-aaa63cd721ce"
version = "0.7.0"

[[deps.Scratch]]
deps = ["Dates"]
git-tree-sha1 = "f94f779c94e58bf9ea243e77a37e16d9de9126bd"
uuid = "6c6a2e73-6563-6170-7368-637461726353"
version = "1.1.1"

[[deps.Serialization]]
uuid = "9e88b42a-f829-5b0c-bbe9-9e923198166b"

[[deps.Showoff]]
deps = ["Dates", "Grisu"]
git-tree-sha1 = "91eddf657aca81df9ae6ceb20b959ae5653ad1de"
uuid = "992d4aef-0814-514b-bc4d-f2e9a6c4116f"
version = "1.0.3"

[[deps.SimpleBufferStream]]
git-tree-sha1 = "874e8867b33a00e784c8a7e4b60afe9e037b74e1"
uuid = "777ac1f9-54b0-4bf8-805c-2214025038e7"
version = "1.1.0"

[[deps.SnoopPrecompile]]
deps = ["Preferences"]
git-tree-sha1 = "e760a70afdcd461cf01a575947738d359234665c"
uuid = "66db9d55-30c0-4569-8b51-7e840670fc0c"
version = "1.0.3"

[[deps.Sockets]]
uuid = "6462fe0b-24de-5631-8697-dd941f90decc"

[[deps.SortingAlgorithms]]
deps = ["DataStructures"]
git-tree-sha1 = "a4ada03f999bd01b3a25dcaa30b2d929fe537e00"
uuid = "a2af1166-a08f-5f64-846c-94a0d3cef48c"
version = "1.1.0"

[[deps.SparseArrays]]
deps = ["LinearAlgebra", "Random"]
uuid = "2f01184e-e22b-5df5-ae63-d93ebab69eaf"

[[deps.SpecialFunctions]]
deps = ["ChainRulesCore", "IrrationalConstants", "LogExpFunctions", "OpenLibm_jll", "OpenSpecFun_jll"]
git-tree-sha1 = "ef28127915f4229c971eb43f3fc075dd3fe91880"
uuid = "276daf66-3868-5448-9aa4-cd146d93841b"
version = "2.2.0"

[[deps.Statistics]]
deps = ["LinearAlgebra", "SparseArrays"]
uuid = "10745b16-79ce-11e8-11f9-7d13ad32a3b2"

[[deps.StatsAPI]]
deps = ["LinearAlgebra"]
git-tree-sha1 = "f9af7f195fb13589dd2e2d57fdb401717d2eb1f6"
uuid = "82ae8749-77ed-4fe6-ae5f-f523153014b0"
version = "1.5.0"

[[deps.StatsBase]]
deps = ["DataAPI", "DataStructures", "LinearAlgebra", "LogExpFunctions", "Missings", "Printf", "Random", "SortingAlgorithms", "SparseArrays", "Statistics", "StatsAPI"]
git-tree-sha1 = "d1bf48bfcc554a3761a133fe3a9bb01488e06916"
uuid = "2913bbd2-ae8a-5f71-8c99-4fb6c76f3a91"
version = "0.33.21"

[[deps.TOML]]
deps = ["Dates"]
uuid = "fa267f1f-6049-4f14-aa54-33bafae1ed76"
version = "1.0.0"

[[deps.Tar]]
deps = ["ArgTools", "SHA"]
uuid = "a4e569a6-e804-4fa4-b0f3-eef7a1d5b13e"
version = "1.10.1"

[[deps.TensorCore]]
deps = ["LinearAlgebra"]
git-tree-sha1 = "1feb45f88d133a655e001435632f019a9a1bcdb6"
uuid = "62fd8b95-f654-4bbd-a8a5-9c27f68ccd50"
version = "0.1.1"

[[deps.Test]]
deps = ["InteractiveUtils", "Logging", "Random", "Serialization"]
uuid = "8dfed614-e22c-5e08-85e1-65c5234f0b40"

[[deps.TranscodingStreams]]
deps = ["Random", "Test"]
git-tree-sha1 = "94f38103c984f89cf77c402f2a68dbd870f8165f"
uuid = "3bb67fe8-82b1-5028-8e26-92a6c54297fa"
version = "0.9.11"

[[deps.Tricks]]
git-tree-sha1 = "6bac775f2d42a611cdfcd1fb217ee719630c4175"
uuid = "410a4b4d-49e4-4fbc-ab6d-cb71b17b3775"
version = "0.1.6"

[[deps.URIs]]
git-tree-sha1 = "074f993b0ca030848b897beff716d93aca60f06a"
uuid = "5c2747f8-b7ea-4ff2-ba2e-563bfd36b1d4"
version = "1.4.2"

[[deps.UUIDs]]
deps = ["Random", "SHA"]
uuid = "cf7118a7-6976-5b1a-9a39-7adc72f591a4"

[[deps.Unicode]]
uuid = "4ec0a83e-493e-50e2-b9ac-8f72acf5a8f5"

[[deps.UnicodeFun]]
deps = ["REPL"]
git-tree-sha1 = "53915e50200959667e78a92a418594b428dffddf"
uuid = "1cfade01-22cf-5700-b092-accc4b62d6e1"
version = "0.4.1"

[[deps.Unzip]]
git-tree-sha1 = "ca0969166a028236229f63514992fc073799bb78"
uuid = "41fe7b60-77ed-43a1-b4f0-825fd5a5650d"
version = "0.2.0"

[[deps.Wayland_jll]]
deps = ["Artifacts", "Expat_jll", "JLLWrappers", "Libdl", "Libffi_jll", "Pkg", "XML2_jll"]
git-tree-sha1 = "ed8d92d9774b077c53e1da50fd81a36af3744c1c"
uuid = "a2964d1f-97da-50d4-b82a-358c7fce9d89"
version = "1.21.0+0"

[[deps.Wayland_protocols_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "4528479aa01ee1b3b4cd0e6faef0e04cf16466da"
uuid = "2381bf8a-dfd0-557d-9999-79630e7b1b91"
version = "1.25.0+0"

[[deps.XML2_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Libiconv_jll", "Pkg", "Zlib_jll"]
git-tree-sha1 = "93c41695bc1c08c46c5899f4fe06d6ead504bb73"
uuid = "02c8fc9c-b97f-50b9-bbe4-9be30ff0a78a"
version = "2.10.3+0"

[[deps.XSLT_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Libgcrypt_jll", "Libgpg_error_jll", "Libiconv_jll", "Pkg", "XML2_jll", "Zlib_jll"]
git-tree-sha1 = "91844873c4085240b95e795f692c4cec4d805f8a"
uuid = "aed1982a-8fda-507f-9586-7b0439959a61"
version = "1.1.34+0"

[[deps.Xorg_libX11_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Xorg_libxcb_jll", "Xorg_xtrans_jll"]
git-tree-sha1 = "5be649d550f3f4b95308bf0183b82e2582876527"
uuid = "4f6342f7-b3d2-589e-9d20-edeb45f2b2bc"
version = "1.6.9+4"

[[deps.Xorg_libXau_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "4e490d5c960c314f33885790ed410ff3a94ce67e"
uuid = "0c0b7dd1-d40b-584c-a123-a41640f87eec"
version = "1.0.9+4"

[[deps.Xorg_libXcursor_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Xorg_libXfixes_jll", "Xorg_libXrender_jll"]
git-tree-sha1 = "12e0eb3bc634fa2080c1c37fccf56f7c22989afd"
uuid = "935fb764-8cf2-53bf-bb30-45bb1f8bf724"
version = "1.2.0+4"

[[deps.Xorg_libXdmcp_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "4fe47bd2247248125c428978740e18a681372dd4"
uuid = "a3789734-cfe1-5b06-b2d0-1dd0d9d62d05"
version = "1.1.3+4"

[[deps.Xorg_libXext_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Xorg_libX11_jll"]
git-tree-sha1 = "b7c0aa8c376b31e4852b360222848637f481f8c3"
uuid = "1082639a-0dae-5f34-9b06-72781eeb8cb3"
version = "1.3.4+4"

[[deps.Xorg_libXfixes_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Xorg_libX11_jll"]
git-tree-sha1 = "0e0dc7431e7a0587559f9294aeec269471c991a4"
uuid = "d091e8ba-531a-589c-9de9-94069b037ed8"
version = "5.0.3+4"

[[deps.Xorg_libXi_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Xorg_libXext_jll", "Xorg_libXfixes_jll"]
git-tree-sha1 = "89b52bc2160aadc84d707093930ef0bffa641246"
uuid = "a51aa0fd-4e3c-5386-b890-e753decda492"
version = "1.7.10+4"

[[deps.Xorg_libXinerama_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Xorg_libXext_jll"]
git-tree-sha1 = "26be8b1c342929259317d8b9f7b53bf2bb73b123"
uuid = "d1454406-59df-5ea1-beac-c340f2130bc3"
version = "1.1.4+4"

[[deps.Xorg_libXrandr_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Xorg_libXext_jll", "Xorg_libXrender_jll"]
git-tree-sha1 = "34cea83cb726fb58f325887bf0612c6b3fb17631"
uuid = "ec84b674-ba8e-5d96-8ba1-2a689ba10484"
version = "1.5.2+4"

[[deps.Xorg_libXrender_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Xorg_libX11_jll"]
git-tree-sha1 = "19560f30fd49f4d4efbe7002a1037f8c43d43b96"
uuid = "ea2f1a96-1ddc-540d-b46f-429655e07cfa"
version = "0.9.10+4"

[[deps.Xorg_libpthread_stubs_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "6783737e45d3c59a4a4c4091f5f88cdcf0908cbb"
uuid = "14d82f49-176c-5ed1-bb49-ad3f5cbd8c74"
version = "0.1.0+3"

[[deps.Xorg_libxcb_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "XSLT_jll", "Xorg_libXau_jll", "Xorg_libXdmcp_jll", "Xorg_libpthread_stubs_jll"]
git-tree-sha1 = "daf17f441228e7a3833846cd048892861cff16d6"
uuid = "c7cfdc94-dc32-55de-ac96-5a1b8d977c5b"
version = "1.13.0+3"

[[deps.Xorg_libxkbfile_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Xorg_libX11_jll"]
git-tree-sha1 = "926af861744212db0eb001d9e40b5d16292080b2"
uuid = "cc61e674-0454-545c-8b26-ed2c68acab7a"
version = "1.1.0+4"

[[deps.Xorg_xcb_util_image_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Xorg_xcb_util_jll"]
git-tree-sha1 = "0fab0a40349ba1cba2c1da699243396ff8e94b97"
uuid = "12413925-8142-5f55-bb0e-6d7ca50bb09b"
version = "0.4.0+1"

[[deps.Xorg_xcb_util_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Xorg_libxcb_jll"]
git-tree-sha1 = "e7fd7b2881fa2eaa72717420894d3938177862d1"
uuid = "2def613f-5ad1-5310-b15b-b15d46f528f5"
version = "0.4.0+1"

[[deps.Xorg_xcb_util_keysyms_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Xorg_xcb_util_jll"]
git-tree-sha1 = "d1151e2c45a544f32441a567d1690e701ec89b00"
uuid = "975044d2-76e6-5fbe-bf08-97ce7c6574c7"
version = "0.4.0+1"

[[deps.Xorg_xcb_util_renderutil_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Xorg_xcb_util_jll"]
git-tree-sha1 = "dfd7a8f38d4613b6a575253b3174dd991ca6183e"
uuid = "0d47668e-0667-5a69-a72c-f761630bfb7e"
version = "0.3.9+1"

[[deps.Xorg_xcb_util_wm_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Xorg_xcb_util_jll"]
git-tree-sha1 = "e78d10aab01a4a154142c5006ed44fd9e8e31b67"
uuid = "c22f9ab0-d5fe-5066-847c-f4bb1cd4e361"
version = "0.4.1+1"

[[deps.Xorg_xkbcomp_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Xorg_libxkbfile_jll"]
git-tree-sha1 = "4bcbf660f6c2e714f87e960a171b119d06ee163b"
uuid = "35661453-b289-5fab-8a00-3d9160c6a3a4"
version = "1.4.2+4"

[[deps.Xorg_xkeyboard_config_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Xorg_xkbcomp_jll"]
git-tree-sha1 = "5c8424f8a67c3f2209646d4425f3d415fee5931d"
uuid = "33bec58e-1273-512f-9401-5d533626f822"
version = "2.27.0+4"

[[deps.Xorg_xtrans_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "79c31e7844f6ecf779705fbc12146eb190b7d845"
uuid = "c5fb5394-a638-5e4d-96e5-b29de1b5cf10"
version = "1.4.0+3"

[[deps.Zlib_jll]]
deps = ["Libdl"]
uuid = "83775a58-1f1d-513f-b197-d71354ab007a"
version = "1.2.12+3"

[[deps.Zstd_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl"]
git-tree-sha1 = "c6edfe154ad7b313c01aceca188c05c835c67360"
uuid = "3161d3a3-bdf6-5164-811a-617609db77b4"
version = "1.5.4+0"

[[deps.fzf_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "868e669ccb12ba16eaf50cb2957ee2ff61261c56"
uuid = "214eeab7-80f7-51ab-84ad-2988db7cef09"
version = "0.29.0+0"

[[deps.libaom_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "3a2ea60308f0996d26f1e5354e10c24e9ef905d4"
uuid = "a4ae2306-e953-59d6-aa16-d00cac43593b"
version = "3.4.0+0"

[[deps.libass_jll]]
deps = ["Artifacts", "Bzip2_jll", "FreeType2_jll", "FriBidi_jll", "HarfBuzz_jll", "JLLWrappers", "Libdl", "Pkg", "Zlib_jll"]
git-tree-sha1 = "5982a94fcba20f02f42ace44b9894ee2b140fe47"
uuid = "0ac62f75-1d6f-5e53-bd7c-93b484bb37c0"
version = "0.15.1+0"

[[deps.libblastrampoline_jll]]
deps = ["Artifacts", "Libdl", "OpenBLAS_jll"]
uuid = "8e850b90-86db-534c-a0d3-1478176c7d93"
version = "5.1.1+0"

[[deps.libfdk_aac_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "daacc84a041563f965be61859a36e17c4e4fcd55"
uuid = "f638f0a6-7fb0-5443-88ba-1cc74229b280"
version = "2.0.2+0"

[[deps.libpng_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Zlib_jll"]
git-tree-sha1 = "94d180a6d2b5e55e447e2d27a29ed04fe79eb30c"
uuid = "b53b4c65-9356-5827-b1ea-8c7a1a84506f"
version = "1.6.38+0"

[[deps.libvorbis_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Ogg_jll", "Pkg"]
git-tree-sha1 = "b910cb81ef3fe6e78bf6acee440bda86fd6ae00c"
uuid = "f27f6e37-5d2b-51aa-960f-b287f2bc3b7a"
version = "1.3.7+1"

[[deps.nghttp2_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "8e850ede-7688-5339-a07c-302acd2aaf8d"
version = "1.48.0+0"

[[deps.p7zip_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "3f19e933-33d8-53b3-aaab-bd5110c3b7a0"
version = "17.4.0+0"

[[deps.x264_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "4fea590b89e6ec504593146bf8b988b2c00922b2"
uuid = "1270edf5-f2f9-52d2-97e9-ab00b5d0237a"
version = "2021.5.5+0"

[[deps.x265_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "ee567a171cce03570d77ad3a43e90218e38937a9"
uuid = "dfaa095f-4041-5dcd-9319-2fabd8486b76"
version = "3.5.0+0"

[[deps.xkbcommon_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Wayland_jll", "Wayland_protocols_jll", "Xorg_libxcb_jll", "Xorg_xkeyboard_config_jll"]
git-tree-sha1 = "9ebfc140cc56e8c2156a15ceac2f0302e327ac0a"
uuid = "d8fb68d0-12a3-5cfd-a85a-d49703b185fd"
version = "1.4.1+0"
"""

# ╔═╡ Cell order:
# ╟─6046ae30-c151-11ed-19df-473395d5ddb2
# ╟─60ed736c-ba77-41c8-a858-7376cf119e9e
# ╟─36839e00-d631-4e8c-863e-d725ed2f741a
# ╟─a3e77c4e-9b1e-4867-91e2-df2de22bcabe
# ╟─ea1f30d7-6cb6-4911-9ef4-894e4f7516a8
# ╟─54db757e-8487-47f2-b725-f57e4a1836e6
# ╟─19743b8d-b34a-408d-8546-d8806ab69f42
# ╟─14ab972e-9ca7-4000-a79c-5b63796d6fe0
# ╟─dbb062dc-fecf-44af-addd-236794857a8a
# ╟─b4166dbc-38f8-43c6-9be0-9a8ead4ae71d
# ╟─39bfb551-0034-40b5-bb4f-2cb96551b7da
# ╟─1a5f148d-1124-434a-a12e-be29673d8fdd
# ╟─9e14b8c4-00c3-43f3-b4ac-555229f0adbc
# ╟─40bd6a71-a40b-4449-889e-6bed2a9ba1ed
# ╟─89ed5717-0c6c-4970-82cd-8b9d371fac2d
# ╟─a789ae63-04ba-4f35-a401-6b7f9c514c04
# ╟─c98a81f7-6bbb-40a5-b887-bbc74c911c44
# ╟─24f2b9dc-c704-4458-9e86-86f8a4743c6e
# ╟─88929730-f0da-4094-aaf5-ba0b31acad1b
# ╟─f131a27b-4194-4dac-a852-1caf39ab2bd6
# ╟─c17b7eb0-776d-42a7-b0ba-460d2bedf69f
# ╟─454e7f21-0c2b-45f4-8110-25ca7893d380
# ╟─a1b3afbc-7b7e-4b4d-b610-da4154f1f4f6
# ╟─c1491d55-f924-4303-8dc7-1232a488dbe7
# ╟─3c6866f4-7e57-4215-a937-a763b215dfa7
# ╟─062b14ae-48ca-45eb-88b9-aa2ed2078e6c
# ╟─173b488f-b45a-4a8e-baa6-02d4aa522d0e
# ╟─57576b33-2697-4973-a88d-e6a482cd7cc0
# ╟─a9c25d3c-e602-4324-ab61-cd8d315f71eb
# ╟─51733e18-0396-456d-83bf-a4cf627b00a7
# ╟─878ec5df-10bc-45b5-bcdf-898a27dfb5c6
# ╟─9b35c758-ba89-499e-a02c-4663f90737e5
# ╟─d4bb5bfe-8682-4ef9-a850-994a9b636acc
# ╟─bc5f817f-3481-4fb8-a611-3f63586f64a7
# ╟─940ea348-4b47-48f5-acee-ae5145e5fee0
# ╟─3490d5d6-415c-4e77-b50f-3e86667c1bc4
# ╟─69995c4f-25a8-4c6b-b41a-d608d4eadc03
# ╟─93200014-954b-4b1e-8fdc-8325ace0abcc
# ╟─8ce37301-4417-4c01-97ba-31f50cf6dc64
# ╟─00e4abfc-a5d7-43c1-b393-f4e6640048e9
# ╟─494634d9-8c74-4068-bf78-86d078f23177
# ╟─faed2ee7-5cf1-44cb-b42c-2ed2ecdb69b9
# ╟─ed0f7556-b035-4454-adfe-f4f24051ed66
# ╟─2551b81d-c640-4974-b4ea-3ba1368e879a
# ╟─5a6a70ed-852c-4a13-9e94-182b9f9b01bf
# ╟─d4d2e11c-9f47-43e2-aadd-1e8771a9832b
# ╟─ff720a5a-3d3a-4850-893a-bc48c980794d
# ╟─e2f49996-30a0-4d2d-8052-2a912e07e7c8
# ╟─2daa99e1-3adf-4781-8bc1-a17aa9e0383a
# ╟─864c8dd3-5e47-41ce-9c48-649a0663e29d
# ╟─a105af31-af7b-47c1-877d-5fc662f3efb5
# ╟─6540545c-80c0-40b9-bab0-3b17527a68dd
# ╟─06594e62-03e0-4c1e-88c9-198d89f9b002
# ╟─84fab7a4-18aa-4bc3-8db3-3d504774e3c4
# ╟─7bfc57e7-76ef-4bc4-b26c-c42686788ca7
# ╟─4d3deda9-325d-4357-a50d-fd975588aa5c
# ╟─a6b9ce84-1eeb-4d85-bc4b-540641b9bf60
# ╟─394c2549-30d1-47bb-8136-477b9e659727
# ╟─a640c720-4c19-41c9-9dd9-aea6b965cb9c
# ╟─9e4a81fc-ded7-4fd0-9f1b-119a249926df
# ╟─c73a3366-9e83-4696-be15-43ec3640e17e
# ╟─5f4a7c08-1844-4999-abf5-26a7bfdf97b1
# ╟─3765c3aa-fe8c-456c-ad89-77c1e4f72bec
# ╟─5225b53a-d21f-45e1-993c-3b0dcaa355ae
# ╟─433a96e1-b036-4f7d-a0ff-b99acf927488
# ╟─4162d44e-0cab-4d73-913b-547688d722c1
# ╟─efeb2d68-e71c-479f-b3ff-1ba7ded4a893
# ╟─4d099574-68d0-4a15-93bd-2ebf4e05116a
# ╟─ff4dd614-3b3a-4aa0-b994-87d8efd21ae5
# ╟─fd22fe93-b0a2-467b-a4fb-ff810f011d52
# ╟─593f67a9-e3de-4964-84cc-5814d88717a1
# ╟─7cafc090-d619-49f3-a339-2195ab38ed7c
# ╟─e3fb0987-3a7b-4c3f-95ef-ce855bd481db
# ╟─813ac96d-fab3-47d0-95ad-fb0f2662af74
# ╟─91f75eed-a603-4748-a4ad-c5782b882c86
# ╟─1aba0df0-c7c6-4ee0-8da5-6e79155729dd
# ╟─23211c53-5475-442e-b1f3-0cf94c58f38a
# ╟─cd857e39-4177-4e53-9389-12a2d4468154
# ╟─c57e60fe-f578-421c-b9d0-ce65b6e0599e
# ╟─89781173-14a3-4db2-8f27-ed4f3deb2339
# ╟─89d61705-0fc9-445f-8e36-3a7cdd84191c
# ╟─e8e2392e-60ba-4687-9ba6-2a0252a0ce0f
# ╟─6dc2605f-1aa1-4d8a-96b8-7b846be8aa40
# ╟─afcb1930-d7b1-4b12-b4be-88b9d53a5bee
# ╟─9d033013-7b5e-4233-8eae-b6caf884cc6b
# ╟─cbe05382-5bbc-4021-8a8e-864abebc28b0
# ╟─d67dffd4-bd85-4703-86f8-f430359944fc
# ╟─2d955598-f428-4b93-9125-ec27d379c1b0
# ╟─0897295b-11bd-4c8d-b913-c3c636106738
# ╟─1c4d0148-7cf0-4e0f-9a76-f754c4a2ecda
# ╟─bfceef2c-24a8-458b-8034-7a9f595dc971
# ╟─b514f905-7bb6-4c47-9aa4-388859cfed4e
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
