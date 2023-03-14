-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 19, 2021 at 06:38 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vehical_info`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `passcode` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `passcode`) VALUES
(1, 'Yasi', '6351bf9dce654515bf1ddbd6426dfa97'),
(2, 'admin', '202cb962ac59075b964b07152d234b70'),
(8, 'prasad', '827ccb0eea8a706c4c34a16891f84e7b');

-- --------------------------------------------------------

--
-- Table structure for table `disposal`
--

CREATE TABLE `disposal` (
  `id` int(11) NOT NULL,
  `regno` varchar(20) NOT NULL,
  `disposal_date` date NOT NULL,
  `name_bidder` varchar(50) NOT NULL,
  `nic_no` varchar(20) NOT NULL,
  `bid_price` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `disposal`
--

INSERT INTO `disposal` (`id`, `regno`, `disposal_date`, `name_bidder`, `nic_no`, `bid_price`) VALUES
(8, '133-8893', '2021-08-09', 'Ajith Muthukumarana', '874581268V', 530000),
(10, 'WP  LG-0673', '2021-08-12', 'S. M. S. Samarasinghe', '721856847V', 360000);

-- --------------------------------------------------------

--
-- Table structure for table `repairs`
--

CREATE TABLE `repairs` (
  `id` int(11) NOT NULL,
  `reg_no` varchar(50) NOT NULL,
  `g_name` varchar(50) NOT NULL,
  `g_address` varchar(100) NOT NULL,
  `driverComDate` date NOT NULL,
  `dateOfTbApproove` date NOT NULL,
  `dateOfHandover` date NOT NULL,
  `dateOfCompletion` date NOT NULL,
  `descotbre` varchar(100) NOT NULL,
  `desofrepair` varchar(100) NOT NULL,
  `date_sold` date NOT NULL,
  `soldPrice` double NOT NULL,
  `replace_engine_no` varchar(20) NOT NULL,
  `eng_purchase_date` date NOT NULL,
  `dateofpay` date NOT NULL,
  `chequeno` varchar(50) NOT NULL,
  `gurantee_period` int(11) NOT NULL,
  `fullcost` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `repairs`
--

INSERT INTO `repairs` (`id`, `reg_no`, `g_name`, `g_address`, `driverComDate`, `dateOfTbApproove`, `dateOfHandover`, `dateOfCompletion`, `descotbre`, `desofrepair`, `date_sold`, `soldPrice`, `replace_engine_no`, `eng_purchase_date`, `dateofpay`, `chequeno`, `gurantee_period`, `fullcost`) VALUES
(1, '123-7736', 'Sisil Moters', 'Pandulagama, Anuradhapura', '2021-06-01', '2021-06-05', '2021-06-05', '2021-06-10', 'Engine Trouble ', 'Engine Repair', '2021-06-15', 25000, '12359', '2021-08-14', '2021-08-14', '5876', 1, 80000),
(2, '123-7726', 'Sunil Moters', 'Lindawewa, Nochchiyagama', '2021-08-01', '2021-08-03', '2021-08-04', '2021-08-09', 'abcd', 'abcd', '2021-08-11', 35000, '12358', '2021-08-12', '2021-08-11', '587', 2, 80000),
(4, '133-8884', 'Nilkamal Gaurege', '01st Lane, Lindawewa, Nochchiyagama', '2021-07-01', '2021-07-02', '2021-07-03', '2021-07-04', 'bba', 'bbb', '2021-07-05', 55000, '789482', '2021-07-06', '2021-07-07', '6987', 3, 150000);

-- --------------------------------------------------------

--
-- Table structure for table `tranfers`
--

CREATE TABLE `tranfers` (
  `ID` int(11) NOT NULL,
  `regno` varchar(50) NOT NULL,
  `transfer_date` date NOT NULL,
  `fromwhere` varchar(50) NOT NULL,
  `towhere` varchar(50) NOT NULL,
  `toregion` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tranfers`
--

INSERT INTO `tranfers` (`ID`, `regno`, `transfer_date`, `fromwhere`, `towhere`, `toregion`) VALUES
(3, '123-7728', '2021-08-12', 'Anuradhapura', 'Colombo', 'Western Province'),
(7, 'WP XF-4398', '2021-08-14', 'Anuradhapura', 'Kurunegala', 'North Western Provin'),
(8, 'WP GL-9392', '2021-08-04', 'Anuradhapura', 'Jaffna', 'North Province'),
(9, 'WP LG-9936', '2021-08-11', 'Anuradhapura', 'Kurunegala', 'North Western Provin');

-- --------------------------------------------------------

--
-- Table structure for table `unreg_machinery`
--

CREATE TABLE `unreg_machinery` (
  `regno` text NOT NULL,
  `chesee_no` text NOT NULL,
  `cadd` text NOT NULL,
  `engineno` text NOT NULL,
  `ccap` text NOT NULL,
  `vclass` text NOT NULL,
  `fueltype` text NOT NULL,
  `corigin` text NOT NULL,
  `make` text NOT NULL,
  `model` text NOT NULL,
  `yearofmanu` text NOT NULL,
  `cimport` text NOT NULL,
  `location` text NOT NULL,
  `region` text NOT NULL,
  `vcost` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vehical_info`
--

CREATE TABLE `vehical_info` (
  `regno` varchar(50) NOT NULL,
  `chasee_no` varchar(50) NOT NULL,
  `engine_no` varchar(50) NOT NULL,
  `c_cap` varchar(50) NOT NULL,
  `v_class` varchar(20) NOT NULL,
  `f_type` varchar(20) NOT NULL,
  `c_origin` varchar(20) NOT NULL,
  `year_manu` varchar(20) NOT NULL,
  `c_import` varchar(20) NOT NULL,
  `ty_fr` varchar(15) NOT NULL,
  `ty_re` varchar(15) NOT NULL,
  `ty_du` varchar(15) NOT NULL,
  `ty_sin` varchar(15) NOT NULL,
  `d_first_reg` date NOT NULL,
  `owner_add` varchar(100) NOT NULL,
  `make` varchar(50) NOT NULL,
  `model` varchar(50) NOT NULL,
  `location` varchar(50) NOT NULL,
  `region` varchar(50) NOT NULL,
  `vcost` varchar(50) NOT NULL,
  `engine_second` varchar(10) NOT NULL,
  `v_class_of` varchar(100) NOT NULL,
  `activeSS` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehical_info`
--

INSERT INTO `vehical_info` (`regno`, `chasee_no`, `engine_no`, `c_cap`, `v_class`, `f_type`, `c_origin`, `year_manu`, `c_import`, `ty_fr`, `ty_re`, `ty_du`, `ty_sin`, `d_first_reg`, `owner_add`, `make`, `model`, `location`, `region`, `vcost`, `engine_second`, `v_class_of`, `activeSS`) VALUES
('', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', 0),
('118-8769', '1552294', '2094757', '125', 'Motorbike', 'P', '', '1990', '', '', '', '', '', '1991-02-01', 'DG,DWC', 'Honda', 'CG125-3K', 'Bellanwila R.O', 'WESTERN', '', '', '', 0),
('118-8792', '1552967', '2094305', '125', 'Motorbike', 'P', '', '1990', '', '', '', '', '', '1991-02-01', 'Director General,DWC', 'Honda', 'CG125-3K', 'Head Office', 'HEADOFFICE', '', '', '', 0),
('123-7723', '1640515', '2294240', '125', 'Motorbike', 'P', '', '1991', '', '', '', '', '', '1991-12-11', 'DG,DWC', 'Honda', 'C6 -125D', 'Nawagattegama B.O', 'NORTHWESTERN', '', '', 'Motor Cycle', 0),
('123-7724', '1640702', '2294313', '125', 'Motorbike', 'P', '', '1991', '', '', '', '', '', '1991-12-11', 'DG,DWC', 'Honda', 'C6 -125D', 'Gurukumbura B.O', 'EASTERN', '', '', '', 0),
('123-7725', '1640499', '2293681', '125', 'Motorbike', 'P', '', '1991', '', '', '', '', '', '1991-12-11', 'DG,DWC', 'Honda', 'C6 -125D', 'Bogahawewa B.O', 'UVA', '', '', '', 0),
('123-7726', '1640476', '2293648', '125', 'Motorbike', 'P', '', '1991', '', '', '', '', '', '1991-12-11', 'DG,DWC', 'Honda', 'C6 -125D', 'ECU Kirthiibandarapura', 'CENTRAL', '', '', 'Motor Cycle', 0),
('123-7727', '1640713', '2294324', '125', 'Motorbike', 'P', '', '1991', '', '', '', '', '', '1991-12-11', 'DG,DWC', 'Honda', 'C6 -125D', 'AD Western', 'WESTERN', '', '', '', 0),
('123-7728', '1640722', '2294334', '125', 'Motorbike', 'P', '', '1991', '', '', '', '', '', '1991-12-11', 'Director General,DWC', 'Honda', 'C6 -125D', 'Diyabeduma Beat Offi', 'MAHAWELI', '', '', '', 0),
('123-7729', '1640478', '2294205', '125', 'Motorbike', 'P', '', '1991', '', '', '', '', '', '1991-12-11', 'Director General,DWC', 'Honda', 'C6 -125D', 'Mullegama Ranger Off', 'EASTERN', '', '', '', 0),
('123-7731', '1640686', '2294296', '125', 'Motorbike', 'P', '', '1991', '', '', '', '', '', '1991-12-11', 'DG,DWC', 'Honda', 'C6 -125D', 'AD office Central', 'CENTRAL', '', '', 'Motor Cycle', 0),
('123-7736', '1640452', '2294168', '125', 'Motorbike', 'P', '', '1991', '', '', '', '', '', '1991-12-11', 'DG,DWC', 'Honda', 'C6 -125D', 'Jayaganga Beat Offic', 'ANURADHAPURA', '', '', 'Motor Cycle', 0),
('123-7737', '1640723', '2294336', '125', 'Motorbike', 'P', '', '1991', '', '', '', '', '', '1991-12-11', 'DG,DWC', 'Honda', 'C6 -125D', '5th Mile Post B.O', 'SOUTHERN', '', '', '', 0),
('133-8866', 'CG125-1647027', 'CG125-2552276', '125', 'Motorbike', 'P', '', '1993', '', '', '', '', '', '1993-06-29', 'DG,DWC', 'Honda', 'CG125', 'Unagolla Beat Office', 'CENTRAL', '', '', 'Motor Cycle', 0),
('133-8873', 'CG125-1647070', 'CG125-255229', '125', 'Motorbike', 'P', '', '1993', '', '', '', '', '', '1993-06-29', 'DG,DWC', 'Honda', 'CB125', 'Hambanthota', 'SOUTHERN', '', '', 'Motor Cycle', 0),
('133-8874', 'CG125-1646798', 'CG125-2537130', '125', 'Motorbike', 'p', '', '1993', '', '', '', '', '', '1993-06-29', 'DG,DWC', 'Honda', 'C6 -125', 'Galge R.O', 'UVA', '', '', '', 0),
('133-8875', 'CG125-1646801', 'CG125-2537090', '125', 'Motorbike', 'P', '', '1993', '', '', '', '', '', '1993-06-29', 'Director General,DWC', 'Honda', 'CG125', 'Thangamale Beat Offi', 'CENTRAL', '', '', 'Motor Cycle', 0),
('133-8876', 'CG125-1646819', 'CG125-2537151', '125', 'Motorbike', 'P', '', '1993', '', '', '', '', '', '1993-06-29', 'DG,DWC', 'Honda', 'C6125', 'Mullegama R.O', 'UVA', '', '', '', 0),
('133-8877', 'CG125-1647012', 'CG125-2552251', '125', 'Motorbike', 'p', '', '1993', '', '', '', '', '', '1993-06-29', 'DG,DWC', 'Honda', 'C6125', 'Katagamuwa Park Entrance', 'UVA', '', '', '', 0),
('133-8878', 'CG125-1646772', 'CG125-2537080', '125', 'Motorbike', 'P', '', '1993', '', '', '', '', '', '1993-06-29', 'DG,DWC', 'Honda', 'C6 -125', 'Samanthurei R.O', 'EASTERN', '', '', '', 0),
('133-8879', 'CG125-1646784', 'CG125-2537116', '125', 'Motorbike', 'P', '', '1993', '', '', '', '', '', '1993-06-29', 'Director General,DWC', 'Honda', 'C6125', 'Kalpitiya Range', 'NORTHWESTERN', '', '', 'Motor Cycle', 0),
('133-8880', 'CG125-1646813', 'CG125-2537145', '125', 'Motorbike', 'P', '', '1993', '', '', '', '', '', '1993-06-29', 'Director General,DWC', 'Honda', 'CG125', 'Henanigala Beat Offi', 'MAHAWELI', '', '', '', 0),
('133-8881', 'CG125-1647045', 'CG125-2552294', '125', 'Motorbike', 'P', '', '1993', '', '', '', '', '', '1993-06-29', 'DG,DWC', 'Honda', 'CG125', 'Horagolla N.P', 'WESTERN', '', '', '', 0),
('133-8882', 'CG125-1646796', 'CG125-253706', '125', 'Motorbike', 'P', '', '1993', '', '', '', '', '', '1993-06-29', 'DG,DWC', 'Honda', 'CG125', 'Ritigala R.O', 'ANURADHAPURA', '', '', 'Motor Cycle', 0),
('133-8883', 'CG125-1646809', 'CG125-2537139', '125', 'Motorbike', 'P', '', '1993', '', '', '', '', '', '1993-06-29', 'DG,DWC', 'Honda', 'CG125', 'left bank B.O', 'UVA', '', '', '', 0),
('133-8884', 'CG125-1647029', 'CG125-2552278', '125', 'Motorbike', 'P', '', '1993', '', '', '', '', '', '1993-06-29', 'DG,DWC', 'Honda', 'CG125', 'Hambanthota R.O', 'SOUTHERN', '', '', 'Motor Cycle', 0),
('133-8885', 'CG125-1647021', 'CG125-2552269', '125', 'Motorbike', 'P', '', '1993', '', '', '', '', '', '1993-06-29', 'DG,DWC', 'Honda', 'CG125', 'Wilgamuwa ECU', 'POLONNARUWA', '', '', '', 0),
('133-8893', 'CG125-1646741', 'CG125-2537064', '125', 'Motorbike', 'P', '', '1993', '', '', '', '', '', '1993-06-18', 'Director General,DWC', 'Honda', 'CG125', 'Dagawilla B.O', 'CENTRAL', '', '', 'Motor Cycle', 1),
('133-8894', 'CG125-1646744', 'CG125-2537073', '125', 'Motorbike', 'P', '', '1993', '', '', '', '', '', '1993-06-29', 'DG,DWC', 'Honda', 'CG125', 'Katukaliyawa B.O', 'POLONNARUWA', '', '', '', 0),
('133-8895', 'CG125-1646859', 'CG125-2552136', '125', 'Motorbike', 'P', '', '1993', '', '', '', '', '', '1993-06-29', 'DG,DWC', 'Honda', 'CG125', 'Udawalawa N.P', 'SOUTHERN', '', '', 'Motor Cycle', 0),
('133-8896', 'CG125-1646873', 'CG125-2552114', '125', 'Motorbike', 'P', '', '1993', '', '', '', '', '', '1993-06-29', 'DG,DWC', 'Honda', 'CG125', 'Thanthirimale R.O', 'ANURADHAPURA', '', '', 'Motor Cycle', 0),
('133-8897', 'CG125-1646740', 'CG125-2537097', '125', 'Motorbike', 'P', '', '1993', '', '', '', '', '', '1993-06-29', 'DG,DWC', 'Honda', 'CG125', 'Elanthadiya B.O', 'NORTHWESTERN', '', '', 'Motor Cycle', 0),
('133-8898', 'CG125-1646760', 'CG125-2537068', '125', 'Motorbike', 'P', '', '1993', '', '', '', '', '', '1993-06-29', 'DG,DWC', 'Honda', 'CG125', 'Katupattawa B.O', 'ANURADHAPURA', '', '', 'Motor Cycle', 0),
('154-5658', '98M10F-02051', '98L10E-22541', '100', 'Motorbike', 'P', '', '1998', '', '', '', '', '', '1999-01-26', 'DG,DWC', 'Honda', 'CD100 D', 'Uraniya Beat Office', 'SOUTHERN', '', '', 'Motor Cycle', 0),
('154-5659', '98M10F-02042', '98M10E-00022', '100', 'Motorbike', 'P', '', '1998', '', '', '', '', '', '1999-01-26', 'DG,DWC', 'Honda', 'CD100 D', 'Werawila Beat Office', 'SOUTHERN', '', '', 'Motor Cycle', 0),
('154-5660', '98M10F-02337', '98M10E-01024', '100', 'Motorbike', 'P', '', '1998', '', '', '', '', '', '1999-01-26', 'DG,DWC', 'Honda', 'CD100 D', 'Wilmanna B.O', 'SOUTHERN', '', '', '', 0),
('2', '3', '12', '250', 'Pajero', 'D', 'Sri Lanka', '7', 'Sri Lanka', '8', '9', '17', '18', '2009-02-20', '19', '6', '15', 'Anurdhapura', 'Central province', '10', '13', '20', 0),
('23 SRI 9867', 'BE208902917', '78N22', '100 ps', 'Bowser', 'D', '', '1979', '', '', '', '', '', '1979-06-14', 'DG,DWC', 'Isuzu', '', 'AD giritale', 'GIRITALE', '', '', '', 0),
('24 SRI 7935', 'DA110-24647', '2D-105268', '65HP', 'Lorry', 'D', '', '1972', '', '', '', '', '', '1972-02-07', 'Director General,DWC', 'TOYOTA', 'DA 110-43', 'Yala N.P', 'YALA/BUNDALA', '', '', '', 0),
('24-7934', 'DA110-24601', 'FE60104454B', '6925', 'Lorry', 'D', 'JAPAN', '1972', '', '825*20', '825*20', 'SINGLE', 'DUAL', '1972-02-07', 'RIVER VALLEYS DEVEL BOARD,415 Buddhaloka Mawaatha Col7', 'TOYOTA', '', 'Yala National Park', 'SOUTHERN', '', '', '', 0),
('25 SRI 8882', '645648', '152FA34978D', '45.5HP', 'Tractors', 'D', '', '1970', '', '', '', '', '', '1970-02-13', 'DG,DWC', 'Masiferguzion135', 'MF 135 D', 'Kumana N.P', 'EASTERN', '', '', 'Land Vehicle', 0),
('253-6750', 'JMYJNK340WP-013526', '4D56 JT 2900', '2477', 'Single Cab', 'D', '', '1999', '', '', '', '', '', '1999-11-15', 'DG,DWC', 'Mitsubishi', 'L 200', 'Wilpattu N.P', 'ANURADHAPURA', '', '', 'Dual Purpose Vehicle', 0),
('253-6751', 'JMYJNK340WP-012309', '4D56 JQ 8316', '2477', 'Cab', 'D', '', '1999', '', '', '', '', '', '1999-05-18', 'Director General.DWC', 'Mitsubishi', 'L 200', 'Head Office', 'WESTERN', '', '', '', 0),
('253-6752', 'JMYJNK340WP-013486', '4D56 JT 2335', '2477', 'Double Cab', 'D', '', '1999', '', '', '', '', '', '1999-11-15', 'DG,DWC', 'Mitsubishi', 'L 200', 'Kumana N.P', 'EASTERN', '', '', 'Dual Purpose', 0),
('28 SRI 4331', '344083084223', '692D01089876', '4788', 'Lorry', 'D', '', '1980', '', '', '', '', '', '1980-12-31', 'Director General,DWC', 'TATA', '', 'Udawalawa ETH', 'SOUTHERN', '', '', '', 0),
('31 SRI 0725', 'J44-02227', '4DRS216715', '2000', 'Cab', 'D', '', '1976', '', '', '', '', '', '1978-08-03', 'Secretary Ministry of Land and Development', 'Mitsubishi', '', 'Galge Park Entrance', 'UVA', '', '', '', 0),
('31 SRI 5276', 'J44501110', '4DRS396196', '2659', 'Jeep', 'D', '', '1980', '', '', '', '', '', '1980-10-03', 'DG,DWC', 'MITSUBISHI', '', 'Wilpattuwa NP', 'ANURADHAPURA', '', '', 'Motor Car', 0),
('32 SRI 3775', 'CL049VHJ400584', 'HD56BK0617', '2500HP', 'Pajero', 'D', '', '1987', '', '', '', '', '', '1987-03-12', 'Secretary Minstry of State', 'MITSUBISHI', '', 'AD Vauniya', 'VAUNIYA', '', '', '', 0),
('32 SRI 3778', 'CL049VHJ400575', '4D56BJ9979', '2500HP', 'Pajero', 'D', '', '1987', '', '', '', '', '', '1987-03-12', 'Director General,DWC', 'MITSUBISHI', '', 'Head Office ', 'HEADOFFICE', '', '', '', 0),
('32 SRI 3779', 'CLO49VHJ40571', '4D56BJ8882', '2500HP', 'Pajero', '2500HP', '', '1987', '', '', '', '', '', '1987-03-12', 'Director General,DWC', 'MITSUBISHI', '', 'Head Office', 'HEADOFFICE', '', '', '', 0),
('32 SRI 3781', 'CL049VHJ-400559', '4D56BJ-5716', '2500HP', 'Pajero', 'D', '', '1987', '', '', '', '', '', '1987-03-12', 'DG,DWC', 'MITSUBISHI', '', 'AD Western', 'WESTERN', '', '', '', 0),
('32 SRI 6290', 'LJ700005343', '2L1795123', '2446', 'Jeep', 'D', '', '1989', '', '', '', '', '', '1989-02-27', 'Director General,DWC', 'TOYOTA', '', 'Lunugamwehera N.P', 'SOUTHERN', '', '', 'Motor Car', 0),
('32 SRI 6291', 'LJ700005297', '2L1793692', '2446', 'Jeep', 'D', '', '1989', '', '', '', '', '', '1989-02-27', 'Director General,DWC', 'TOYOTA', '', 'Ranger Office Ulhiti', 'CENTRAL', '', '', 'Motor Car', 0),
('32 SRI 6294', 'LJ70-0005331', '2L-1796284', '2446', 'Jeep', 'D', '', '1989', '', '', '', '', '', '1989-02-27', 'Mahaweli Project,Ministry of State', 'TOYOTA', '', 'Ranger Office Ampara', 'EASTERN', '', '', 'Motor Car', 0),
('32 SRI 6295', 'LJ70-0005305', '2L-1792712', '2446', 'Jeep', 'D', '', '1989', '', '', '', '', '', '1989-02-27', 'DG,DWC', 'TOYOTA', '', 'AD Office Polonnaruwa', 'POLONNARUWA', '', '', 'Motor Car', 0),
('32-3776', 'CL049VHJ400580', '4D50BJ9903', '2500', 'Jeep', 'D', '', '1987', '', '-', '-', '-', '-', '1987-03-12', 'Secretary MInistry of State', 'Mitsubishi', '', 'Wet Ampara', 'EASTERN', '', '', 'Motor Car', 0),
('32-6277', '-', '-', '-', 'Tractors', 'D', '', '-', '-', '-', '-', '-', '-', '0000-00-00', 'Unkonwn', '', '', 'Ulhitiya R.O', 'EASTERN', '', '-', 'Land Vehicle', 0),
('32-6290', 'LJ700005343', '2L1795123', '2440', 'Jeep', 'D', '', '1989', '', 'SINGLE', 'SINGLE', '', '', '2000-01-24', 'Mahaweli Project,Ministry of State', 'TOYOTA', '', 'Lunugamvehera N.P', 'UVA', '', '', 'Motor Car', 0),
('32-6291', 'LJ70-0005297', '2L-1793692', '2446', 'Jeep', 'D', '-', '1989', '-', '-', '-', '-', '-', '1989-02-27', 'Mahaweli Project,Ministry of State', 'TOYOTA', '', 'Ulhitiya R.O', 'EASTERN', '', '', 'Motor Car', 0),
('32-8473', '-', '-', '-', 'Jeep', 'D', '-', '-', '--', '-', '-', '-', '-', '0000-00-00', 'Dept of Irrigation', '-', '-', 'Randenigala R.O', 'CENTRAL', '', '-', 'Motor Car', 0),
('32-8475', '-', '-', '-', 'Jeep', 'D', '', '-', '', '', '', '', '', '0000-00-00', 'Dept Of Irrigation', '', '', 'Udawalawa N.P', 'SOUTHERN', '', '', 'Motor Car', 0),
('32-8476', '-', '-', '-', 'Jeep', 'D', '-', '-', '-', '--', '-', '-', '-', '0000-00-00', 'Dept of Irrigation', '-', '-', 'Angammadilla N.P', 'POLONNARUWA ', '', '-', 'Motor Car', 0),
('32-8479', '-', '-', '-', 'Jeep', 'D', '-', '-', '-', '-', '-', '-', '-', '0000-00-00', 'Dept of Irrigation', '-', '-', 'Herathgama R.O', 'ANURADHAPURA', '', '-', 'Motor Car', 0),
('32-8480', '-', '-', '-', 'Jeep', 'D', '', '-', '', '', '', '', '', '0000-00-00', 'Dept of Irrigation', '-', '-', 'Udawalawa N.P', 'SOUTHERN', '', '', 'Motor Car', 0),
('32-8482', '-', '-', '--', 'Jeep', 'D', '--', '-', '-', '-', '-', '-', '-', '0000-00-00', 'DG,DWC', '-', '-', 'Polonnaruwa R.O', 'POLONNARUWA', '-', '-', 'Motor Car', 0),
('340-1087', 'AHT 10568', '19094121', '510', 'Tractors', 'D', '', '1999', '', '', '', '', '', '2000-02-01', 'Director General,DWC', 'AGRIMEC', 'AHT-8', 'Udawalawa ETH', 'SOUTHERN', '', '', '', 0),
('340-3179', 'k75-301314', 'RK80105058', '443', 'Hand Tractors', 'D', '', '1999', '', '', '', '', '', '2000-05-12', 'DG,DWC', 'kubota', '', 'Horton Plains N.P', 'CENTRAL', '', '', 'Land Vehicle', 0),
('36 SRI 1297', '135404125C', '152VA269849D', '45.5HP', 'Tractors', 'D', '', '1971', '', '', '', '', '', '1973-01-13', 'DG ,DWC', 'Masiferguzion', 'MF 135 D', 'Yala N.P', 'UVA', '', '', '', 0),
('36 SRI 3787', '482324C', 'CE21526U516907D', '47HP', 'Tractors', 'D', '', '1976', '', '', '', '', '', '1978-07-24', 'DG,DWC', 'Masiferguzion135', '', 'AD Central', 'CENTRAL', '', '', 'Land Vehicle', 0),
('36 SRI 5358', 'C487741', 'CE21526U551891E', '47HP', 'Tractors', 'D', '', '1978', '', '', '', '', '', '1979-02-07', 'DG,DWC', 'Masiferguzion', '', 'Lunugamwehera N.P', 'UVA', '', '', '', 0),
('37 SRI 4775', '552095', 'CE22488U729494K', '47HP', 'Tractors', 'D', '', '1984', '', '', '', '', '', '1984-08-01', 'DG,DWC', 'Masiferguzion135', '', 'AD office Giritale', 'GIRITALE', '', '', '', 0),
('37 SRI 6274', '561057', 'CE22488U770990N', '47HP', 'Tractors', 'D', '', '1985', '', '', '', '', '', '1985-12-20', 'Director General,DWC', 'Masiferguzion135', '', 'AD mahaweli', 'MAHAWELI', '', '', '', 0),
('37 SRI 6275', '561324', 'CE22488U772719', '47 HP', 'Tractors', 'D', '', '1985', '', '', '', '', '', '1985-12-26', 'Director General,DWC', 'Masiferguzion135', '', 'Ranger Office,Okanda', 'EASTERN', '', '', '', 0),
('37 SRI 6276', '561059', 'CE22488U77005', '47HP', 'Tractors', 'D', '', '1985', '', '', '', '', '', '1985-12-20', 'DG,DWC', 'Masiferguzion', '', 'Udawalawa ETH', 'SOUTHERN', '', '', 'Land Vehicle', 0),
('37 SRI 6277', '561052', 'CE22488U770698', '47HP', 'Tractors', 'D', '', '1985', '', '', '', '', '', '1985-12-20', 'DG,DWC', 'Masiferguzion', '', 'Maduru Oya N.P', 'MAHAWELI', '', '', '', 0),
('37 SRI 6758', '-', '-', '-', 'Tractors', 'D', '-', '-', '-', '--', '-', '-', '-', '0000-00-00', 'Dept of Irrigation', '-', '-', 'AD Central', 'CENTRAL', '', '-', '', 0),
('37 SRI 7532', 'BC13438', 'C195502', '44.3HP', 'Tractors', 'D', '', '1989', '', '', '', '', '', '1989-09-08', 'DG,DWC', 'Ford', '', 'Wasgamuwa N.P', 'POLONNARUWA', '', '', '', 0),
('37-8558', '-', '-', '-', 'Tractors', 'D', '-', '-', '-', '-', '-', '-', '-', '1978-05-05', 'DG,DWC', '-', '-', 'AD Uva', 'Uva', '', '', 'Land Vehicle', 0),
('41-9414', '-', '-', '-', 'Lorry', 'D', '-', '-', '-', '-', '-', '-', '-', '0000-00-00', 'DG,DWC', '-', '-', 'AD Polonnaruwa', 'POLONNARUWA', '', '-', 'Motor Lorry', 0),
('46 SRI 1617', '-', '-', '-', 'Trailer', '-', '-', '-', '-', '-', '-', '-', '-', '0000-00-00', 'Unkonwn', '-', '-', 'AD Office Central', 'CENTRAL', '', '-', '-', 0),
('46-1618', 'TME6144', 'No', '', 'Tractors', 'D', '', '1986', '', '', '', '', '', '1986-01-22', 'DG,DWC', 'Trac More', '1986', 'Wasgamuwa N.P', 'MAHAWELI', '', '', '', 0),
('46-2452', 'WIMT1027', 'No', '', 'Tractors', 'D', '', '1988', '', '', '', '', '', '1988-08-18', 'DG,DWC', 'Wimala', '1988', 'AD Central', 'CENTRAL', '', '', '', 0),
('47-3363', 'LALG-01827', 'QTH-033980', '160HP', 'Lorry', 'D', '', '1994', '', '', '', '', '', '1995-01-12', 'DG,DWC', '', '', 'AD Office', 'SOUTHERN', '', '', '', 0),
('50 SRI 6973', 'JAATFS52HJ-7100020', '931231', '61kw', 'Cab', 'D', '', '1988', '', '', '', '', '', '1988-03-21', 'Secretary Ministry of State', 'TFS 52', '', 'Trinco R.O', 'POLONNARUWA', '', '', '', 0),
('50 SRI 8166', 'URGD21410003', 'TD25033582', '2500', 'Double Cab', 'D', '', '1988', '', '', '', '', '', '1988-09-07', 'DG,DWC', 'NISSAN', '', 'Kahalapallakale R.O', 'NORTHWESTERN', '', '', 'Dual Purpose Vehicle', 0),
('51-7222', 'JAATFS54HM 7101399', '515467', '', 'Double Cab', 'D', '', '1990', '', '', '', '', '', '1991-03-01', 'DG,DWC', 'Isuzu', '', 'Maduru Oya N.P', 'EASTERN', '', '', 'Dual Purpose', 0),
('51-7321', 'UBMD21-433838', 'TD27-163491', '2700', 'Double Cab', 'D', '', '1990', '', '', '', '', '', '1991-03-05', 'DG,DWC', 'NISSAN', '4WD D/CAB', 'Migalawa Ranger Offi', 'NORTHWESTERN', '', '', 'Dual Purpose Vehicle', 0),
('51-7446', 'UBMD21-433852', 'TD27-163960', '2700', 'Double Cab', 'D', '', '1990', '', '', '', '', '', '1991-03-13', 'DG,DWC', 'NISSAN', '4WD D/CAB', 'KAtaragama R.O', 'UVA', '', '', '', 0),
('52-1462', 'SALLDHMC7HA903800', '12J48986C', '2495', 'Land Rover', 'D', 'JAPAN', '1991', '', '750*16', '750*16', 'SINGLE', 'SINGLE', '1991-08-15', 'DG,DWC', 'LAND ROVER', 'One Ten', 'AD Northwestern', 'NORTHWESTERN', '', '', 'Dual Purpose Vehicle', 0),
('52-3118', 'UBMD21-435160', 'TD27-207496', '2700', 'Double Cab', 'D', '', '1991', '', '', '', '', '', '1991-11-20', 'DG,DWC', 'Nissan', '4LD D/CAB', 'Eddapola R.O', 'EASTERN', '', '', 'Dual Purpose', 0),
('52-5708', 'UTGD21-433382', 'BD25-001520', '2500', 'Cab', 'D', '', '1991', 'JAPAN', '-', '1992-02-13', '-', '', '1992-02-13', 'DIstrict Secretariat Kurunagala', 'NIssan', '2WD D/CAB', 'Herathgama R.O', 'NORTHWESTERN', '', '', 'Dual Purpose', 0),
('52-5985', 'CJNK340NP00413', '4D56-EE8412', '2500', 'Cab', 'D', '', '1991', '', '', '', '', '', '1992-02-11', 'DG,DWC', 'MITSUBISHI', 'L200', 'Lunugamwehera N.P', 'UVA', '', '', '', 0),
('53-4917', 'LN106-0081631', '3L-3221885', '2779', 'Cab', 'D', '', '1992', '', '', '', '', '', '1992-12-29', 'DG,DWC', 'TOYOTA', 'HILUX 4WD', 'Ritigala Range', 'ANURADHAPURA', '', '', 'Dual Purpose Vehicle', 0),
('53-7229', 'LN106-0084182', '3L3291949', '2850', 'Cab', 'D', '', '1993', '', '', '', '', '', '1993-03-19', 'Director General,DWC', 'TOYOTA', 'HILUX', 'Gritale Training Cen', 'GIRITALE', '', '', '', 0),
('53-7316', 'JAATFR54HP-7100584', '711411', '2499', 'Cab', 'D', '-', '1992', '-', '-', '-', '-', '-', '1993-03-16', 'Divisional Secrateriate Kotawehera', '-', 'DOUBLE CAB', 'AD OFFICE NW', 'NORTHWESTERN', '', '', 'Dual Purpose', 0),
('54-1156', 'LN106-0090281', '3L-3442200', '2800', 'Cab', 'D', 'JAPAN', '1993', '', '700*15', '700*15', 'SINGLE', 'SINGLE', '1993-09-13', 'DG,DWC', 'TOYOTA', 'HILUX', 'Anuradhapura Range', 'ANURADHAPURA', '', '', 'Dual Purpose Vehicle', 0),
('54-1157', 'LN106-00090374', '3L-3448752', '2800', 'Cab', 'D', 'JAPAN', '1993', '', '700*15', '700*15', 'SINGLE', 'SINGLE', '1993-09-13', 'DG,DWC', 'TOYOTA', 'HILUX', 'Hambantota R.O', 'SOUTHERN', '', '', 'Dual Purpose Vehicle', 0),
('54-1165', 'LN106-0090402', '3L-3448815', '2800', 'Double Cab', 'D', '', '1993', '', '', '', '', '', '1993-09-13', 'Food & Agriculture Org', 'TOYOTA', 'HILUX', 'AD office Eastern ', 'EASTERN', '', '', '', 0),
('54-1167', 'LN106-0090505', '3L-3450389', '2800', 'Cab', 'D', 'JAPAN', '1993', '', '700*15', '700*15', 'SINGLE', 'SINGLE', '1993-09-13', 'DG,DWC', 'TOYOTA', 'HILUX', 'Galoya N.P', 'UVA', '', '', '', 0),
('54-1174', 'LN106-0090622', '3L-3453638', '2800', 'Cab', 'D', 'JAPAN', '1993', '', '700*15', '700*15', 'SINGLE', 'SINGLE', '1993-09-13', 'DG,DWC', 'TOYOTA', 'HILUX', 'Haggala Ranger Offi', 'CENTRAL', '', '', 'Dual Purpose Vehicle', 0),
('54-1175', 'LN106-0090641', '3L-3453892', '2800', 'Double Cab', 'D', 'JAPAN', '1993', '', '700*15', '700*15', 'SINGLE', 'SINGLE', '1993-09-13', 'DG,DWC', 'TOYOTA', 'HILUX', 'Maduro Oya N.P', 'EASTERN', '', '', 'Dual Purpose', 0),
('54-1176', 'LN106-0090626', '3L-3435014', '2800', 'Double Cab', 'D', 'JAPAN', '1993', '', '700*15', '700*15', 'SINGLE', 'SINGLE', '1993-09-13', 'DG,DWC', 'TOYOTA', 'HILUX', 'Pandulagama Vet Unit', 'ANURADHAPURA', '', '', 'Dual Purpose Vehicle', 0),
('54-1183', 'LN106-0090647', '3L-3454225', '2800', 'Double Cab', 'D', 'JAPAN', '1993', '', '700*15', '700*15', 'SINGLE', 'SINGLE', '1993-09-13', 'DG,DWC', 'TOYOTA', 'HILUX', 'Yala N.P', 'UVA', '', '', '', 0),
('54-1184', 'LN106-0090640', '3L-3451570', '2800', 'Cab', 'D', 'JAPAN', '1993', '', '', '', '', '', '1993-09-13', 'DG,DWC', 'TOYOTA', 'HILUX', 'HIkkaduwa N.P', 'WESTERN', '', '', '', 0),
('56-1174', 'JAATFS54HR-7101329', '4JA1-858400', '2499', 'Cab', 'D', '', '1994', '', '', '', '', '', '1994-09-30', 'DG,DWC', 'Isuzu', 'TFS54H-OPEN', 'Wilgamuwa ECU', 'POLONNARUWA', '', '', '', 0),
('56-1184', 'JAATFS54HP-7104752', '4JA1-832799', '2499', 'Cab', 'D', '', '1993', '', '', '', '', '', '1994-09-30', 'DG,DWC', 'Isuzu', 'TFS54H-OPEN', 'Galgamuwa ECU', 'NORTHWESTERN', '', '', '', 0),
('56-1185', 'JAATFS54HR - 7101365', '4JA1-859351', '2499', 'Cab', 'D', '', '1994', '', '', '', '', '', '1994-09-30', 'DG,DWC', 'Isuzu', 'TFS54H-OPEN', 'Lahugala N.P', 'EASTERN', '', '', '', 0),
('57-2995', '-', '-', '-', 'Cab', 'D', '-', '-', '-', '-', '-', '-', '-', '0000-00-00', 'District Secretary ,Ampara', '-', '-', 'WET Ampara', 'EASTERN', '', '-', 'Dual Purpose', 0),
('58-8037', 'JMYJNK340VP000397', '4D56HK1070', '2477', 'Cab', 'D', '', '1996', '', '', '', '', '', '1996-11-06', 'Drector General,DWC', 'MITSUBISHI', 'L200', 'AD Mahaweli', 'MAHAWELI', '', '', '', 0),
('58-8039', 'JMYJNK340VP000542', '4D56HK3121', '2477', 'Cab', 'D', '', '1996', '', '', '', '', '', '1996-11-06', 'DG,DWC', 'MITSUBISHI', 'L200', 'AD Central', 'CENTRAL', '', '', 'Dual Purpose Vehicle', 0),
('61-7067', 'BB42-0003347', '14B-1335863', '3660', 'Bus', 'D', '', '1993', '', '', '', '', '', '1994-01-10', 'DG,DWC', 'TOYOTA', 'Coaster', 'AD Giritale', 'GIRITALE', '', '', 'Motor Coach', 0),
('61-7516', 'LH1140015250', '2L3528647', '2446', 'Van', 'D', '', '1993', '', '', '', '', '', '1994-01-10', 'Director General,DWC', 'TOYOTA', 'HIACE', 'Headd Office', 'HEADOFFICE', '', '', '', 0),
('64-6107', 'HZJ80-0019299', '1HZ-0110143', '4766', 'Jeep', 'D', '', '1993', '', '', '', '', '', '1994-01-04', 'Food & Agriculture Org', 'TOYOTA', 'Land cruiser', 'AD Uva', 'UVA', '', '', 'Motor Car', 0),
('64-7468', 'HZJ80-0020984', '1HZ01-25960', '3900', 'Jeep', 'D', '', '1994', '', '', '', '', '', '1994-07-15', 'UNDP', 'TOYOTA', 'Land Cruiser', 'Monaragala R.O', 'UVA', '', '', 'Motor Car', 0),
('65-0260', 'SALLDHMF8MA965676', '16L22198A', '2485', 'Cab', 'D', '', '1995', '', '', '', '', '', '1995-07-04', 'DG,DWC', 'NISSAN', 'DEFENDER 110', 'Giritale Training Ce', 'GIRITALE', '', '', '', 0),
('70-6227', '20588', '047736', '-', 'Hand Tractors', 'D', '', '1976', '', '', '', '', '', '1979-03-09', 'DG,DWC', '', '', 'Mauara B.O', 'SOUTHERN', '', '', 'Land Vehicle', 0),
('74-4169', '96158', '828137', 'not available', 'Tractors', 'D', '', '1992', '', '', '', '', '', '1992-03-20', 'DG,DWC', 'kubota', 'RK 80', 'Udawalawa,ETH', 'SOUTHERN', '', '', '', 0),
('JT 6720', 'DG01X-013009', '3TS-093979', '175', 'Cab', 'P', '', '2005', '', '', '', '', '', '2005-03-10', 'Director General,DWC', 'YAMAHA', '', 'Kumaraella Beat Offi', 'MAHAWELI', '', '', '', 0),
('JT-6632', 'DG01X-013046', '3TS-094013', '175', 'MotorBike', 'P', '', '2005', '', '', '', '', '', '2005-03-10', 'DG,DWC', '', '', 'Galpaya Beat Office', 'SOUTHERN', '', '', 'Motor Cycle', 0),
('Recheck', 'MAT39932247R00512', '697D41AVZ850593', '5675', 'Bowser', 'D', '', '2004', '', '', '', '', '', '0000-00-00', 'Director General,DWC', 'TATA', 'LPT 713-Water Browse', 'Maduru Oya N.P', 'MAHAWELI', '', '', '', 0),
('RV 0259', 'T24799', 'No', 'No', 'Tractors', 'D', '', '2005', '', '', '', '', '', '2005-07-26', 'DG,DWC', 'Localy Build', 'Tractor Trailer', 'Wasgamuwa N P', 'MAHAWELI', '', '', '', 0),
('WP  LG-0673', 'MMBENKB409D024661', '4D56UCB7525', '2477', 'Lorry', 'D', 'THAILAND', '2008', 'JAPAN', '205*R16', '205*R16', 'SINGLE', 'SINGLE', '2008-12-04', 'Director General,DWC', 'MITSUBISHI', 'KB4TNENMR', 'Ele.Con.Unit Kotaweh', 'NORTHWESTERN', '', '', '', 1),
('WP 52-3118', 'UBMD21-435', 'TD27-207496', '2700', 'Cab', 'DIESEL', '', '1991', '', '', '', '', '', '1991-11-20', 'DIRECTOR GENERAL,DWC', 'NISSAN', '4LD D/CAB', 'MADURU OYA NATIONAL ', 'MAHAWELI', '', '', '', 0),
('WP 64-6106', 'HZJ80-0019301', '1HZ0110152', '4476', 'Jeep', 'D', '', '1993', '', '', '', '', '', '1994-01-04', 'Director General,DWC', 'TOYOTA', 'Land cruiser', 'Head Office', 'HEADOFFICE', '', '', 'Motor Car', 0),
('WP GL-8336', 'FB511B A42531', '4M40-D50329', '2835', 'Cab', 'D', '', '2001', '', '', '', '', '', '2002-01-16', 'DG,DWC', 'MITSUBISHI', 'CANTER', 'Yala National Park', 'UVA', '', '', '', 0),
('WP GL-9378', 'FB511B A42527', '4M40DS0328', '2835', 'Crew Cab', 'D', '', '2001', '', '', '', '', '', '2002-01-21', 'Director General,DWC', 'Mitsubishi', 'Canter(crew cab)', 'Udawalawa N..P', 'SOUTHERN', '', '', 'Dual Purpose Vehicle', 0),
('WP GL-9379', 'FB511B A42514', '4M40DS0325', '2835', 'Crew Cab', 'D', '', '2001', '', '', '', '', '', '2002-01-21', 'DG,DWC', 'Mitsubishi', 'canter (crew cab)', 'Horton Plains N.P', 'CENTRAL', '', '', 'Dual Purpose Vehicle', 0),
('WP GL-9381', 'FB511B A42512', '4M40DR9246', '2835', 'Crew Cab', 'D', '', '2001', '', '', '', '', '', '2002-01-21', 'DG,DWC', 'Mitsubishi', 'canter (crew cab)', 'Wasgamuwa N.P', 'POLONNARUWA', '', '', 'Dual Purpose', 0),
('Wp GL-9385', 'FB511B A42533', '4M40DS1030', '2835', 'Cab', 'D', '', '2001', '', '', '', '', '', '2002-01-21', 'Director General,DWC', 'Mitsubishi', 'canter (crew cab)', 'AD office Mahaweli', 'MAHAWELI', '', '', '', 0),
('WP GL-9388', 'FB511B A42534', '4M40DS1065', '2835', 'Crew Cab', 'D', '', '2001', '', '', '', '', '', '2002-01-21', 'DG,DWC', 'Mitsubishi', 'canter (crew cab)', 'Galgamuwa ECU', 'ANURADHAPURA', '', '', 'Dual Purpose Vehicle', 0),
('WP GL-9389', 'FB511B A42532', '4M40DS1029', '2835', 'Crew Cab', 'D', '', '2001', '', '', '', '', '', '2002-01-21', 'Director General .DWC', 'Mitsubishi', 'canter (crew cab)', 'Keerthibandarapura ECU', 'CENTRAL', '', '', 'Dual Purpose Vehicle', 0),
('WP GL-9391', 'FB511B A42530', '4M40DS0165', '2835', 'Crew Cab', 'D', '', '2001', '', '', '', '', '', '2002-01-21', 'DG,DWC', 'Mitsubishi', 'canter (crew cab)', 'Galgamuwa ECU', 'ANURADHAPURA', '', '', 'Dual Purpose Vehicle', 0),
('WP GL-9392', 'FB511BA42528', '4M40DS0326', '2835', 'Cab', 'D', 'JAPAN', '2001', '', '', '', '', '', '2002-01-21', 'Director General,DWC', 'MITSUBISHI', 'Canter', 'Head Office', 'HEADOFFICE', '', '', '', 0),
('WP GL-9394', 'FB511B A42529', '4M40DS0330', '2835', 'Crew Cab', 'D', '', '2001', '', '', '', '', '', '2002-01-21', 'DG,DWC', 'Mitsubishi', 'canter (crew cab)', 'Minneriya N.P', 'POLONNARUWA', '', '', 'Dual Purpose', 0),
('WP GM-1941', 'JAATFS55HY-7119844', '4JB1-771084', '2771', 'Cab', 'D', '', '2001', '', '', '', '', '', '2002-01-30', 'Director General,DWC', 'Isuzu', 'TFS554', 'DD southern', 'SOUTHERN', '', '', '', 0),
('WP GM-1943', '-', '-', '-', 'Cab', 'D', '-', '2001', '-', '-', '-', '-', '-', '2002-01-31', 'DG,DWC', '-', '-', 'Udawalawa ETH', 'SOUTHERN', '', '-', 'Dual Purpose', 0),
('WP GM-1945', 'JAATFS55HY7119843', '4JB1-771021', '2771', 'Cab', 'D', '', '2001', '', '', '', '', '', '2002-01-31', 'DG,DWC', 'ISUZU', 'TFS55H -Double Cab', 'Head Office', 'HEADOFFICE', '', '', '', 0),
('WP GR-7905', 'JTEBE91J50-00114266', '3L5230308', '2779', 'Jeep', 'D', '', '2002', '', '', '', '', '', '2002-08-02', 'Director General,DWC', 'TOYOTA', 'Land cruiser', 'Head Office', 'HEADOFFICE', '', '', '', 0),
('WP HB-7581', 'DFFBJF97722', 'DFMBJF96841', '100', 'Motorbike', 'P', '', '2002', '', '', '', '', '', '2003-03-21', 'DG,DWC', 'Bajaj', 'Bajaj Boxer AT', 'Horton Plains N.P', 'CENTRAL', '', '', 'Motor Cycle', 0),
('WP HH-7332', '0499675', 'AK50628U162679H', '3990', 'JCB', 'D', '', '2001', '', '', '', '', '', '2003-08-04', 'Director General,DWC', 'JCB', '3CX', 'Udawalawa ETH', 'SOUTHERN', '', '', '', 0),
('WP HK-3395', 'JTFDE62660-0108928', '3L-5362574', '2779', 'Cab', 'D', '', '2003', '', '', '', '', '', '2003-09-11', 'Director General,DWC', 'TOYOTA', 'HILUX', 'Samanala Range', 'CENTRAL', '', '', 'Dual Purpose Vehicle', 0),
('WP HK-3423', 'JTFDE62610-0108917', '3L5362507', '2779', 'Double Cab', 'D', '', '2003', '', '', '', '', '', '2003-09-11', 'DG,DWC', 'TOYOTA', 'HILUX', 'Minneriya N.P', 'POLONNARUWA', '', '', 'Dual Purpose', 0),
('WP HK-3426', 'JTFDE62600-0108598', '3l-5360323', '2779', 'Cab', 'D', '', '2003', '', '', '', '', '', '2003-09-11', 'DG,DWC', 'TOYOTA', 'HILUX', 'Horton Plains N.P', 'CENTRAL', '', '', 'Dual Purpose Vehicle', 0),
('WP HK-3432', 'JTFDE62600-0108942', '3L-5328366', '2779', 'Cab', 'D', '', '2003', '', '', '', '', '', '2003-09-11', 'DG,DWC', 'TOYOTA', 'HILUX', 'Wasgamuwa N.P', 'POLONNARUWA', '', '', '', 0),
('WP HK-3440', 'JTFDE62670-0108761', '3L-5361836', '2779', 'Double Cab', 'D', '', '2003', '', '', '', '', '', '2003-09-11', 'DG,DWC', 'TOYOTA', 'HILUX', 'Udawalawa N.P', 'SOUTHERN', '', '', 'Dual Purpose Vehicle', 0),
('WP HK-3447', 'JTFDE62640-0108796', '3L-5361970', '2779', 'Cab', 'D', '', '2003', '', '', '', '', '', '2003-09-11', 'Director General,DWC', 'TOYOTA', 'HILUX', 'Head Office', 'HEADOFFICE', '', '', '', 0),
('WP HK-3453', 'JTFDE62650-0108953', '3L5327897', '2779', 'Cab', 'D', '', '2003', '', '', '', '', '', '2003-09-11', 'DG,DWC', 'TOYOTA', 'HILUX', 'Bundala N.P', 'SOUTHERN', '', '', 'Dual Purpose Vehicle', 0),
('WP JC-9789', 'MAT39932247R00521', '697D41AVZ850714', '5675', 'Lorry', 'D', '', '2004', '', '', '', '', '', '2004-07-13', 'DG,DWC', 'TATA', 'LPT713', 'Kumana N.P', 'EASTERN', '', '', '', 0),
('WP JD-1726', 'MAT39932247R00686', '697D41AVZ851053', '5675', 'Bowser', 'D', '', '2004', '', '', '', '', '', '2004-07-15', 'DG,DWC', 'TATA', 'LPT 713- Browse', 'Ritigala ETH', 'ANURADHAPURA', '', '', 'Motor Lorry', 0),
('WP JD-1786', 'MAT39932247R00475', '697D41AVZ850713', '5675', 'Bowser', 'D', '', '2004', '', '', '', '', '', '2004-07-15', 'DG,DWC', 'TATA', 'LPT 713-Water Browse', 'Kaudulla N.P', 'POLONNARUWA', '', '', '', 0),
('WP JD-1792', 'MAT39932247R00687', '697D41AVZ850834', '5675', 'Bowser', 'D', '', '2004', '', '', '', '', '', '0000-00-00', 'DG,DWC', 'TATA', 'LPT 713-Water Browse', 'Lunugamwehera N.P ', 'UVA', '', '', '', 0),
('WP JD-1920', 'MAT39932247R00512', '697D41AVZ850593', '5675', 'Bowser', 'D', '', '2004', '', '', '', '', '', '2004-07-15', 'DG,DWC', 'TATA', 'LPT713 Bowser', 'maduru Oya N.P', 'EASTERN', '', '', 'Motor Lorry', 0),
('WP JD-1933', 'MAT39932247R00522', '697D41AVZ850819', '5675', 'Bowser', 'D', '', '2004', '', '', '', '', '', '2004-07-15', 'DG,DWC', 'TATA', 'LPT 713-Browse', 'Udawalawa N.P', 'SOUTHERN', '', '', 'Motor Lorry', 0),
('WP JD-1938', 'MAT39932247R00480', '697D41AVZ850712', '5675', 'Bowser', 'D', '', '2004', '', '', '', '', '', '2004-07-15', 'DG,DWC', 'TATA', 'LPT713/38-BOWSER', 'Bundala N.P', 'SOUTHERN', '', '', 'Motor Lorry', 0),
('WP JI-5352', 'SALLDKH87YA186271', '10P56605A', '2498', 'Jeep', 'D', '', '2003', '', '', '', '', '', '2004-09-23', 'DG,DWC', 'LAND ROVER', 'DEFENDER', 'Udawalawa ETH', 'SOUTHERN', '', '', 'Motor Lorry', 0),
('WP JL-8201', 'AT 002970', '002970', '815', 'Hand Tractors', 'D', '', '2004', '', '', '', '', '', '2004-11-10', 'DG,DWC', 'AGROTECH GN12', 'GN12', 'Kumana Park Office', 'EASTERN', '', '', '', 0),
('WP JL-8208', 'AT002759', '002759', '815', 'Tractors', 'D', '', '2004', '', '', '', '', '', '0000-00-00', 'Director General,DWC', 'AGROTECH GN12', 'GN12', 'Unknown', 'Unknown', '', '', '', 0),
('WP JL-8219', 'AT002707', '002707', '815', 'Tractors', 'D', '', '2003', '', '', '', '', '', '0000-00-00', 'Director General,DWC', 'AGROTECH GN12', 'GN12', 'Giritale Training C', 'GIRITALE', '', '', '', 0),
('WP JL-8236', 'AT 002960', '002960', '815', 'Hand Tractors', 'D', '', '2004', '', '', '', '', '', '2004-11-10', 'DG,DWC', 'AGROTECH GN12', 'GN12', 'Bundala N.P', 'SOUTHERN', '', '', 'Land Vehicle', 0),
('WP JL-8242', 'AT002668', '002668', '815', 'Tractors', 'D', '', '2003', '', '', '', '', '', '0000-00-00', 'Director General,DWC', 'AGROTECH GN12', 'GN12', 'Gal Oya N.P', 'EASTERN', '', '', '', 0),
('WP JL-8250', 'AT002741', '002741', '815', 'Hand Tractors', 'D', '', '2003', '', '', '', '', '', '0000-00-00', 'DG,DWC', 'AGROTECH GN12', 'GN12', 'Wasgamuwa N.P', 'POLONNARUWA', '', '', '', 0),
('WP JL-8261', 'AT 002997', '002997', '815', 'Hand Tractors', 'D', '', '2004', '', '', '', '', '', '0000-00-00', 'DG,DWC', 'AGROTECH GN12', 'GN12', 'Kandaganwila B.O', 'EASTERN', '', '', '', 0),
('WP JL-8280', 'AT 002972', '002972', '815', 'Hand Tractors', 'D', '', '2003', '', '', '', '', '', '0000-00-00', 'DG,DWC', 'AGROTECH GN12', 'GN12', 'Lunugamwehera N.P', 'UVA', '', '', 'Land Vehicle', 0),
('WP JL-8289', 'AT002707', '002707', '815', 'Tractors', 'D', '-', '2003', '-', '-', '-', '-', '-', '2004-11-10', 'DG,DWC', 'AGROTECH GN12', 'GN12', 'GIritale', 'GIRITALE', '', '', 'Land Vehicle', 0),
('WP JM-4059', 'AT002866', '002866', '815', 'Tractors', 'D', '', '2004', '', '', '', '', '', '0000-00-00', 'Director General,DWC', 'AGROTECH GN12', 'GN12', 'Kaudulla N.P', 'MAHAWELI', '', '', '', 0),
('WP JP-6707', 'DG01X-013020', '3TS-094000', '175', 'Motorbike', 'P', '', '2005', '', '', '', '', '', '2005-03-10', 'Director General,DWC', 'YAMAHA', 'DT 175', 'Head Office', 'HEADOFFICE', '', '', '', 0),
('WP JT-6635', 'DG01X-013043', '3TS-094015', '175', 'Motorbike', 'P', '', '2005', '', '', '', '', '', '2005-03-10', 'DG,DWC', 'YAMAHA', 'DT 175', 'Rajgammana B.O', 'POLONNARUWA', '', '', '', 0),
('WP JT-6636', 'DG01X-013045', '3TS-093991', '175', 'Motorbike', 'P', '', '2005', '', '', '', '', '', '2005-03-10', 'DG,DWC', 'YAMAHA', 'DT 175', 'Sungawila B.O', 'POLONNARUWA', '', '', '', 0),
('WP JT-6640', 'DG01X-0130', '3TS-093981', '175', 'Motorbike', 'P', '', '2005', '', '', '', '', '', '2005-03-10', 'DG,DWC', 'YAMAHA', 'DT175', 'Anawilundawa B.O', 'NORTHWESTERN', '', '', 'Motor Cycle', 0),
('WP JT-6642', 'DG01X-0130', '3TS-094009', '175', 'Motorbike', 'P', '', '2005', '', '', '', '', '', '2005-03-10', 'Director General,DWC', 'YAMAHA', 'DT175', 'Beat Office Anawilun', 'ANURADHAPURA', '', '', 'Motor Cycle', 0),
('WP JT-6644', 'DG01-013027', '3TS-094008', '175', 'Motorbike', 'P', '', '2005', '', '', '', '', '', '2005-03-10', 'DG,DWC', 'YAMAHA', 'DT 175', 'BAbewa B.O', 'UVA', '', '', '', 0),
('WP JT-6647', 'DG01X-013008', '3TS-093986', '175', 'Motorbike', 'P', '', '2005', '', '', '', '', '', '2005-03-10', 'DG,DWC', 'YAMAHA', 'DT 175', 'Heenwewa Beat Office', 'UVA', '', '', '', 0),
('WP JT-6649', 'DG01X-0130', '3TS-093971', '175', 'Motorbike', 'P', '', '2005', '', '', '', '', '', '2005-03-10', 'DG,DWC', 'YAMAHA', 'DT175', ' Aliwadiya R.O', 'ANURADHAPURA', '', '', 'Motor Cycle', 0),
('WP JT-6653', 'DG01X-0130', '3TS-093948', '175', 'Motorbike', 'P', '', '2005', '', '', '', '', '', '2005-03-10', 'DG,DWC', 'YAMAHA', 'DT175', 'Beat Office jayaganga', 'ANURADHAPURA', '', '', 'Motor Cycle', 0),
('WP JT-6654', 'DG01X-0130', '3TS-094020', '175', 'Motorbike', 'P', '', '2005', '', '', '', '', '', '2005-03-10', 'DG,DWC', 'YAMAHA', 'DT175', 'Herathgama Range', 'NORTHWESTERN', '', '', 'Motor Cycle', 0),
('WP JT-6656', 'DG01X-0130', '3TS-093988', '175', 'Motorbike', 'P', '', '2005', '', '', '', '', '', '2005-03-01', 'DG,DWC', 'YAMAHA', 'DT175', 'Ranger Office,Mauara', 'SOUTHERN', '', '', 'Motor Cycle', 0),
('WP JT-6658', 'DG01X-0130', '3TS-093950', '175', 'Motorbike', 'P', '', '2005', '', '', '', '', '', '2005-03-10', 'DG,DWC', 'YAMAHA', 'DT175', 'Kirioya B.O', 'POLONNARUWA', '', '', '', 0),
('WP JT-6660', 'DG01X-0130', '3TS-094016', '175', 'Motorbike', 'P', '', '2005', '', '', '', '', '', '2005-03-10', 'DG,DWC', 'YAMAHA', 'DT175', 'Kala oya range', 'ANURADHAPURA', '', '', 'Motor Cycle', 0),
('WP JT-6662', 'DG01X-0130', '3TS-093989', '175', 'Motorbike', 'P', '', '2005', '', '', '', '', '', '2005-03-10', 'DG,DWC', 'YAMAHA', 'DT175', 'B.Office Galkiriyaga', 'NORTHWESTERN', '', '', '', 0),
('WP JT-6663', 'DG01X-0130', '3TS-093984', '175', 'Motorbike', 'P', '', '2005', '', '', '', '', '', '2005-03-10', 'DG,DWC', 'YAMAHA', 'DT175', 'Rawana Ella R.O', 'CENTRAL', '', '', 'Motor Cycle', 0),
('WP JT-6665', 'DG01X-0130', '3TS-093978', '175', 'Motorbike', 'P', '', '2005', '', '', '', '', '', '2005-03-10', 'DG,DWC', 'YAMAHA', 'DT175', 'Eddapola Ranger Offi', 'EASTERN', '', '', '', 0),
('WP JT-6667', 'DG01C-0130', '3TS-094006', '175', 'Motorbike', 'P', '', '2005', '', '', '', '', '', '2005-03-10', 'Director General,DWC', 'YAMAHA', 'DT175', 'Wasgamuwa N.P', 'MAHAWELI', '', '', '', 0),
('WP JT-6670', 'DG01X-0130', '3TS-094017', '175', 'Motorbike', 'P', '', '2005', '', '', '', '', '', '2005-03-10', 'Director General,DWC', 'YAMAHA', 'DT175', 'Kaudulla N.P', 'MAHAWELI', '', '', '', 0),
('WP JT-6672', 'DG01CX-013', '3TS-094002', '175', 'Motorbike', 'P', '', '2005', '', '', '', '', '', '2005-03-10', 'DG,DWC', 'YAMAHA', 'DT175', 'Hikkaduwa N.P', 'WESTERN', '', '', '', 0),
('WP JT-6673', 'DG01X-0310', '3TS-094004', '175', 'Motorbike', 'P', '', '2005', '', '', '', '', '', '2005-03-10', 'DG,DWC', 'YAMAHA', 'DT175', 'MInneriya N.P', 'POLONNARUWA', '', '', '', 0),
('WP JT-6675', 'DG01X-0130', '3TS-093975', '175', 'Motorbike', 'P', '', '2005', '', '', '', '', '', '2005-03-10', 'DG,DWC', 'YAMAHA', 'DT175', 'Kithulkote B.O', 'UVA', '', '', '', 0),
('WP JT-6676', 'DG01X-0130', '3TS-094010', '175', 'Motorbike', 'P', '', '2005', '', '', '', '', '', '2005-03-10', 'DG,DWC', 'YAMAHA', 'DT175', 'Hoton Plains N.P.', 'CENTRAL', '', '', 'Motor Cycle', 0),
('WP JT-6679', 'DG01X-013028', '3TS-094012', '175', 'Motorbike', 'P', '', '2005', '', '', '', '', '', '2005-03-10', 'DG ,DWC', 'YAMAHA', 'DT 175', 'AD Katharagama ', 'UVA', '', '', 'Motor Cycle', 0),
('WP JT-6682', 'DG01X-0130', '3TS-094003', '175', 'Motorbike', 'P', '', '2005', '', '', '', '', '', '2005-03-10', 'DIRECTOR GENERAL,DWC', 'YAMAHA', 'DT 175', 'A.D. Office North We', 'NORTHWESTERN', '', '', '', 0),
('WP JT-6685', 'DG01X-013026', '3TS-093994', '175', 'Motorbike', 'P', '', '2005', '', '', '', '', '', '2005-03-10', 'DG,DWC', 'YAMAHA', 'DT 175', 'vilachchiya R.O', 'ANURADHAPURA', '', '', 'Motor Cycle', 0),
('WP JT-6690', 'DG01X-3010', '3TS-093980', '175', 'Motorbike', 'P', '', '2005', '', '', '', '', '', '2005-03-10', 'DG,DWC', 'YAMAHA', 'DT 175', 'Udawalawa N.P', 'SOUTHERN', '', '', 'Motor Cycle', 0),
('WP JT-6691', 'DG01X-0130', '3TS-093990', '175', 'Motorbike', 'P', '', '2005', '', '', '', '', '', '2005-03-10', 'DG,DWC', 'YAMAHA', 'DT 175', 'Rathkinda B.O', 'EASTERN', '', '', '', 0),
('Wp JT-6694', 'DG01X-013023', '3TS-093982', '175', 'Motorbike', 'P', '', '2005', '', '', '', '', '', '2005-03-10', 'DG,DWC', 'YAMAHA', 'DT 175', 'Nimalawa Rager Offic', 'UVA', '', '', '', 0),
('WP JT-6696', 'DG01X-0130', '3TS-094011', '175', 'Motorbike', 'P', 'JAPAN', '2005', 'JAPAN', '', '', '', '', '2005-03-10', 'DG,DWC', 'YAMAHA', 'DT175', 'Kalpitiya Range', 'NORTHWESTERN', '', '', 'Motor Cycle', 0),
('WP JT-6699', 'DG01X-0130', '3TS-094001', '175', 'Motorbike', 'P', 'JAPAN', '2005', 'JAPAN', '', '', '', '', '2005-03-10', 'DG,DWC', 'YAMAHA', 'DT175', 'Ranger Office Anuradhapura', 'ANURADHAPURA', '', '', 'Motor Cycle', 0),
('WP JT-6703', 'DG01X-0130', '3TS-093983', '175', 'Motorbike', 'P', 'JAPAN', '2005', 'JAPAN', '', '', '', '', '2005-03-10', 'DG,DWC', 'YAMAHA', 'DT175', 'Baduluwela R.O', 'UVA', '', '', '', 0),
('WP JT-6704', 'DG01X-013019', '3TS-093997', '175', 'Motorbike', 'P', '', '2005', '', '', '', '', '', '2005-03-10', 'DG,DWC', 'YAMAHA', 'DT 175', 'Kalamatiya R.O', 'SOUTHERN', '', '', 'Motor Cycle', 0),
('WP JT-6711', 'DG01X-013016', '3TS-093985', '175', 'Motorbike', 'P', '', '2005', '', '', '', '', '', '2005-03-10', 'DG,DWC', 'YAMAHA', 'DT 175', 'Walliammara  R.O', 'UVA', '', '', '', 0),
('WP JT-6713', 'DG01X-0130', '3TS-093999', '175', 'Motorbike', 'P', 'JAPAN', '2005', 'JAPAN', '', '', '', '', '2005-03-10', 'DG,DWC', 'YAMAHA', 'DT175', 'Monaragala R.O', 'UVA', '', '', '', 0),
('WP JT-6716', 'DG01X-0130', '3TS-093992', '175', 'Motorbike', 'P', 'JAPAN', '2005', 'JAPAN', '', '', '', '', '2005-03-10', 'DG,DWC', 'YAMAHA', 'DT175', 'DAMANAWALA B.O', 'EASTERN', '', '', '', 0),
('WP JT-6718', 'DG01X-013014', '3TS-093996', '175', 'Motorbike', 'P', '', '2005', '', '', '', '', '', '2005-03-10', 'DG,DWC', 'YAMAHA', 'DT175', 'Singharaja R.O', 'SOUTHERN', '', '', 'Motor Cycle', 0),
('WP JT-6720', 'DG01X-0130', '3TS-093979', '175', 'Motorbike', 'P', 'JAPAN', '2005', 'JAPAN', '', '', '', '', '2005-03-10', 'DG,DWC', 'YAMAHA', 'DT175', 'Namal gama B.O', 'POLONNARUWA', '', '', '', 0),
('WP JT-6722', 'DG01X-013011', '3TS-093993', '175', 'Motorbike', 'P', '', '2005', '', '', '', '', '', '2005-03-10', 'DG,DWC', 'YAMAHA', 'DT175', 'Nallathanniya R', 'CENTRAL', '', '', 'Motor Cycle', 0),
('WP JT-6724', 'DG01X-013004', '3TS-093976', '175', 'Motorbike', 'P', '', '2005', '', '', '', '', '', '2005-03-10', 'DG,DWC', 'YAMAHA', 'DT175', 'Kotabowa B.O', 'UVA', '', '', '', 0),
('WP JT-6729', 'DG01X-013002', '3TS-093963', '175', 'Motorbike', 'P', '', '2005', '', '', '', '', '', '2005-03-10', 'DG,DWC', 'YAMAHA', 'DT175', 'Madhu Office', 'ANURADHAPURA', '', '', 'Motor Cycle', 0),
('WP JT-6730', 'DG01X-013006', '3TS- 093987', '175', 'Motorbike', 'P', '', '2005', '', '', '', '', '', '2005-03-10', 'DG,DWC', 'YAMAHA', 'DT175', 'Galwaysland NP', 'CENTRAL', '', '', 'Motor Cycle', 0),
('WP JT-6732', 'DG01X-013005', '3TS-093977', '175', 'Motorbike', 'P', '', '2005', '', '', '', '', '', '2005-03-10', 'DG,DWC', 'YAMAHA', 'DT175', 'Beat Office,Galpaya', 'SOUTHERN', '', '', 'Motor Cycle', 0),
('WP JT-6735', 'DG01X-013051', '3TS-093998', '175', 'Motorbike', 'P', '', '2005', '', '', '', '', '', '2005-03-10', 'DG,DWC', 'YAMAHA', 'DT175', 'Pegion Island ', 'POLONNARUWA', '', '', '', 0),
('WP JT-6736', 'DG01X-013017', '3TS-093995', '175', 'Motorbike', 'P', '', '2005', '', '', '', '', '', '2005-03-10', 'DG,DWC', 'YAMAHA', 'DT175', 'Nilgala R.O', 'UVA', '', '', '', 0),
('WP JZ-2183', 'DPFBLK22224', 'DPMBLK02690', '124.6', 'Motorbike', 'P', 'India', '2005', '', '', '', 'SINGLE', 'SINGLE', '2005-05-20', 'DG,DWC', 'Bajaj', 'Wind', 'KArawila B.O', 'UVA', '', '', '', 0),
('WP JZ-2184', 'DPFBLK2216', 'DPMBLK02787', '124.60', 'Motorbike', 'p', 'INDIA', '2005', 'INDIA', 'SINGLE', 'SINGLE', '', '', '2005-05-20', 'DG,DWC', 'Bajaj', 'WIND', 'Ranger Office,Kapuga', 'SOUTHERN', '', '', 'Motor Cycle', 0),
('WP JZ-2190', 'DPFBLK22173', 'DPMBLK02577', '124.60', 'Motorbike', 'P', 'INDIA', '2005', 'INDIA', 'SINGLE', 'SINGLE', '', '', '2005-05-20', 'DG,DWC', 'Bajaj', 'WIND', 'Lunugamvehera N.P', 'UVA', '', '', '', 0),
('WP JZ-7161', 'FA22683', 'FA22683', '815', 'Hand Tractors', 'D', '', '2005', '', '', '', '', '', '0000-00-00', 'DG,DWC', 'FARMERS', 'GN12', 'Karawile R.O', 'UVA', '', '', '', 0),
('WP JZ-7179', 'FA22667', 'FA22667', '815', 'Tractors', 'D', '', '2005', '', '', '', '', '', '0000-00-00', 'Director General,DWC', 'FARMERS', 'GN12', 'Unknown', 'Unknown', '', '', '', 0),
('WP LC-8120', 'UFR234818', 'VFE427565', '6540', 'Lorry', 'D', 'India', '2006', 'Indai', '1000*20', '1000*20', '', '', '2006-12-28', 'DG,DWC', 'Lanka Ashok Layland', 'TAURUS2516', 'AD Office', 'ANURADHAPURA', '', '', 'Motor Lorry', 0),
('WP LG-0672', 'MMBENKB409D024659', '4D56UCBK6110', '2477', 'Single Cab', 'D', 'THAILAND', '2008', 'JAPAN', '205*R16', '205*R16', 'SINGLE', 'SINGLE', '2008-12-04', 'DG,DWC', 'MITSUBISHI', 'KB4TNENMR', 'Ampara ECU', 'EASTERN', '', '', 'Dual Purpose', 0),
('WP LG-0673', 'MMBENKB409D024661', '4D56UCBK7525', '2477', 'Single Cab', 'D', '', '2008', 'THAILAND', '205*R16', '205*R16', 'SINGLE', 'SINGLE', '2008-12-04', 'DG,DWC', 'Mitsubishi', 'KB4TNENMR', 'AD Kilinochchiya', 'KILINOCHCHIYA', '', '', 'Motor Lorry', 0),
('WP LG-0674', 'MMBENKB409D025386', '4D56UCBK8256', '2477', 'Lorry', 'D', '', '2008', 'JAPAN', '205*R16', '205*R16', 'SINGLE', 'SINGLE', '2008-12-04', 'DG,DWC', 'MITSUBISHI', 'KB4TNENMR', 'Karuwalagaswewa ECU', 'ANURADHAPURA', '', '', 'Motor Lorry', 0),
('WP LG-0675', 'MBEMKB409D026294', '4D56UCBK9385', '2477', 'Single Cab', 'D', 'THAILAND', '2008', 'JAPAN', '205*R16', '205*R16', 'SINGLE', 'SINGLE', '2008-12-04', 'DG,DWC', 'MITSUBISHI', 'KB4TNENMR', 'Ele.Con.Unit Kakiraw', 'ANURADHAPURA', '', '', 'Motor Lorry', 0),
('WP LG-0677', 'MMBENKB409D024657', '4D56UCBK7335', '2427', 'Single Cab', 'D', 'THAILAND', '2008', 'JAPAN', '205*R16', '205*R16', 'SINGLE', 'SINGLE', '0000-00-00', 'DG,DWC', 'MITSUBISHI', 'KB4TNENMR', 'Batticalow ECU', 'EASTERN', '', '', 'Motor Lorry', 0),
('WP LG-0678', 'MMBEMKB409D024656', '4D56UCBK7527', '2477', 'Single Cab', 'D', 'THAILAND', '2008', 'JAPAN', '205*R16', '205*R16', 'SINGLE', 'SINGLE', '2008-12-04', 'DG,DWC', 'MITSUBISHI', 'KD4TNENMR', 'Wallawaya ECU', 'UVA', '', '', '', 0),
('WP LG-0680', 'MMBENKB409D024998', '4D56UCBK7365', '2008', 'Single Cab', 'D', 'THAILAND', '2008', 'JAPAN', '205*R16', '205*R16', 'SINGLE', 'SINGLE', '0000-00-00', 'DG,DWC', 'MITSUBISHI', 'KB4TNENMR', 'Baduluwela ECU', 'EASTERN', '', '', 'Motor Lorry', 0),
('WP LG-0681', 'MMBENKB409D025206', '4D56UCBK8406', '2477', 'Single Cab', 'D', 'THAILAND', '2008', 'JAPAN', '205*R16', '205*R16', 'SINGLE', 'SINGLE', '2008-12-04', 'DG,DWC', 'MITSUBISHI', 'KB4TNENMR', 'Kantale ECU', 'POLONNARUWA', '', '', 'Motor Lorry', 0),
('WP LG-0682', 'MMBENKB409D024300', '4D56UCDK6997', '2477', 'Single Cab', 'D', 'THAILAND', '2008', 'JAPAN', '205*R16', '205*R16', 'SINGLE', 'SINGLE', '2008-12-04', 'DG,DWC', 'MITSUBISHI', 'KB4TNENMR', 'Weheragala ECU', 'POLONNARUWA', '', '', 'Motor Lorry', 0),
('WP LG-9917', 'FE83PEA20237', '4D34M58609', '3907', 'Crew Cab', 'D', 'JAPAN', '2009', 'JAPAN', '700*16', '700*16', 'SINGLE', 'DUAL', '2010-01-28', 'DG,DWC', 'MITSUBISHI', 'FE83PE6WR', 'Wilpattu N.P', 'ANURADHAPURA', '', '', 'Motor Lorry', 0),
('WP LG-9929', 'FE83PEA20247', '4D34M58839', '3907', 'Crew Cab', 'D', 'JAPAN', '2009', 'JAPAN', '700*16', '700*16', 'SINGLE', 'DUAL', '2010-02-01', 'DG,DWC', 'MITSUBISHI', 'FE83PE6WR', 'Nikawaratiya ECU', 'NORTHWESTERN', '', '', 'Motor Lorry', 0),
('WP LG-9935', 'FE83PE A20', '4D34 M58966', '3907', 'Crew Cab', 'DIESEL', 'JAPAN', '2009', 'JAPAN', '700*16', '700*16', 'SINGLE', 'DUAL', '2010-02-01', 'DG,DWC', 'MITSUBISHI', 'FE83PE6WR', 'AD Eastern Office', 'EASTERN', '', '', '', 0),
('WP LG-9936', 'FE83PE A20', '4D34 M58648', '3907', 'Crew Cab', 'DIESEL', 'JAPAN', '2009', 'JAPAN', '700*16', '700*16', 'SINGLE', 'DUAL', '2010-02-01', 'DG,DWC', 'MITSUBISHI', 'FE83PE6WR', 'AD office Southern', 'SOUTHERN', '', '', 'Motor Lorry', 0),
('WP LG-9940', 'FE83PE A20', '4D34 M58419', '3907', 'Lorry', 'DIESEL', 'JAPAN', '2009', 'JAPAN', '700*16', '700*16', 'SINGLE', 'DUAL', '2010-02-01', 'DG,DWC', 'MITSUBISHI', 'FE83PE6WR', 'GIRITALE', 'GIRITALE', '', '', '', 0),
('WP PA-2046', 'JN1CJUD22Z0069778', 'QD32212236', '3153', 'Double Cab', 'D', 'JAPAN', '2005', 'JAPAN', '215* R15', '215*R15', '', '', '2005-09-14', 'DG,DWC', 'NISSAN', '4WD D/CAB', 'AD Southern', 'SOUTHERN', '', '', 'Dual Purpose Vehicle', 0),
('WP PA-2048', 'JN1CJUD22Z', 'QD32-211749', '3153', 'Double Cab', 'DIESEL', 'JAPAN', '2005', 'JAPAN', '215R15', '215R15', '', '', '2005-09-14', 'DG ,DWC', 'NISSAN', 'WD/D/CAB', 'YALA NATIONAL PARK', 'UVA', '', '', '', 0),
('WP PA-2049', 'JN1CJUD22Z', 'QD32-211606', '3153', 'Double Cab', 'DIESEL', 'JAPAN', '2005', 'JAPAN', '215R15', '215R15', '', '', '2005-09-14', 'DG,DWC', 'NISSAN', 'WD/D/CAB', 'AD Office', 'NORTHWESTERN', '', '', 'Dual Purpose Vehicle', 0),
('WP PA-2050', 'JN1CJUD22Z0069737', 'QD32211976', '3153', 'Double Cab', 'D', 'JAPAN', '2005', 'JAPAN', '215* R15', '215*R15', '', '', '2005-09-14', 'DG,DWC', 'NISSAN', '4WD D/CAB', 'AD Office', 'CENTRAL', '', '', 'Dual Purpose', 0),
('WP PA-2054', 'JN1CJUD22Z0066292', 'QD32-200451', '3153', 'Cab', 'D', 'JAPAN', '2004', 'JAPAN', '215* R15', '215*R15', '', '', '2005-09-15', 'DG,DWC', 'NISSAN', '4WD D/CAB', 'Head Office', 'HEADOFFICE', '', '', '', 0),
('WP PA-2055', 'JN1CJUD22Z0069791', 'QD32212311', '3153', 'Single Cab', 'D', 'JAPAN', '2005', 'JAPAN', '215* R15', '215*R15', '', '', '2005-09-15', 'DG,DWC', 'NISSAN', '4WD D/CAB', 'pandulagama vet office', 'ANURADHAPURA', '', '', 'Dual Purpose Vehicle', 0),
('WP PA-2057', 'JN1CjUD22Z0066098', 'QD32-199766', '3153', 'Cab', 'D', 'JAPAN', '2004', 'JAPAN', '215* R15', '215*R15', '', '', '2005-09-15', 'Director General,DWC', 'NISSAN', '4WD D/CAB', 'Head Office', 'HEADOFFICE', '', '', '', 0),
('WP PA-2058', 'JN1CJUD22Z', 'QD32-200176', '3153', 'Cab', 'DIESEL', 'JAPAN', '2004', 'JAPAN', '215R15', '215R15', '', '', '2005-09-15', 'DG,DWC', 'NISSAN', '4WD/D/CAB', 'KAUDULLA N P', 'PLONNARUWA', '', '', '', 0),
('WP PA-2063', 'JN1CJUD22Z0066191', 'QD32-200092', '3153', 'Cab', 'D', 'JAPAN', '2005', 'JAPAN', '215* R15', '215*R15', '', '', '2005-09-15', 'DG,DWC', 'NISSAN', '4WD D/CAB', 'AD Office', 'ANURADHAPURA', '', '', '', 0),
('WP PA-2064', 'JN1CJUD22Z0066340', 'QD32-200641', '3153', 'Cab', 'D', 'JAPAN', '2004', 'JAPAN', '215* R15', '215*R15', '', '', '2005-09-15', 'Director General,DWC', 'NISSAN', '4WD D/CAB', 'Ministry Of Environm', 'HEADOFFICE', '', '', '', 0),
('WP PC-0186', 'JN1CJUD22Z0112824', 'QD32292868', '3153', 'Cab', 'D', 'JAPAN', '2010', '', '215/15', '215/15', 'SINGLE', 'SINGLE', '2010-12-31', 'Director General,DWC', 'NISSAN', '4WD D/CAB', 'Head Office', 'HEADOFFICE', '', '', '', 0),
('WP PD-2559', 'MR0FR22G500603601', '2KD5554708', '2494', 'Cab', 'D', 'THAILAND', '2011', '', '205/16', '205/16', 'SINGLE', 'SINGLE', '2012-01-03', 'Director General,DWC', 'TOYOTA', 'HILUX', 'Head Office ,Battara', 'HEADOFFICE', '', '', '', 0),
('WP PD-2946', 'MR0FR22G000603604', '2KD5556287', '2494', 'Cab', 'D', 'THAILAND', '2011', '', '205/16', '205/16', 'SINGLE', 'SINGLE', '2012-01-10', 'Director General,DWC', 'TOYOTA', 'HILUX', 'DD Southern', 'SOUTHERN', '', '', '', 0);
INSERT INTO `vehical_info` (`regno`, `chasee_no`, `engine_no`, `c_cap`, `v_class`, `f_type`, `c_origin`, `year_manu`, `c_import`, `ty_fr`, `ty_re`, `ty_du`, `ty_sin`, `d_first_reg`, `owner_add`, `make`, `model`, `location`, `region`, `vcost`, `engine_second`, `v_class_of`, `activeSS`) VALUES
('WP PD-4457', 'JN1CJUD22Z0116392', 'QD32307250', '3153', 'Cab', 'D', 'JAPAN', '2011', '', '215/15', '215/15', 'SINGLE', 'SINGLE', '2012-02-02', 'DG,DWC', 'NISSAN', '4WD D/CAB', 'AD Polonnaruwa', 'POLONNARUWA', '', '', '', 0),
('WP PD-4459', 'JNICJUD22Z0116384', 'QD32307294', '3153', 'Cab', 'D', 'JAPAN', '2011', '', '215/15', '215/15', 'SINGLE', 'SINGLE', '2012-02-02', 'Director General,DWC', 'NISSAN', '4WD D/CAB', 'Head Office,battaram', 'HEADOFFICE', '', '', '', 0),
('WP PE-7050', 'JNICJUD22Z0112912', 'QDS2293071', '3153', 'Cab', 'D', 'JAPAN', '2010', '', '215/15', '215/15', 'SINGLE', 'SINGLE', '2010-12-31', 'Director General,DWC', 'NISSAN', '4WD D/CAB', 'Head Office', 'HEADOFFICE', '', '', '', 0),
('WP PS-0679', 'MR0DR22G500010988', '2KD5374570', '2494', 'Cab', 'D', 'THAILAND', '2011', '', '205/16', '205/16', 'SINGLE', 'SINGLE', '2011-12-28', 'DG,DWC', 'TOYOTA', 'HILUX', 'Giritale Wet Office', 'POLONNARUWA', '', '', '', 0),
('WP PS-3450', 'MR0DR22G600011986', '2KD5566803', '2494', 'Cab', 'D', 'THAILAND', '2011', '', '205/16', '205/16', 'SINGLE', 'SINGLE', '2012-01-27', 'DG,DWC', 'TOYOTA', 'HILUX', 'Kitulkote R.O', 'UVA', '', '', '', 0),
('WP PS-3471', 'MR0DR22G900011982', '2KD5566290', '2494', 'Cab', 'D', 'THAILAND', '2011', '', '205*16', '205*16', 'SINGLE', 'SINGLE', '2012-01-27', 'DG,DWC', 'TOYOTA', 'HILUX', 'Lahugala N.P', 'EASTERN', '', '', '', 0),
('WP PS-3472', 'MR0DR22G300012013', '2KD5569882', '2494', 'Single Cab', 'D', 'THAILAND', '2011', '', '205/16', '205/16', 'SINGLE', 'SINGLE', '2012-01-27', 'DG,DWC', 'TOYOTA', 'HILUX', 'Vauniya Ranger offic', 'ANURADHAPURA', '', '', 'Dual Purpose Vehicle', 0),
('WP PS-3473', 'MR0DR22G100012009', '2KD5569011', '2494', 'Double Cab', 'D', 'THAILAND', '2011', '', '205*16', '205*16', 'SINGLE', 'SINGLE', '2012-01-27', 'DG,DWC', 'TOYOTA', 'HILUX', 'Wilpattu N.P', 'ANURADHAPURA', '', '', 'Dual Purpose Vehicle', 0),
('WP PS-3475', 'MR0DR22G400012022', '2KD5570722', '2494', 'Single Cab', 'D', 'THAILAND', '2011', '', '205*16', '205*16', 'SINGLE', 'SINGLE', '2012-01-24', 'DG,DWC', 'TOYOTA', 'HILUX', 'Hambanthota R.O', 'SOUTHERN', '', '', 'Dual Purpose Vehicle', 0),
('WP PS-3479', 'MR0DR22GX00011991', '2KD5567391', '2494', 'Single Cab', 'D', 'THAILAND', '2011', '', '205/16', '205/16', 'SINGLE', 'SINGLE', '2012-01-27', 'DG,DWC', 'TOYOTA', 'HILUX', 'Kalthota R.O', 'SOUTHERN', '', '', 'Dual Purpose Vehicle', 0),
('WP PS-3480', 'MR0DR22G200012018', '2KD5570593', '2494', 'Cab', 'D', 'THAILAND', '2011', '', '205/16', '205/16', 'SINGLE', 'SINGLE', '2012-01-27', 'DG,DWC', 'TOYOTA', 'HILUX', 'AD Uva', 'UVA', '', '', '', 0),
('WP PS-3481', 'MR0DR22G000012017', '2KD5570484', '2494', 'Single Cab', 'D', 'THAILAND', '2011', '', '205/16', '205/16', 'SINGLE', 'SINGLE', '2012-01-27', 'DG,DWC', 'TOYOTA', 'HILUX', 'Giranduru Kotte ECU', 'CENTRAL', '', '', 'Dual Purpose Vehicle', 0),
('WP PS-3482', 'MR0DR22G700012001', '2KD5568275', '2494', 'Single Cab', 'D', 'THAILAND', '2011', '', '205/16', '205/16', 'SINGLE', 'SINGLE', '2012-01-27', 'DG,DWC', 'TOYOTA', 'HILUX', 'Karuwalagaswewa R.O', 'NORTHWESTERN', '', '', 'Dual Purpose Vehicle', 0),
('WP PS-7567', 'MR0DR22G600012166', '2kd-5585976', '2494', 'Cab', 'D', '-', '2012', '-', '-', '-', '-', '-', '0000-00-00', 'DG,DWC', 'TOYOTA', '-', 'ALahara R.O', 'POLONNARUWA', '', '', 'Dual Purpose', 0),
('WP PS-8353', 'MR0DR22G300012271', '2KD-5639994', '2494', 'Cab', 'D', '-', '2012', '-', '-', '-', '-', '-', '2012-03-28', 'DG,DWC', 'TOYOTA', '-', 'Wilgamuwa ECu', 'POLONNARUWA', '', '', 'Dual Purpose', 0),
('WP PV-3500', 'MAT464176CSR00357', 'DICOR06CXY619509', '', 'Cab', '', '', '2012', '', '', '', '', '', '0000-00-00', 'DG,DWC', 'TATA', 'Xenon', 'Yala National Park', 'UVA', '', '', 'Dual Purpose', 0),
('WP RA-0583', '17410-04 C', 'RS1865', '3193', 'Tractors', 'DIESEL', 'INDIA', '2004', 'INDIA', '', '', '', '', '2005-08-11', 'DG,DWC', 'MAHINDRA', '60004WD', 'MINNERIYA N.P', 'POLONNARUWA', '', '', '', 0),
('WP RA-0593', '17394/04-C', 'RS1867', '3193', 'Tractors', 'DIESEL', 'INDIA', '2004', 'INDIA', '', '', '', '', '2005-08-12', 'DG,DWC', 'MAHINDRA', '6000 4WD', 'WASGAMUWA NATIONAL P', 'POLONNARUWA', '', '', '', 0),
('WP RA-0594', '17233/04-C', 'RS1869', '3193', 'Tractors', 'DIESEL', 'INDIA', '2004', 'INDIA', '', '', '', '', '2005-08-12', 'DG,DWC', 'MAHINDRA', '6000 4WD', 'MADURU OYA N.P', 'EASTERN', '', '', '', 0),
('WP RA-0595', '17412/04-C', 'RS1866', '3193', 'Tractors', 'DIESEL', 'INDIA', '2004', 'INDIA', '', '', '', '', '2005-08-12', 'DG,DWC', 'MAHINDRA', '6000 4WD', 'UDAWALAWA N.P', 'SOUTHERN', '', '', 'Land Vehicle', 0),
('WP RA-0596', '17221/04-C', 'RS1870', '3193', 'Tractors', 'DIESEL', 'INDIA', '2004', 'INDIA', '', '', '', '', '2005-08-12', 'DG,DWC', 'MAHINDRA', '6000 4WD', 'WILPATTU N.P', 'ANURADHAPURA', '', '', 'Land Vehicle', 0),
('WP RA-0597', '17369/04-CIL', 'RS1871', '2850', 'Tractors', 'D', '', '2004', '', '', '', '', '', '2005-08-12', 'DG,DWC', 'MAHINDRA', '6000 4WD', 'Yala National Park', 'UVA', '', '', '', 0),
('WP RA-0598', '17393/04-C', 'RS1868', '3193', 'Tractors', 'DIESEL', 'INDIA', '2004', 'INDIA', '', '', '', '', '2005-08-12', 'DG,DWC', 'MAHINDRA', '6000 4WD', 'Kumana N.P', 'EASTERN', '', '', 'Land Vehicle', 0),
('WP RB-0826', 'PY5310S029', 'PY3029D178008', '2930', 'Tractors', 'DIESEL', 'INDIA', '2008', 'SINGAPORE', '2.5*24', '16.9*28', '', '', '2008-08-15', 'DIRECTOR GENERAL,DWC', 'JOHN DEERE', '5310', 'KAUDULLA N.P', 'MAHAWELI', '', '', '', 0),
('WP RB-0827', 'PY5310S029', 'PY3029D178022', '2930', 'Tractors', 'DIESEL', 'INDIA', '2008', 'SINGAPORE', '2.5*24', '16.9*28', '', '', '2008-08-15', 'Director General,DWC', 'JOHN DEERE', '5310', 'UDAWALAWA N.P', 'SOUTHERN', '', '', 'Land Vehicle', 0),
('WP RS-1424', 'JCB3CX4TE81341017', 'SB32040241U1127708', '3990', 'JCB', 'DIESEL', 'UK', '2008', 'UK', '12.5*18', '16.9*28', '', '', '2008-08-19', 'DG,DWC', 'JCB', '3CX', 'AD Office Anuradhapura', 'ANURADHAPURA', '', '', '', 0),
('WP RS-1472', 'JCB3CX4TT81340856', 'SB32040241U1089708', '3990', 'JCB', 'DIESEL', 'UK', '2008', 'UK', '12.5*18', '16.9*28', '', '', '2008-10-08', 'DG,DWC', 'JCB', '3CX', 'Udawalawa N.P', 'SOUTHERN', '', '', 'Non Agriculture Land Vehicle', 0),
('WP RS-1519', 'T3GA01148', '6D16-A09409', '7543', 'Motorgrader', 'DIESEL', 'THAILAND', '2008', 'THAILAND', '1300*24', '1300*24', '', '', '2008-12-30', 'DG,DWC', 'MITSUBISHI', 'MG330MOTERGRADER', 'Udawalawa N.P', 'SOUTHERN', '', '', '', 0),
('WP RS-1520', 'T3GA01140', '6D16-A04722', '7543', 'Motorgrader', 'DIESEL', 'THAILAND', '2008', 'THAILAND', '1300*24', '1300*24', '', '', '2008-12-30', 'DG,DWC', 'MITSUBISHI', 'MG330MOTERGRADER', 'Udawalawa N.P', 'SOUTHERN', '', '', '', 0),
('WP RS-1521', 'T3GA01141', '6D16-A05550', '7543', 'Motorgrader', 'DIESEL', 'THAILAND', '2008', 'THAILAND', '1300*24', '1300*24', '', '', '2008-12-30', 'DG,DWC', 'MITSUBISHI', 'MG330MOTERGRADER', 'Wasgamuwa N.P', 'POLONNARUWA', '', '', '', 0),
('WP RV-0255', 'T24793', 'No', '', 'Tractors', 'D', '', '2005', '', '', '', '', '', '2005-07-26', 'DG,DWC', 'Localy Build', 'Tractor Trailer', 'Minneruya N,P', 'MAHAWELI', '', '', '', 0),
('WP RV-0258', 'T24798', 'No', '', 'Tractors', 'D', '', '2005', '', '', '', '', '', '2005-07-26', 'DG,DWC', 'Localy Build', 'Tractor Trailer', 'Madhuru OyaN.P', 'MAHAWELI', '', '', '', 0),
('WP RV-0260', 'No Chasse No', 'No Engine No', 'No', 'Trailer', 'No', 'Loculy Built', '2005', '', '', '', '', '', '2005-07-26', 'DG,DWC', '', '', 'Udawalawa N.P', 'SOUTHERN', '', '', 'Land Vehicle Trailer', 0),
('WP RV-0826', '-', '-', '-', 'Trailer', '--', '-', '--', '-', '-', '-', '-', '--', '0000-00-00', 'DG,DWC', '-', '-', 'Kaudulla N.P', 'POLONNARUWA', '', '--', '', 0),
('WP RV-0827', '-', '-', '-', 'Trailer', '-', '', '2004', '', '', '', '', '', '2004-07-05', 'DG,DWC', '-', '-', 'Udawalawa N.P', 'SOUTHERN', '', '', 'Land Vehicle', 0),
('WP TX-9989', 'MD625GF4771D17450', 'AF4D71020954', '125', 'Motorbike', 'P', 'INDIA', '2007', '', 'SINGLE', 'SINGLE', '', '', '2007-11-09', 'DG,DWC', 'TVS', 'Victor GLX', 'AD Office Polonnaruwa', 'POLONNARUWA', '', '', '', 0),
('WP TX-9994', 'MD625GF4871A17089', 'AF4OA71020653', '125', 'Motorbike', 'P', 'India', '2006', '', '', '', 'SINGLE', 'SINGLE', '2007-11-09', 'DG,DWC', 'TVS', 'VICTOR GLX', 'Minneriya N.P', 'POLONNARUWA', '', '', '', 0),
('WP TX-9996', 'MD625GF4371F17760', 'AF4F71021459', '125', 'Motorbike', 'P', 'India', '2007', '', '', '', 'SINGLE', 'SINGLE', '2007-11-09', 'DG,DWC', 'TVS', 'VICTOR GLX', 'Kaudulla N.P', 'POLONNARUWA', '', '', '', 0),
('WP TY-0002', 'MD625GF4071F17747', 'AF4F71021423', '125', 'Motorbike', 'P', 'India', '2007', '', '', '', 'SINGLE', 'SINGLE', '2007-11-09', 'DG,DWC', 'TVS', 'VICTOR GLX', 'Bundala N.P', 'SOUTHERN', '', '', 'Motor Cycle', 0),
('WP TY-0004', 'MD625GF4771A17133', 'AF4A71020737', '125', 'Motorbike', 'P', 'INDIA', '2006', '', 'SINGLE', 'SINGLE', '', '', '2007-11-09', 'DG,DWC', 'TVS', 'Victor GLX', 'AD Office', 'ANURADHAPURA', '', '', 'Motor Cycle', 0),
('WP TY-0005', 'MD625GF4161E13752', 'AF4D61000178', '125', 'Motorbike', 'P', 'India', '2007', '', '', '', 'SINGLE', 'SINGLE', '2007-11-09', 'DG,DWC', 'TVS', 'VICTOR GLX', 'Ritigala R.O', 'ANURADHAPURA', '', '', 'Motor Cycle', 0),
('WP TY-0008', 'MD625GF457ID17432', 'AF4D71020890', '125', 'Motorbike', 'P', 'INDIA', '2007', 'INDIA', 'SINGLE', 'SINGLE', '', '', '2007-11-09', 'DG,DWC', 'TVS', 'Victor GLX', 'Samanala R', 'CENTRAL', '', '', 'Motor Cycle', 0),
('WP TY-0010', 'MB625GF416', 'KF4G61003260', '125', 'Motorbike', 'P', 'INDIA', '2006', 'INDIA', 'SINGLE', 'SINGLE', '', '', '2007-11-09', 'DG,DWC', 'TVS', 'Victor GLX', 'Singharaja R.O', 'SOUTHERN', '', '', 'Motor Cycle', 0),
('WP VK-2924', 'MD625KF5871D79841', 'AF5D71843139', '100', 'Motorbike', 'P', 'India', '2007', '', '', '', '', '', '2010-02-25', 'DG,DWC', 'TVS', 'StarSport ', 'Kalamatiya R.O', 'SOUTHERN', '', '', 'Motor Cycle', 0),
('WP XF-4398', 'MD625GF5771C50177', '0F5C71379631', '100', 'Motorbike', 'P', 'INDIA', '2007', '', 'SINGLE', 'SINGLE', '', '', '2012-01-11', 'DG,DWC', 'TVS', 'STAR', 'Hambanthota R.O', 'SOUTHERN', '', '', 'Motor Cycle', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `disposal`
--
ALTER TABLE `disposal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `repairs`
--
ALTER TABLE `repairs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tranfers`
--
ALTER TABLE `tranfers`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `vehical_info`
--
ALTER TABLE `vehical_info`
  ADD PRIMARY KEY (`regno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `disposal`
--
ALTER TABLE `disposal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `repairs`
--
ALTER TABLE `repairs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tranfers`
--
ALTER TABLE `tranfers`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
