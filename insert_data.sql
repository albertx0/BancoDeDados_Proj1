-- Departamentos
INSERT INTO DEPARTAMENTO (id_depart, nome) VALUES
(1, 'Ciência da Computação'),
(2, 'Matemática'),
(3, 'Engenharia');

-- Cursos
INSERT INTO CURSO (id_curso, nome, id_depart) VALUES
(1, 'Ciência da Computação', 1),
(2, 'Engenharia de Software', 1),
(3, 'Ciência de Dados', 1),
(4, 'Matemática Aplicada', 2),
(5, 'Engenharia Civil', 3);

-- Professores
INSERT INTO PROFESSOR (id_prof, nome, sobrenome, id_depart) VALUES
(1, 'Maria', 'Almeida', 1),
(2, 'João', 'Pereira', 2),
(3, 'Pedro', 'Souza', 3),
(4, 'Juliana', 'Lima', 3),
(5, 'João', 'Pereira', 2),
(6, 'Amanda', 'Almeida', 2),
(7, 'Maria', 'Rodrigues', 3),
(8, 'Amanda', 'Costa', 2),
(9, 'Ricardo', 'Pereira', 2),
(10, 'Ricardo', 'Gomes', 2),
(11, 'João', 'Costa', 2),
(12, 'Ana', 'Silva', 1),
(13, 'Amanda', 'Rodrigues', 2),
(14, 'Amanda', 'Santos', 1),
(15, 'Ricardo', 'Lima', 1),
(16, 'Ricardo', 'Lima', 3),
(17, 'Lucas', 'Rodrigues', 3),
(18, 'Amanda', 'Souza', 2),
(19, 'Ana', 'Souza', 3),
(20, 'Lucas', 'Oliveira', 1);

-- Alunos
INSERT INTO ALUNO (id_aluno, nome, sobrenome, ra, id_curso, semestre) VALUES
(1, 'Carlos', 'Lima', '2911-34232', 1, 6),
(2, 'Maria', 'Rodrigues', '5198-49421', 2, 2),
(3, 'Fernanda', 'Oliveira', '4618-54050', 4, 5),
(4, 'Maria', 'Pereira', '1047-51757', 4, 8),
(5, 'Amanda', 'Souza', '9524-74212', 1, 2),
(6, 'Amanda', 'Oliveira', '6330-43020', 1, 4),
(7, 'Fernanda', 'Costa', '2785-45675', 1, 9),
(8, 'Ana', 'Almeida', '1002-98973', 1, 3),
(9, 'Maria', 'Santos', '2605-89931', 5, 5),
(10, 'Maria', 'Souza', '7220-37687', 2, 7),
(11, 'Carlos', 'Pereira', '8073-28851', 3, 7),
(12, 'Maria', 'Santos', '1829-40380', 2, 3),
(13, 'Pedro', 'Oliveira', '5204-41628', 4, 9),
(14, 'João', 'Santos', '6409-54483', 4, 5),
(15, 'Ana', 'Souza', '8473-44237', 5, 4),
(16, 'Ana', 'Pereira', '6002-39987', 5, 1),
(17, 'Ana', 'Souza', '6364-33109', 5, 2),
(18, 'Lucas', 'Silva', '4231-37036', 5, 9),
(19, 'Pedro', 'Santos', '9915-92792', 5, 2),
(20, 'Juliana', 'Santos', '1852-50069', 2, 7),
(21, 'Lucas', 'Gomes', '9396-93473', 5, 7),
(22, 'Carlos', 'Santos', '6558-75653', 1, 8),
(23, 'Amanda', 'Souza', '1707-58358', 1, 2),
(24, 'Carlos', 'Silva', '4878-27416', 5, 9),
(25, 'Ana', 'Oliveira', '8330-64078', 3, 7),
(26, 'Juliana', 'Costa', '4357-54857', 5, 7),
(27, 'João', 'Gomes', '2939-79994', 4, 8),
(28, 'Maria', 'Souza', '6012-18635', 4, 6),
(29, 'Amanda', 'Costa', '4637-76380', 1, 5),
(30, 'Amanda', 'Almeida', '6364-24293', 1, 3),
(31, 'Maria', 'Almeida', '6977-75745', 4, 7),
(32, 'Maria', 'Silva', '6403-43502', 4, 6),
(33, 'Ana', 'Silva', '4498-24268', 3, 4),
(34, 'Carlos', 'Rodrigues', '8671-91066', 4, 8),
(35, 'João', 'Lima', '1176-84862', 3, 10),
(36, 'Juliana', 'Santos', '9881-25374', 3, 4),
(37, 'Amanda', 'Souza', '5465-21342', 2, 5),
(38, 'Carlos', 'Gomes', '3051-95691', 3, 6),
(39, 'Amanda', 'Gomes', '6657-41238', 4, 1),
(40, 'Juliana', 'Pereira', '4948-46263', 1, 2),
(41, 'Ana', 'Rodrigues', '7837-26979', 1, 10),
(42, 'Maria', 'Gomes', '9840-68693', 3, 10),
(43, 'João', 'Silva', '6091-64590', 4, 3),
(44, 'Fernanda', 'Pereira', '6619-75518', 2, 10),
(45, 'Amanda', 'Costa', '6565-92901', 3, 9),
(46, 'Ricardo', 'Santos', '4170-93428', 3, 9),
(47, 'Ricardo', 'Lima', '1987-84466', 1, 3),
(48, 'Fernanda', 'Lima', '9914-86073', 3, 9),
(49, 'Lucas', 'Gomes', '5446-71056', 2, 8),
(50, 'Lucas', 'Oliveira', '4383-94858', 4, 2),
(51, 'Juliana', 'Silva', '2933-79974', 3, 2),
(52, 'Carlos', 'Oliveira', '8403-84157', 1, 6),
(53, 'Carlos', 'Oliveira', '4665-44101', 1, 3),
(54, 'Maria', 'Lima', '7498-73904', 3, 8),
(55, 'Amanda', 'Costa', '8056-18545', 4, 1),
(56, 'Amanda', 'Lima', '7207-20551', 1, 1),
(57, 'Ricardo', 'Lima', '1746-20929', 4, 6),
(58, 'Carlos', 'Almeida', '4096-42332', 4, 8),
(59, 'Fernanda', 'Santos', '8379-87316', 1, 5),
(60, 'Maria', 'Santos', '8733-62792', 2, 10),
(61, 'Ricardo', 'Lima', '7680-86339', 5, 1),
(62, 'João', 'Gomes', '3169-22215', 4, 4),
(63, 'João', 'Costa', '7957-85334', 5, 3),
(64, 'Juliana', 'Oliveira', '1384-32942', 5, 1),
(65, 'Maria', 'Lima', '1416-57847', 3, 3),
(66, 'Lucas', 'Rodrigues', '3096-60343', 2, 7),
(67, 'Maria', 'Gomes', '2264-22080', 1, 6),
(68, 'Amanda', 'Souza', '1200-75271', 1, 9),
(69, 'Fernanda', 'Santos', '5734-36673', 3, 4),
(70, 'Pedro', 'Souza', '5126-46316', 2, 3),
(71, 'Pedro', 'Almeida', '7109-89089', 5, 8),
(72, 'Pedro', 'Almeida', '3924-74413', 2, 10),
(73, 'Carlos', 'Oliveira', '2956-82602', 2, 9),
(74, 'Ana', 'Gomes', '7060-69656', 5, 5),
(75, 'Pedro', 'Oliveira', '5924-53748', 2, 3),
(76, 'Ricardo', 'Rodrigues', '2856-61999', 3, 10),
(77, 'Carlos', 'Almeida', '1924-83481', 3, 9),
(78, 'Amanda', 'Rodrigues', '2029-52869', 4, 4),
(79, 'Maria', 'Silva', '7050-52298', 4, 5),
(80, 'Carlos', 'Santos', '1524-68452', 5, 1),
(81, 'João', 'Costa', '5403-30903', 1, 9),
(82, 'Ricardo', 'Oliveira', '4247-89323', 1, 8),
(83, 'Fernanda', 'Costa', '1007-46005', 2, 8),
(84, 'Pedro', 'Almeida', '4597-66608', 5, 3),
(85, 'Juliana', 'Silva', '9261-52520', 1, 2),
(86, 'Pedro', 'Pereira', '7766-10755', 5, 6),
(87, 'Fernanda', 'Costa', '3979-43616', 2, 7),
(88, 'Maria', 'Almeida', '5341-94428', 5, 5),
(89, 'Juliana', 'Gomes', '3165-66025', 4, 5),
(90, 'Maria', 'Costa', '4679-58199', 3, 5),
(91, 'Carlos', 'Lima', '2503-82359', 3, 4),
(92, 'Pedro', 'Souza', '6060-35632', 4, 6),
(93, 'Juliana', 'Rodrigues', '5067-75601', 1, 4),
(94, 'Ricardo', 'Almeida', '5491-39573', 1, 3),
(95, 'Juliana', 'Gomes', '9220-19703', 1, 10),
(96, 'Juliana', 'Silva', '2304-84774', 1, 2),
(97, 'João', 'Rodrigues', '4074-20243', 1, 3),
(98, 'João', 'Souza', '5975-16649', 3, 7),
(99, 'João', 'Souza', '8449-93644', 4, 7),
(100, 'João', 'Almeida', '5971-46873', 3, 10);

-- Disciplinas
INSERT INTO DISCIPLINA (id_disc, nome, codigo, id_curso) VALUES
(1, 'Disciplina 1', 'DISC001', 4),
(2, 'Disciplina 2', 'DISC002', 1),
(3, 'Disciplina 3', 'DISC003', 5),
(4, 'Disciplina 4', 'DISC004', 4),
(5, 'Disciplina 5', 'DISC005', 2),
(6, 'Disciplina 6', 'DISC006', 5),
(7, 'Disciplina 7', 'DISC007', 4),
(8, 'Disciplina 8', 'DISC008', 5),
(9, 'Disciplina 9', 'DISC009', 1),
(10, 'Disciplina 10', 'DISC010', 2),
(11, 'Disciplina 11', 'DISC011', 2),
(12, 'Disciplina 12', 'DISC012', 3),
(13, 'Disciplina 13', 'DISC013', 3),
(14, 'Disciplina 14', 'DISC014', 1),
(15, 'Disciplina 15', 'DISC015', 2),
(16, 'Disciplina 16', 'DISC016', 1),
(17, 'Disciplina 17', 'DISC017', 5),
(18, 'Disciplina 18', 'DISC018', 2),
(19, 'Disciplina 19', 'DISC019', 1),
(20, 'Disciplina 20', 'DISC020', 4),
(21, 'Disciplina 21', 'DISC021', 3),
(22, 'Disciplina 22', 'DISC022', 5),
(23, 'Disciplina 23', 'DISC023', 1),
(24, 'Disciplina 24', 'DISC024', 4),
(25, 'Disciplina 25', 'DISC025', 2),
(26, 'Disciplina 26', 'DISC026', 1),
(27, 'Disciplina 27', 'DISC027', 3),
(28, 'Disciplina 28', 'DISC028', 4),
(29, 'Disciplina 29', 'DISC029', 2),
(30, 'Disciplina 30', 'DISC030', 1);

-- Histórico Escolar
INSERT INTO HISTORICO_ESCOLAR (id_aluno, id_disc, semestre, nota, situacao) VALUES
(6, 27, '2019.1', 7.68, 'Aprovado',
(61, 1, '2020.1', 2.98, 'Reprovado',
(85, 15, '2019.2', 4.9, 'Reprovado',
(41, 9, '2023.2', 8.41, 'Aprovado',
(84, 14, '2018.2', 6.41, 'Aprovado',
(32, 1, '2020.1', 0.37, 'Reprovado',
(2, 10, '2020.2', 2.98, 'Reprovado',
(86, 15, '2020.1', 3.97, 'Reprovado',
(8, 6, '2021.1', 5.88, 'Aprovado',
(47, 10, '2022.2', 8.81, 'Aprovado',
(45, 26, '2021.1', 2.14, 'Reprovado',
(86, 14, '2019.2', 3.24, 'Reprovado',
(21, 14, '2019.2', 1.12, 'Reprovado',
(89, 11, '2019.2', 0.87, 'Reprovado',
(98, 5, '2021.1', 8.42, 'Aprovado',
(72, 21, '2023.2', 8.32, 'Aprovado',
(84, 7, '2020.2', 4.22, 'Reprovado',
(68, 18, '2019.1', 6.07, 'Aprovado',
(68, 3, '2020.1', 4.6, 'Reprovado',
(85, 1, '2021.1', 1.49, 'Reprovado',
(49, 5, '2022.2', 9.84, 'Aprovado',
(59, 1, '2021.2', 6.95, 'Aprovado',
(19, 8, '2021.1', 7.16, 'Aprovado',
(84, 16, '2021.1', 2.89, 'Reprovado',
(9, 6, '2021.2', 2.72, 'Reprovado',
(13, 28, '2022.1', 9.51, 'Aprovado',
(46, 7, '2018.2', 8.0, 'Aprovado',
(88, 27, '2020.1', 2.06, 'Reprovado',
(63, 2, '2021.2', 5.85, 'Aprovado',
(87, 28, '2020.1', 3.95, 'Reprovado',
(49, 5, '2020.2', 2.13, 'Reprovado',
(67, 24, '2021.1', 4.24, 'Reprovado',
(12, 23, '2021.1', 0.48, 'Reprovado',
(1, 12, '2018.2', 5.51, 'Aprovado',
(45, 10, '2018.2', 0.42, 'Reprovado',
(6, 25, '2018.1', 9.09, 'Aprovado',
(80, 5, '2018.2', 2.96, 'Reprovado',
(16, 1, '2021.2', 8.79, 'Aprovado',
(96, 23, '2022.2', 2.09, 'Reprovado',
(98, 19, '2021.1', 0.06, 'Reprovado',
(35, 12, '2019.1', 3.5, 'Reprovado',
(100, 21, '2023.2', 4.67, 'Reprovado',
(98, 12, '2020.1', 0.63, 'Reprovado',
(14, 9, '2019.1', 9.45, 'Aprovado',
(8, 1, '2018.2', 1.72, 'Reprovado',
(86, 6, '2018.2', 6.53, 'Aprovado',
(84, 13, '2023.1', 2.77, 'Reprovado',
(29, 16, '2022.1', 4.44, 'Reprovado',
(74, 17, '2022.1', 4.15, 'Reprovado',
(52, 5, '2023.1', 8.94, 'Aprovado',
(83, 9, '2020.2', 1.36, 'Reprovado',
(82, 18, '2018.1', 9.16, 'Aprovado',
(51, 20, '2018.1', 9.95, 'Aprovado',
(23, 19, '2021.2', 9.09, 'Aprovado',
(1, 26, '2018.1', 8.6, 'Aprovado',
(66, 10, '2018.2', 4.31, 'Reprovado',
(63, 16, '2022.2', 4.56, 'Reprovado',
(86, 14, '2019.2', 1.59, 'Reprovado',
(7, 29, '2018.2', 5.82, 'Aprovado',
(82, 30, '2020.1', 2.06, 'Reprovado',
(14, 24, '2021.2', 6.83, 'Aprovado',
(46, 26, '2021.1', 7.36, 'Aprovado',
(55, 14, '2022.2', 6.96, 'Aprovado',
(99, 26, '2021.2', 1.34, 'Reprovado',
(56, 15, '2022.1', 4.06, 'Reprovado',
(43, 26, '2022.1', 5.29, 'Aprovado',
(47, 23, '2023.2', 6.56, 'Aprovado',
(40, 29, '2022.1', 7.72, 'Aprovado',
(9, 19, '2020.1', 1.35, 'Reprovado',
(99, 22, '2022.1', 2.34, 'Reprovado',
(42, 13, '2018.1', 4.48, 'Reprovado',
(75, 10, '2023.1', 0.7, 'Reprovado',
(46, 20, '2019.1', 5.45, 'Aprovado',
(98, 12, '2020.2', 0.02, 'Reprovado',
(38, 6, '2018.2', 1.23, 'Reprovado',
(91, 21, '2021.2', 1.45, 'Reprovado',
(25, 17, '2018.1', 0.67, 'Reprovado',
(32, 24, '2018.1', 0.62, 'Reprovado',
(6, 14, '2018.2', 0.74, 'Reprovado',
(48, 3, '2019.2', 3.55, 'Reprovado',
(98, 15, '2022.1', 0.14, 'Reprovado',
(88, 10, '2020.2', 4.2, 'Reprovado',
(3, 16, '2023.1', 6.61, 'Aprovado',
(73, 4, '2021.1', 2.95, 'Reprovado',
(75, 21, '2021.1', 3.57, 'Reprovado',
(55, 22, '2023.2', 0.15, 'Reprovado',
(64, 26, '2019.1', 7.12, 'Aprovado',
(75, 19, '2019.2', 1.19, 'Reprovado',
(15, 2, '2023.2', 4.02, 'Reprovado',
(63, 12, '2023.1', 7.34, 'Aprovado',
(52, 24, '2023.1', 2.31, 'Reprovado',
(24, 26, '2018.2', 7.69, 'Aprovado',
(22, 25, '2022.2', 4.81, 'Reprovado',
(17, 30, '2022.1', 6.6, 'Aprovado',
(48, 21, '2021.2', 8.69, 'Aprovado',
(32, 30, '2019.1', 0.23, 'Reprovado',
(38, 13, '2022.1', 3.73, 'Reprovado',
(31, 9, '2019.1', 7.77, 'Aprovado',
(34, 22, '2021.2', 8.12, 'Aprovado',
(62, 29, '2018.1', 3.58, 'Reprovado',
(37, 13, '2018.1', 1.71, 'Reprovado',
(58, 24, '2019.1', 2.99, 'Reprovado',
(27, 20, '2019.1', 1.4, 'Reprovado',
(17, 13, '2020.1', 9.97, 'Aprovado',
(86, 16, '2021.1', 5.54, 'Aprovado',
(1, 25, '2023.2', 0.29, 'Reprovado',
(74, 16, '2018.1', 2.82, 'Reprovado',
(51, 6, '2022.1', 9.99, 'Aprovado',
(90, 19, '2019.1', 4.67, 'Reprovado',
(34, 11, '2020.1', 1.56, 'Reprovado',
(60, 23, '2023.1', 2.55, 'Reprovado',
(76, 4, '2022.2', 5.75, 'Aprovado',
(93, 30, '2019.1', 5.55, 'Aprovado',
(57, 1, '2019.1', 1.75, 'Reprovado',
(6, 2, '2018.2', 6.74, 'Aprovado',
(17, 21, '2019.2', 2.4, 'Reprovado',
(58, 14, '2020.2', 8.4, 'Aprovado',
(60, 26, '2019.1', 8.87, 'Aprovado',
(93, 15, '2019.2', 0.08, 'Reprovado',
(27, 1, '2019.1', 0.91, 'Reprovado',
(89, 19, '2018.2', 5.41, 'Aprovado',
(54, 4, '2019.2', 7.71, 'Aprovado',
(70, 24, '2020.2', 0.71, 'Reprovado',
(69, 25, '2018.2', 6.47, 'Aprovado',
(25, 28, '2021.1', 9.71, 'Aprovado',
(22, 6, '2019.2', 4.64, 'Reprovado',
(65, 6, '2021.1', 1.81, 'Reprovado',
(75, 2, '2021.1', 8.14, 'Aprovado',
(25, 17, '2022.1', 4.52, 'Reprovado',
(17, 3, '2022.2', 9.86, 'Aprovado',
(76, 8, '2019.1', 1.95, 'Reprovado',
(54, 9, '2018.1', 2.12, 'Reprovado',
(23, 12, '2023.2', 9.57, 'Aprovado',
(83, 26, '2021.2', 5.25, 'Aprovado',
(21, 13, '2018.1', 1.38, 'Reprovado',
(63, 27, '2023.2', 5.84, 'Aprovado',
(72, 14, '2021.2', 9.24, 'Aprovado',
(32, 22, '2023.1', 3.33, 'Reprovado',
(77, 24, '2021.2', 8.72, 'Aprovado',
(21, 4, '2022.1', 6.38, 'Aprovado',
(76, 19, '2022.1', 2.36, 'Reprovado',
(93, 29, '2018.1', 4.19, 'Reprovado',
(27, 14, '2022.1', 4.13, 'Reprovado',
(87, 3, '2020.1', 7.75, 'Aprovado',
(47, 6, '2023.2', 7.59, 'Aprovado',
(6, 20, '2022.1', 5.08, 'Aprovado',
(85, 30, '2022.1', 5.75, 'Aprovado',
(31, 9, '2019.2', 6.12, 'Aprovado',
(46, 22, '2022.2', 8.61, 'Aprovado',
(52, 22, '2018.2', 2.61, 'Reprovado',
(94, 9, '2021.1', 4.71, 'Reprovado',
(90, 16, '2023.1', 1.38, 'Reprovado',
(24, 26, '2021.1', 4.77, 'Reprovado',
(79, 1, '2023.2', 5.14, 'Aprovado',
(40, 1, '2018.2', 0.65, 'Reprovado',
(85, 28, '2023.1', 2.52, 'Reprovado',
(80, 23, '2020.2', 5.0, 'Aprovado',
(34, 12, '2021.1', 3.73, 'Reprovado',
(79, 9, '2021.2', 5.79, 'Aprovado',
(60, 11, '2021.1', 7.31, 'Aprovado',
(78, 11, '2018.1', 1.78, 'Reprovado',
(76, 19, '2021.1', 9.48, 'Aprovado',
(16, 13, '2020.2', 9.96, 'Aprovado',
(29, 5, '2022.2', 9.08, 'Aprovado',
(87, 11, '2018.1', 4.02, 'Reprovado',
(43, 7, '2023.2', 9.81, 'Aprovado',
(91, 23, '2019.1', 4.85, 'Reprovado',
(2, 21, '2021.1', 1.75, 'Reprovado',
(1, 17, '2021.2', 5.6, 'Aprovado',
(99, 29, '2023.2', 9.82, 'Aprovado',
(19, 23, '2021.2', 0.01, 'Reprovado',
(19, 19, '2020.1', 5.45, 'Aprovado',
(55, 12, '2022.1', 5.7, 'Aprovado',
(72, 27, '2018.1', 6.1, 'Aprovado',
(80, 26, '2023.2', 7.93, 'Aprovado',
(5, 8, '2023.2', 4.97, 'Reprovado',
(89, 19, '2022.1', 7.85, 'Aprovado',
(95, 14, '2021.2', 0.88, 'Reprovado',
(2, 2, '2018.1', 5.95, 'Aprovado',
(47, 27, '2018.2', 5.1, 'Aprovado',
(86, 14, '2022.1', 0.67, 'Reprovado',
(97, 14, '2022.2', 5.54, 'Aprovado',
(83, 12, '2019.1', 1.09, 'Reprovado',
(52, 2, '2020.1', 7.43, 'Aprovado',
(81, 8, '2022.2', 1.86, 'Reprovado',
(74, 10, '2023.2', 4.41, 'Reprovado',
(25, 17, '2020.2', 8.0, 'Aprovado',
(25, 19, '2021.2', 1.82, 'Reprovado',
(40, 12, '2023.1', 8.06, 'Aprovado',
(2, 22, '2023.2', 0.85, 'Reprovado',
(54, 3, '2022.2', 0.95, 'Reprovado',
(13, 5, '2020.2', 4.41, 'Reprovado',
(93, 27, '2021.1', 4.96, 'Reprovado',
(17, 25, '2018.2', 5.22, 'Aprovado',
(36, 7, '2019.2', 1.67, 'Reprovado',
(8, 21, '2020.1', 4.95, 'Reprovado',
(62, 30, '2020.1', 4.95, 'Reprovado',
(85, 4, '2022.2', 6.87, 'Aprovado',
(37, 6, '2022.2', 0.06, 'Reprovado',
(84, 1, '2020.1', 5.21, 'Aprovado',
(27, 7, '2019.1', 7.14, 'Aprovado',
(1, 5, '2019.1', 8.19, 'Aprovado',
(39, 8, '2023.1', 2.32, 'Reprovado',
(12, 16, '2023.1', 2.74, 'Reprovado',
(23, 1, '2018.2', 7.95, 'Aprovado',
(14, 22, '2018.1', 6.18, 'Aprovado',
(43, 14, '2019.1', 9.49, 'Aprovado',
(13, 1, '2021.1', 9.65, 'Aprovado',
(69, 9, '2023.1', 2.0, 'Reprovado',
(46, 6, '2019.2', 9.57, 'Aprovado',
(84, 17, '2020.2', 9.41, 'Aprovado',
(42, 3, '2023.2', 0.7, 'Reprovado',
(83, 1, '2018.1', 6.81, 'Aprovado',
(29, 30, '2023.1', 5.49, 'Aprovado',
(1, 18, '2019.1', 7.57, 'Aprovado',
(24, 21, '2021.1', 6.55, 'Aprovado',
(52, 22, '2019.2', 5.62, 'Aprovado',
(64, 27, '2023.1', 6.38, 'Aprovado',
(18, 18, '2023.2', 3.82, 'Reprovado',
(51, 24, '2023.2', 6.11, 'Aprovado',
(88, 14, '2021.2', 3.82, 'Reprovado',
(4, 22, '2018.1', 5.89, 'Aprovado',
(55, 2, '2022.2', 9.31, 'Aprovado',
(51, 19, '2023.1', 5.24, 'Aprovado',
(72, 2, '2023.1', 8.34, 'Aprovado',
(94, 15, '2021.1', 3.93, 'Reprovado',
(57, 5, '2019.2', 2.66, 'Reprovado',
(96, 18, '2019.2', 1.23, 'Reprovado',
(32, 26, '2020.1', 8.03, 'Aprovado',
(87, 2, '2020.1', 0.11, 'Reprovado',
(95, 1, '2020.1', 5.23, 'Aprovado',
(8, 29, '2023.2', 0.92, 'Reprovado',
(67, 9, '2018.2', 6.65, 'Aprovado',
(55, 26, '2019.1', 1.73, 'Reprovado',
(90, 26, '2018.1', 4.0, 'Reprovado',
(22, 8, '2021.2', 9.45, 'Aprovado',
(25, 19, '2021.1', 6.94, 'Aprovado',
(97, 18, '2022.2', 7.75, 'Aprovado',
(53, 4, '2022.2', 0.42, 'Reprovado',
(46, 27, '2023.1', 1.71, 'Reprovado',
(54, 14, '2021.1', 0.45, 'Reprovado',
(13, 21, '2019.2', 5.91, 'Aprovado',
(36, 4, '2018.2', 4.14, 'Reprovado',
(67, 11, '2023.2', 1.76, 'Reprovado',
(12, 18, '2021.2', 9.24, 'Aprovado',
(48, 29, '2021.2', 5.73, 'Aprovado',
(61, 12, '2021.2', 9.94, 'Aprovado',
(94, 17, '2018.1', 0.92, 'Reprovado',
(69, 25, '2020.2', 7.74, 'Aprovado',
(66, 23, '2021.2', 9.56, 'Aprovado',
(33, 28, '2020.2', 2.9, 'Reprovado',
(79, 11, '2021.2', 8.25, 'Aprovado',
(2, 12, '2019.2', 2.64, 'Reprovado',
(33, 19, '2020.2', 8.25, 'Aprovado',
(72, 18, '2023.1', 2.38, 'Reprovado',
(21, 11, '2020.2', 4.39, 'Reprovado',
(1, 15, '2019.2', 6.58, 'Aprovado',
(86, 24, '2019.2', 7.33, 'Aprovado',
(74, 14, '2019.2', 6.39, 'Aprovado',
(85, 23, '2022.2', 5.54, 'Aprovado',
(46, 6, '2019.2', 4.39, 'Reprovado',
(60, 15, '2018.1', 1.52, 'Reprovado',
(67, 2, '2021.2', 4.33, 'Reprovado',
(76, 13, '2018.2', 5.93, 'Aprovado',
(24, 9, '2022.2', 1.98, 'Reprovado',
(53, 29, '2019.2', 1.17, 'Reprovado',
(6, 24, '2022.1', 1.09, 'Reprovado',
(71, 3, '2021.2', 9.08, 'Aprovado',
(12, 28, '2023.1', 0.44, 'Reprovado',
(96, 20, '2021.2', 9.77, 'Aprovado',
(57, 21, '2023.1', 8.26, 'Aprovado',
(6, 7, '2019.1', 4.65, 'Reprovado',
(82, 1, '2021.2', 3.33, 'Reprovado',
(30, 9, '2021.2', 0.48, 'Reprovado',
(82, 6, '2023.1', 9.28, 'Aprovado',
(80, 23, '2021.1', 7.78, 'Aprovado',
(33, 16, '2019.2', 1.8, 'Reprovado',
(61, 30, '2022.1', 5.1, 'Aprovado',
(79, 16, '2019.1', 4.35, 'Reprovado',
(11, 29, '2022.1', 3.35, 'Reprovado',
(42, 9, '2023.1', 1.6, 'Reprovado',
(13, 1, '2023.1', 4.05, 'Reprovado',
(36, 12, '2022.1', 1.7, 'Reprovado',
(39, 17, '2018.2', 3.52, 'Reprovado',
(54, 22, '2023.1', 5.07, 'Aprovado',
(36, 11, '2021.2', 9.88, 'Aprovado',
(65, 17, '2020.2', 7.35, 'Aprovado',
(48, 6, '2018.2', 2.15, 'Reprovado',
(7, 7, '2023.1', 6.45, 'Aprovado',
(67, 1, '2021.1', 2.4, 'Reprovado',
(60, 13, '2021.2', 6.47, 'Aprovado',
(60, 14, '2022.1', 3.45, 'Reprovado',
(48, 16, '2022.2', 9.18, 'Aprovado',
(12, 1, '2021.1', 6.87, 'Aprovado',
(90, 1, '2018.1', 4.94, 'Reprovado',
(80, 13, '2023.1', 6.79, 'Aprovado',
(40, 26, '2023.2', 0.44, 'Reprovado',
(14, 16, '2021.1', 1.46, 'Reprovado',
(19, 11, '2018.1', 0.41, 'Reprovado',
(70, 4, '2019.1', 5.9, 'Aprovado',
(46, 3, '2018.2', 5.15, 'Aprovado',
(11, 17, '2022.1', 4.0, 'Reprovado',
(42, 20, '2021.2', 6.35, 'Aprovado',
(14, 9, '2022.2', 7.68, 'Aprovado',
(27, 12, '2021.2', 5.91, 'Aprovado',
(83, 3, '2018.1', 1.8, 'Reprovado',
(6, 22, '2019.1', 6.67, 'Aprovado',
(57, 12, '2023.2', 4.17, 'Reprovado',
(22, 30, '2023.1', 7.79, 'Aprovado',
(95, 26, '2021.2', 6.99, 'Aprovado',
(94, 16, '2019.2', 4.41, 'Reprovado',
(36, 22, '2021.1', 0.66, 'Reprovado',
(4, 25, '2021.2', 2.75, 'Reprovado',
(39, 3, '2019.1', 9.75, 'Aprovado',
(43, 15, '2021.1', 7.35, 'Aprovado',
(77, 21, '2022.1', 7.55, 'Aprovado',
(37, 27, '2018.2', 5.57, 'Aprovado',
(75, 23, '2023.1', 8.31, 'Aprovado',
(25, 17, '2019.2', 5.42, 'Aprovado',
(81, 18, '2022.1', 9.27, 'Aprovado',
(80, 15, '2019.1', 6.7, 'Aprovado',
(72, 15, '2019.1', 9.49, 'Aprovado',
(39, 1, '2019.1', 7.65, 'Aprovado',
(47, 26, '2019.2', 3.72, 'Reprovado',
(89, 18, '2019.1', 1.85, 'Reprovado',
(88, 30, '2020.1', 0.65, 'Reprovado',
(62, 10, '2018.1', 4.56, 'Reprovado',
(4, 4, '2021.2', 9.5, 'Aprovado',
(99, 6, '2022.2', 8.59, 'Aprovado',
(16, 21, '2022.2', 4.77, 'Reprovado',
(13, 20, '2023.2', 6.6, 'Aprovado',
(54, 19, '2023.1', 9.76, 'Aprovado',
(25, 8, '2021.2', 1.52, 'Reprovado',
(19, 4, '2020.2', 0.12, 'Reprovado',
(41, 21, '2019.1', 5.98, 'Aprovado',
(20, 27, '2022.1', 5.57, 'Aprovado',
(17, 12, '2021.1', 1.52, 'Reprovado',
(12, 3, '2023.2', 5.56, 'Aprovado',
(40, 3, '2022.2', 0.32, 'Reprovado',
(47, 26, '2023.1', 4.25, 'Reprovado',
(14, 3, '2022.1', 5.49, 'Aprovado',
(67, 28, '2019.2', 4.36, 'Reprovado',
(83, 9, '2018.2', 4.77, 'Reprovado',
(65, 3, '2023.1', 9.42, 'Aprovado',
(16, 4, '2022.2', 5.77, 'Aprovado',
(52, 8, '2023.1', 6.77, 'Aprovado',
(11, 4, '2018.1', 5.39, 'Aprovado',
(86, 11, '2022.1', 1.83, 'Reprovado',
(83, 27, '2023.2', 5.61, 'Aprovado',
(93, 21, '2020.2', 9.68, 'Aprovado',
(100, 15, '2021.2', 1.84, 'Reprovado',
(36, 27, '2019.1', 5.94, 'Aprovado',
(98, 26, '2023.1', 7.06, 'Aprovado',
(60, 20, '2022.2', 6.78, 'Aprovado',
(17, 20, '2020.2', 2.68, 'Reprovado',
(76, 12, '2022.2', 1.84, 'Reprovado',
(70, 18, '2023.1', 1.04, 'Reprovado',
(49, 12, '2022.2', 0.17, 'Reprovado',
(36, 5, '2018.2', 2.58, 'Reprovado',
(3, 14, '2021.2', 1.36, 'Reprovado',
(30, 16, '2021.1', 1.36, 'Reprovado',
(24, 22, '2023.1', 1.82, 'Reprovado',
(71, 3, '2023.2', 6.83, 'Aprovado',
(36, 17, '2022.1', 3.2, 'Reprovado',
(46, 29, '2021.1', 9.67, 'Aprovado',
(41, 27, '2019.1', 6.23, 'Aprovado',
(47, 29, '2021.2', 3.69, 'Reprovado',
(64, 3, '2020.2', 8.75, 'Aprovado',
(20, 7, '2021.2', 8.78, 'Aprovado',
(36, 13, '2021.1', 5.52, 'Aprovado',
(24, 4, '2020.2', 2.52, 'Reprovado',
(41, 23, '2023.2', 4.54, 'Reprovado',
(13, 4, '2023.1', 7.24, 'Aprovado',
(90, 12, '2018.1', 4.43, 'Reprovado',
(85, 9, '2021.1', 7.47, 'Aprovado',
(42, 18, '2018.2', 1.07, 'Reprovado',
(45, 23, '2020.2', 0.01, 'Reprovado',
(2, 5, '2022.2', 6.14, 'Aprovado',
(91, 29, '2019.2', 3.64, 'Reprovado',
(49, 11, '2018.2', 8.06, 'Aprovado',
(30, 13, '2021.2', 1.21, 'Reprovado',
(2, 18, '2020.2', 3.14, 'Reprovado',
(77, 15, '2020.2', 1.67, 'Reprovado',
(54, 14, '2022.2', 1.76, 'Reprovado',
(56, 13, '2022.2', 9.57, 'Aprovado',
(11, 13, '2023.1', 7.19, 'Aprovado',
(46, 24, '2023.1', 0.47, 'Reprovado',
(81, 23, '2021.1', 4.97, 'Reprovado',
(96, 15, '2021.1', 1.83, 'Reprovado',
(69, 12, '2019.1', 5.11, 'Aprovado',
(50, 25, '2022.1', 5.23, 'Aprovado',
(66, 1, '2023.1', 7.65, 'Aprovado',
(54, 11, '2018.2', 7.76, 'Aprovado',
(57, 11, '2020.2', 4.59, 'Reprovado',
(39, 11, '2019.1', 5.94, 'Aprovado',
(88, 29, '2020.2', 8.8, 'Aprovado',
(27, 6, '2020.1', 7.95, 'Aprovado',
(64, 24, '2023.2', 9.84, 'Aprovado',
(74, 5, '2018.1', 9.53, 'Aprovado',
(15, 22, '2023.1', 7.53, 'Aprovado',
(6, 5, '2018.2', 3.3, 'Reprovado',
(7, 29, '2021.2', 9.11, 'Aprovado',
(97, 9, '2020.2', 9.84, 'Aprovado',
(9, 26, '2023.1', 5.0, 'Aprovado',
(67, 23, '2020.2', 1.81, 'Reprovado',
(1, 21, '2021.1', 2.97, 'Reprovado',
(19, 3, '2021.2', 7.91, 'Aprovado',
(3, 2, '2021.1', 2.83, 'Reprovado',
(27, 20, '2023.2', 3.7, 'Reprovado',
(30, 3, '2019.1', 1.19, 'Reprovado',
(38, 10, '2018.2', 1.82, 'Reprovado',
(98, 28, '2022.1', 0.41, 'Reprovado',
(12, 16, '2019.1', 9.24, 'Aprovado',
(24, 10, '2023.1', 3.14, 'Reprovado',
(15, 29, '2020.2', 8.82, 'Aprovado',
(25, 14, '2020.2', 4.8, 'Reprovado',
(18, 26, '2021.1', 3.31, 'Reprovado',
(31, 8, '2023.2', 1.3, 'Reprovado',
(75, 23, '2023.1', 9.58, 'Aprovado',
(33, 24, '2023.1', 0.03, 'Reprovado',
(94, 27, '2023.1', 8.45, 'Aprovado',
(61, 30, '2023.2', 3.81, 'Reprovado',
(53, 13, '2019.2', 6.52, 'Aprovado',
(62, 6, '2021.1', 6.77, 'Aprovado',
(79, 12, '2022.2', 5.59, 'Aprovado',
(44, 8, '2022.2', 1.99, 'Reprovado',
(29, 17, '2022.1', 9.96, 'Aprovado',
(21, 5, '2019.1', 8.19, 'Aprovado',
(82, 5, '2021.1', 6.48, 'Aprovado',
(20, 24, '2022.1', 8.1, 'Aprovado',
(42, 3, '2018.2', 4.56, 'Reprovado',
(78, 6, '2019.2', 0.21, 'Reprovado',
(32, 17, '2022.1', 9.73, 'Aprovado',
(89, 22, '2019.1', 9.1, 'Aprovado',
(44, 18, '2021.1', 5.94, 'Aprovado',
(39, 28, '2022.1', 9.75, 'Aprovado',
(49, 19, '2019.2', 4.37, 'Reprovado',
(93, 17, '2019.2', 2.0, 'Reprovado',
(15, 13, '2018.1', 1.47, 'Reprovado',
(84, 17, '2020.1', 1.36, 'Reprovado',
(89, 8, '2021.2', 9.61, 'Aprovado',
(35, 8, '2023.2', 2.72, 'Reprovado',
(84, 29, '2021.1', 4.23, 'Reprovado',
(96, 10, '2019.2', 5.09, 'Aprovado',
(43, 2, '2020.1', 3.95, 'Reprovado',
(70, 5, '2020.1', 0.39, 'Reprovado',
(41, 20, '2018.1', 0.89, 'Reprovado',
(66, 22, '2022.1', 4.98, 'Reprovado',
(44, 16, '2019.1', 0.13, 'Reprovado',
(16, 20, '2020.2', 4.36, 'Reprovado',
(20, 29, '2021.1', 7.22, 'Aprovado',
(42, 18, '2020.1', 3.63, 'Reprovado',
(5, 20, '2022.1', 3.57, 'Reprovado',
(6, 25, '2023.1', 1.94, 'Reprovado',
(64, 5, '2020.1', 7.62, 'Aprovado',
(52, 3, '2018.1', 8.64, 'Aprovado',
(49, 17, '2023.2', 2.56, 'Reprovado',
(53, 24, '2019.1', 1.37, 'Reprovado',
(69, 28, '2018.2', 8.14, 'Aprovado',
(21, 30, '2018.2', 1.95, 'Reprovado',
(80, 20, '2021.1', 0.72, 'Reprovado',
(3, 30, '2022.2', 3.39, 'Reprovado',
(16, 24, '2021.1', 9.43, 'Aprovado',
(78, 27, '2023.2', 2.21, 'Reprovado',
(59, 4, '2019.1', 6.01, 'Aprovado',
(83, 10, '2023.2', 7.79, 'Aprovado',
(66, 25, '2021.1', 2.28, 'Reprovado',
(57, 13, '2022.2', 4.12, 'Reprovado',
(30, 14, '2019.1', 0.59, 'Reprovado',
(30, 1, '2018.2', 6.45, 'Aprovado',
(69, 27, '2022.2', 8.77, 'Aprovado',
(70, 16, '2021.2', 7.7, 'Aprovado',
(7, 15, '2018.2', 7.49, 'Aprovado',
(83, 9, '2022.1', 3.56, 'Reprovado',
(32, 5, '2018.2', 2.63, 'Reprovado',
(74, 4, '2020.1', 8.03, 'Aprovado',
(70, 20, '2022.1', 2.74, 'Reprovado',
(94, 30, '2023.1', 0.4, 'Reprovado',
(48, 28, '2018.1', 9.54, 'Aprovado',
(2, 20, '2021.2', 1.89, 'Reprovado',
(44, 17, '2018.2', 1.84, 'Reprovado',
(24, 7, '2019.2', 2.33, 'Reprovado',
(97, 11, '2019.2', 4.93, 'Reprovado',
(46, 30, '2022.2', 8.25, 'Aprovado',
(5, 16, '2023.2', 4.9, 'Reprovado',
(15, 5, '2018.1', 0.39, 'Reprovado',
(52, 22, '2019.1', 2.09, 'Reprovado',
(80, 1, '2020.2', 5.97, 'Aprovado',
(31, 12, '2022.2', 1.63, 'Reprovado',
(19, 9, '2019.1', 2.89, 'Reprovado',
(3, 1, '2023.1', 5.88, 'Aprovado',
(33, 30, '2022.1', 1.62, 'Reprovado',
(17, 21, '2019.2', 3.94, 'Reprovado',
(21, 16, '2021.2', 3.97, 'Reprovado',
(7, 11, '2018.2', 9.33, 'Aprovado',
(64, 25, '2023.1', 7.61, 'Aprovado',
(43, 30, '2019.1', 6.22, 'Aprovado',
(38, 15, '2022.1', 5.73, 'Aprovado',
(71, 3, '2018.2', 5.86, 'Aprovado',
(25, 1, '2023.1', 8.85, 'Aprovado';

-- TCCs
INSERT INTO TCC (id_tcc, titulo, id_orientador, data_apresentacao) VALUES
(1, 'TCC 1', 17, '2022-02-14',
(2, 'TCC 2', 9, '2022-08-18',
(3, 'TCC 3', 17, '2023-09-16',
(4, 'TCC 4', 14, '2022-11-03',
(5, 'TCC 5', 4, '2022-10-24',
(6, 'TCC 6', 4, '2022-01-04',
(7, 'TCC 7', 5, '2022-12-15',
(8, 'TCC 8', 10, '2023-09-01',
(9, 'TCC 9', 11, '2022-04-28',
(10, 'TCC 10', 17, '2023-12-04',
(11, 'TCC 11', 11, '2022-03-09',
(12, 'TCC 12', 2, '2023-12-10',
(13, 'TCC 13', 4, '2022-10-13',
(14, 'TCC 14', 19, '2022-03-15',
(15, 'TCC 15', 2, '2022-09-10',
(16, 'TCC 16', 11, '2023-02-28',
(17, 'TCC 17', 17, '2022-02-02',
(18, 'TCC 18', 14, '2022-11-27',
(19, 'TCC 19', 11, '2023-08-10',
(20, 'TCC 20', 7, '2022-05-27',
(21, 'TCC 21', 6, '2023-12-15',
(22, 'TCC 22', 20, '2022-07-14',
(23, 'TCC 23', 7, '2023-07-08',
(24, 'TCC 24', 20, '2023-07-04',
(25, 'TCC 25', 13, '2023-10-04',
(26, 'TCC 26', 19, '2022-12-11',
(27, 'TCC 27', 8, '2022-12-14',
(28, 'TCC 28', 6, '2023-01-14',
(29, 'TCC 29', 5, '2023-07-05',
(30, 'TCC 30', 5, '2023-01-13';

-- Alunos_TCC
INSERT INTO ALUNO_TCC (id_tcc, id_aluno) VALUES
(1, 81),
(1, 11),
(1, 57),
(2, 6),
(2, 31),
(2, 95),
(3, 97),
(3, 11),
(3, 37),
(4, 100),
(5, 81),
(6, 22),
(6, 42),
(6, 29),
(7, 66),
(8, 92),
(8, 56),
(8, 11),
(9, 90),
(9, 52),
(10, 67),
(10, 89),
(10, 10),
(11, 24),
(11, 50),
(12, 30),
(13, 39),
(14, 93),
(14, 37),
(15, 32),
(15, 52),
(16, 31),
(17, 52),
(17, 91),
(18, 17),
(18, 87),
(19, 81),
(20, 4),
(20, 79),
(21, 48),
(21, 44),
(21, 74),
(22, 32),
(23, 72),
(23, 29),
(23, 34),
(24, 77),
(24, 61),
(24, 45),
(25, 76),
(25, 64),
(25, 92),
(26, 77),
(26, 12),
(26, 50),
(27, 30),
(27, 72),
(28, 24),
(28, 47),
(28, 98),
(29, 15),
(30, 75);

-- Chefes de Departamento
INSERT INTO CHEFE_DEPARTAMENTO (id_prof, id_depart, data_inicio) VALUES
(1, 1, '2020-01-01'),
(5, 2, '2021-01-01'),
(10, 3, '2019-01-01');

-- Coordenadores de Curso
INSERT INTO COORDENADOR_CURSO (id_prof, id_curso, data_inicio) VALUES
(2, 1, '2020-01-01'),
(6, 2, '2021-01-01'),
(8, 3, '2019-01-01'),
(12, 4, '2020-01-01'),
(15, 5, '2021-01-01');

-- Professores_Disciplinas
INSERT INTO PROFESSOR_DISCIPLINA (id_prof, id_disc, semestre) VALUES
(9, 1, '2023.1'),
(12, 2, '2023.1'),
(12, 3, '2023.1'),
(14, 4, '2023.1'),
(6, 5, '2023.1'),
(15, 6, '2023.1'),
(8, 7, '2023.1'),
(9, 8, '2023.1'),
(16, 9, '2023.1'),
(16, 10, '2023.1'),
(16, 11, '2023.1'),
(10, 12, '2023.1'),
(16, 13, '2023.1'),
(15, 14, '2023.1'),
(8, 15, '2023.1'),
(2, 16, '2023.1'),
(12, 17, '2023.1'),
(7, 18, '2023.1'),
(19, 19, '2023.1'),
(2, 20, '2023.1'),
(10, 21, '2023.1'),
(11, 22, '2023.1'),
(12, 23, '2023.1'),
(6, 24, '2023.1'),
(11, 25, '2023.1'),
(16, 26, '2023.1'),
(1, 27, '2023.1'),
(17, 28, '2023.1'),
(15, 29, '2023.1'),
(16, 30, '2023.1'),
(13, 1, '2023.2'),
(20, 2, '2023.2'),
(12, 3, '2023.2'),
(5, 4, '2023.2'),
(1, 5, '2023.2'),
(11, 6, '2023.2'),
(9, 7, '2023.2'),
(6, 8, '2023.2'),
(12, 9, '2023.2'),
(14, 10, '2023.2'),
(11, 11, '2023.2'),
(15, 12, '2023.2'),
(11, 13, '2023.2'),
(9, 14, '2023.2'),
(10, 15, '2023.2'),
(17, 16, '2023.2'),
(2, 17, '2023.2'),
(10, 18, '2023.2'),
(20, 19, '2023.2'),
(9, 20, '2023.2'),
(18, 21, '2023.2'),
(18, 22, '2023.2'),
(9, 23, '2023.2'),
(12, 24, '2023.2'),
(9, 25, '2023.2'),
(18, 26, '2023.2'),
(8, 27, '2023.2'),
(11, 28, '2023.2'),
(6, 29, '2023.2'),
(8, 30, '2023.2'),
(18, 1, '2022.1'),
(8, 2, '2022.1'),
(20, 3, '2022.1'),
(16, 4, '2022.1'),
(20, 5, '2022.1'),
(8, 6, '2022.1'),
(16, 7, '2022.1'),
(11, 8, '2022.1'),
(2, 9, '2022.1'),
(16, 10, '2022.1'),
(1, 11, '2022.1'),
(4, 12, '2022.1'),
(9, 13, '2022.1'),
(1, 14, '2022.1'),
(3, 15, '2022.1'),
(20, 16, '2022.1'),
(9, 17, '2022.1'),
(5, 18, '2022.1'),
(13, 19, '2022.1'),
(16, 20, '2022.1'),
(7, 21, '2022.1'),
(9, 22, '2022.1'),
(17, 23, '2022.1'),
(2, 24, '2022.1'),
(12, 25, '2022.1'),
(6, 26, '2022.1'),
(20, 27, '2022.1'),
(5, 28, '2022.1'),
(13, 29, '2022.1'),
(11, 30, '2022.1'),
(20, 1, '2022.2'),
(19, 2, '2022.2'),
(13, 3, '2022.2'),
(19, 4, '2022.2'),
(16, 5, '2022.2'),
(12, 6, '2022.2'),
(2, 7, '2022.2'),
(10, 8, '2022.2'),
(17, 9, '2022.2'),
(2, 10, '2022.2'),
(6, 11, '2022.2'),
(17, 12, '2022.2'),
(13, 13, '2022.2'),
(10, 14, '2022.2'),
(4, 15, '2022.2'),
(12, 16, '2022.2'),
(12, 17, '2022.2'),
(20, 18, '2022.2'),
(12, 19, '2022.2'),
(16, 20, '2022.2'),
(1, 21, '2022.2'),
(17, 22, '2022.2'),
(16, 23, '2022.2'),
(2, 24, '2022.2'),
(8, 25, '2022.2'),
(20, 26, '2022.2'),
(2, 27, '2022.2'),
(12, 28, '2022.2'),
(16, 29, '2022.2'),
(2, 30, '2022.2');

COMMIT;
