FROM golang:1.22.2

WORKDIR /final-main

COPY . .

RUN go mod tidy 

ENV CGO_ENABLED=0 GOOS=linux GOARCH=amd64

RUN go build -o /final

CMD ["/final"]