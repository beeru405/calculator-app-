// Main.java
package com.example.calculator;

public class Main {
    public static void main(String[] args) {
        Calculator calculator = new Calculator();
        System.out.println("Addition: " + calculator.add(2, 3));
        System.out.println("Subtraction: " + calculator.subtract(5, 2));
        System.out.println("Multiplication: " + calculator.multiply(2, 3));
        System.out.println("Division: " + calculator.divide(6, 2));
    }
}
