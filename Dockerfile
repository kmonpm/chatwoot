FROM chatwoot/chatwoot:v4.11.1-ce

# Login page shell
COPY app/views/layouts/vueapp.html.erb /app/app/views/layouts/vueapp.html.erb

# Brand logos — override the pre-built image's brand assets
COPY public/brand-assets/logo.svg           /app/public/brand-assets/logo.svg
COPY public/brand-assets/logo_dark.svg      /app/public/brand-assets/logo_dark.svg
COPY public/brand-assets/logo_thumbnail.svg /app/public/brand-assets/logo_thumbnail.svg

# Email templates
COPY app/views/devise/mailer/confirmation_instructions.html.erb   /app/app/views/devise/mailer/confirmation_instructions.html.erb
COPY app/views/devise/mailer/reset_password_instructions.html.erb /app/app/views/devise/mailer/reset_password_instructions.html.erb
COPY app/views/devise/mailer/invitation_instructions.html.erb     /app/app/views/devise/mailer/invitation_instructions.html.erb
