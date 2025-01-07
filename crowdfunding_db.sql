-- Drop table for Categories if it exists
DROP TABLE IF EXISTS categories CASCADE;

-- Create table for Categories
CREATE TABLE categories (
    category_id VARCHAR(50) PRIMARY KEY,
    category VARCHAR(255) NOT NULL
);

SELECT * FROM categories;

-- Drop table for Subcategories if it exists
DROP TABLE IF EXISTS subcategories CASCADE;

-- Create table for Subcategories
CREATE TABLE subcategories (
    subcategory_id VARCHAR(50) PRIMARY KEY,
    subcategory VARCHAR(255) NOT NULL
);

SELECT * FROM subcategories;

-- Drop table for Contacts if it exists
DROP TABLE IF EXISTS contacts CASCADE;

-- Create table for Contacts
CREATE TABLE contacts (
    contact_id INTEGER PRIMARY KEY,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE
);

SELECT * FROM contacts;


-- Drop table for Campaigns if it exists
DROP TABLE IF EXISTS campaigns CASCADE;

-- Create table for Campaigns
CREATE TABLE campaigns (
    cf_id INTEGER PRIMARY KEY,
    contact_id INTEGER NOT NULL,
    company_name VARCHAR(255) NOT NULL,
    description VARCHAR(500),
    goal FLOAT NOT NULL,
    pledged FLOAT NOT NULL,
    outcome VARCHAR(255) NOT NULL,
    backers_count INTEGER NOT NULL,
    country VARCHAR(255) NOT NULL,
    currency VARCHAR(255) NOT NULL,
    launch_date TIMESTAMP NOT NULL, -- Using TIMESTAMP instead of BIGINT
    end_date TIMESTAMP NOT NULL,   -- Using TIMESTAMP instead of BIGINT
    category_id VARCHAR(50) NOT NULL,
    subcategory_id VARCHAR(50) NOT NULL,
    FOREIGN KEY (contact_id) REFERENCES contacts (contact_id),
    FOREIGN KEY (category_id) REFERENCES categories (category_id),
    FOREIGN KEY (subcategory_id) REFERENCES subcategories (subcategory_id)
);

SELECT * FROM campaigns;
