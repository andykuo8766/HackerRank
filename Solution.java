import java.io.*;
import java.math.*;
import java.security.*;
import java.text.*;
import java.util.*;
import java.util.concurrent.*;
import java.util.regex.*;
import java.util.Scanner;

public class Solution {
    public static void main(String[] args) {
        int problem = 4;
        if(problem == 1){
            // Welcome to Java!
            System.out.println("Hello, World.");
            System.out.println("Hello, Java.");
        }
        else if(problem == 2){
            // Java If-Else
            Scanner scanner = new Scanner(System.in);
            int N = scanner.nextInt();
            scanner.skip("(\r\n|[\n\r\u2028\u2029\u0085])?");
            if((N%2) == 1){
                System.out.println("Weird");
            }
            else if(N>=2 && N <=5){
                System.out.println("Not Weird");                
            }
            else if(N>=6 && N <=20){
                System.out.println("Weird");                
            }
            else if(N >= 20){
                System.out.println("Not Weird"); 
            }
            scanner.close();
        }
        else if(problem == 3){
            // Java Stdin and Stdout II
            Scanner scan = new Scanner(System.in);
            int i = scan.nextInt();
            double d = scan.nextDouble();
            scan.nextLine();
            String s = scan.nextLine();

            System.out.println("String: " + s);
            System.out.println("Double: " + d);
            System.out.println("Int: " + i);

        }
        else if(problem == 4){
            // Java Output Formatting
            Scanner sc=new Scanner(System.in);
            System.out.println("================================");
            for(int i=0;i<3;i++){
                String s1=sc.next();
                int x=sc.nextInt();
                System.out.print(s1);
                for(int k = 0; k < 15- s1.length(); k++){
                    System.out.print(" ");
                }
                int y = x;
                int count = 0;
                while(y /10 != 0){
                    y = y /10;
                    count++;
                }     
                for(int k = 0; k < 3- count - 1; k++){
                    System.out.print("0");
                }                
                System.out.println(x);

            }
            System.out.println("================================");




        }
    }
}

