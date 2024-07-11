-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 06, 2024 at 01:36 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `foodrecipe`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `getAdminInfo` (IN `a_Fname` VARCHAR(50), IN `a_Lname` VARCHAR(50), IN `a_Email` VARCHAR(50), IN `a_Password` VARCHAR(50))   BEGIN
    INSERT INTO contributer(ContributerID, cFname, cLname, cEmail, cPassword)
    VALUES (NULL, c_Fname, c_Lname, c_Email, c_Password);
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adminID` int(11) NOT NULL,
  `aFname` varchar(50) DEFAULT NULL,
  `aLname` varchar(50) DEFAULT NULL,
  `aEmail` varchar(50) DEFAULT NULL,
  `aPassword` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adminID`, `aFname`, `aLname`, `aEmail`, `aPassword`) VALUES
(1, 'admin', 'one', 'admin@gmail.com', '11111111');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `categoryID` int(11) NOT NULL,
  `recipeType` varchar(50) NOT NULL,
  `rDescription` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`categoryID`, `recipeType`, `rDescription`) VALUES
(22, 'Dessert', 'sweet'),
(23, 'Side Dish', 'An extra dish of food, for example vegetables or salad, that is served with the main dish, sometimes on a separate plate.'),
(27, 'Pasta', 'Pasta sya'),
(28, 'Appetizer', 'Part of a meal that&#039;s served before the main course.'),
(30, 'Dish', 'This is dish'),
(31, 'Appetizer', 'sakska');

-- --------------------------------------------------------

--
-- Table structure for table `recipe`
--

CREATE TABLE `recipe` (
  `recipeID` int(11) NOT NULL,
  `rImage` blob DEFAULT NULL,
  `categoryID` int(11) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `rDescription` text DEFAULT NULL,
  `ingredients` text DEFAULT NULL,
  `instructions` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `recipe`
--

INSERT INTO `recipe` (`recipeID`, `rImage`, `categoryID`, `title`, `rDescription`, `ingredients`, `instructions`) VALUES
(45, 0x31373039373034323834766567616e2d6368616d706f7261646f2d332e6a7067, 22, 'Champorado', 'A Filipino dessert made of glutinous rice mixed with cacao powder and typically poured with milk. ', '1/2 tsp. sea salt\r\n\r\n1/4 cup cacao powder\r\n\r\n3/4 cup coconut sugar + more, for garnish\r\n\r\n5 1/2 cups nondairy milk\r\n\r\n1 cup sweet brown rice\r\n\r\n2 bananas, sliced and frozen\r\n\r\nCinnamon, for garnish\r\n\r\n', 'Add the salt, cacao powder, 1/2 cup sugar, and 4 cups nondairy milk to a slow cooker and mix well. Add the rice and cook on low for 8 to 10 hours.\r\nStir in the remaining sugar and 1/2 cup nondairy milk.\r\nTo make the cream topping, add the frozen bananas and the remaining nondairy milk to a blender and blend until smooth.\r\nGarnish the champorado with a spoonful of the cream topping and a sprinkle of sugar and cinnamon. Enjoy!'),
(46, 0x3137303937303435393173696e6967616e672d6261626f792d372d373330783937332e6a7067, 30, 'Sinigang', 'Sinigang na Baboy is the ultimate comfort food! Made with pork ribs, vegetables, and tamarind-flavored broth, it&#039;s hearty and delicious on its own or served with steamed rice.', 'Pork-while you can use meatier and leaner parts such as pork shoulder (kasim), I recommend bony cuts such as spare ribs, pork belly with ribs, hocks, knuckles, and tailbone or neck bones for better flavor.\r\nTomatoes- use ripe, juicy tomatoes\r\nOnion-peeled and quartered\r\nFish sauce- brings umami flavor; you can swap it with salt if you prefer\r\nGabi- adds a starchy component to the dish and thickens the broth\r\nRadish (labanos)\r\nVegetables- the recipe uses sitaw (long beans), eggplant, okra, and bok choy, but feel free to include other local produce available such as kangkong (water spinach) and pechay\r\nTamarind- can be fresh pods, paste, or powder mixes\r\nBanana or finger chili peppers (siling haba)-adds a mild heat; optional and can be omitted\r\n', 'I usually use packaged tamarind mixes as the fresh fruit is not always available in my area. Although these powder flavorings are easy and convenient to use, nothing beats pork sinigang from scratch! Just follow the steps below on how to use green tamarind pods.\r\n\r\nWash tamarind pods under cold, running water to remove any grit or dirt from the skins.\r\nPlace in a saucepan with about 1 cup water and bring to a boil. Cook for about 4 to 5 minutes until soft, and the outer skins begin to burst.\r\nUsing a fork, mash the tamarinds to release the pulp.\r\nPlace the tamarind and liquid in a fine-mesh strainer set over a bowl. Continue to mash with a fork, returning some of the liquid into the strainer once or twice to fully extract the juice.\r\nDiscard seeds and skins. Pour tamarind juice into the pot.'),
(47, 0x313730393730373830336170706574697a65722e6a7067, 28, 'dsdsd', '.mxsmals', 'asasas', '1. Beat cream cheese until smooth. Fold in cheddar and blue cheeses. \r\nRefrigerate, covered, at least 2 hours.\r\n2.In a small skillet, heat butter over medium heat. \r\nAdd curry powder; saute 1-2 minutes. \r\nStir in pecans; cook and stir 1 minute. \r\nStir in parsley. Cool slightly. \r\nRoll cheese mixture into 2 logs, each about 5 in. long. \r\nRoll logs in pecan mixture; refrigerate. Serve with crackers.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adminID`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`categoryID`);

--
-- Indexes for table `recipe`
--
ALTER TABLE `recipe`
  ADD PRIMARY KEY (`recipeID`),
  ADD KEY `categoryID` (`categoryID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `adminID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `categoryID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `recipe`
--
ALTER TABLE `recipe`
  MODIFY `recipeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `recipe`
--
ALTER TABLE `recipe`
  ADD CONSTRAINT `recipe_ibfk_1` FOREIGN KEY (`categoryID`) REFERENCES `category` (`categoryID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
