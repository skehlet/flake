FROM python:2.7

RUN curl -O https://pypi.python.org/packages/source/t/tornado/tornado-4.3.tar.gz \
    && tar xvzf tornado-4.3.tar.gz \
    && cd tornado-4.3 \
    && python setup.py build \
    && python setup.py install

COPY flake.py /
COPY run.sh /

RUN chmod +x /flake.py /run.sh

EXPOSE 8888

CMD ["/run.sh"]
