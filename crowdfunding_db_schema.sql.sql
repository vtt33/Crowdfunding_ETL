-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "categories" (
    "category_id" string   NOT NULL,
    "category" string   NOT NULL,
    CONSTRAINT "pk_categories" PRIMARY KEY (
        "category_id"
     )
);

CREATE TABLE "subcategories" (
    "subcategory_id" string   NOT NULL,
    "subcategory" string   NOT NULL,
    CONSTRAINT "pk_subcategories" PRIMARY KEY (
        "subcategory_id"
     )
);

CREATE TABLE "contacts" (
    "contact_id" int   NOT NULL,
    "first_name" string   NOT NULL,
    "last_name" string   NOT NULL,
    "email" string   NOT NULL,
    CONSTRAINT "pk_contacts" PRIMARY KEY (
        "contact_id"
     )
);

CREATE TABLE "campaigns" (
    "cf_id" int   NOT NULL,
    "contact_id" int   NOT NULL,
    "company_name" string   NOT NULL,
    "description" string   NOT NULL,
    "goal" float   NOT NULL,
    "pledged" float   NOT NULL,
    "outcome" string   NOT NULL,
    "backers_count" int   NOT NULL,
    "country" string   NOT NULL,
    "currency" string   NOT NULL,
    "launch_date" TIMESTAMP   NOT NULL,
    "end_date" TIMESTAMP   NOT NULL,
    "category_id" string   NOT NULL,
    "subcategory_id" string   NOT NULL,
    CONSTRAINT "pk_campaigns" PRIMARY KEY (
        "cf_id"
     )
);

ALTER TABLE "campaigns" ADD CONSTRAINT "fk_campaigns_contact_id" FOREIGN KEY("contact_id")
REFERENCES "contacts" ("contact_id");

ALTER TABLE "campaigns" ADD CONSTRAINT "fk_campaigns_category_id" FOREIGN KEY("category_id")
REFERENCES "categories" ("category_id");

ALTER TABLE "campaigns" ADD CONSTRAINT "fk_campaigns_subcategory_id" FOREIGN KEY("subcategory_id")
REFERENCES "subcategories" ("subcategory_id");

