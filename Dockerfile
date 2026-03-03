FROM chatwoot/chatwoot:v4.11.1-ce

# Override only the layout file we changed
COPY app/views/layouts/vueapp.html.erb /app/app/views/layouts/vueapp.html.erb
