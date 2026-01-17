FROM rust:latest

WORKDIR /usr/src/srcs

RUN apt-get update && \
	apt-get upgrade -y && \
	apt-get install -y \
	zsh \
	curl \
	git \
	vim && \
	apt-get clean && \
	rm -rf /var/lib/apt/lists/*

COPY . .

ENV PATH="/root/.cargo/bin:${PATH}"

CMD ["zsh"]
