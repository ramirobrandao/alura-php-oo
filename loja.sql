-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 21-Set-2017 às 05:13
-- Versão do servidor: 10.1.21-MariaDB
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `loja`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `categorias`
--

INSERT INTO `categorias` (`id`, `nome`) VALUES
(1, 'esporte'),
(2, 'escolar'),
(3, 'mobilidade'),
(4, 'guloseimas');

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

CREATE TABLE `produtos` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `preco` decimal(10,2) DEFAULT NULL,
  `descricao` text,
  `categoria_id` int(11) DEFAULT NULL,
  `usado` tinyint(1) DEFAULT '0',
  `isbn` varchar(255) DEFAULT NULL,
  `tipoProduto` varchar(255) DEFAULT NULL,
  `taxaImpressao` varchar(255) DEFAULT NULL,
  `waterMark` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `produtos`
--

INSERT INTO `produtos` (`id`, `nome`, `preco`, `descricao`, `categoria_id`, `usado`, `isbn`, `tipoProduto`, `taxaImpressao`, `waterMark`) VALUES
(28, 'Caloi', '500.00', 'Bicicleta novaa', 3, 0, '', 'Produto', '', ''),
(40, 'Chocolate NestlÃ©', '15.00', '3 Unids. Alpino 125G', 4, 0, NULL, NULL, NULL, NULL),
(72, 'AÃ§aÃ­', '18.00', '800ML', 4, 0, '', 'Produto', NULL, NULL),
(106, 'Harry Potter e a Pedra Filosofal ', '21.99', 'Harry Potter Ã© um garoto cujos pais, feiticeiros, foram assassinados por um poderosÃ­ssimo bruxo quando ele ainda era um bebÃª. Ele foi levado, entÃ£o, para a casa dos tios que nada tinham a ver com o sobrenatural. No dia de seu aniversÃ¡rio de 11 anos, Harry descobre sua verdadeira histÃ³ria e seu destino: ser um aprendiz de feiticeiro atÃ© o dia em que terÃ¡ que enfrentar a pior forÃ§a do mal, o homem que assassinou seus pais. Potter fica sabendo que Ã© a Ãºnica pessoa a ter sobrevivido a um ataque do tal bruxo do mal e essa Ã© a causa da marca em forma de raio que ele carrega na testa. Ele nÃ£o Ã© um garoto qualquer, ele sequer Ã© um feiticeiro qualquer; ele Ã© Harry Potter, sÃ­mbolo de poder, resistÃªncia e um lÃ­der natural entre os sobrenaturais.', 2, 0, 'B01LQM96G4', 'Ebook', '', 'eBook Kindle'),
(120, 'O Pequeno Principe', '9.90', 'HÃ¡ algumas histÃ³rias que transformam o mundo de seus leitores para sempre. O pequeno prÃ­ncipe Ã© uma delas. \r\nUm piloto isolado no deserto do Saara acorda e se depara com um garotinho loiro dizendo: â€œPor favor, desenhe uma ovelha para mimâ€. Nesse momento, o piloto se dÃ¡ conta de que, quando a realidade parece inexplicÃ¡vel, nÃ£o hÃ¡ outra escolha a nÃ£o ser sucumbir a seus mistÃ©rios... E, justamente, um dos grandes mistÃ©rios deste livro Ã© encantar geraÃ§Ãµes e geraÃ§Ãµes de leitores hÃ¡ mais de setenta anos, tanto adultos como crianÃ§as, que a cada leitura descobrem novos significados para as sÃ¡bias palavras do principezinho.\r\nAs belas aquarelas de Saint-ExupÃ©ry, aqui reproduzidas como na primeira ediÃ§Ã£o do livro, em 1943, permitem viajar por planetas desconhecidos e se encantar com esta fÃ¡bula mais do que poÃ©tica. ', 2, 0, '978-8525432032', 'LivroFisico', '10', ''),
(121, 'Smart. O que VocÃª nÃ£o Sabe Sobre a Internet', '42.30', 'Especialista em indÃºstria cultural, FrÃ©dÃ©ric Martel faz a cartografia da revoluÃ§Ã£o digital e desenha a geografia das mÃºltiplas internets. Depois de uma pesquisa de cerca de 4 anos, visitando quase 50 paÃ­ses, o autor apresenta uma compreensÃ£o inÃ©dita e otimista sobre a internet, as redes sociais e as perspectivas para o futuro da rede. AlÃ©m de perceber que a fragmentaÃ§Ã£o e a regionalizaÃ§Ã£o sÃ£o os principais traÃ§os da internet â€“ chegando a afirmar que hÃ¡ tantas internets quanto paÃ­ses â€“, o autor defende que a rede e as pessoas nela envolvidas sÃ£o muito mais smart do que se pode imaginar. O leitor brasileiro encontra um amplo retrato de como a internet estÃ¡ sendo usada no paÃ­s â€“ desde as preferÃªncias dos usuÃ¡rios atÃ© iniciativas pÃºblicas e particulares nessa Ã¡rea.', 2, 0, '8520012590', 'LivroFisico', '8', ''),
(122, 'O Poder do HÃ¡bito', '10.60', 'Charles Duhigg, repÃ³rter investigativo do New York Times, mostra que a chave para o sucesso Ã© entender como os hÃ¡bitos funcionam - e como podemos transformÃ¡-los.', 2, 0, '6475432032', 'Ebook', '', 'eBook Kindle'),
(124, 'Mouse', '10.00', 'Mouse USB', 2, 0, '', 'LivroFisico', '', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `senha` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `email`, `senha`) VALUES
(1, 'ramirobrandao@outlook.com', 'e10adc3949ba59abbe56e057f20f883e'),
(2, 'loja@loja.com', '872be7378d2e5c4b747f2547144c6dc5');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `produtos`
--
ALTER TABLE `produtos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;
--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
