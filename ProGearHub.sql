-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: db
-- Tempo de geração: 26/04/2025 às 11:39
-- Versão do servidor: 10.4.34-MariaDB-1:10.4.34+maria~ubu2004
-- Versão do PHP: 8.2.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `ProGearHub`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `contact_us`
--

CREATE TABLE `contact_us` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `submitted_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `contact_us`
--

INSERT INTO `contact_us` (`id`, `name`, `email`, `subject`, `message`, `submitted_at`) VALUES
(1, 'John Doe', 'john@example.com', 'Product Inquiry', 'Do you have mountain bikes available?', '2025-04-23 07:54:22'),
(2, 'Jane Smith', 'jane@example.com', 'Order Issue', 'I need to change my shipping address.', '2025-04-23 07:54:22'),
(3, 'FWEFDS', 'edwfqrf@htos.com', 'efwreq', 'ewrqewqre', '2025-04-26 09:05:46');

-- --------------------------------------------------------

--
-- Estrutura para tabela `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL CHECK (`quantity` > 0),
  `price` decimal(10,2) NOT NULL,
  `total_price` decimal(10,2) GENERATED ALWAYS AS (`quantity` * `price`) STORED,
  `order_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `orders`
--

INSERT INTO `orders` (`order_id`, `customer_name`, `email`, `product_name`, `quantity`, `price`, `order_date`) VALUES
(1, 'Alice Brown', 'alice@example.com', 'Running Shoes', 2, 59.99, '2025-04-23 07:54:22'),
(2, 'Bob White', 'bob@example.com', 'Tennis Racket', 1, 89.99, '2025-04-23 07:54:22');

-- --------------------------------------------------------

--
-- Estrutura para tabela `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `category` varchar(17) DEFAULT NULL,
  `price` int(4) DEFAULT NULL,
  `description` varchar(108) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `products`
--

INSERT INTO `products` (`id`, `name`, `category`, `price`, `description`, `image`) VALUES
(7, 'White T shirt', 'Shirt', 13, 'Elevate your wardrobe with our classic white t-shirt designed specifically for women. Crafted from s\r\n', 'images/2.jpg'),
(8, 'Black Bag', 'Bag', 40, 'Elevate your active lifestyle with our sleek black sport bag. designed for both functionality and st\r\n', 'images/3.avif'),
(9, 'Hiking Fleece Jacket', 'Jacket', 30, 'Elevate your outdoor adventures with our Hiking Fleece Jacket. designed for both comfort and perform\r\n', 'images/4 - Hiking.avif'),
(14, 'Swift 27.5 Mountain Bike', 'Bike', 200, 'Experience the thrill of the outdoors with the Swift 27.5 Mountain Bike. designed for both adventure\r\n', 'images/5Mountain Bike.avif'),
(15, 'Helmet - Purple - XSS', 'Bike', 19, 'Elevate your safety and style with our Purple XSS Helmet. designed for those who prioritize both pro\r\n', 'images/6 Helmet - Purple - XSS.avif'),
(16, 'Strip Drive 300+ Rear Light', 'Bike', 3, 'Illuminate your ride with the Lezyne Strip Drive 300+ Rear Light. designed for maximum visibility an\r\n', 'images/7Rear Light.avif'),
(17, 'Hybrid Waterproof Bag 26L', 'Bag', 50, 'The Ortlieb Vario PS Hybrid Waterproof Bag is the ultimate solution for those seeking durability and\r\n', 'images/8Waterproof Bag .avif'),
(20, 'Basket Ball', 'Sports', 23, 'Ready to shoot some hoops? Durable basketball for indoor/outdoor play.', 'images/ball.jpg'),
(21, 'Nike Shoes', 'Shoes', 99, 'Elevate your game with Nike basketball shoes. Performance-driven design for ultimate comfort', 'images/unsplash.jpg');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Índices de tabela `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
