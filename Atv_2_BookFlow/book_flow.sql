-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema book_flow
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema book_flow
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `book_flow` DEFAULT CHARACTER SET utf8 ;
USE `book_flow` ;

-- -----------------------------------------------------
-- Table `book_flow`.`Fornecedores`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `book_flow`.`Fornecedores` (
  `id_fornecedor` INT NOT NULL AUTO_INCREMENT,
  `nome_do_fornecedor` VARCHAR(120) NOT NULL,
  `contato_do_fornecedor` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`id_fornecedor`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `book_flow`.`Livros`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `book_flow`.`Livros` (
  `id_livros` INT NOT NULL AUTO_INCREMENT,
  `id_fornecedor` INT NOT NULL,
  `nome_do_livro` VARCHAR(200) NOT NULL,
  `genero_do_liivro` VARCHAR(50) NOT NULL,
  `autor_do_livro` VARCHAR(100) NOT NULL,
  `preco_do_livro` DECIMAL(4) NOT NULL,
  `editora_do_livro` VARCHAR(50) NOT NULL,
  `qtd_em_estoque` INT NOT NULL,
  PRIMARY KEY (`id_livros`),
  INDEX `id_fornecedor_idx` (`id_fornecedor` ASC) VISIBLE,
  CONSTRAINT `id_fornecedor`
    FOREIGN KEY (`id_fornecedor`)
    REFERENCES `book_flow`.`Fornecedores` (`id_fornecedor`)
    ON DELETE RESTRICT
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `book_flow`.`Clientes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `book_flow`.`Clientes` (
  `id_cliente` INT NOT NULL,
  `nome_cliente` VARCHAR(100) NOT NULL,
  `email_cliente` VARCHAR(200) NOT NULL,
  `endereco_cliente` VARCHAR(200) NOT NULL,
  `telefone_cliente` VARCHAR(20) NOT NULL,
  `cpf` CHAR(11) NOT NULL,
  PRIMARY KEY (`id_cliente`),
  UNIQUE INDEX `cpf_UNIQUE` (`cpf` ASC) VISIBLE,
  UNIQUE INDEX `email_cliente_UNIQUE` (`email_cliente` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `book_flow`.`Pedidos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `book_flow`.`Pedidos` (
  `id_pedido` INT NOT NULL,
  `id_cliente` INT NOT NULL,
  `id_livro` INT NOT NULL,
  `data_pedido` DATE NOT NULL,
  `hora_pedido` DATE NOT NULL,
  `status_pedido` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_pedido`),
  INDEX `id_cliente_idx` (`id_cliente` ASC) VISIBLE,
  INDEX `id_livro_idx` (`id_livro` ASC) VISIBLE,
  CONSTRAINT `id_cliente`
    FOREIGN KEY (`id_cliente`)
    REFERENCES `book_flow`.`Clientes` (`id_cliente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `id_livro`
    FOREIGN KEY (`id_livro`)
    REFERENCES `book_flow`.`Livros` (`id_livros`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `book_flow`.`Pagamentos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `book_flow`.`Pagamentos` (
  `id_pagamento` INT NOT NULL,
  `id_pedido` INT NOT NULL,
  `status` VARCHAR(45) NOT NULL,
  `forma_de_pagamento` VARCHAR(45) NOT NULL,
  `data_do_pagamento` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_pagamento`),
  INDEX `id_pedido_idx` (`id_pedido` ASC) VISIBLE,
  CONSTRAINT `id_pedido`
    FOREIGN KEY (`id_pedido`)
    REFERENCES `book_flow`.`Pedidos` (`id_pedido`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
