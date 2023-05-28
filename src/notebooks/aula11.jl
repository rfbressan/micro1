### A Pluto.jl notebook ###
# v0.19.26

using Markdown
using InteractiveUtils

# ╔═╡ 5741dc60-fd92-11ed-0362-d3fbf43be557
begin
	using PlutoUI
	import PlutoUI: combine	
end

# ╔═╡ ecde5eb9-da01-4e24-a4db-bffca48c3f7f
PlutoUI.TableOfContents(title="Sumário", indent=true)

# ╔═╡ f488f9ce-0b0f-4ed7-8f91-9d98c9c5fb4e
html"<button onclick=present()>Apresentação</button>"

# ╔═╡ 31ecc375-8aad-437f-9f2b-dfc4df19c2d6
md"""
$(Resource("https://www1.udesc.br/imagens/id_submenu/899/cor_horizontal_rgb.jpg", :width => 150))
# Teoria da firma: tecnologias de produção e conceitos iniciais
"""

# ╔═╡ 680f214c-e549-4fd3-87e0-db2c567a0447
md"
* **Disciplina:** 23MICI - Microeconomia I
* **Docente:** [Paulo Victor da Fonseca](https://pvfonseca.github.io)
* **Contato:** [paulo.fonseca@udesc.br](mailto:paulo.fonseca@udesc.br)
"

# ╔═╡ 15ea5758-7f4a-42dd-8b66-4bed45b4b43e
md"""
!!! danger "Aviso"
	O texto que segue não tem a menor pretensão de originalidade. Ele serve apenas como registro dos principais princípios, conceitos e técnicas analíticas que são trabalhados em sala de aula.
"""

# ╔═╡ f7c15a74-c9e1-420a-8f81-dcc3d64edd22
md"
## Introdução
"

# ╔═╡ 61a3d340-52f2-464e-bdce-7837b98d1a9e
md"
* Na primeira parte do curso estudamos o comportamento dos consumidores
* Desse comportamento, obtivemos uma função de demanda individual por um bem que é, quase sempre, decrescente no seu preço
* Nosso objetivo agora é estudar o processo de produção e oferta de bens econômicos e o comportamento das firmas
* Desse comportamento, vamos obter a oferta de um bem, que será crescente no seu preço
* O comportamento desses dois agentes econômicos (consumidores e firmas) pode levar a uma situação de equilíbrio no mercado do bem considerado, onde a quantidade demandada iguala a quantidade ofertada, por meio de preços flexíveis
* As instituições que coordenam o processo de transformação em produtos finais são chamadas **firmas**
* Essas instituições podem ser grandes - e.g. Google, Apple, Microsoft, etc.
* Ou instituições pequenas - e.g. trabalhadores autônomos, produtores locais, etc.
* Embora essas instituições possam ter diferentes objetivos, todas as firmas devem tomar certas decisões básicas em seus processos produtivos
* Desenvolveremos um conjunto de ferramentas que possibilitem a análise destes processos decisórios
"

# ╔═╡ b03e0c87-1a37-4305-bd50-e455eb162469
md"
* Inicialmente estudaremos algumas maneiras de modelar a relação física entre insumos e produtos
* Para isso, introduziremos o conceito de **função de produção**, uma abstração útil das complexidades dos processos produtivos do mundo real
* Dois aspectos mensuráveis da função de produção serão considerados:
    - Retornos de escala: como o produto é expandido quando todos os insumos aumentam
    - Elasticidade de substituição: o quão fácil um insumo pode ser substituído por outro enquanto mantemos o mesmo nível de produção
"

# ╔═╡ 77d4004f-53cd-474d-b05c-32df17bf9a29
md"
* Posteriormente, utilizaremos o conceito de função de produção para discutir os **custos de produção**
* Assumiremos que todas as firmas tem por objetivo produzir seus produtos ao menor custo possível, hipótese que permitirá obter as **funções custo** de uma firma
* Discutiremos também, ainda que brevemente, como os custos podem diferir no curto e no longo prazo
"

# ╔═╡ 98a6609f-6a4b-4ee3-b815-a81e15853609
md"
* Por fim, concluíremos com o estudo das decisões de oferta por parte de uma firma
* Assumiremos que o gerente da firma fará decisões de insumos e produtos de maneira a maximizar lucros
* Com isso, desenvolveremos o modelo fundamental do comportamento de oferta de firmas maximizadoras de lucro - conceito que será muito utilizado em microeconomia e outras áreas do curso
"

# ╔═╡ 336dfdd4-2696-4c5a-b85e-f1aa2de3e665
md"
## Tecnologias de produção
"

# ╔═╡ 53d69450-2441-4570-b0a1-baa7ab385631
md"
* A principal atividade de qualquer firma é transformar insumos em produtos
* Estamos interessados nas escolhas que firmas tomam para atingir esse objetivo, abstraindo das complexidades envolvidas nas engenharias destes processos
* Para isso, construímos um modelo abstrato do processo produtivo
* A relação entre insumos e produtos é formalizada por uma **função de produção** (também chamada de tecnologia de produção):

$$q = f(k, l, m, \dots)$$

* Onde:
    -  $q$ representa a produção de um bem específico para a firma durante um período específico de tempo
    -  $k$ representa as máquinas (i.e. capital) utilizadas durante este período
    -  $l$ representa o insumo trabalho
    -  $m$ representa a matéria-prima utilizada
    - Possibilitamos, ainda, a inclusão de outras variáveis que afetem o processo produtivo

* Assume-se que a função de produção enunciada forneça, para qualquer conjunto concebível de insumos, a solução de engenharia para o problema de como melhor combinar insumos para obter produtos finais
* Portanto, a tecnologia de uma firma descreve sua capacidade de produzir bens usando insumos de produção (fatores de produção)
* Note que tanto insumo quanto produto são medidos como fluxos no tempo
* É importante que todas as variáveis sejam calculadas para o mesmo período de tempo
"

# ╔═╡ 3c883bf2-3b93-4e37-b457-d6399164819c
md"""
!!! info "Fatores de produção"
	São os insumos utilizados em processos produtivos, podendo ser classificados em categorias amplas como terra, trabalho, bens de capital e matérias primas
"""

# ╔═╡ 36d7bbf8-e172-4cbb-b3bf-f03787ddc81d
md"""
!!! info "Bens de capital ou capital físico"
	São bens produzidos e utilizados como insumos em processos produtivos como máquinas, computadores, tratores, prédios, etc.
"""

# ╔═╡ 5b383c0f-1641-4dd2-b4eb-08e646e6e999
md"""
!!! info "Firma"
	É qualquer organização que realiza a transformação de certos insumos (que possui e/ou compra) em produtos (que vende)
"""

# ╔═╡ 0c1a6ec4-11c9-4b23-a43f-1015afa062a4
md"""
!!! info "Restrições de uma firma"
	Uma firma está sujeita a duas restrições básicas:
	* _Restrição tecnológica_: somente algumas combinações de insumos constituem formas viáveis de produzir certa quantidade de um produto
	* _Restrição econômica_: firma toma suas decisões de produção condicionada pelas estruturas dos mercados de fatores (nos quais demanda insumos) e de produtos (onde vende sua produção)
"""

# ╔═╡ b56dc2fe-528d-4532-bec7-7df69ca59355
md"""
!!! correct "Hipótese simplificadora"
	Estudaremos a restrição tecnológica do caso _uniproduto_, ou seja, o caso em que a firma produz apenas um tipo de produto, cuja quantidade denotaremos por $q$, utilizando uma combinação de insumos $(x_1, \dots, x_i, \dots, x_n)$, na qual $x_i \geq 0$ é a quantidade utilizada do fator de produção $i \in \{1, \dots, n\}$
"""

# ╔═╡ 2eb97709-f1f3-4b1d-af86-f856630a5f65
md"""
!!! info "Plano de produção"
	É uma lista que especifica as quantidades dos insumos utilizados para produzir uma determinada quantidade de produto.

	Um plano de produção pode ser representado como um vetor $(-x_1, -x_2, \dots, -x_i, \dots, -x_n, q) \in \mathbb{R}^{n + 1}$, onde as coordenadas com valores estritamente negativos indicam os insumos utilizados e a coordenada estritamente positiva indica a quantidade produzida
"""

# ╔═╡ 37a5941d-438d-4779-9b5b-c04e4ac87ef2
md"""
!!! info "Planos de produção factíveis"
	São planos de produção tecnologicamente possíveis
"""

# ╔═╡ 75016eeb-0f0f-4256-8eae-b11fdfe79b3c
md"""
!!! info "Conjunto de possibilidade de produção"
	É o conjunto $Q \subset \mathbb{R}^{n+1}$ formado por todos os planos de produção factíveis, ou seja, por todas as listas de combinações de insumos e produto tecnologicamente viáveis

	Este conjunto representa todas as escolhas tecnológicas com que uma firma se defronta
"""

# ╔═╡ 0142357f-59ba-464d-9e54-6547b831844e
md"""
Conjunto de produção. Fonte: Mas-Colell et al. (1995)
$(Resource("https://raw.githubusercontent.com/pvfonseca/micro1/main/notas/figures/aula11_fig1.PNG"))

* Exemplo de conjunto de produção para o caso de apenas um insumo e um produto
* Usando a convenção adotada anteriormente, insumo é representado por um número negativo e produto por um número positivo
"""

# ╔═╡ d951b579-28e7-4d2d-9315-622a904d3a74
md"""
Conjunto de produção. Fonte: Varian (2006)
$(Resource("https://raw.githubusercontent.com/pvfonseca/micro1/main/notas/figures/aula11_fig2.PNG"))

* Podemos, alternativamente, mensurar insumos por números positivos
"""

# ╔═╡ fa9e4446-bb82-45af-a19f-1375280b9e08
md"""
!!! info "Função de produção"
	De maneira mais geral, uma função de produção é a função

	$$q = f(x_1, \dots, x_i, \dots, x_n)$$

	que associa a cada combinação de insumos $(x_1, \dots, x_i, \dots, x_n) \in \mathbb{R}_+^n$ a quantidade **máxima** $q$ que pode ser produzida

	A função de produção $f(x_1, \dots, x_n)$ define a fronteira do conjunto de produção
"""

# ╔═╡ 04d2882a-caee-4f5a-b1e5-f5c646db2422
md"
### Produto marginal
"

# ╔═╡ 6bfa541a-c073-4f9b-a2d4-972022fffde8
md"
* O **produto físico marginal** do fator de produção $i$, denotado por $PM_i$, é a variação da produção gerada pela variação em uma unidade do insumo $i$, _ceteris paribus_
* Mais precisamente, em termos contínuos, pode ser definida como a derivada parcial da função de produção com relação ao insumo $i$:

$$PM_i \equiv \frac{\partial f(\bf{x})}{\partial x_i} = f_i(\bf{x}), \qquad i \in \{1, \dots, n\}$$

* Se o fator de produção $i$ contribui para a produção, entãto, $PM_i > 0$ para toda combinação de insumos factível $(x_1, \dots, x_i, \dots, x_n)$

* No caso de apenas dois fatores de produção, capital e trabalho, temos então que:
    - O produto marginal do trabalho, $PM_l = f_l$, mede o quanto a produção aumentará se aumentarmos (um pouco) a quantidade de trabalho utilizada, mantendo a quantidade de capital fixa
    - O produto marginal do capital, $PM_k = f_k$, mede o quanto a produção aumentará se aumentarmos (um pouco) a quantidade de capital utilizada, mantendo a quantidade de trabalho fixa
"

# ╔═╡ 76a7cf08-c33b-42fe-83a5-ce324243e1cb
md"""
!!! warning "Princípio dos rendimentos físicos (produtividades marginais) decrescentes"
	Quanto mais se utiliza um fator de produção $i$, _ceteris paribus_, a contribuição deste fator para o aumento da produção tende a ser cada vez menor, ou seja, o produto físico marginal do fator de produção $i$ é estritamente decrescente com relação à quantidade utilizada deste fator

	Formalmente:

	$$\frac{\partial PM_i(\bf{x})}{\partial x_i} = \frac{\partial^2 f(\bf{x})}{\partial x_i^2} = f_{ii} < 0, \qquad \forall i \in \{1, \dots, n\}$$

	Considerando a função de produção com apenas dois fatores - capital e trabalho - temos:

	$$\begin{align}
	\frac{\partial PM_k}{\partial k} &= \frac{\partial^2 f(k,l)}{\partial k^2} = f_{kk} < 0, \\
	\frac{\partial PM_l}{\partial l} &= \frac{\partial^2 f(k,l)}{\partial l^2} = f_{ll} < 0
	\end{align}$$
"""

# ╔═╡ 3ffdb8c2-01c1-469a-8e10-525096b30038
md"""
* A hipótese de produtividade marginal decrescente foi originalmente proposta pelo economista do século XIX Thomas Malthus: aumento rápido da população poderia resultar em uma menor produtividade do trabalho

$(Resource("https://upload.wikimedia.org/wikipedia/commons/d/d5/Thomas_Robert_Malthus_Wellcome_L0069037_-crop.jpg", :width=>300))
[Thomas Robert Malthus (1766-1834)](https://en.wikipedia.org/wiki/Thomas_Robert_Malthus)
"""

# ╔═╡ 78145314-9e85-48a4-9396-0119d7055712
md"
* Uma análise mais cuidadosa da função de produção sugere que tais predições pessimistas podem não ser corretas
* Variações na produtividade marginal do trabalho ao longo do tempo dependem não só de como o fator de produção trabalho está crescendo mas, também, de mudanças nos outros insumos (e.g. capital)
* Ou seja, devemos analisar também a derivada parcial $\partial PM_l/\partial k = f_{lk}$
* Na maioria dos casos, $f_{lk} > 0$ e, portanto, a diminuição da produtividade do trabalho à medida que ambos $l$ e $k$ aumentam pode ser uma conclusão precipitada
* De fato, a produtividade do trabalho parece ter aumentado significativamente desde a época de Malthus, principalmente porque os aumentos nos insumos de capital (combinado a melhorias tecnológicas) compensou o impacto do declínio da produtividade marginal
"

# ╔═╡ f6375199-531d-4c8a-a5f2-b39ccf2e9837
md"
### Produto médio
"

# ╔═╡ 3e0aa362-1269-434a-9321-59c2600096a8
md"
* **Produto físico médio ($PMe_i$)**. Quantidade produzida por unidade do insumo $i$:

$$PMe_i = \frac{f(\bf{x})}{x_i}, \qquad x_i > 0$$

* De maneira geral, _produtividade do trabalho_ significa _produtividade média_
* Como a produtividade média é facilmente mensurável, é comumente utilizada como medida de eficiência - muito utilizada em trabalhos empíricos (e menos em teóricos)
* Para o caso de dois insumos, a produtividade média do trabalho é:

$$PMe_l = \frac{f(k,l)}{l}$$

* Note que a produtividade média do trabalho depende do nível de capital utilizado
"

# ╔═╡ 7d5a9696-3bc5-4325-9e7b-58c296971c2c
md"""
> **Exercício** Suponha a seguinte função de produção:
>
> $$q = f(k,l) = 600k^2l^2 - k^3l^3$$
>
> Se o nível de capital utilizado é $k = 10$, obtenha o seguinte:
>
> (1) Produtividade marginal do trabalho e o nível de trabalho utilizado para que o produto atinja seu valor máximo
>
> (2) Produto médio do trabalho e o nível de trabalho utilizado para que o produto médio do trabalho atinja seu valor máximo
>
> (3) Verifique que quando $l$ faz com que a produtividade média do trabalho atinja seu nível máximo, neste ponto, a produtividade média do trabalho é igual à produtividade marginal do trabalho
>
> (4) Mostre que a igualdade do item anterior é geral
"""

# ╔═╡ 9bbddd48-6863-468e-b2f8-c887fdcf912c
md"
### Isoquantas
"

# ╔═╡ 37edc462-7ad3-45f2-a722-695ce1cac408
md"
* Para ilustrar a possível substituição de um insumo por outro em uma função de produção, usamos o seu mapa de isoquanta
* **Isoquanta** é o conjunto $Q(q) = \{(x_1, x_2) \in \mathbb{R}_+^2| f(x_1, x_2) = q\}$ formado por todas as combinações de insumos $(x_1, x_2)$ que geram o mesmo nível (máximo) de produção $q$
* Assim como no caso das curvas de indiferença, existem infinitas isoquantas no plano $k \times l$ (se considerarmos os insumos capital e trabalho)
* Cada isoquanta representa um nível distinto de produto
* As isoquantas registram sucessivamente níveis mais altos de produto à medida que nos movemos na direção nordeste
* A utilização de mais de cada um dos insumos possibilitará que a produção aumente
"

# ╔═╡ 0ebb96ce-0302-4195-8cc3-6ace39aa7396
md"""
Mapa de isoquanta. Fonte: Nicholson e Snyer (2019)
$(Resource("https://raw.githubusercontent.com/pvfonseca/micro1/main/notas/figures/aula11_fig3.PNG", :width => 800))
"""

# ╔═╡ 3cd230c0-9a53-4fb4-ba93-0bdc5da92f2b
md"
* É possível notar a similaridade entre um mapa de isoquanta e o mapa de curva de indiferença de um indivíduo
* São, de fato, conceitos similares pois representam os mapas de contorno de uma função em particular
* No entanto, no caso das isoquantas, o rótulo das curvas é mensurável: uma produção de 10 unidades por período tem um significado quantificável
* Por este motivo, economistas estão mais interessados em estudar a forma das funções de produção do que das funções utilidade
"

# ╔═╡ 9bed16d2-4935-414b-b3fa-762f3e9e710f
md"
### Propriedades das funções de produção
"

# ╔═╡ 4632fd25-4676-45bb-87bf-d2816407c96c
md"
* Duas premissas comuns sobre as propriedades da tecnologia são _monotonicidade_ ou _livre descarte_ (_free disposal_) e _convexidade_
    - **Monotonicidade**. Uma tecnologia apresenta monotonicidade ou livre descarte quando é sempre possível a absorção de quantidades adicionais de pelo menos um insumo sem que isto acarrete redução da produção. A função de produção é, sob tal suposição, não-decrescente com relação a cada um de seus fatores de produção (os produtos marginais são não-negativos) e, protanto, as isoquantas não são positivamente inclinadas
    - **Convexidade**. Uma tecnologia é convexa quando a média ponderada de duas combinações de insumos $(x_1, x_2)$ e $(y_1, y_2)$ que geram uma produção $q$, gera uma produção maior ou igual a $q$
"

# ╔═╡ cee8758b-0972-4941-9ec2-e923c6c87d31
md"
### Exemplos de funções de produção
"

# ╔═╡ 75fce81f-5a8d-497f-b2d4-d547e5114148
md"""
> **1. Tecnologia com fatores de produção substitutos (linear)**
>
> $$q = f(k,l) = \alpha k + \beta l, \qquad \alpha, \beta > 0$$
>
> **2. Tecnologia com fatores de produção combinados em proporções fixas (Leontief)**
>
> $$q = f(k,l) = \min\{\alpha k, \beta l\}, \qquad \alpha, \beta > 0$$
>
> **3. Tecnologia Cobb-Douglas**
>
> $$q = f(k,l) = Ak^\alpha l^\beta, \qquad A, \alpha, \beta > 0$$
>
> **4. Tecnologia CES**
>
> $$q = f(k,l) = [\alpha k^\rho + (1-\alpha)l^\rho]^{\gamma/\rho}, \qquad \rho\leq 1, \rho \neq 0, \gamma > 0, 0 \leq \alpha \leq 1$$
"""

# ╔═╡ 58729f99-dbc4-4f95-b0fa-68477f08b1ba
md"
## Taxa técnica de substituição
"

# ╔═╡ f35f30b7-ef9a-463a-8130-f8f357d133a8
md"""
!!! info "Taxa técnica de substituição (TTS)"
	A taxa técnica de substituição (ou taxa marginal de substituição técnica) entre dois insumos mede o quanto a firma deve abrir mão de um desses insumos e acrescentar do outro insumo para continuar produzindo a mesma quantidade do bem final ao longo de uma isoquanta
"""

# ╔═╡ 7532fa0d-535e-4e97-8884-83322f9e331f
md"
* Intuitivamente, a taxa técnica de substituição do insumo $j$ por insumo $i$, denotada por $TTS(x_i, x_j)$, é a quantidade de insumo $j$ que a firma pode reduzir por usar uma unidade adicional do insumo $i$ e manter sua produção constante ou, alternativamente, é a quantidade adicional de insumo $j$ que a firma deve usar para abrir mão de uma unidade do insumo $i$ e manter constante sua produção

* A TTS entre os insumos $i$ e $j$ pode ser obtida do seguinte modo: suponha que alteramos os insumo $i$ e $j$ em $dx_i$ e $dx_j$, respectivamente, de modo a manter inalterado o nível de produção ($dq = 0$)
* Usando o conceito de diferencial total, obtemos:

$$\begin{align}
0 &= dq = \frac{\partial f(x_1, \dots, x_n)}{\partial x_i} dx_i + \frac{\partial f(x_1, \dots, x_n)}{\partial x_j} dx_j \\
&\Rightarrow \left.\frac{dx_j}{dx_i}\right|_{q = f(\bf{x})} = -\frac{f_i}{f_j}\end{align}$$

* Portanto, a taxa técnica de substituição do insumo $j$ por insumo $i$ é dada por:
$$TTS(x_i, x_j) = -\left.\frac{dx_j}{dx_i}\right|_{q = f(\bf{x})} = \frac{f_i}{f_j} = \frac{PM_i}{PM_j}$$

* Ou seja, a taxa técnica de substituição é dada pela razão entre as produtividades marginais dos insumos
* A TTS é o análogo para a teoria da firma da taxa marginal de substituição da teoria do consumidor
* Considerando a função de produção apenas com os insumos capital e trabalho temos que a TTS de trabalho por capital é dada por:

$$TTS(l,k) = \frac{PM_l}{PM_k}$$
"

# ╔═╡ ce19a4f1-1c4e-40bf-90a8-b539f4199d52
md"
* A propriedade de **livre descarte** torna a TTS positiva
* A propriedade de **convexidade** implica que a $TTS(l,k)$ é decrescente, ou seja, conforme aumenta-se a quantidade do insumo trabalho menor a quantidade do insumo capital que é possível reduzir para que o nível de produção mantenha-se constante
"

# ╔═╡ afa77d4c-3589-4c22-801f-be1f9dd89c53
md"""
Isoquantas e convexidade. Fonte: Nicholson e Snyer (2019)
$(Resource("https://raw.githubusercontent.com/pvfonseca/micro1/main/notas/figures/aula11_fig3.PNG", :width => 800))
"""

# ╔═╡ 2c0609be-5719-4815-8b32-10d6b0c76cfd
md"""
> **Exercício.** Calcule a taxa técnica de substituição para cada uma das tecnologias de produção a seguir:
>
> 1. Linear (Fatores de produção substitutos): $q = \alpha k + \beta l$
>
> 2. Leontief (Fatores de produção em proporções fixas): $q = \min\{\alpha k, \beta l\}$
>
> 3. Cobb-Douglas: $q = Ak^\alpha l^\beta$
>
> 4. Elasticidade de substituição constante: $q = (k^\rho + l^\rho)^{\gamma/\rho}$
"""

# ╔═╡ e4db9073-befa-4515-9364-b98de9d30ba0
md"
## Retornos de escala
"

# ╔═╡ 4bf8eb9d-7b0b-41ab-8c71-218af47c5876
md"""
* Uma questão importante relacionada ao conceito de função de produção é o que acontece com a quantidade produzida quando há um aumento generalizado nos insumos utilizados pelo processo produtivo?
* Essa é uma questão de **rendimentos de escala** que interessa os economistas de pelo menos desde a publicação de "A riqueza das nações" por Adam Smith em 1776
"""

# ╔═╡ 16e1dee2-aa12-4e72-8d73-82433999eb37
md"""
$(Resource("https://upload.wikimedia.org/wikipedia/commons/0/0a/AdamSmith.jpg", :width=>300))
[Adam Smith (1723-1790) - Filósofo e economista escocês](https://pt.wikipedia.org/wiki/Adam_Smith)
"""

# ╔═╡ d68a2bc1-a2dc-4e43-859c-93d692dea329
md"
* Smith identificou duas forças em ação quando realizamos um experimento de dobrar todos os insumos produtivos
    - A duplicação de escala permite uma maior divisão do trabalho e a especialização da função. Por isso, pode-se argumentar que a eficiência pode aumentar - a produção pode aumentar mais do que o dobro
    - A duplicação dos insumos também implica alguma perda de eficiência, uma vez que a supervisão gerencial torna-se mais difícil, dada a maior escala da empresa
* Qual dessas duas tendências será prevalente é uma questão empírica de extrema relevância
"

# ╔═╡ bf821ca6-2613-4397-898d-c064331af2e1
md"""
!!! info "Retornos de escala"
	1. **Rendimentos decrescentes de escala.** Uma firma apresenta rendimentos decrescentes de escala se ao aumentarmos todas as quantidades dos insumos utilizados na mesma proporção, a quantidade produzida varia numa proporção menor que a variação das quantidades utilizadas dos insumos. Formalmente:

	$$f(tx_1, \dots, tx_n) < tf(x_1, \dots, x_n), \qquad \forall t > 1$$

	2. **Rendimentos constantes de escala.** Uma firma apresenta rendimentos constantes de escala se ao aumentarmos todas as quantidades dos insumos utilizados na mesma proporção, a quantidade produzida varia na mesma proporção que a variação das quantidades utilizadas dos insumos. Formalmente:

	$$f(tx_1, \dots, tx_n) = tf(x_1, \dots, x_n), \qquad \forall t > 1$$

	3. **Rendimentos crescentes de escala.** Uma firma apresenta rendimentos crescentes de escala se ao aumentarmos todas as quantidades dos insumos utilizados na mesma proporção, a quantidade produzida varia numa proporção maior que a variação das quantidades utilizadas dos insumos. Formalmente:

	$$f(tx_1, \dots, tx_n) > tf(x_1, \dots, x_n), \qquad \forall t > 1$$
"""

# ╔═╡ c5c1e77f-fd2a-4523-874c-28524effdf4b
md"""
> **Exercício.** Para cada uma das tecnologias de produção a seguir, verifique os rendimentos de escala:
>
> 1. Linear (Fatores de produção substitutos): $q = \alpha k + \beta l$
>
> 2. Leontief (Fatores de produção em proporções fixas): $q = \min\{\alpha k, \beta l\}$
>
> 3. Cobb-Douglas: $q = Ak^\alpha l^\beta$
>
> 4. Elasticidade de substituição constante: $q = (k^\rho + l^\rho)^{\gamma/\rho}$
"""

# ╔═╡ 37aa6e94-de2a-4e2e-af8c-2d8e6bce28e8
md"
## Elasticidade de substituição
"

# ╔═╡ 5fda18b9-d8c0-4191-9823-52c6b6c793b1
md"
* Outra característica importante da função de produção é a facilidade de substituição de um insumo por outro
* Essa é uma questão que diz respeito à forma de uma única isoquanta, em vez do mapa de isoquantas como um todo
* Ao longo de uma isoquanta, a TTS diminuirá à medida que a razão capital-trabalho diminuir (supondo convexidade)
* Agora definiremos um parâmetro que meça esse grau de capacidade de resposta
* Se a TTS não se altera com as mudanças na razão capital-trabalho ($k/l$), podemos dizer que a substituição é fácil, uma vez que a razão das produtividades marginais dos insumos não muda à medida que a combinação de insumos muda
* Por outro lado, se a TTS muda rapidamente à medida que ocorrem pequenas mudanças em $k/l$, diríamos que a substituição é difícil, já que pequenas variações na combinação de insumos terão um efeito substancial sobre as produtividades relativas do insumo
* Uma medida sem escala dessa capacidade de resposta é proporcionada pela **elasticidade de substituição**
* Enquanto a TTS mede a inclinação de uma isoquanta, a elasticidade de substituição é uma medida da curvatura de uma isoquanta
"

# ╔═╡ 389494a4-061d-48a6-83a7-aec88dc47805
md"""
!!! info "Elasticidade de substituição no arco"
	Mede a variação percentual média da razão entre os fatores de produção $k/l$ relativa à variação de um por cento (para cima ou para baixo) da $TTS(l,k)$ ao longo de uma isoquanta. Ou seja:

	$$\sigma = \frac{\Delta(k/l)/(k/l)}{\Delta TTS(l,k)/TTS(l,k)} = \frac{\Delta(k/l)}{\Delta TTS(l,k)}\frac{TTS(l,k)}{k/l}$$
"""

# ╔═╡ 3b0f3dce-d33d-4f34-b7ab-50ccaac10768
md"""
!!! info "Elasticidade de substituição no ponto"
	É uma aproximação da variação percentual média da razão entre os fatores de produção $k/l$ relativa à variação (para cima ou para baixo) da $TTS(l,k)$, quando esta variação é infinitesimal, ao longo de uma isoquanta. Ou seja:

	$$\sigma = \frac{d(k/l)/(k/l)}{d TTS(l,k)/TTS(l,k)} = \frac{d \ln(k/l)}{d \ln TTS(l,k)}$$
"""

# ╔═╡ 6226f9a4-de29-4709-8664-32449015cbc1
md"""
> **Exercício.** Para cada uma das tecnologias de produção a seguir, verifique a elasticidade de substituição:
>
> 1. Linear (Fatores de produção substitutos): $q = \alpha k + \beta l$
>
> 2. Cobb-Douglas: $q = Ak^\alpha l^\beta$
>
> 3. Elasticidade de substituição constante: $q = (k^\rho + l^\rho)^{\gamma/\rho}$
>
> 4. Leontief (Fatores de produção em proporções fixas): $q = \min\{\alpha k, \beta l\}$
"""

# ╔═╡ f0a7b792-6a1d-4696-9239-0ff5e0e4d1a3
md"
## 📚 Bibliografia

MAS-COLELL, A.; WHINSTON, M.D.; GREEN, J.R. Microeconomic Theory. New York, NY: Oxford University Press, 1995.

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

julia_version = "1.9.0"
manifest_format = "2.0"
project_hash = "dcebd3174a85b0f68c71e8431fe1914ebcbe8db2"

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
version = "1.0.2+0"

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
git-tree-sha1 = "d75853a0bdbfb1ac815478bacd89cd27b550ace6"
uuid = "b5f81e59-6552-4d32-b1f0-c071b021bf89"
version = "0.2.3"

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
deps = ["Libdl", "OpenBLAS_jll", "libblastrampoline_jll"]
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
version = "2.28.2+0"

[[deps.Mmap]]
uuid = "a63ad114-7e13-5084-954f-fe012c677804"

[[deps.MozillaCACerts_jll]]
uuid = "14a3606d-f60d-562e-9121-12d972cd8159"
version = "2022.10.11"

[[deps.NetworkOptions]]
uuid = "ca575930-c2e3-43a9-ace4-1e988b2c1908"
version = "1.2.0"

[[deps.OpenBLAS_jll]]
deps = ["Artifacts", "CompilerSupportLibraries_jll", "Libdl"]
uuid = "4536629a-c528-5b80-bd46-f80d51c5b363"
version = "0.3.21+4"

[[deps.Parsers]]
deps = ["Dates", "PrecompileTools", "UUIDs"]
git-tree-sha1 = "a5aef8d4a6e8d81f171b2bd4be5265b01384c74c"
uuid = "69de0a69-1ddd-5017-9359-2bf0b02dc9f0"
version = "2.5.10"

[[deps.Pkg]]
deps = ["Artifacts", "Dates", "Downloads", "FileWatching", "LibGit2", "Libdl", "Logging", "Markdown", "Printf", "REPL", "Random", "SHA", "Serialization", "TOML", "Tar", "UUIDs", "p7zip_jll"]
uuid = "44cfe95a-1eb2-52ea-b672-e2afdf69b78f"
version = "1.9.0"

[[deps.PlutoUI]]
deps = ["AbstractPlutoDingetjes", "Base64", "ColorTypes", "Dates", "FixedPointNumbers", "Hyperscript", "HypertextLiteral", "IOCapture", "InteractiveUtils", "JSON", "Logging", "MIMEs", "Markdown", "Random", "Reexport", "URIs", "UUIDs"]
git-tree-sha1 = "b478a748be27bd2f2c73a7690da219d0844db305"
uuid = "7f904dfe-b85e-4ff6-b463-dae2292396a8"
version = "0.7.51"

[[deps.PrecompileTools]]
deps = ["Preferences"]
git-tree-sha1 = "259e206946c293698122f63e2b513a7c99a244e8"
uuid = "aea7be01-6a6a-4083-8856-8a6e6704d82a"
version = "1.1.1"

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

[[deps.Sockets]]
uuid = "6462fe0b-24de-5631-8697-dd941f90decc"

[[deps.SparseArrays]]
deps = ["Libdl", "LinearAlgebra", "Random", "Serialization", "SuiteSparse_jll"]
uuid = "2f01184e-e22b-5df5-ae63-d93ebab69eaf"

[[deps.Statistics]]
deps = ["LinearAlgebra", "SparseArrays"]
uuid = "10745b16-79ce-11e8-11f9-7d13ad32a3b2"
version = "1.9.0"

[[deps.SuiteSparse_jll]]
deps = ["Artifacts", "Libdl", "Pkg", "libblastrampoline_jll"]
uuid = "bea87d4a-7f5b-5778-9afe-8cc45184846c"
version = "5.10.1+6"

[[deps.TOML]]
deps = ["Dates"]
uuid = "fa267f1f-6049-4f14-aa54-33bafae1ed76"
version = "1.0.3"

[[deps.Tar]]
deps = ["ArgTools", "SHA"]
uuid = "a4e569a6-e804-4fa4-b0f3-eef7a1d5b13e"
version = "1.10.0"

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
version = "1.2.13+0"

[[deps.libblastrampoline_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "8e850b90-86db-534c-a0d3-1478176c7d93"
version = "5.7.0+0"

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
# ╟─5741dc60-fd92-11ed-0362-d3fbf43be557
# ╟─ecde5eb9-da01-4e24-a4db-bffca48c3f7f
# ╟─f488f9ce-0b0f-4ed7-8f91-9d98c9c5fb4e
# ╟─31ecc375-8aad-437f-9f2b-dfc4df19c2d6
# ╟─680f214c-e549-4fd3-87e0-db2c567a0447
# ╟─15ea5758-7f4a-42dd-8b66-4bed45b4b43e
# ╟─f7c15a74-c9e1-420a-8f81-dcc3d64edd22
# ╟─61a3d340-52f2-464e-bdce-7837b98d1a9e
# ╟─b03e0c87-1a37-4305-bd50-e455eb162469
# ╟─77d4004f-53cd-474d-b05c-32df17bf9a29
# ╟─98a6609f-6a4b-4ee3-b815-a81e15853609
# ╟─336dfdd4-2696-4c5a-b85e-f1aa2de3e665
# ╟─53d69450-2441-4570-b0a1-baa7ab385631
# ╟─3c883bf2-3b93-4e37-b457-d6399164819c
# ╟─36d7bbf8-e172-4cbb-b3bf-f03787ddc81d
# ╟─5b383c0f-1641-4dd2-b4eb-08e646e6e999
# ╟─0c1a6ec4-11c9-4b23-a43f-1015afa062a4
# ╟─b56dc2fe-528d-4532-bec7-7df69ca59355
# ╟─2eb97709-f1f3-4b1d-af86-f856630a5f65
# ╟─37a5941d-438d-4779-9b5b-c04e4ac87ef2
# ╟─75016eeb-0f0f-4256-8eae-b11fdfe79b3c
# ╟─0142357f-59ba-464d-9e54-6547b831844e
# ╟─d951b579-28e7-4d2d-9315-622a904d3a74
# ╟─fa9e4446-bb82-45af-a19f-1375280b9e08
# ╟─04d2882a-caee-4f5a-b1e5-f5c646db2422
# ╟─6bfa541a-c073-4f9b-a2d4-972022fffde8
# ╟─76a7cf08-c33b-42fe-83a5-ce324243e1cb
# ╟─3ffdb8c2-01c1-469a-8e10-525096b30038
# ╟─78145314-9e85-48a4-9396-0119d7055712
# ╟─f6375199-531d-4c8a-a5f2-b39ccf2e9837
# ╟─3e0aa362-1269-434a-9321-59c2600096a8
# ╟─7d5a9696-3bc5-4325-9e7b-58c296971c2c
# ╟─9bbddd48-6863-468e-b2f8-c887fdcf912c
# ╟─37edc462-7ad3-45f2-a722-695ce1cac408
# ╟─0ebb96ce-0302-4195-8cc3-6ace39aa7396
# ╟─3cd230c0-9a53-4fb4-ba93-0bdc5da92f2b
# ╟─9bed16d2-4935-414b-b3fa-762f3e9e710f
# ╟─4632fd25-4676-45bb-87bf-d2816407c96c
# ╟─cee8758b-0972-4941-9ec2-e923c6c87d31
# ╟─75fce81f-5a8d-497f-b2d4-d547e5114148
# ╟─58729f99-dbc4-4f95-b0fa-68477f08b1ba
# ╟─f35f30b7-ef9a-463a-8130-f8f357d133a8
# ╟─7532fa0d-535e-4e97-8884-83322f9e331f
# ╟─ce19a4f1-1c4e-40bf-90a8-b539f4199d52
# ╟─afa77d4c-3589-4c22-801f-be1f9dd89c53
# ╟─2c0609be-5719-4815-8b32-10d6b0c76cfd
# ╟─e4db9073-befa-4515-9364-b98de9d30ba0
# ╟─4bf8eb9d-7b0b-41ab-8c71-218af47c5876
# ╟─16e1dee2-aa12-4e72-8d73-82433999eb37
# ╟─d68a2bc1-a2dc-4e43-859c-93d692dea329
# ╟─bf821ca6-2613-4397-898d-c064331af2e1
# ╟─c5c1e77f-fd2a-4523-874c-28524effdf4b
# ╟─37aa6e94-de2a-4e2e-af8c-2d8e6bce28e8
# ╟─5fda18b9-d8c0-4191-9823-52c6b6c793b1
# ╟─389494a4-061d-48a6-83a7-aec88dc47805
# ╟─3b0f3dce-d33d-4f34-b7ab-50ccaac10768
# ╟─6226f9a4-de29-4709-8664-32449015cbc1
# ╟─f0a7b792-6a1d-4696-9239-0ff5e0e4d1a3
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
