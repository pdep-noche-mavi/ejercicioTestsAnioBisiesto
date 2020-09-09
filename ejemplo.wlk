// Un año es bisiesto si es múltiplo de 4 pero no de 100. 
// Los múltiplos de 1000 son bisiestos.
object calendario {
    method esBisiesto(anio) = self.esMultiplo(anio,1000) or self.esMultiplo(anio,4) and not self.esMultiplo(anio,100)
    
    method esMultiplo(multiplo,divisor) = multiplo.rem(divisor) == 0
}


// Un año es bisiesto si es múltiplo de 4 pero no de 100. 
// Los múltiplos de 1000 son bisiestos.

// CASOS DE PRUEBA
// Se llaman también clases de equivalencia, si dos números están en la misma clase
// de equivalencia, al dope testear por ambos. 
test "El año es bisiesto si es multiplo de mil" {
    // Ejemplo años: 2000, 1000, 4000
    assert.that(calendario.esBisiesto(4000))
}

test "el año no es bisiesto si es multiplo de 4 y de 100" {
    // Ejemplo años: 400, 1600
    assert.notThat(calendario.esBisiesto(1600))
}

test "Un año es bisiesto si es múltiplo de 4 pero no de 100" {
    // Ejemplo años: 2020, 1996, 2004, 2024
    assert.that(calendario.esBisiesto(2020))
}

test "Un año no es bisiesto si es impar" {
    // Ejemplo años: 2021, 1997, 2019
    assert.notThat(calendario.esBisiesto(2019))
}
