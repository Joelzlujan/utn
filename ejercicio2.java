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
public class ejercicio2 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        Scanner leer = new Scanner (System.in);
        System.out.println("Ingrese dos numeros para calcular la suma");
        int num = leer.nextInt();
        int num2 = leer.nextInt();
        System.out.println("La suma de los dos numeros es "+ (num + num2));
    }
    
}
