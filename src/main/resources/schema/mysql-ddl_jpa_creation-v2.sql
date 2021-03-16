create table groupe (id bigint not null auto_increment, deleted TINYINT(1), name varchar(255), job_id bigint, primary key (id)) engine=InnoDB;
create table job (id bigint not null auto_increment, deleted TINYINT(1), location varchar(255), name varchar(255), developer_id bigint, primary key (id)) engine=InnoDB;
create table person (id bigint not null auto_increment, deleted TINYINT(1), address varchar(255), name varchar(255), user_id varchar(255), primary key (id)) engine=InnoDB;
create table tag (id bigint not null auto_increment, deleted TINYINT(1), name varchar(255), primary key (id)) engine=InnoDB;
create table todo (id bigint not null auto_increment, deleted TINYINT(1), description varchar(255), details varchar(255), done TINYINT(1), person_id bigint, primary key (id)) engine=InnoDB;
create table todo_tag (id bigint not null auto_increment, deleted TINYINT(1), tag_id bigint, todo_id bigint, primary key (id)) engine=InnoDB;
create index IDXqu4q173yq0bh6v87k1g183ef on groupe (deleted);
create index IDXrvoysqqe7do8otuvjpcw6va2a on job (deleted);
create index IDXnvjyj0q3tytu8omupk3c1lqo3 on person (deleted);
create index IDXet9lnr2bq21k5tqy3q1k4kq6t on person (user_id);
create index IDX7d5pwoew1vd8v3y79wtlp283c on tag (deleted);
create index IDXqtuauvw3iuf4ejn25n9psw35a on todo (deleted);
create index IDXe41jw46fgjjqv2wsh0ptv0o1m on todo_tag (deleted);
alter table groupe add constraint FKp59mphxh8am13rry5wrxvgn1c foreign key (job_id) references job (id);
alter table job add constraint FK3ty91eq8oeii1l7u0s71d9i47 foreign key (developer_id) references person (id);
alter table todo add constraint FKt4goeu4k0iv12fofnnc9cnw7o foreign key (person_id) references person (id);
alter table todo_tag add constraint FK3w1xrmwsoykr0mqgah1yhfjqt foreign key (tag_id) references tag (id);
alter table todo_tag add constraint FKjb2k1x5n6dkhyjpht94d3ynnu foreign key (todo_id) references todo (id);