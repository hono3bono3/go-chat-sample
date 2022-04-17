FROM golang:1.17.7-alpine
RUN apk update && apk add git

WORKDIR /app

RUN GO111MODULE=on

COPY . . 
RUN go mod download

RUN go build -o main .

CMD ["./main"]