--liquibase formatted sql

--changeset adeel:ex_employees
create table ex_employees (
    id int primary key,
    name varchar(50) not null,
    address1 varchar(50),
    address2 varchar(50),
    city varchar(30)
)
--rollback drop table ex_employees

--changeset adeel:alter_ex_employees
alter table ex_employees rename column city to city_name;
--rollback alter table ex_employees rename column city_name to city;
