FROM nginx:latest as builder
RUN rm -rf /usr/share/nginx/html/index.html 
ADD nginx.html /usr/share/nginx/html/index.html


FROM nginx:latest
RUN rm -rf /usr/share/nginx/html/index.html
COPY --from=builder /usr/share/nginx/html/index.html /usr/share/nginx/html/index.html
EXPOSE 80
