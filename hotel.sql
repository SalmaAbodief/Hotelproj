-- phpMyAdmin SQL Dump
-- version 2.10.3
-- http://www.phpmyadmin.net
-- 
-- Host: localhost
-- Generation Time: Nov 30, 2018 at 02:47 PM
-- Server version: 5.0.51
-- PHP Version: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

-- 
-- Database: `hotel`
-- 

-- --------------------------------------------------------

-- 
-- Table structure for table `admin`
-- 

CREATE TABLE `admin` (
  `ID` int(11) NOT NULL,
  `Password` int(11) NOT NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `admin`
-- 

INSERT INTO `admin` VALUES (12345, 111);
INSERT INTO `admin` VALUES (6789, 222);

-- --------------------------------------------------------

-- 
-- Table structure for table `bill`
-- 

CREATE TABLE `bill` (
  `Guest_Name` varchar(40) NOT NULL,
  `Guest_ID` varchar(50) NOT NULL,
  `Room_Charge` double NOT NULL,
  `Order_Charge` double NOT NULL,
  `Facility_Charge` double NOT NULL,
  UNIQUE KEY `Guest_ID` (`Guest_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `bill`
-- 

INSERT INTO `bill` VALUES ('Jack Smith', '6699654782372', 1000, 1200, 500);

-- --------------------------------------------------------

-- 
-- Table structure for table `books`
-- 

CREATE TABLE `books` (
  `Guest_ID` int(11) NOT NULL,
  `Room_No` int(11) NOT NULL,
  `Check_InDate` date NOT NULL,
  `Check_OutDate` date NOT NULL,
  PRIMARY KEY  (`Guest_ID`,`Room_No`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `books`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `booksr`
-- 

CREATE TABLE `booksr` (
  `Rec_ID` int(11) NOT NULL,
  `Guest_ID` int(11) NOT NULL,
  `Check_InDate` datetime NOT NULL,
  `Check_OutDate` date NOT NULL,
  PRIMARY KEY  (`Rec_ID`,`Guest_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `booksr`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `facilities`
-- 

CREATE TABLE `facilities` (
  `Facility_Name` varchar(20) NOT NULL,
  `Price` double NOT NULL,
  PRIMARY KEY  (`Facility_Name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `facilities`
-- 

INSERT INTO `facilities` VALUES ('Gym', 50);
INSERT INTO `facilities` VALUES ('Jaccuzy', 50);
INSERT INTO `facilities` VALUES ('Spa', 50);
INSERT INTO `facilities` VALUES ('Hall Occasion', 100);

-- --------------------------------------------------------

-- 
-- Table structure for table `food`
-- 

CREATE TABLE `food` (
  `Food_Name` varchar(25) NOT NULL,
  `Price` double NOT NULL,
  `food_origin` varchar(20) NOT NULL,
  PRIMARY KEY  (`Food_Name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `food`
-- 

INSERT INTO `food` VALUES ('Chicken Tikka Masala', 120, 'indian');
INSERT INTO `food` VALUES ('Hotteok', 100, 'korean');
INSERT INTO `food` VALUES ('Seolleongtang', 100, 'korean');
INSERT INTO `food` VALUES ('Kimchi', 100, 'korean');
INSERT INTO `food` VALUES ('Raita', 120, 'indian');
INSERT INTO `food` VALUES ('Jalebi', 120, 'indian');
INSERT INTO `food` VALUES ('Mixed Grile', 150, 'middle east');
INSERT INTO `food` VALUES ('Tabouli', 150, 'middle east');
INSERT INTO `food` VALUES ('Custard', 150, 'middle east');

-- --------------------------------------------------------

-- 
-- Table structure for table `guest`
-- 

CREATE TABLE `guest` (
  `Guest_ID` varchar(50) NOT NULL,
  `Guest_Name` varchar(40) NOT NULL,
  `Nationality` varchar(20) NOT NULL,
  `Age` int(11) NOT NULL,
  `Check_InDate` date NOT NULL,
  `Check_OutDate` date NOT NULL,
  `room_cat` varchar(20) NOT NULL,
  PRIMARY KEY  (`Guest_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `guest`
-- 

INSERT INTO `guest` VALUES ('99118876576', 'Robert fransoua', 'francais', 30, '2018-01-15', '2018-01-27', 'single');
INSERT INTO `guest` VALUES ('778866554', 'Mohamed Ahmed', 'egyptian', 27, '2018-01-03', '2018-01-09', 'double');
INSERT INTO `guest` VALUES ('6699654782372', 'Jack Smith', 'american', 33, '2017-12-29', '2017-01-03', 'double');
INSERT INTO `guest` VALUES ('6677553434', 'sara alaa', 'egyptian', 21, '2017-12-30', '2018-01-03', 'single');
INSERT INTO `guest` VALUES ('776658985', 'Jee Ho', 'korien', 25, '2018-01-02', '2018-01-07', 'double');
INSERT INTO `guest` VALUES ('99887766', 'farah elsayed', 'egyptian', 17, '2018-01-12', '2018-01-20', 'single');
INSERT INTO `guest` VALUES ('776644455442', 'mahmoud mohamed', 'egyptian', 21, '2018-02-12', '2018-02-15', 'single');
INSERT INTO `guest` VALUES ('3334433', 'Arkan Ahmed', 'egyptian', 34, '2018-10-26', '2018-10-29', 'single');
INSERT INTO `guest` VALUES ('44332211', 'omnia makram', 'egyptian', 19, '2019-06-04', '2019-06-11', 'suit');

-- --------------------------------------------------------

-- 
-- Table structure for table `orders`
-- 

CREATE TABLE `orders` (
  `Guest_Name` varchar(50) NOT NULL,
  `Guest_ID` varchar(50) NOT NULL,
  `Food_Name` varchar(25) NOT NULL,
  `Quantity` int(11) NOT NULL,
  PRIMARY KEY  (`Guest_ID`,`Food_Name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `orders`
-- 

INSERT INTO `orders` VALUES ('Jack Smith', '2147483647', 'Hotteok', 2);
INSERT INTO `orders` VALUES ('Jack Smith', '2147483647', 'JalebiJaleb', 3);
INSERT INTO `orders` VALUES ('sara alaa', '6677553434', 'Raita', 1);
INSERT INTO `orders` VALUES ('farah elsayed', '6677855554', 'JalebiJalebi', 2);
INSERT INTO `orders` VALUES ('omnia makram', '44332211', 'Mixed Grile', 2);

-- --------------------------------------------------------

-- 
-- Table structure for table `receptionist`
-- 

CREATE TABLE `receptionist` (
  `Rec_ID` int(14) NOT NULL,
  `Rec_Name` varchar(40) NOT NULL,
  `Nationality` varchar(20) NOT NULL,
  `Age` int(11) NOT NULL,
  `Salary` double NOT NULL,
  PRIMARY KEY  (`Rec_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `receptionist`
-- 

INSERT INTO `receptionist` VALUES (232432, 'samy', 'Egypt', 34, 1200);
INSERT INTO `receptionist` VALUES (998899, 'yehia', 'Egypt', 20, 1500);
INSERT INTO `receptionist` VALUES (53474654, 'Ahmed Ahmed', 'Egypt', 20, 2000);
INSERT INTO `receptionist` VALUES (5345476, 'Robert', 'American', 23, 3000);

-- --------------------------------------------------------

-- 
-- Table structure for table `room`
-- 

CREATE TABLE `room` (
  `Room_No` int(11) NOT NULL,
  `Category` varchar(20) NOT NULL,
  `No.OfBeds` int(11) NOT NULL,
  `Price` double NOT NULL,
  PRIMARY KEY  (`Room_No`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `room`
-- 

INSERT INTO `room` VALUES (22, 'double ', 2, 1000);
INSERT INTO `room` VALUES (14, 'single ', 1, 800);
INSERT INTO `room` VALUES (11, 'Ordinary', 2, 650);
INSERT INTO `room` VALUES (25, 'suit', 1, 500);

-- --------------------------------------------------------

-- 
-- Table structure for table `uses`
-- 

CREATE TABLE `uses` (
  `Guest_Name` varchar(40) NOT NULL,
  `Guest_ID` varchar(50) NOT NULL,
  `Facility_Name` varchar(20) NOT NULL,
  PRIMARY KEY  (`Guest_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `uses`
-- 

INSERT INTO `uses` VALUES ('sara alaa', '2147483647', 'Spa');
INSERT INTO `uses` VALUES ('Jack Smith', '6699654782372', 'Hall ocaasion');
INSERT INTO `uses` VALUES ('Jee Ho', '776658985', 'Jaccuzy');
