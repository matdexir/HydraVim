FROM alpine:latest

RUN apk add --no-cache git neovim ripgrep build-base bash python3 py3-pip \
    && pip3 install --upgrade pip \
    && pip3 install pynvim \
    && git clone https://github.com/HydraVim/HydraVim.git --depth 1 --branch main ~/.config/nvim

CMD ["nvim"]
