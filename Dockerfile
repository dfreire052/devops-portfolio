# Lightweight nginx image serving the portfolio site.
FROM nginx:1.27-alpine

# Replace the default site config with our own (serves the site + /health).
COPY nginx/default.conf /etc/nginx/conf.d/default.conf

# Copy the static site content.
COPY site/ /usr/share/nginx/html/

EXPOSE 80

# Run nginx in the foreground.
CMD ["nginx", "-g", "daemon off;"]
