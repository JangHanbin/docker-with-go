FROM ubuntu:14.04
RUN apt-get update
RUN apt-get install -y golang-go
RUN mkdir /example
ADD go.mod /example
ADD main.go /example
WORKDIR /example
RUN go get "github.com/gofiber/fiber/v2"
CMD go run main.go
