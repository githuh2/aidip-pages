FROM nginx:alpine

# Remove default config
RUN rm /etc/nginx/conf.d/default.conf

# Copy nginx template (uses $PORT variable)
COPY nginx.conf /etc/nginx/templates/default.conf.template

# Copy only the static site files (exclude WP/Django legacy)
COPY index.html style.css /usr/share/nginx/html/
COPY assets/ /usr/share/nginx/html/assets/
COPY patent/ /usr/share/nginx/html/patent/
COPY trademark/ /usr/share/nginx/html/trademark/
COPY design/ /usr/share/nginx/html/design/
COPY tribunal/ /usr/share/nginx/html/tribunal/
COPY ip-strategy/ /usr/share/nginx/html/ip-strategy/
COPY column/ /usr/share/nginx/html/column/
COPY faq/ /usr/share/nginx/html/faq/
COPY privacy/ /usr/share/nginx/html/privacy/
COPY disclaimer/ /usr/share/nginx/html/disclaimer/
COPY email-policy/ /usr/share/nginx/html/email-policy/

# Railway sets PORT env var; nginx:alpine auto-substitutes templates
ENV PORT=8080
EXPOSE 8080
CMD ["nginx", "-g", "daemon off;"]
