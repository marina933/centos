FROM nginx
LABEL marina=test
RUN nginx sql curl ping 
EXPOSE 8080 
COPY ./text.sh /
RUN chmod +x text.sh
CMD ["postgres"]
