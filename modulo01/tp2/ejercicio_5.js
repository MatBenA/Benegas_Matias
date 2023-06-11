const text = "abcdefghi";

console.log(mayusOMinus(text));

function mayusOMinus(texto) {
    if (texto === texto.toUpperCase()) {
        return "Solo mayúsculas";
    } else if (texto === texto.toLowerCase()) {
        return "Sólo minúsculas";
    } else {
        return "mezcla de mayúsculas y minúsculas";
    }
}
