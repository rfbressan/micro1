### A Pluto.jl notebook ###
# v0.19.22

using Markdown
using InteractiveUtils

# ╔═╡ 793a6280-efb2-11ed-3468-ef3c73559ea4
begin
	using PlutoUI
	import PlutoUI: combine	
end

# ╔═╡ 9e821a05-c967-4ac3-b2de-131bd2941ef7
PlutoUI.TableOfContents(title="Sumário", indent=true)

# ╔═╡ 7732434b-580c-4ab7-b7c6-744a281245a9
html"<button onclick=present()>Apresentação</button>"

# ╔═╡ f353d084-0bd3-437b-ac4d-982c0f9be4f5
md"""
$(Resource("https://www1.udesc.br/imagens/id_submenu/899/cor_horizontal_rgb.jpg", :width => 150))
# Relações de demanda entre bens
"""

# ╔═╡ a1b275e6-edee-4f78-8078-8881f6751b08
md"
* **Disciplina:** 23MICI - Microeconomia I
* **Docente:** [Paulo Victor da Fonseca](https://pvfonseca.github.io)
* **Contato:** [paulo.fonseca@udesc.br](mailto:paulo.fonseca@udesc.br)
"

# ╔═╡ 4b943a4e-d833-4dee-8df9-39276938ac0e
md"""
!!! danger "Aviso"
	O texto que segue não tem a menor pretensão de originalidade. Ele serve apenas como registro dos principais princípios, conceitos e técnicas analíticas que são trabalhados em sala de aula.
"""

# ╔═╡ d9d46d99-0a63-4401-8652-e5fd4ff344bd
md"
## Introdução
"

# ╔═╡ 778ee115-a60b-4106-853f-55d0525780c2
md"
* Vimos como mudanças no preço de um determinado bem (e.g., bem $x$) afetam a quantidade demandada deste mesmo bem
* Ao longo da discussão, mantivemos o preço de todos os outros bens constantes
* No entanto, é evidente que variações nos preços de qualquer um destes outros bens pode afetar a quantidade demandada do bem $x$
* Por exemplo, se $x$ representa a quilometragem que um indivíduo dirige, espera-se que essa quantidade decline à medida que o preço da gasolina aumente
* Ou que aumente à medida que as tarifas aéreas e de ônibus aumentem
* Agora usaremos o modelo de maximização de utilidade para estudar as relações entre um bem e os preços de outros bens
* Por simplicidade e possibilidade de representação gráfica consideraremos, inicialmente, a análise de relações de demandas entre bens para o caso de dois bens
* Vamos considerar como a quantidade ótima escolhida de $x$ é afetada por uma variação no preço $p_y$
"

# ╔═╡ 737fb56b-12ce-46b3-bb21-cec98727544a
md"""
Efeito-cruzado de variação nos preços: complementares brutos
$(Resource("https://raw.githubusercontent.com/pvfonseca/micro1/main/notas/figures/aula10_fig1.png", :width=>800))
Fonte: Nicholson e Snyder (2019)
"""

# ╔═╡ 77eabfee-a90c-436a-8828-0da343f1cd72
md"
* Um declínio no preço $p_y$ resulta em uma rotação para fora da restrição orçamentária, de $I_0$ para $I_1$
* Como efeito de uma queda em $p_y$, há um aumento na quantidade demandada do bem $y$ ($y_0 \to \uparrow y_1$): $y$ é um bem normal
* O efeito sobre a quantidade demandada de $x$, no entanto, pode variar
* Na figura acima, as curvas de indiferença representadas assumem, praticamente, um formato em $L$ e, portanto, o efeito substituição é pequeno
* Portanto, uma queda em $p_y$ não induz uma grande variação ao longo da curva de indiferença $U_0$ à medida que $y$ é substituído por $x$
* Como resultado, a quantidade de $x$ cai relativamente pouco como resultado do efeito substituição
* Por outro lado, o efeito renda reflete um maior poder de compra agora disponível para o consumidor, o que faz com que a quantidade total consumida de $x$ aumente
* Como o efeito renda domina o efeito substituição, neste caso, temos que $\partial x/\partial p_y < 0$, ou seja, $x$ e $p_y$ movem-se em direções opostas
* Portanto, dizemos que $x$ e $y$ são **complementares brutos**
"

# ╔═╡ 4acf6ed5-1f4d-429a-9539-75640aa103fe
md"""
Efeito-cruzado de variação nos preços: substitutos brutos
$(Resource("https://raw.githubusercontent.com/pvfonseca/micro1/main/notas/figures/aula10_fig2.png", :width=>800))
Fonte: Nicholson e Snyder (2019)
"""

# ╔═╡ 13d932b7-ccb3-48de-82fc-3739a42736a2
md"
* Agora, temos que $\partial x/\partial p_y > 0$
* Como as curvas de indiferença são relativamente planas, isso resulta em um efeito substituição grande com a queda em $p_y$
* A quantidade ótima consumida de $x$ declina drasticamente à medida que $y$ é substituídos por $x$ ao longo da curva de indiferença $U_0$
* O efeito renda ainda indica um aumento no poder de compra do consumidor
* No entanto, neste caso, o efeito substituição domina o efeito renda e, portanto, a quantidade demandada de $x$ decresce de $x_0$ para $x_1$
* Neste caso, $x$ e $p_y$ se movem na mesma direção - **substitutos brutos**
"

# ╔═╡ 740d5b4c-9a9d-43ab-8447-d6d37a37a776
md"
### Equação de Slutsky
"

# ╔═╡ 416de68a-8739-4d57-911a-fb1560b28526
md"
* A ambiguidade no efeito de variações em $p_y$ sobre a quantidade demandada de $x$ pode ser formalmente ilustrada por uma variação da equação de Slutsky:

$$\begin{eqnarray}
x^c(p_x, p_y, U) &=& x(p_x, p_y, E(p_x, p_y, U)) \\
\frac{\partial x^c}{\partial p_y} &=& \frac{\partial x}{\partial p_y} + \frac{\partial x}{\partial E}\frac{\partial E}{\partial p_y} \\
\frac{\partial x}{\partial p_y} &=& \frac{\partial x^c}{\partial p_y} - y \frac{\partial x}{\partial I} \tag{1}\label{aula10_eq1}\\
\frac{\partial x}{\partial p_y} &=& \left.\frac{\partial x}{\partial p_y}\right|_{U = k} - y \frac{\partial x}{\partial I} \\
\frac{\partial x}{\partial p_y} &=& \text{efeito substituição + efeito renda}
\end{eqnarray}$$

Em termos de elasticidades:

$$\begin{eqnarray}
\frac{\partial x}{\partial p_y} &=& \frac{\partial x^c}{\partial p_y} - y \frac{\partial x}{\partial I} \\
\frac{p_y}{x}\frac{\partial x}{\partial p_y} &=& \frac{p_y}{x}\frac{\partial x^c}{\partial p_y} - y \frac{\partial x}{\partial I}\frac{p_y}{x}\frac{I}{I} \\
\frac{p_y}{x}\frac{\partial x}{\partial p_y} &=& \frac{p_y}{x^c}\frac{\partial x^c}{\partial p_y} - y \frac{\partial x}{\partial I}\frac{p_y}{x}\frac{I}{I} \\
e_{x,p_y} &=& e_{x^c,p_y} - s_y e_{x,I}\tag{2}\label{aula10_eq2}
\end{eqnarray}$$

* Note que o tamanho do efeito renda é determinado, também, pela proporção da renda despendida com o bem $y$, $s_y$
* O impacto de uma variação em $p_y$ sobre o poder de compra do consumidor é determinado por quão importante este bem é para este indivíduo

* Para o caso de dois bens, os termos do lado direito das equações ($\ref{aula10_eq1}$) e ($\ref{aula10_eq2}$) possuem sinais algébricos distintos

* Assumindo convexidade para as curvas de indiferença, o efeito substituição é positivo: para movimentos apenas ao longo da curva de indiferença, aumentos (quedas) em $p_y$ aumentam (diminuem) a quantidade ótima de $x$

* Com relação ao efeito renda, no entanto, se $x$ é um bem normal, o efeito renda é claramente negativo

* Portanto, o efeito total é ambíguo: $\partial x/\partial p_y$ pode tanto ser positivo quanto negativo

* Mesmo no caso de dois bens, a relação de demanda entre a quantidade de $x$ e o preço $p_y$ é complexa
"

# ╔═╡ e03c8a56-1315-4080-911e-a5f8fcc9d8dd
md"""
> **Exercício**. Suponha um consumidor cujas relações de preferência sejam descritas pela seguinte função utilidade:
>
> $$U(x,y) = x^{0,5}y^{0,5}$$
>
> Veja qual o efeito-preço cruzado de uma variação em $p_y$ sobre a quantidade demandada do bem $x$.
>
> Mostre que a razão pela qual variações em $p_y$ não impactam a quantidade ótima de $x$ no caso Cobb-Douglas é que os efeitos renda e substituição se cancelam.
"""

# ╔═╡ fae7b2f8-baf8-4cd4-91d9-2a97347f6bfd
md"
## Bens substitutos e complementares
"

# ╔═╡ 56e83279-2807-4c00-aed7-1e68229b41eb
md"
* Parao caso de $n$ bens, há mais espaço para relações interessantes entre os bens
* Podemos generalizar a equação de Slutsky para quaisquer bens $x_i$ e $x_j$ como (**derive essa expressão como exercício**):

$$\frac{\partial x_i(p_1, \dots, p_n, I)}{\partial p_j} = \left.\frac{\partial x_i}{\partial p_j}\right|_{U=k} - x_j\frac{\partial x_i}{\partial I}$$

* Em termos de elasticidade (**derive como exercício**):

$$e_{i,j} = e_{i,j}^c - s_j e_{i,I}$$

* Variações no preço de um bem $j$ qualquer induzem efeitos renda e substituição que podem alterar a quantidade demandada que qualquer outro bem

* Dois bens são ditos **substitutos** se um bem, como resultado de variações em condições, substituem um outro bem em uso. Exemplo: chá e café, hamburger e cachorro-quente, manteiga e margarina

* Dois bens são ditos **complementares** se ''vão juntos'' no consumo. Exemplo: refrigerante e hamburger, pipoca e guaraná, café e leite (😡)

* Existem duas maneiras distintas de tornar essas ideias intuitivas mais precisas
* Uma delas foca no efeito ''bruto'' de variações dos preços (inclui tanto efeito renda quanto o efeito substituição)
* A outra foca apenas no efeito substituição
"

# ╔═╡ 90b16875-097d-4525-8457-b7eda547c757
md"""
!!! correct "Definição 10.1 - Substitutos e complementares brutos (Marshallianos)"
	Dois bens $x_i$ e $x_j$ são **substitutos brutos** se:

	$$\frac{\partial x_i}{\partial p_j} > 0$$

	Dois bens $x_i$ e $x_j$ são **complementares brutos** se:

	$$\frac{\partial x_i}{\partial p_j} < 0$$
"""

# ╔═╡ ebd18774-cad6-44da-8e27-9d4d71014429
md"""
> **Exemplo**. Suponha que um consumidor tenha suas relações de preferência descritas pela seguinte função utilidade:
>
> $$U(x,y) = \ln x + y$$
>
> Determine se os bens $x$ e $y$ são substitutos ou complementares brutos
"""

# ╔═╡ 845fc582-5e1e-4af0-9a30-e0983c19e84a
md"""
!!! warning "Assimetria das definições brutas"
	* As definições de complementares e substitutos brutos incorporam tanto efeito renda quanto substituição - é a que observamos no ''mundo real''

	* No entanto, apresentam propriedades indesejáveis

	* Estas definições não são simétricas!!

	* É possível que $x_1$ seja um substituto bruto para $x_2$ e, ao mesmo tempo, $x_2$ seja um complementar bruto para $x_1$

	* Portanto, **a presença do efeito renda pode causar resultados paradoxais**
"""

# ╔═╡ a675f6ea-4e38-4e13-bc56-61673df77831
md"""
!!! correct "Definição 10.2 - Substitutos e complementares líquidos (Hicksianos)"
	Dois bens $x_i$ e $x_j$ são **substitutos líquidos** se:

	$$\left.\frac{\partial x_i}{\partial p_j}\right|_{U=k} > 0$$

	Dois bens $x_i$ e $x_j$ são **complementares líquidos** se:

	$$\left.\frac{\partial x_i}{\partial p_j}\right|_{U=k} < 0$$
"""

# ╔═╡ ee9131e8-2ac2-44d0-a2ec-68ad22c14d10
md"
* As definições de substitutos e complementares líquidos consideram apenas o efeito substituição para determinar se dois bens são substitutos ou complementares
* Apelo intuitivo: olha apenas para formato das curvas de indiferença
* Apelo teórico: não permite ambiguidades
* Uma vez que determinamos que $x_i$ e $x_j$ são substitutos (complementares) líquidos, eles permanecem substitutos (complementares), não importa em qual direção a definição é aplicada:

$$\left.\frac{\partial x_i}{\partial p_j}\right|_{U=k} = \left.\frac{\partial x_j}{\partial p_i}\right|_{U=k}$$

* O efeito substituição de uma mudança em $p_i$ sobre $x_j$ é idêntico ao efeito substituição de uma mudança em $p_j$ sobre $x_i$
"

# ╔═╡ 3854c53f-c705-430e-8e33-ba6f1ba6750b
md"
* A diferença entre as definições Marshallianas e Hicksianas para bens substitutos e complementares é percebida nas figuras que vimos anteriormente
* Nas figuras, os dois bens sempre são substitutos líquidos: dada convexidade das curvas de indiferença, uma queda em $p_y$ sempre faz com que a quantidade demandada de $x$ seja menor para manter o nível de utilidade constante, $\partial x^c/\partial p_y > 0$
* Pela definição Marshalliana temos ambiguidade: envolve também o efeito renda (que é sempre negativo se assumirmos o caso de bens normais)
* Na primeira figura o efeito renda (negativo) domina o efeito substituição (positivo) e, portanto, $\partial x/\partial p_y < 0$: complementares Marshallianos
* Na segunda figura o efeito substituição (positivo) domina o efeito renda (negativo) e, portanto, $\partial x/\partial p_y > 0$: substitutos Marshallianos
"

# ╔═╡ d920382c-af38-4a6e-8a48-c406458cde5d
md"""
!!! warning "Caso de n bens"
	Para o caso de $n$ bens, padrões ainda mais complexos são possíveis

	No entanto, a definição Hicksiana simplifica a análise ao eliminar as ambiguidades
"""

# ╔═╡ 2673f96a-949c-4aa5-a1eb-9ca6958439db
md"""
## Substituibilidade com vários bens
"""

# ╔═╡ 69b9cc3f-2872-4557-9b49-5a3a79796f25
md"
* Para o caso de $n$ bens, vários padrões de demanda podem emergir
* Se um determinado par de bens é substituto líquido ou complementar líquido é uma questão relacionada às preferências de um indivíduo
* Portanto, podemos observar todos os tipos de relações de demanda
* Uma questão importante é determinar se substituibilidade ou complementariedade é mais prevalente
* Intuitivamente, tendemos a pensar nos bens como substitutos: um aumento de preços em um mercado específico tende a aumentar a demanda na maioria dos outros mercados
"

# ╔═╡ 92a3f41c-8961-4334-a934-7287a2d0510c
md"
* [John Hicks](https://pt.wikipedia.org/wiki/John_Richard_Hicks): conclui que a ''maiorira'' dos bens são substitutos
* Resultado resumido no que ficou conhecido como **segunda lei da demanda de Hicks**
* Vimos que a função de demanda compensada para um determinado bem $i$ é dada por $x_i^c(p_1, \dots, p_n, V)$ que é homogênea de grau zero nos preços
* Pelo teorema de Euler:

$$p_1\frac{\partial x_i^c}{\partial p_1} + p_2\frac{\partial x_i^c}{\partial p_2} + \dots + p_n \frac{\partial x_i^c}{\partial p_n} = 0$$

* Em termos de elasticidades:

$$e_{i,1}^c + e_{i,2}^c + \dots + e_{i,n}^c = 0$$

* Mas sabemos que $e_{i,i}^c \leq 0$ devido à negatividade do efeito substituição com relação ao próprio bem - **primeira lei da demanda de Hicks**[^1]

* Portanto, necessariamente devemos ter que:

$$\sum_{j\neq i} e_{i,j}^c \geq 0$$

* Ou seja, a soma de todas as elasticidades-preço cruzadas da demanda compensada para um bem particular deve ser não-negativa
* Portanto, em geral os bens tendem a ser ''substitutos'' - a evidência empírica é, em termos gerais, compatível com este resultado teórico
"

# ╔═╡ af3d505a-0a70-4684-b22b-4fb9b4c871a7
md"
---
[^1] A primeira lei da demanda de Hicks também inclui a simetria dos efeitos substituição cruzados:

$$\frac{\partial x_i^c}{\partial p_j} = \frac{\partial x_j^c}{\partial p_i}$$
"

# ╔═╡ 296ca830-3f15-4e63-9d85-1987af8eb56f
md"
## 📚 Bibliografia

NICHOLSON, W.; SNYDER C. [Teoria microeconômica: Princípios básicos e aplicações](https://app.minhabiblioteca.com.br/books/9788522127030). Cengage Learning Brasil, 2019

VARIAN, H. R. [Microeconomia: uma abordagem moderna](https://app.minhabiblioteca.com.br/books/9788595155107). 9.ed. Rio de Janeiro: Elsevier, 2015
"

# ╔═╡ 00000000-0000-0000-0000-000000000001
PLUTO_PROJECT_TOML_CONTENTS = """
[deps]
PlutoUI = "7f904dfe-b85e-4ff6-b463-dae2292396a8"

[compat]
PlutoUI = "~0.7.51"
"""

# ╔═╡ 00000000-0000-0000-0000-000000000002
PLUTO_MANIFEST_TOML_CONTENTS = """
# This file is machine-generated - editing it directly is not advised

julia_version = "1.8.5"
manifest_format = "2.0"
project_hash = "502a5e5263da26fcd619b7b7033f402a42a81ffc"

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

[[deps.ColorTypes]]
deps = ["FixedPointNumbers", "Random"]
git-tree-sha1 = "eb7f0f8307f71fac7c606984ea5fb2817275d6e4"
uuid = "3da002f7-5984-5a60-b8a6-cbb66c0b333f"
version = "0.11.4"

[[deps.CompilerSupportLibraries_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "e66e0078-7015-5450-92f7-15fbd957f2ae"
version = "1.0.1+0"

[[deps.Dates]]
deps = ["Printf"]
uuid = "ade2ca70-3891-5945-98fb-dc099432e06a"

[[deps.Downloads]]
deps = ["ArgTools", "FileWatching", "LibCURL", "NetworkOptions"]
uuid = "f43a241f-c20a-4ad4-852c-f6b1247861c6"
version = "1.6.0"

[[deps.FileWatching]]
uuid = "7b1f6079-737a-58dc-b8bc-7a2ca5c1b5ee"

[[deps.FixedPointNumbers]]
deps = ["Statistics"]
git-tree-sha1 = "335bfdceacc84c5cdf16aadc768aa5ddfc5383cc"
uuid = "53c48c17-4a7d-5ca2-90c5-79b7896eea93"
version = "0.8.4"

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

[[deps.InteractiveUtils]]
deps = ["Markdown"]
uuid = "b77e0a4c-d291-57a0-90e8-8db25a27a240"

[[deps.JSON]]
deps = ["Dates", "Mmap", "Parsers", "Unicode"]
git-tree-sha1 = "31e996f0a15c7b280ba9f76636b3ff9e2ae58c9a"
uuid = "682c06a0-de6a-54ab-a142-c8b1cf79cde6"
version = "0.21.4"

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

[[deps.LinearAlgebra]]
deps = ["Libdl", "libblastrampoline_jll"]
uuid = "37e2e46d-f89d-539d-b4ee-838fcccc9c8e"

[[deps.Logging]]
uuid = "56ddb016-857b-54e1-b83d-db4d58db5568"

[[deps.MIMEs]]
git-tree-sha1 = "65f28ad4b594aebe22157d6fac869786a255b7eb"
uuid = "6c6e2e6c-3030-632d-7369-2d6c69616d65"
version = "0.1.4"

[[deps.Markdown]]
deps = ["Base64"]
uuid = "d6f4376e-aef5-505a-96c1-9c027394607a"

[[deps.MbedTLS_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "c8ffd9c3-330d-5841-b78e-0817d7145fa1"
version = "2.28.0+0"

[[deps.Mmap]]
uuid = "a63ad114-7e13-5084-954f-fe012c677804"

[[deps.MozillaCACerts_jll]]
uuid = "14a3606d-f60d-562e-9121-12d972cd8159"
version = "2022.2.1"

[[deps.NetworkOptions]]
uuid = "ca575930-c2e3-43a9-ace4-1e988b2c1908"
version = "1.2.0"

[[deps.OpenBLAS_jll]]
deps = ["Artifacts", "CompilerSupportLibraries_jll", "Libdl"]
uuid = "4536629a-c528-5b80-bd46-f80d51c5b363"
version = "0.3.20+0"

[[deps.Parsers]]
deps = ["Dates", "SnoopPrecompile"]
git-tree-sha1 = "478ac6c952fddd4399e71d4779797c538d0ff2bf"
uuid = "69de0a69-1ddd-5017-9359-2bf0b02dc9f0"
version = "2.5.8"

[[deps.Pkg]]
deps = ["Artifacts", "Dates", "Downloads", "LibGit2", "Libdl", "Logging", "Markdown", "Printf", "REPL", "Random", "SHA", "Serialization", "TOML", "Tar", "UUIDs", "p7zip_jll"]
uuid = "44cfe95a-1eb2-52ea-b672-e2afdf69b78f"
version = "1.8.0"

[[deps.PlutoUI]]
deps = ["AbstractPlutoDingetjes", "Base64", "ColorTypes", "Dates", "FixedPointNumbers", "Hyperscript", "HypertextLiteral", "IOCapture", "InteractiveUtils", "JSON", "Logging", "MIMEs", "Markdown", "Random", "Reexport", "URIs", "UUIDs"]
git-tree-sha1 = "b478a748be27bd2f2c73a7690da219d0844db305"
uuid = "7f904dfe-b85e-4ff6-b463-dae2292396a8"
version = "0.7.51"

[[deps.Preferences]]
deps = ["TOML"]
git-tree-sha1 = "7eb1686b4f04b82f96ed7a4ea5890a4f0c7a09f1"
uuid = "21216c6a-2e73-6563-6e65-726566657250"
version = "1.4.0"

[[deps.Printf]]
deps = ["Unicode"]
uuid = "de0858da-6303-5e67-8744-51eddeeeb8d7"

[[deps.REPL]]
deps = ["InteractiveUtils", "Markdown", "Sockets", "Unicode"]
uuid = "3fa0cd96-eef1-5676-8a61-b3b8758bbffb"

[[deps.Random]]
deps = ["SHA", "Serialization"]
uuid = "9a3f8284-a2c9-5f02-9a11-845980a1fd5c"

[[deps.Reexport]]
git-tree-sha1 = "45e428421666073eab6f2da5c9d310d99bb12f9b"
uuid = "189a3867-3050-52da-a836-e630ba90ab69"
version = "1.2.2"

[[deps.SHA]]
uuid = "ea8e919c-243c-51af-8825-aaa63cd721ce"
version = "0.7.0"

[[deps.Serialization]]
uuid = "9e88b42a-f829-5b0c-bbe9-9e923198166b"

[[deps.SnoopPrecompile]]
deps = ["Preferences"]
git-tree-sha1 = "e760a70afdcd461cf01a575947738d359234665c"
uuid = "66db9d55-30c0-4569-8b51-7e840670fc0c"
version = "1.0.3"

[[deps.Sockets]]
uuid = "6462fe0b-24de-5631-8697-dd941f90decc"

[[deps.SparseArrays]]
deps = ["LinearAlgebra", "Random"]
uuid = "2f01184e-e22b-5df5-ae63-d93ebab69eaf"

[[deps.Statistics]]
deps = ["LinearAlgebra", "SparseArrays"]
uuid = "10745b16-79ce-11e8-11f9-7d13ad32a3b2"

[[deps.TOML]]
deps = ["Dates"]
uuid = "fa267f1f-6049-4f14-aa54-33bafae1ed76"
version = "1.0.0"

[[deps.Tar]]
deps = ["ArgTools", "SHA"]
uuid = "a4e569a6-e804-4fa4-b0f3-eef7a1d5b13e"
version = "1.10.1"

[[deps.Test]]
deps = ["InteractiveUtils", "Logging", "Random", "Serialization"]
uuid = "8dfed614-e22c-5e08-85e1-65c5234f0b40"

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

[[deps.Zlib_jll]]
deps = ["Libdl"]
uuid = "83775a58-1f1d-513f-b197-d71354ab007a"
version = "1.2.12+3"

[[deps.libblastrampoline_jll]]
deps = ["Artifacts", "Libdl", "OpenBLAS_jll"]
uuid = "8e850b90-86db-534c-a0d3-1478176c7d93"
version = "5.1.1+0"

[[deps.nghttp2_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "8e850ede-7688-5339-a07c-302acd2aaf8d"
version = "1.48.0+0"

[[deps.p7zip_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "3f19e933-33d8-53b3-aaab-bd5110c3b7a0"
version = "17.4.0+0"
"""

# ╔═╡ Cell order:
# ╟─793a6280-efb2-11ed-3468-ef3c73559ea4
# ╟─9e821a05-c967-4ac3-b2de-131bd2941ef7
# ╟─7732434b-580c-4ab7-b7c6-744a281245a9
# ╟─f353d084-0bd3-437b-ac4d-982c0f9be4f5
# ╟─a1b275e6-edee-4f78-8078-8881f6751b08
# ╟─4b943a4e-d833-4dee-8df9-39276938ac0e
# ╟─d9d46d99-0a63-4401-8652-e5fd4ff344bd
# ╟─778ee115-a60b-4106-853f-55d0525780c2
# ╟─737fb56b-12ce-46b3-bb21-cec98727544a
# ╟─77eabfee-a90c-436a-8828-0da343f1cd72
# ╟─4acf6ed5-1f4d-429a-9539-75640aa103fe
# ╟─13d932b7-ccb3-48de-82fc-3739a42736a2
# ╟─740d5b4c-9a9d-43ab-8447-d6d37a37a776
# ╟─416de68a-8739-4d57-911a-fb1560b28526
# ╟─e03c8a56-1315-4080-911e-a5f8fcc9d8dd
# ╟─fae7b2f8-baf8-4cd4-91d9-2a97347f6bfd
# ╟─56e83279-2807-4c00-aed7-1e68229b41eb
# ╟─90b16875-097d-4525-8457-b7eda547c757
# ╟─ebd18774-cad6-44da-8e27-9d4d71014429
# ╟─845fc582-5e1e-4af0-9a30-e0983c19e84a
# ╟─a675f6ea-4e38-4e13-bc56-61673df77831
# ╟─ee9131e8-2ac2-44d0-a2ec-68ad22c14d10
# ╟─3854c53f-c705-430e-8e33-ba6f1ba6750b
# ╟─d920382c-af38-4a6e-8a48-c406458cde5d
# ╟─2673f96a-949c-4aa5-a1eb-9ca6958439db
# ╟─69b9cc3f-2872-4557-9b49-5a3a79796f25
# ╟─92a3f41c-8961-4334-a934-7287a2d0510c
# ╟─af3d505a-0a70-4684-b22b-4fb9b4c871a7
# ╟─296ca830-3f15-4e63-9d85-1987af8eb56f
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
