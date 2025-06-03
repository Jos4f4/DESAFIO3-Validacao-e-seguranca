INSERT INTO tb_city(name) VALUES ('São Paulo');
INSERT INTO tb_city(name) VALUES ('Brasília');
INSERT INTO tb_city(name) VALUES ('Fortaleza');
INSERT INTO tb_city(name) VALUES ('Salvador');
INSERT INTO tb_city(name) VALUES ('Manaus');
INSERT INTO tb_city(name) VALUES ('Curitiba');
INSERT INTO tb_city(name) VALUES ('Goiânia');
INSERT INTO tb_city(name) VALUES ('Belém');
INSERT INTO tb_city(name) VALUES ('Porto Alegre');
INSERT INTO tb_city(name) VALUES ('Rio de Janeiro');
INSERT INTO tb_city(name) VALUES ('Belo Horizonte');

INSERT INTO tb_event(name, date, url, city_id) VALUES ('Feira do Software', '2021-05-16', 'https://feiradosoftware.com', 1);
INSERT INTO tb_event(name, date, url, city_id) VALUES ('CCXP', '2021-04-13', 'https://ccxp.com.br', 1);
INSERT INTO tb_event(name, date, url, city_id) VALUES ('Congresso Linux', '2021-05-23', 'https://congressolinux.com.br', 2);
INSERT INTO tb_event(name, date, url, city_id) VALUES ('Semana Spring React', '2021-05-03', 'https://devsuperior.com.br', 3);

INSERT INTO tb_user (id, first_name, last_name, email, password) VALUES (1, 'Bob', 'User', 'bob@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (id, first_name, last_name, email, password) VALUES (2, 'Ana', 'Client', 'ana@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');

-- Inserção dos perfis (roles)
INSERT INTO tb_role (id, authority) VALUES (1, 'ROLE_CLIENT');
INSERT INTO tb_role (id, authority) VALUES (2, 'ROLE_ADMIN');

-- Associação dos usuários aos perfis
INSERT INTO tb_user_role (user_id, role_id) VALUES (1, 1);  -- Bob tem ROLE_CLIENT
INSERT INTO tb_user_role (user_id, role_id) VALUES (1, 2);  -- Bob tem ROLE_ADMIN
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 1);  -- Ana tem apenas ROLE_CLIENT