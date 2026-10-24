Grupo 1B - Juan Pablo Gueli

Trabajo practico hecho para la carrera de Ingenieria informatica de la universidad nacional de Mar del Plata, asignatura de Fundamentos de la Arquitectura de computadoras del segundo cuatrimestre de 2026.

La máquina virtual está representada en el programa como un struct con dos vectores: memoria y registros, en este struct se encuentra también la tabla de segmentos.
El programa cuenta con un archivo main.c y dos archivos adicionales "operations.c" y "operations.h" para el correcto funcionamiento de la maquina virtual.
Todo el desarrolo se realizo en el sistema operativo Windows usando el editor de código VScode.
La maquina virtual se compila con "gcc -g main.c operations.c operations.h -o vmx.exe" y se ejecuta desde la terminal de la siguiente manera "./vmx filename.vmx -d "

Para guardar una imagen al ejecutar un programa MV2, se puede indicar un archivo VMI: "vmx programa.vmx breakpoint.vmi". Al encontrar una llamada SYS F, se guarda el estado en ese archivo; con "g" se continua y con "q" se finaliza. Una imagen guardada se puede cargar y continuar con "vmx breakpoint.vmi".