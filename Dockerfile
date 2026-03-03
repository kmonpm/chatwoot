FROM chatwoot/chatwoot:v4.11.1-ce

COPY app/views/layouts/vueapp.html.erb /app/app/views/layouts/vueapp.html.erb
COPY app/assets/stylesheets/brand.css /app/app/assets/stylesheets/brand.css
