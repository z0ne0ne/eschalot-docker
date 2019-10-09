FROM alpine:latest AS builder
RUN apk add --no-cache openssl openssl-dev git alpine-sdk && \
  git clone https://github.com/ReclaimYourPrivacy/eschalot.git
WORKDIR /eschalot
RUN make all && make install


FROM alpine:latest
LABEL maintainer="z0ne0ne@protonmail.com" description="eschalot is used to generate onion addresses"
ARG GIT_COMMIT=unspecified
LABEL git_commit=$GIT_COMMIT
COPY --from=builder /usr/local/bin/eschalot /eschalot
WORKDIR /
ENTRYPOINT ["/eschalot"]
