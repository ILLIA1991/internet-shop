--USERS
Create a sequence user_seq start 1 increment 1

Creating Table Users (
 id bigserial primary key,
 archive boolean is not null,
 e-mail varchar(255),
 Name varchar(255),
 password varchar(255),
 Role of Varchar(255)
);

--BUCKET
Create a sequence at bucket_seq beginning of 1 increment 1.

Creating Table Segments (
 id bigserial primary key,
 user_id bigint
);

-- COMMUNICATION BETWEEN BUCKET AND USER
Edit the table if segments exist
 Adding buckets_fk_user constraints
 The foreign key (user_id) refers to users(id);

--CATEGORY
Create a sequence category_seq start 1 increment 1

Creating Table Categories (
 id bigserial primary key,
 Varchar Title(255)
);

--PRODUCTION
Create a sequence product_seq start 1 increment 1

Creating tabular products (
 id bigserial primary key,
 price numeric(19, 2),
 Varchar Title(255)
);

-- CATEGORY & PRODUCT
Creating a table products_categories (
 product_id bigint,
 category_id bigint
);

alter table if there is a products_categories
    Adding products_categories_fk_category constraints
    The foreign key (category_id) refers to the categories (id);

alter table if there is a products_categories
    Adding constraints products_categories_fk_product
    The foreign key (product_id) refers to products(id);

-- FOOD IN A BUCKET
Create table bucket_products (
                                 bucket_id bigint,
                                 product_id bigint
);

alter table if there is a bucket_products
    Adding constraints bucket_products_fk_product
    The foreign key (product_id) refers to products(id);

alter table if there is a bucket_products
    Adding bucket_products_fk_bucket constraints
    The foreign key (bucket_id) refers to buckets(id);

--ORDERS
Create a sequence order_seq start 1 increment 1

Creating Table Orders (
 id bigserial primary key,
 Address varchar(255),
 changed timestamp,
 Timestamp created
 varchar(255) status,
 sum numeric(19, 2),
 user_id bigint
);

Edit the table if orders exist
 Adding constraints orders_fk_user
 The foreign key (user_id) refers to users(id);

-- ORDER DETAILS
Create a sequence order_details_seq start 1 increment 1

Create table orders_details (
                                id bigserial primary key,
                                order_id bigint,
                                product_id bigint,
                                amount numeric(19, 2),
                                Numeric price(19, 2)
);

alter table if there is a orders_details
    Adding constraints orders_details_fk_order
    The foreign key (order_id) refers to orders(id);

alter table if there is a orders_details
    Adding constraints orders_details_fk_product
    The foreign key (product_id) refers to products(id);