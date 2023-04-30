class OpcionesMath {
  OpcioneMath() {}

  /**
   * @param una cadena de String o
   * el numero dado es palidromo
   * 
   * @result bool resutado = bool
   */
  static palindromo(String palabra) {
    String palindromo = palabra.toString().toLowerCase();

    String palindromo_1 = palindromo;

    var textoInvertido = StringBuffer();

    for (int i = palindromo.runes.length - 1; i >= 0; i--) {
      textoInvertido.write(String.fromCharCode(palindromo.runes.elementAt(i)));
    }

    if (palindromo_1 == textoInvertido.toString()) {
      return true;
    } else {
      return false;
    }
  }

  /**
   * @param una cadena de int  
   * recorre los numeros e identifica los pares e impares
   * devuelve un map de los catidad obtenida
   * 
   * @result Map<String, int>resultado = {
   * "par": int,
   * "impar":int,
   * "NumeroDado": int 
   * }
   */
  static Map pares_impar(int n) {
    String numero = n.toString();
    int par = 0;
    int impar = 0;
    Map<String, int> resultado = {};

    for (int x = 0; x < numero.length; x++) {
      int num = int.parse(String.fromCharCode(numero.runes.elementAt(x)));

      if (num % 2 == 0) {
        par += 1;
      } else {
        impar += 1;
      }
    }

    resultado.addAll({"par": par, "impar": impar, "NumeroDado": n});
    return resultado;
  }

  /**
   * @param un numero dado y suma sus numeros anterios N-1
   *Si recibe N = 4, se hara n-1 = 1 + 2 + 3
   *
   *@result la suma de los numeros N-1
   */
  static String numeros_menores(int n) {
    int numero = n;
    String resultado = "";
    int suma = 0;

    for (int x = 1; x < numero; x++) {
      suma += x;
      resultado += x.toString();
      if (x < numero - 1) {
        resultado += "+";
      }
    }
    return resultado += "=${suma}";
  }

  /**
   * @param int parametro para genera una serie
   * 
   * @result erie es : 9,32,75,144,245...(length.(prametro))
   */
  static serie_N() {}

  /**
   * @param int parametro para genera una serie
   * 
   * @result erie es : 1,-3,9,-13,25,-31...(length.(prametro))
   */
  static seire_n_2() {}

  /**
   * @param int parametro para genera una serie
   * 
   * @result erie es : 1,2,3,5,8,13...(length.(prametro))
   */
  static seire_n_3(int num) {
    

  }
}
