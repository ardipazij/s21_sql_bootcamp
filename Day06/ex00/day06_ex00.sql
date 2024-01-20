CREATE TABLE IF NOT EXISTS person_discounts
(
    id          bigint primary key,
    person_id   bigint not null,
    pizzeria_id bigint not null,
    discount    numeric,
    constraint fk_person_discounts_person_id FOREIGN KEY (person_id) REFERENCES person (id),
    constraint fk_person_discounts_pizzeria_id FOREIGN KEY (pizzeria_id) REFERENCES pizzeria (id)
);