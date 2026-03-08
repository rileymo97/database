# Database

PostgreSQL database schema and seed data for the ecommerce platform.

## Overview

This repository contains the database schema and initial seed data for the ecommerce platform. It creates two tables: `products` and `orders`, and seeds the database with sample products.

## Schema

### products
- id - Primary key
- name - Product name
- price - Product price
- description - Product description
- created_at - Timestamp

### orders
- id - Primary key
- product_id - Reference to products table
- quantity - Number of items ordered
- total_price - Total cost of the order
- status - Order status (default: pending)
- created_at - Timestamp

## Prerequisites

- PostgreSQL installed and running

## Getting Started

1. Clone the repository
   git clone git@github.com:rileymo97/database.git

2. Set up environment variables
   cp .env.example .env
   Then open .env and fill in the required values

3. Run the schema and seed data
   psql -U postgres -d ecommerce -f init.sql

## Related Services
- ecommerce-frontend: https://github.com/rileymo97/ecommerce-frontend
- order-service: https://github.com/rileymo97/order-service
- product-service: https://github.com/rileymo97/product-service