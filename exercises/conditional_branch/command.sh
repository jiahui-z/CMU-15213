gcc -Og -S absdiff.c # compile source code to generate assembly code with moderate optimization for debugging purpose

# gcc -c absdiff.s -o absdiff # assemble assembly code to object code without linking
# gcc absdiff.s -o absdiff assemble assembly code to object code and link with necessary libraries to create standalone executable binary file
