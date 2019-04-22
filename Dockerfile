FROM golang:1.8
#WORKDIR /go/src/app
#ENV GO111MODULE=on
#COPY . .


#CMD ["fresh"]

ENV GOPATH /go
ENV PATH $GOPATH/bin:/usr/local/go/bin:$PATH

RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
#RUN go get github.com/pilu/fresh

WORKDIR $GOPATH

CMD ["go", "run", "./src/app/main.go"]

#CMD ["fresh"]
