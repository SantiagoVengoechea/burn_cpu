FROM nginx:alpine
RUN apk add --no-cache bash bc
COPY index.html /usr/share/nginx/html/index.html
COPY cpu_load.sh /cpu_load.sh
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /cpu_load.sh /entrypoint.sh
EXPOSE 80
CMD ["/entrypoint.sh"]
