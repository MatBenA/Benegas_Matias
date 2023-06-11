const cantNotas = prompt("Cuantas notas posee el alumno?");
let sumNotas = 0;
for (let i = 1; i <= cantNotas; i++) {
    const nota = parseInt(prompt(`Ingrese la nota ${i}:`));
    if (nota <= 10 && nota >= 1) {
        sumNotas += nota;
    }
    else{
        alert("La nota ingresada debe estar entre 1 y 10")
        i--;
    }
}
const promedio = sumNotas / cantNotas;
console.log(`El promedio del alumno es de ${promedio}`);
if(promedio < 5){
    console.log('Reprobado');
}
else if (promedio >= 6 && promedio <= 8){
    console.log("Aprobado");
}
else if (promedio > 8){
    console.log("Sobresaliente");
}
