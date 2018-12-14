package main

import "fmt"

func main() {
	// 3.1 Numbers
	fmt.Println("1 + 1 =", 1+1)
	fmt.Println("1.0 + 1.0 =", 1.0+1.0)

	// 3.2 Strings
	fmt.Println(len("Hello World"))
	fmt.Println("Hello World"[1])
	fmt.Println("Hello " + "World")

	// 3.3 Booleans
	fmt.Println(true && true)
	fmt.Println(true && false)
	fmt.Println(true || true)
	fmt.Println(true || false)
	fmt.Println(!true)
}
