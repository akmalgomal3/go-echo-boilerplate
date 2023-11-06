FROM golang:latest
WORKDIR /app

RUN apt-get update && apt-get install -y git 
RUN git clone https://github.com/akmalgomal3/go-echo-boilerplate.git .

COPY go.mod go.sum ./
RUN go mod download

RUN go build -o main

EXPOSE 8080

CMD ["./main"]