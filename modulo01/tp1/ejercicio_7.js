let dato, resultado; //Se crean las variables dato y resultado

//El usuario ingresa su nombre y apellido de las variables val 1 y val2 a través de un prompt
val1 = window.prompt("Introduce tu nombre", "...");
val2 = window.prompt("Introduce tu apellido", "...");

//se le asigna a la variable resultado el texto
resultado = `Concatenado tu nombre y apellido es: ${val1} ${val2} `;

//Se muestra en el documento el valor de la variable resultado
document.write(resultado);
