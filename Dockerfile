FROM golang:1.19-buster as builder

WORKDIR /app

COPY go.* ./
RUN go mod download

COPY main.go ./main.go
COPY ./frontend ./frontend

RUN go build -v -o server

RUN useradd -ms /bin/bash newuser

EXPOSE 3333

CMD ["/app/server"]