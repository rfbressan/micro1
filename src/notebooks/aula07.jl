### A Pluto.jl notebook ###
# v0.19.22

using Markdown
using InteractiveUtils

# ╔═╡ 01c07bb0-d97b-11ed-2e23-b7640360674e
begin
	using PlutoUI
	using Plots
	using LaTeXStrings
	using Measures
	import PlutoUI: combine	
	theme(:ggplot2)
	gr(size=(800,600), lw = 2, fontfamily = "Computer Modern", grid=true, tickfontsize = 12, guidefontsize=16, framestyle=:box, margin=3mm, right_margin=7mm, guidefonthalign=:right, guidefontvalign=:top)	
end

# ╔═╡ bbe89602-3584-4e7b-9e57-22a71bcc81b9
PlutoUI.TableOfContents(title="Sumário", indent=true)

# ╔═╡ 37cc49c9-f121-4bf5-addf-d45e91d101e9
html"<button onclick=present()>Apresentação</button>"

# ╔═╡ 0b8abe06-ec2d-4bef-8189-fb0f72450b7d
md"""
# Efeitos renda e substituição $~~~$ $(Resource("https://www1.udesc.br/imagens/id_submenu/899/cor_horizontal_rgb.jpg", :width => 150))
"""

# ╔═╡ 4b547fd9-8a81-4234-a908-508d88981bbe
md"
* **Disciplina:** 23MICI - Microeconomia I
* **Docente:** [Paulo Victor da Fonseca](https://pvfonseca.github.io)
* **Contato:** [paulo.fonseca@udesc.br](mailto:paulo.fonseca@udesc.br)
"

# ╔═╡ e1cb5302-b3d0-4e95-bf66-98d8e182809e
md"""
!!! danger "Aviso"
	O texto que segue não tem a menor pretensão de originalidade. Ele serve apenas como registro dos principais princípios, conceitos e técnicas analíticas que são trabalhados em sala de aula.
"""

# ╔═╡ 65bf3c01-87e4-42ae-81a0-ee200f0b4eb7
md"
## Funções de demanda Marshallianas
"

# ╔═╡ fc5e054c-dd62-4be1-b62f-de72f4b7c9e0
md"""
* Vimos que geralmente será possível solucionar as condições necessárias de primeira ordem associadas a um problema de maximização de utilidade para os níveis ótimos $x_1^*, \dots, x_n^*$ (e para o multiplicador de Lagrange, $\lambda$) como funções do vetor de preços e da renda
* Matematicamente, essa solução pode ser expressa por um sistema de $n$ funções de **demanda Marshallianas** da forma:

$$\begin{eqnarray}x_1^* &=& x_1(p_1, \dots, p_n, I) \\ x_2^* &=& x_2(p_1, \dots, p_n, I) \\ &\vdots& \tag{1}\\ x_n^* &=& x_n(p_1, \dots, p_n, I)\end{eqnarray}$$
* Uma vez conhecidos todos os preços, a renda e a forma funcional das funções demanda, podemos fazer "predições" do quanto de cada bem o consumidor irá consumir
* Este conjunto de demandas Marshallianas evidencia que os preços e as rendas são _variáveis exógenas_, i.e., tratados como parâmetros sobre os quais o consumidor não tem nenhum controle nesse estágio da análise
* Mudanças nos valores desses parâmetros deslocarão a restrição orçamentária e, consequentemente, alterar as escolhas ótimas do indivíduo
* Nosso objetivo agora é estudar exatamente essas questões
* Especificamente, $\partial x/\partial I$ e $\partial x/\partial p_x$ para um bem arbitrário $x$
* Mais tarde estudaremos o efeito-preço cruzado $\partial x/\partial p_y$ para um par de bens arbitrário $x$ e $y$
"""

# ╔═╡ c9b3f87f-2288-4c45-8c58-c4ae269222fb
md"""
!!! info "Homogeneidade das funções demanda Marshallianas"
	As funções de demanda Marshallianas são homogêneas de grau zero em todos os preços e renda.
"""

# ╔═╡ 13a97a0d-7f2c-4845-8f3c-58b9c94452cc
md"
* Portanto, variações de mesma proporção nos preços e na renda não afetam as quantidades físicas dos bens demandados
* Matematicamente:

$$x_i^* = x_i(p_1, \dots, p_n, I) = x_i(tp_1, \dots, tp_n, tI), \qquad \forall t > 0$$
* Este resultado mostra que, em teoria, as demandas individuais não serão afetadas por eventos de **inflação pura**
* No caso de processos inflacionários que não sejam puros (i.e., que mudem a estrutura de preços relativos) este não seria o caso
* A homogeneidade de grau zero das funções de demanda Marshallianas é um resultado direto da hipótese de maximização de utilidade
* Funções de demanda derivadas do problema de maximização de utilidade serão homogêneas!
* Por sua vez, funções de demanda que não sejam homogêneas não podem refletir maximização de utilidade (a não ser que preços entrem diretamente na função utilidade do indivíduo - e.g., bens que apresentem o *efeito esnobe*)
"

# ╔═╡ bf867f18-2f3b-49c0-8d6c-d7c6874da1cc
md"
> **Exercício 1**. Mostre que as funções de demanda associadas à função utilidade do tipo Cobb-Douglas:
>
> $$U(x,y) = x^{0,3}y^{0,7}$$
>
> são homogêneas de grau zero.
"

# ╔═╡ 81dc3a8d-93c8-4e56-90b7-b4289e833d73
md"
> **Exercício 2**. Mostre que as funções de demanda associadas à função utilidade do tipo CES:
>
> $$U(x,y) = x^{0,5} + y^{0,5}$$
>
> são homogêneas de grau zero.
"

# ╔═╡ 5405d9ac-594b-4ed7-badb-5eb39dd9f704
md"
## Efeitos de variações na renda
"

# ╔═╡ 5596e6c9-7e5e-4fff-afb0-641ae1179b6c
md"""
Efeito de um aumento na renda
$(Resource("https://raw.githubusercontent.com/pvfonseca/micro1/main/notas/figures/aula7_fig1.PNG", :width=>800))
Fonte: Nicholson e Snyder (2019)
"""

# ╔═╡ 797cbdee-cce8-4199-b42a-51a7caf27222
md"""
* À medida que o poder de compra de um indivíduo aumenta, é natural que a quantidade consumida de cada bem também aumente
* A figura anterior ilustra o efeito de um aumento de renda sobre as quantidades ótimas consumidas dos bens $x$ e $y$
* À medida que a renda (poder de compra) aumenta, a quantidade demandada dos bens $x$ e $y$ também aumenta
* Note que as retas orçamentárias são paralelas, evidenciando o fato de que apenas a renda está variando, mantendo os preços relativos dos bens $x$ e $y$
* Dado que os preços relativos $p_x/p_y$ permanecem constantes, as condições de maximização de utilidade requerem que a TMS também permaneça constante à medida que o indivíduo se desloca para níveis mais altos de satisfação
* Portanto, a TMS é a mesma nos pontos $(x_1, y_1), (x_2, y_2)$ e $(x_3, y_3)$
* A figura ilustra o caso em que as quantidades demandadas de $x$ e $y$ aumentam com o aumento de renda, isto é:

$$\frac{\partial x}{\partial I} > 0 \quad \text{ e } \quad \frac{\partial y}{\partial I} > 0$$

* Essa é considerada a situação usual, e bens que exibem essa propriedade são denominados **bens normais** sobre o intervalo de variação de renda observada
* No entanto, para alguns bens, a quantidade ótima demandada pode decrescer quando a renda aumenta em alguns intervalos
* Um bem $z$ para o qual temos $\partial z/\partial I < 0$ é denominado um **bem inferior**
"""

# ╔═╡ e8cbe9b4-0dc2-4f40-a4c5-19e1a80de0ec
md"""
Curvas de indiferença exibindo inferioridade
$(Resource("https://raw.githubusercontent.com/pvfonseca/micro1/main/notas/figures/aula7_fig2.PNG", :width=>800))
Fonte: Nicholson e Snyder (2019)
"""

# ╔═╡ 7231d8b0-561e-4ea2-8a0d-0e032d19a9b8
md"""
* Neste caso, o bem $z$ é denominado inferior pois sua quantidade demandada decresce à medida que a renda aumenta
* Note que as curvas de indiferença não precisam apresentar um formato "estranho" para exibir inferioridade
* As curvas de indiferença correspondentes aos bens $y$ e $z$ continuam a apresentar uma TMS decrescente
* O bem $z$ é inferior em função da forma como se relaciona com os outros bens disponíveis, e não devido a alguma peculiaridade exclusiva a ele
"""

# ╔═╡ ee1102cc-4321-46dc-a792-0a2735e5c81c
md"""
!!! correct "Definição 7.1 - Bens normais e bens inferiores"
	Um bem $x_i$ para o qual $\partial x_i/\partial I<0$ sobre algum intervalo de variação da renda é denominado um **bem inferior** nesse intervalo

	Um bem $x_i$ para o qual $\partial x_i/\partial I\geq0$ sobre algum intervalo de variação da renda é denominado um **bem normal** (ou não-inferior) nesse intervalo
"""

# ╔═╡ b7d62099-f824-4278-a5bf-85080b9f5687
md"
## Efeitos de variações no preço de um bem
"

# ╔═╡ 0e3aa486-0d17-41df-99e5-27239d913d04
md"
* O efeito de uma variação no preço de um bem é mais complexo de ser analisado do que os efeitos de variação na renda
* Isso deve-se ao fato de que, geometricamente, uma variação de preços altera não só os interceptos da restrição orçamentária mas, também, sua inclinação
* Consequentemente, a nova escolha ótima derivada do problema de maximização de utilidade envolve não apenas uma mudanças para uma nova curva de indiferença mas, também, alterações em sua TMS
* Analiticamente, quando o preço de um bem é alterado, dois efeitos distintos entram em ação:
    1. Efeito substituição
    2. Efeito renda
"

# ╔═╡ d750c913-d173-453a-b015-7789c4ba86b9
md"""
!!! info "Efeito substituição"
	Mesmo que o indivíduo permaneça sobre a mesma curva de indiferença, os padrões de alocação de consumo seriam modificados de forma a equalizar a TMS à nova razão entre os preços dos bens
"""

# ╔═╡ e16ff625-5f5d-4899-b354-854631001257
md"""
!!! info "Efeito renda"
	O efeito renda emerge pois uma alteração no preço de um bem, necessariamente, afeta a renda "real" do invidíduo. Este consumidor não pode permanecer na mesma curva de indiferença e deve, portanto, deslocar-se para uma nova
"""

# ╔═╡ 7c9b0a3a-2cc3-4051-81c6-552f5c30e4c8
md"""
!!! warning "Efeito renda e efeito substituição"
	Inicialmente analisaremos o efeito renda e o efeito substituição sob uma abordagem gráfica. Nas próximas aulas daremos um tratamento mais formal.
"""

# ╔═╡ 7fdb36b3-d261-4b3a-8b95-dc544590dc61
md"""
Efeitos de uma redução em $p_x$
$(Resource("https://raw.githubusercontent.com/pvfonseca/micro1/main/notas/figures/aula7_fig3.PNG", :width=>800))
Fonte: Nicholson e Snyder (2019)
"""

# ╔═╡ 97eede56-632c-456a-95d8-8bf8c4d0b660
md"
* O efeito substituição e o efeito renda são ilustrados, para uma situação de redução no preço do bem $x$, na figura anterior
* Por hipótese, a cesta de consumo que maximiza a utilidade dada a restrição orçamentária em uma situação anterior à redução no preço $p_x$ é dada pelo ponto $(x^*, y^*)$
* Sob essa situação inicial, a restrição orçamentária é dada por:
$$I = p_x^1 x + p_y y$$
* Após a redução no preço do bem $x$, a nova restrição orçamentária é dada por:
$$I = p_x^2 x + p_y y$$
* Ao novo nível de preços, a nova cesta de consumo que maximiza utilidade é dada por $(x^{**}, y^{**})$, onde a nova restrição orçamentária é tangente à curva de indiferença $U_2$
* O movimento para este novo pondo ótimo pode ser decomposto, analiticamente, em dois efeitos
"

# ╔═╡ 7ccb8c3c-d83a-4b97-9daa-1bf9ffde90f8
md"""
> **1. Efeito substituição**: a mudança na inclinação da restrição orçamentária, motivada por uma redução do preço $p_x$, motivaria uma mudança para o ponto $B$ na figura. Se mantivermos, conceitualmente, a renda real (i.e., a utilidade) constante - ou seja, a mesma curva de indiferença - um preço relativo mais baixo do bem $x$ causa a escolha ótima deste consumidor a se alterar de $(x^*, y^*)$ para o ponto $B$.
>
> **2. Efeito renda**: o deslocamento adicional do ponto $B$ para o ponto $(x^{**}, y^{**})$ é analiticamente idêntido ao que vimos anteriormente sobre os efeitos de mudanças na renda. Como o preço do bem $x$ foi reduzido, esse indivíduo dispõe de uma renda "real" mais alta e, portanto, pode atingir um nível de utilidade mais alta ($U_2$). Se $x$ é um bem normal, sua demanda aumentará em resposta ao aumento no poder de compra deste consumidor
"""

# ╔═╡ 9ea65fac-c148-49b1-9d5d-a570f84d6b1f
md"""
* De maneira geral, o resultado de uma redução no preço do bem $x$ é um aumento na quantidade demandada por este bem
* Em termos práticos, este argumento "sequencial" não é observado

    ⚠️ O ponto $B$ nunca é observado, apenas as duas opções ótimas são refletidas no comportamento observável

* No entanto, a noção de efeitos substituição e renda é analiticamente útil já que mostra que uma mudança de preços afeta a quantidade ótima demandada de $x$ de duas formas conceitualmente distintas
* Isso terá um papel fundamental na nossa análise de teoria da demanda
"""

# ╔═╡ 117438f6-545c-481a-9299-07eefbb3e6d1
md"""
Efeitos de um aumento em $p_x$
$(Resource("https://raw.githubusercontent.com/pvfonseca/micro1/main/notas/figures/aula7_fig4.PNG", :width=>800))
Fonte: Nicholson e Snyder (2019)
"""

# ╔═╡ 4b23bce8-30a9-4a8a-8962-8e3f982e0217
md"""
* Um aumento no preço do bem $x$ pode ser analisado utilizando-se argumentos similares
* Neste caso, a restrição orçamentária é deslocada "para dentro", refletindo o aumento do preço do bem $x$ de $p_x^1$ para $p_x^2$
* Novamente, o movimento do ponto inicial de maximização de utilidade $(x^*, y^*)$ para a nova cesta de consumo ótima $(x^{**}, y^{**})$ também pode ser decomposto em dois efeitos
"""

# ╔═╡ b4838609-c6da-46c6-b5a0-40837fd4748c
md"""
> **1. Efeito substituição**: mesmo que este indivíduo pudesse permanecer sobre a mesma curva de indiferença $U_2$, ainda há um incentivo para substituir bem $y$ por bem $x$ e realizar um movimento ao longo da curva de indiferença $U_2$ para o ponto $B$
>
> **2. Efeito renda**: no entanto, como o poder de compra deste consumidor foi reduzido pelo aumento no preço do bem $x$, deverá haver um deslocamento para um nível mais baixo de utilidade $U_1$
"""

# ╔═╡ 84574925-491b-4018-b7ea-78e8dbe72343
md"""
!!! warning ""
	Note que, neste caso, os efeitos substituição e renda se movem na mesma direção, fazendo com que a quantidade demandada de $x$ diminua em resposta a um aumento no seu preço
"""

# ╔═╡ 54c00faf-8300-4b2f-a06d-c8765546f11c
md"""
### Efeitos de variações de preços para bens inferiores
"""

# ╔═╡ 4d031124-1553-45ba-8e5f-1380c3e8963f
md"
* Nos casos analisados até agora, os efeitos renda e substituição operam na mesma direção e, portanto, tendem a reforçar um ao outro
* Para uma redução nos preços, ambos fazem com que uma quantidade maior do bem seja demandada
* Já para um aumento de preços, ambos fazem com que uma quantidade menor do bem seja demandada
* Esta análise é válida para o caso de bens normais (não-inferiores)
* No entanto, a possibilidade de existência de bens inferiores complica a análise
* Neste caso, os efeitos renda e substituição operam em direções opostas e, consequentemente, o efeito total de uma variação de preços é indeterminado
"

# ╔═╡ c287ac08-a348-44e6-bf2e-e39ee58818ba
md"""
* Uma redução de preços, e.g., sempre fará com que um indivíduo consuma mais de um bem devido ao efeito substituição
* No entanto, caso o bem seja inferior, o aumento no poder de compra causado por uma redução de preços, pode fazer com que haja uma redução na demanda por este bem
* Portanto, o resultado é indeterminado!
* O efeito substituição tende a aumentar a quantidade demandada do bem inferior, enquanto o efeito renda tende a reduzir esta quantidade
* Em contraste com a situação de bens normais, neste caso não é possível fazer predições acerca da direção do efeito total de uma alteração em $p_x$ sobre a quantidade ótima demandada de $x$
"""

# ╔═╡ d8c6c652-2b5a-4b75-9b0d-f1945fd398c8
md"""
### Paradoxo de Giffen
"""

# ╔═╡ 96c236d5-417a-4125-8603-eba33fd20143
md"""
* Se o efeito renda de uma variação de preços for forte o suficiente, é possível que a mudança nos preços e a mudança resultante na quantidade demandada podem ocorrer na mesma direção
* Este resultado, conhecido como **paradoxo de Giffen**, foi observado pelo economista inglês Robert Giffen no século XIX na Irlanda
"""

# ╔═╡ b72454b5-5e70-4629-a8fa-dae8230677fb
md"""
$(Resource("https://www.hetwebsite.net/het/profiles/image/giffen.jpg", width=>300))
[Robert Giffen (1837-1910)](https://www.hetwebsite.net/het/profiles/giffen.htm) - economista inglês
"""

# ╔═╡ c338705b-99bb-4ca2-bb14-dfa69bb13745
md"""
* Na Irlanda do século XIX, frente a um aumento no preço das batatas, reportou-se um aumento no consumo deste bem
* Este resultado peculiar poderia ser explicado pela magnitude do efeito renda associado a um aumento nos preços das batatas
* As batatas, além de serem bens inferiores, também representavam uma grande parcela da renda dos irlandeses
* Portanto, um aumento no preço das batatas reduziria de forma substancial a renda real dos consumidores
* Os irlandeses seriam, então, forçados a reduzir o consumo de outros bens alimentícios considerados de luxo para adquirirem mais batatas
* Mesmo que essa interpretação dos fatos seja historicamente improvável, a possibilidade de um aumento na quantidade demandada frente a um aumento no preço de um bem passou a ser conhecida como **paradoxo de Giffen**
* O principal com essa interpretação é que ela desconsidera a observação de Alfred Marshall de que tanto fatores de oferta quanto de demanda devem ser considerados na análise de variações de preços
* Se os preços das batatas subiram devido à [crise na Irlanda](https://pt.wikipedia.org/wiki/Grande_fome_de_1845%E2%80%931849_na_Irlanda), neste caso, a oferta também seria reduzida
* Portanto, como seria possível um aumento na quantidade consumida?
* Além disso, dado que muitos irlandeses eram produtores de batatas, o aumento no preço da batata poderia significar um aumento de suas rendas reais
"""

# ╔═╡ 12a2761f-e67f-4db7-8574-19854d692d85
md"""
$(Resource("https://upload.wikimedia.org/wikipedia/commons/9/93/Famine_memorial_dublin.jpg", width=>600))
[Memorial às vítimas da fome em Dublin](https://pt.wikipedia.org/wiki/Grande_fome_de_1845%E2%80%931849_na_Irlanda)
"""

# ╔═╡ 3d68d1c9-27f1-4b60-b988-ea5399c2ebfe
md"""
!!! info "Robert Giffen e a Grande Fome Irlandesa"
	Para aqueles interessados, consultar [Dwyer e Lindsay (1984)](https://www.jstor.org/stable/1803318)
"""

# ╔═╡ 9373918d-2169-4c2a-ae12-4d822615f919
md"""
$(Resource("https://raw.githubusercontent.com/pvfonseca/micro1/main/notas/figures/aula7_fig5.PNG", :width=>400))
Fonte: Dwyer e Lindsay (1984)
"""

# ╔═╡ 71b56be9-1a14-4f33-a70a-9ceedcedc046
md"
## 📚 Bibliografia

DWYER, G. P.; LINDSAY C.M. [Robert Giffen and the Irish Potato](https://www.jstor.org/stable/1803318). American Economic Review, Vol. 74, No. 1, 1984 (pp. 188-192)

NICHOLSON, W.; SNYDER C. [Teoria microeconômica: Princípios básicos e aplicações](https://app.minhabiblioteca.com.br/books/9788522127030). Cengage Learning Brasil, 2019

VARIAN, H. R. [Microeconomia: uma abordagem moderna](https://app.minhabiblioteca.com.br/books/9788595155107). 9.ed. Rio de Janeiro: Elsevier, 2015
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
Plots = "~1.38.9"
PlutoUI = "~0.7.50"
"""

# ╔═╡ 00000000-0000-0000-0000-000000000002
PLUTO_MANIFEST_TOML_CONTENTS = """
# This file is machine-generated - editing it directly is not advised

julia_version = "1.8.5"
manifest_format = "2.0"
project_hash = "83ed028aeeaa556bec6cd9e7e98dbacbcf3fcd40"

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
git-tree-sha1 = "0635807d28a496bb60bc15f465da0107fb29649c"
uuid = "28b8d3ca-fb5f-59d9-8090-bfdbd6d07a71"
version = "0.72.0"

[[deps.GR_jll]]
deps = ["Artifacts", "Bzip2_jll", "Cairo_jll", "FFMPEG_jll", "Fontconfig_jll", "GLFW_jll", "JLLWrappers", "JpegTurbo_jll", "Libdl", "Libtiff_jll", "Pixman_jll", "Qt5Base_jll", "Zlib_jll", "libpng_jll"]
git-tree-sha1 = "99e248f643b052a77d2766fe1a16fb32b661afd4"
uuid = "d2c73de3-f751-5644-a686-071e5b155ba9"
version = "0.72.0+0"

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
git-tree-sha1 = "31e996f0a15c7b280ba9f76636b3ff9e2ae58c9a"
uuid = "682c06a0-de6a-54ab-a142-c8b1cf79cde6"
version = "0.21.4"

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
git-tree-sha1 = "e9d68fe4b5f78f215aa2f0e6e6dc9e9911d33048"
uuid = "4d8831e6-92b7-49fb-bdf8-b643e874388c"
version = "1.3.4"

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
git-tree-sha1 = "d321bf2de576bf25ec4d3e4360faca399afca282"
uuid = "bac558e1-5e72-5ebc-8fee-abe8a469f55d"
version = "1.6.0"

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
git-tree-sha1 = "186d38ea29d5c4f238b2d9fe6e1653264101944b"
uuid = "91a5bcdd-55d7-5caf-9e0b-520d859cae80"
version = "1.38.9"

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
git-tree-sha1 = "30449ee12237627992a99d5e30ae63e4d78cd24a"
uuid = "6c6a2e73-6563-6170-7368-637461726353"
version = "1.2.0"

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
git-tree-sha1 = "45a7769a04a3cf80da1c1c7c60caf932e6f4c9f7"
uuid = "82ae8749-77ed-4fe6-ae5f-f523153014b0"
version = "1.6.0"

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
git-tree-sha1 = "0b829474fed270a4b0ab07117dce9b9a2fa7581a"
uuid = "3bb67fe8-82b1-5028-8e26-92a6c54297fa"
version = "0.9.12"

[[deps.Tricks]]
git-tree-sha1 = "aadb748be58b492045b4f56166b5188aa63ce549"
uuid = "410a4b4d-49e4-4fbc-ab6d-cb71b17b3775"
version = "0.1.7"

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
git-tree-sha1 = "49ce682769cd5de6c72dcf1b94ed7790cd08974c"
uuid = "3161d3a3-bdf6-5164-811a-617609db77b4"
version = "1.5.5+0"

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
# ╟─01c07bb0-d97b-11ed-2e23-b7640360674e
# ╟─bbe89602-3584-4e7b-9e57-22a71bcc81b9
# ╟─37cc49c9-f121-4bf5-addf-d45e91d101e9
# ╟─0b8abe06-ec2d-4bef-8189-fb0f72450b7d
# ╟─4b547fd9-8a81-4234-a908-508d88981bbe
# ╟─e1cb5302-b3d0-4e95-bf66-98d8e182809e
# ╟─65bf3c01-87e4-42ae-81a0-ee200f0b4eb7
# ╟─fc5e054c-dd62-4be1-b62f-de72f4b7c9e0
# ╟─c9b3f87f-2288-4c45-8c58-c4ae269222fb
# ╟─13a97a0d-7f2c-4845-8f3c-58b9c94452cc
# ╟─bf867f18-2f3b-49c0-8d6c-d7c6874da1cc
# ╟─81dc3a8d-93c8-4e56-90b7-b4289e833d73
# ╟─5405d9ac-594b-4ed7-badb-5eb39dd9f704
# ╟─5596e6c9-7e5e-4fff-afb0-641ae1179b6c
# ╟─797cbdee-cce8-4199-b42a-51a7caf27222
# ╟─e8cbe9b4-0dc2-4f40-a4c5-19e1a80de0ec
# ╟─7231d8b0-561e-4ea2-8a0d-0e032d19a9b8
# ╟─ee1102cc-4321-46dc-a792-0a2735e5c81c
# ╟─b7d62099-f824-4278-a5bf-85080b9f5687
# ╟─0e3aa486-0d17-41df-99e5-27239d913d04
# ╟─d750c913-d173-453a-b015-7789c4ba86b9
# ╟─e16ff625-5f5d-4899-b354-854631001257
# ╟─7c9b0a3a-2cc3-4051-81c6-552f5c30e4c8
# ╟─7fdb36b3-d261-4b3a-8b95-dc544590dc61
# ╟─97eede56-632c-456a-95d8-8bf8c4d0b660
# ╟─7ccb8c3c-d83a-4b97-9daa-1bf9ffde90f8
# ╟─9ea65fac-c148-49b1-9d5d-a570f84d6b1f
# ╟─117438f6-545c-481a-9299-07eefbb3e6d1
# ╟─4b23bce8-30a9-4a8a-8962-8e3f982e0217
# ╟─b4838609-c6da-46c6-b5a0-40837fd4748c
# ╟─84574925-491b-4018-b7ea-78e8dbe72343
# ╟─54c00faf-8300-4b2f-a06d-c8765546f11c
# ╟─4d031124-1553-45ba-8e5f-1380c3e8963f
# ╟─c287ac08-a348-44e6-bf2e-e39ee58818ba
# ╟─d8c6c652-2b5a-4b75-9b0d-f1945fd398c8
# ╟─96c236d5-417a-4125-8603-eba33fd20143
# ╟─b72454b5-5e70-4629-a8fa-dae8230677fb
# ╟─c338705b-99bb-4ca2-bb14-dfa69bb13745
# ╟─12a2761f-e67f-4db7-8574-19854d692d85
# ╟─3d68d1c9-27f1-4b60-b988-ea5399c2ebfe
# ╟─9373918d-2169-4c2a-ae12-4d822615f919
# ╟─71b56be9-1a14-4f33-a70a-9ceedcedc046
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
