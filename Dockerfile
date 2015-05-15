FROM cosmosio/rust:nightly
MAINTAINER Dongju Jang <dongju@cosmos.io>

ADD . /carrier
RUN cargo build --release --manifest-path /carrier/Cargo.toml
WORKDIR /carrier
CMD ["cargo", "run"]
