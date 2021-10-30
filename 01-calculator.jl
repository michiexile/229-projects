### A Pluto.jl notebook ###
# v0.17.0

using Markdown
using InteractiveUtils

# ╔═╡ 5c1a5c24-381f-11ec-1cee-db3c62bfbbdd
md"""# Using Julia as a calculator
"""

# ╔═╡ 5c1a8da2-381f-11ec-11d3-0585a3437920
md"""### Quick background
"""

# ╔═╡ 5c1ab9bc-381f-11ec-2152-ff657e2f78c4
md"""Read about this material here: [Julia as a calculator](http://mth229.github.io/calculator.html).
"""

# ╔═╡ 5c1ac862-381f-11ec-374c-47f204db79ad
md"""For the impatient, these questions cover the use of `Julia` to replace what a calculator can do.
"""

# ╔═╡ 5c2a486e-381f-11ec-0dd1-3b0c927a41e4
md"""#### The common operations on numbers: addition, subtraction,  multiplication, division, and powers.
"""

# ╔═╡ 5c2a5cb2-381f-11ec-0496-bf2dc6b42490
md"""For the most part there is no surprise, once you learn the notations:   `+`, `-`, `*`, `/`, and `^`. (Though you may find that copying and   pasting minus signs will often cause an error, as only something   that looks like a minus sign is pasted in.)
"""

# ╔═╡ 5c2a724e-381f-11ec-1e4b-478e1c8b8562
md"""Using `Pluto`, one types the following into a cell and then presses the *run* button (or *shift-enter*):
"""

# ╔═╡ 5c2a7848-381f-11ec-054b-a356ebe41274
2 + 2


# ╔═╡ 5c2a89aa-381f-11ec-1f79-9dc44ec613be
md"""The answer is printed *above* the cell.
"""

# ╔═╡ 5c2a9a58-381f-11ec-0324-8d6eded5cad6
md"""Here is how one does a slightly more complicated computation:
"""

# ╔═╡ 5c2a9e54-381f-11ec-2f8f-e941680cde8a
(2 + 3)^4/(5 + 6)


# ╔═╡ 5c2aabb0-381f-11ec-2032-115c454e0d20
md"""As with your calculator, it is very important to use parentheses, as appropriate, to circumvent the usual order of operations.
"""

# ╔═╡ 5c2abc22-381f-11ec-319b-ef2e853f2b62
md"""#### The use of the basic families of function: trigonometric, exponential, logarithmic.
"""

# ╔═╡ 5c2ad400-381f-11ec-328f-f5dda96a0e91
md"""On a calculator, there are buttons used to compute various functions. In `Julia`, there are *many* pre-defined functions that serve a similar role (later you will see how to define your own). Functions in `Julia` have names and are called using parentheses to enclose their argument(s), as with:
"""

# ╔═╡ 5c2adb8a-381f-11ec-301c-75a9dc1dd55a
sin(pi/4), cos(pi/3)


# ╔═╡ 5c2aea44-381f-11ec-228c-7db504449cb2
md"""
> With `Pluto`, when a cell is executed only the last command computed is displayed, the above shows that using a comma to separate commands 	on the same line can be used to get two or more commands to be displayed. To have multiple commands in a cell, `begin/end` blocks *or* `let/end` blocks are used, as illustrated later.
"""

# ╔═╡ 5c2b18aa-381f-11ec-2481-bf057bce19bc
md"""Most basic functions in `Julia` have easy to guess names, though you will need to learn some differences, such as `log` is for $\ln$ and `asin` for $\sin^{-1}$. Function names encountered in this class include: `sqrt`, `cbrt`, `sin`, `cos`, `tan`,  `asin`, `acos`, `atan`,`exp`, and `log`.
"""

# ╔═╡ 5c2b27de-381f-11ec-386f-4b7e4d4a072c
md"""The trigonometric functions use *radians*. For degree measure the conversion factor $\pi/180$ must be judiciously employed.
"""

# ╔═╡ 5c2b3776-381f-11ec-1351-618f6a4c6208
md"""The function $f(x) = e^x$ is implemented with function `exp(x)` and **not** using `e^x`. In base Julia `e` is not defined. (We will define it as `exp(1)` in future projects.)
"""

# ╔═╡ 5c2b485e-381f-11ec-110d-27b72493aafd
md"""#### The use of memory registers to remember intermediate values.
"""

# ╔═╡ 5c2b54ac-381f-11ec-180b-7388d4ad75a6
md"""Rather than have numbered memory registers, it is *easy* to assign a name to a value. For example,
"""

# ╔═╡ 5c2b5880-381f-11ec-03f9-19d2229314f9
x = 42


# ╔═╡ 5c2b75c0-381f-11ec-2c2a-078f89fa0c15
md"""For assigning more than one value at once, commas can be used as with:
"""

# ╔═╡ 5c2b7982-381f-11ec-1ae4-c93a5fade527
a,b,c = 1,2,3


# ╔═╡ 5c2b6686-381f-11ec-06b8-83ccad072733
md"""
----
> `Pluto` differs from other interfaces in `Julia`. 

>In general, with `Julia`, variable names can be reassigned and repurposed *except* names can't be used a both a variable and a generic function in a session.

>However, in `Pluto`, names must be unique, as that allows the notebooks to be *reactive*. However, one can redefine a variable name to be a function name.

>In `Pluto`, using longer names is suggested as is using functions to limit the scope of the variable names.

"""


# ╔═╡ 5c2b856c-381f-11ec-01e5-5fe4e61c7299
md"""#### Julia, like math, has different number types
"""

# ╔═╡ 5c2b925a-381f-11ec-1660-97ef3e2dfa97
md"""Unlike a calculator, but just like math, `Julia` has different types of numbers: integers, rational numbers, real numbers, and complex numbers. For the most part the distinction isn't much to worry about, but there are times where one must, such as overflow with integers. (One can only take the factorial of 20 with 64-bit integers, whereas on most calculators a factorial of 69 can be taken, but not 70.) Julia automatically assigns a type when it parses a value: a `1` will be an integer, a `1.0` an floating point number. Rational numbers are made by using two division symbols, `1//2`.
"""

# ╔═╡ 78867384-5916-4f7d-868a-84a88dfc879d
1, 1//1, 1.0, 1 + 0im

# ╔═╡ 5c2ba074-381f-11ec-0fca-03675421867f
md"""For many operations the type will be conserved, such as adding to integers. For some operations, the type will be converted, such as dividing two integer values. Mathematically, we know we can divide some integers and still get an integer, but `Julia` usually opts for the same output for its functions (and division is also a function) based on the type of the input, not the specific values of the input.
"""

# ╔═╡ 5c2bc806-381f-11ec-0dc1-5fe3dcd38cba
md"""## Numbers
"""

# ╔═╡ 5c2bd670-381f-11ec-24c6-55b708925cc9
md"""Scientific notation represents real numbers as $\pm a \cdot 10^b$, where $b$ is an integer, and $a$ may be a real number in the range $[1.0, 10)$. In `Julia` such numbers are represented with an `e` to replace the 10, as with `1.2e3` which would be $1.2 \cdot 10^3$ (better known as 1,230) or `3.2e-1`, which would be $3.2 \cdot 10^{-1}$ (which is equal to $0.32$). Take note that this $e$ is not the special base of the natural logarithm, but is just notation indicating a power of $10$. To use this notation, you must have a number immediately before the "e", not a space or an asterisk. That is these are **not correct:** `1.2*e3` or `12 e 3`.
"""

# ╔═╡ 4574e301-7982-490f-aa7f-44019b654370


# ╔═╡ 925e6167-3574-4dd9-b41f-668d5d222e35


# ╔═╡ a90d45c6-2f23-4e18-a803-afaf4daaa629


# ╔═╡ 5c2be1e2-381f-11ec-39f3-4b2cf789ff91
md"""
----
No moving parts below this line
"""

# ╔═╡ Cell order:
# ╟─5c1a5c24-381f-11ec-1cee-db3c62bfbbdd
# ╟─5c1a8da2-381f-11ec-11d3-0585a3437920
# ╟─5c1ab9bc-381f-11ec-2152-ff657e2f78c4
# ╟─5c1ac862-381f-11ec-374c-47f204db79ad
# ╟─5c2a486e-381f-11ec-0dd1-3b0c927a41e4
# ╟─5c2a5cb2-381f-11ec-0496-bf2dc6b42490
# ╟─5c2a724e-381f-11ec-1e4b-478e1c8b8562
# ╠═5c2a7848-381f-11ec-054b-a356ebe41274
# ╟─5c2a89aa-381f-11ec-1f79-9dc44ec613be
# ╟─5c2a9a58-381f-11ec-0324-8d6eded5cad6
# ╠═5c2a9e54-381f-11ec-2f8f-e941680cde8a
# ╟─5c2aabb0-381f-11ec-2032-115c454e0d20
# ╟─5c2abc22-381f-11ec-319b-ef2e853f2b62
# ╟─5c2ad400-381f-11ec-328f-f5dda96a0e91
# ╠═5c2adb8a-381f-11ec-301c-75a9dc1dd55a
# ╟─5c2aea44-381f-11ec-228c-7db504449cb2
# ╟─5c2b18aa-381f-11ec-2481-bf057bce19bc
# ╟─5c2b27de-381f-11ec-386f-4b7e4d4a072c
# ╟─5c2b3776-381f-11ec-1351-618f6a4c6208
# ╟─5c2b485e-381f-11ec-110d-27b72493aafd
# ╟─5c2b54ac-381f-11ec-180b-7388d4ad75a6
# ╠═5c2b5880-381f-11ec-03f9-19d2229314f9
# ╟─5c2b75c0-381f-11ec-2c2a-078f89fa0c15
# ╠═5c2b7982-381f-11ec-1ae4-c93a5fade527
# ╟─5c2b6686-381f-11ec-06b8-83ccad072733
# ╟─5c2b856c-381f-11ec-01e5-5fe4e61c7299
# ╟─5c2b925a-381f-11ec-1660-97ef3e2dfa97
# ╠═78867384-5916-4f7d-868a-84a88dfc879d
# ╟─5c2ba074-381f-11ec-0fca-03675421867f
# ╟─5c2bc806-381f-11ec-0dc1-5fe3dcd38cba
# ╟─5c2bd670-381f-11ec-24c6-55b708925cc9
# ╠═4574e301-7982-490f-aa7f-44019b654370
# ╠═925e6167-3574-4dd9-b41f-668d5d222e35
# ╠═a90d45c6-2f23-4e18-a803-afaf4daaa629
# ╟─5c2be1e2-381f-11ec-39f3-4b2cf789ff91
