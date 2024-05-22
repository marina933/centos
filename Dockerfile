FROM nginx:latest
LABEL marina=test
RUN apt-get update && \
    apt-get install -y curl iputils-ping postgresql-client && \
    rm -rf /var/lib/apt/lists/* 
EXPOSE 8080 
COPY ./text.sh /
RUN chmod +x text.sh
CMD ["nginx", "-g", "daemon off;"]
