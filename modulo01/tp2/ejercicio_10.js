const fecha = new Date();
const currentYear = fecha.getFullYear();

const mes = parseInt(prompt("Ingrese el número del mes para saber su cantidad de días:"));

const diasXMes = new Date(currentYear, mes, 0).getDate();

console.log(`En el mes ${mes} hay ${diasXMes} días`);