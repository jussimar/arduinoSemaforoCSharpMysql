-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 21-Nov-2021 às 00:50
-- Versão do servidor: 10.4.18-MariaDB
-- versão do PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `arduino`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `semaforo`
--

CREATE TABLE `semaforo` (
  `cd_registro` int(11) NOT NULL,
  `dt_registro` date DEFAULT NULL,
  `ds_cor` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `semaforo`
--

INSERT INTO `semaforo` (`cd_registro`, `dt_registro`, `ds_cor`) VALUES
(4, '2021-11-20', 'Verde'),
(5, '2021-11-20', 'Amarelo'),
(6, '2021-11-20', 'Vermelho'),
(7, '2021-11-20', 'Verde');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `semaforo`
--
ALTER TABLE `semaforo`
  ADD PRIMARY KEY (`cd_registro`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `semaforo`
--
ALTER TABLE `semaforo`
  MODIFY `cd_registro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
