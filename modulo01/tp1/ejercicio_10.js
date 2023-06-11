let repetir;
const meses = [
    "Enero",
    "Febrero",
    "Marzo",
    "Abril",
    "Mayo",
    "Junio",
    "Julio",
    "Agosto",
    "Septiembre",
    "Octubre",
    "Noviembre",
    "Diciembre",
];

do {
    let opcion = prompt("Ingrese el numero del mes entre el 1 y 12:");
    opcion = parseInt(opcion) - 1;
    console.log(meses[opcion]);
    repetir = prompt("Repetir? si - no");
} while (repetir === "si");
