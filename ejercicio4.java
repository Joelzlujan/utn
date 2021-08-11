/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ejercicios;

import java.util.Scanner;

/**
 *
 * @author Joel
 */
public class ejercicio4 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        Scanner leer = new Scanner (System.in);
        System.out.println("Ingrese texto");
        String cadena = leer.nextLine();
        System.out.println("La cadena en minúsculas es "+ cadena.toLowerCase());
        System.out.println("La cadena en mayúsculas es "+ cadena.toUpperCase());
        
    }
    
}
