# Use a base image with Pandoc and LaTeX
FROM pandoc/latex

# Install Times New Roman font
RUN apk --no-cache add msttcorefonts-installer fontconfig \
  && update-ms-fonts \
  && fc-cache -f

# Set the working directory in the container
WORKDIR /data

# By default, run Pandoc to convert Markdown to PDF
ENTRYPOINT ["pandoc"]
