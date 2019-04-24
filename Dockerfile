FROM golang:1.8
#WORKDIR /go/src/app
#ENV GO111MODULE=on
#COPY . .


#CMD ["fresh"]

ENV GOPATH /go
ENV PATH $GOPATH/bin:/usr/local/go/bin:$PATH

RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
#RUN go get github.com/pilu/fresh

ADD src/ $GOPATH/src
WORKDIR $GOPATH/src

# CMD内で環境変数を指定しても名前解決されない
CMD ["go", "run", "./main.go"]

#CMD ["fresh"]
