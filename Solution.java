import java.io.*;
import java.math.*;
import java.security.*;
import java.text.*;
import java.util.*;
import java.util.concurrent.*;
import java.util.regex.*;

public class Solution {
    private static final Scanner scanner = new Scanner(System.in);
    public static void main(String[] args) {
        int problem = 2;
        if(problem == 1){
            // Welcome to Java!
            System.out.println("Hello, World.");
            System.out.println("Hello, Java.");
        }
        else if(problem == 2){
            // Java If-Else
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
    }
}

