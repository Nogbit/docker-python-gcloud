FROM osgeo/gdal:ubuntu-small-latest 

## Pip
RUN apt-get install -y python3-pip --fix-missing --no-install-recommends

## Google Cloud SDK
RUN echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] https://packages.cloud.google.com/apt cloud-sdk main" | tee -a /etc/apt/sources.list.d/google-cloud-sdk.list && \
    apt-get install -y apt-transport-https ca-certificates gnupg --fix-missing --no-install-recommends && \
	curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key --keyring /usr/share/keyrings/cloud.google.gpg add - && \
    apt-get update -y && apt-get -y install google-cloud-sdk

CMD ["bash"]
