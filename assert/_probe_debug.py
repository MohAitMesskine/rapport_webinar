from pathlib import Path
import subprocess, os, re
main = Path('main.tex').read_text(encoding='utf-8').splitlines()
# collect preamble lines after documentclass until begin{document}
start = 1
end = next(i for i,l in enumerate(main) if '\\begin{document}' in l)
preamble = main[start:end]
pdflatex = r'C:\Users\PC\AppData\Local\Programs\MiKTeX\miktex\bin\x64\pdflatex.exe'
for n in range(0, len(preamble)+1):
    tex = ['\\documentclass{rapportPFEHIND}'] + preamble[:n] + ['\\begin{document}','OK','\\end{document}']
    Path('_probe.tex').write_text('\n'.join(tex), encoding='utf-8')
    p = subprocess.run([pdflatex,'-interaction=nonstopmode','-halt-on-error','_probe.tex'], stdout=subprocess.PIPE, stderr=subprocess.STDOUT, text=True)
    out = p.stdout
    fail = p.returncode != 0
    if fail:
        if 'Loading a class or package in a group' in out:
            print('FAIL_GROUP at n=', n)
        else:
            print('FAIL_OTHER at n=', n)
        # print last included non-empty line
        for j in range(n-1, -1, -1):
            if preamble[j].strip():
                print('Last line:', j+2, preamble[j])
                break
        break
else:
    print('NO_FAIL')
