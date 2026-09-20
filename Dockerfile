# Stage 1: Build Frontend
FROM node:18 AS build-stage

WORKDIR /code

# Copy React project
COPY ./Frontend/ecommerce_inventory/ /code/Frontend/ecommerce_inventory/

WORKDIR /code/Frontend/ecommerce_inventory

# Install packages
RUN npm install

# Build frontend
RUN npm run build


# Stage 2: Build Backend
FROM python:3.11.0

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

WORKDIR /code

# Copy Django project
COPY ./Backend/EcommerceInventory /code/Backend/EcommerceInventory/

# Install Python packages
RUN pip install -r ./Backend/EcommerceInventory/requirements.txt

# Copy React static files to Django
COPY --from=build-stage /code/Frontend/ecommerce_inventory/build/static /code/Backend/EcommerceInventory/static/

# Copy React index.html to Django templates
COPY --from=build-stage /code/Frontend/ecommerce_inventory/build/index.html /code/Backend/EcommerceInventory/EcommerceInventory/templates/index.html

# Expose Gunicorn port
EXPOSE 8000

# Move into Django project
WORKDIR /code/Backend/EcommerceInventory

# Start Django with Gunicorn
CMD ["gunicorn", "EcommerceInventory.wsgi:application", "--bind", "0.0.0.0:8000"]