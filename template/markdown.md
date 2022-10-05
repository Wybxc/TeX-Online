# Markdown 

```latex {cmd=true}
\documentclass[tikz]{standalone}
\usepackage{tikz}
\usetikzlibrary{positioning}
\begin{document}
\begin{tikzpicture}
\node (A) [circle, draw] {A};
\node (B) [circle, draw, right=of A] {B};
\node (C) [circle, draw, right=of B] {C};
\draw [-latex] (A) to (B) to (C);
\draw [-latex] (C) to[out=-135, in=-45] (A);
\end{tikzpicture}
\end{document}
```