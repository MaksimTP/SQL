create table if not exists person_audit (
    created timestamptz default current_timestamp not null,
    type_event char default 'I' not null,
    row_id bigint not null,
    name varchar,
    age integer,
    gender varchar,
    address varchar
);

alter table person_audit add constraint ch_type_event check ( type_event in ('I', 'U', 'D') );
