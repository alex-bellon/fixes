# LaTeX

## Tools & Resources
- [latex-snippets](https://github.com/gillescastel/latex-snippets) - Vim + LaTeX snippets setup
- [latex-templates](https://github.com/jleightcap/LaTeX-Templates) - Personal LaTeX templates.
- [LaTeX.css](https://latex.vercel.app/)
- [LaTeX Color Converter](https://mmoredo.github.io/latex-color-converter/) - Convert HEX and RGB to LaTeX's xcolor
- [Mathpix Snip](https://mathpix.com/)
- [Quiver](https://q.uiver.app/) - Commutative diagram editor
- [Writespace](https://www.writespace.app/) - online Markdown and TeX renderer

## Inline code
- Use the `listings` LaTeX package to input inline code
  - Use `\begin{lstlisting}` and `\end{lstlisting}` and put code in between or,
  - Use `\lstinputlisting[language=foo]{bar.foo}` to input it directly from the file `bar.foo`

_[Source](https://www.overleaf.com/learn/latex/code_listing)_

## Installing on Arch
```
sudo pacman -S texlive-core
yay tllocalmgr-git
```

## Installing packages

```
tllocalmgr
> install <package>
> texhash
```

## LaTeX in Atom

### Packages
- latex
- pdf-view
- language-latex

[Source](https://medium.com/@lucasrebscher/using-atom-as-a-latex-editor-93756de3d726)

## Quantum

### Packages
- `braket`
- `qcircuit`
- `xypic`
