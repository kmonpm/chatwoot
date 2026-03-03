FROM chatwoot/chatwoot:v4.11.1-ce

# Override layout (title + load CSS)
COPY app/views/layouts/vueapp.html.erb /app/app/views/layouts/vueapp.html.erb

# Serve our custom CSS from /brand.css
COPY custom/brand.css /app/public/brand.css
