package main

import (
	"context"
	"encoding/json"
	"fmt"
	"github.com/aws/aws-lambda-go/lambda"
)

func Handler(ctx context.Context, event interface{}) (string, error) {
	buf, err := json.Marshal(event)
	if err != nil {
		panic(err)
	}
	fmt.Println(string(buf))
	return "OK", nil
}

func main() {
	lambda.Start(Handler)
}
