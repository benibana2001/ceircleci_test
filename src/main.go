package main

import (
	//"./github.com/benibana2001/hello"
	"fmt"
	"net/http"
)

func handler(w http.ResponseWriter, r *http.Request)  {
	//t := hello.Hello("Mario")
	t := "Hello World!"
	fmt.Fprintf(w, "%v", t)
}

func main(){
	http.HandleFunc("/", handler)
	http.ListenAndServe(":8080", nil)
}