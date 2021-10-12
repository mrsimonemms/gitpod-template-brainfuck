FROM gitpod/workspace-full
USER root
COPY .gitpod/script.sh /usr/bin/brainfuck
RUN git clone --depth 1 https://github.com/lifthrasiir/esotope-bfc.git ~/esotope-bfc \
  && ln -s /usr/bin/python2.7 /usr/bin/python \
  && chmod +x /usr/bin/brainfuck
USER gitpod
