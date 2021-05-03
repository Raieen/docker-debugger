package main

import "fmt"

func main() {
	fmt.Println("Hello World")

	for i := 0; i < 10; i++ {
		fmt.Printf("The %d Fibonacci number is... %d\n", i, fib(i))
	}
}

func fib(n int) int {
	if n < 2 {
		return n
	}

	return fib(n-1) + fib(n-2)
}
