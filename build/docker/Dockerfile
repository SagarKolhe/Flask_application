FROM python:3.7

COPY . /app

ENV ROOT_FOLDER=/app

WORKDIR /app

# Install dependencies
RUN /bin/bash /app/build/system/linux/build.sh

EXPOSE 5000

# Deploy  the project
ENTRYPOINT ["/bin/bash", "/app/build/system/linux/run.sh"]