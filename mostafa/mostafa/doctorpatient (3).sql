-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 12, 2017 at 10:44 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `doctorpatient`
--

-- --------------------------------------------------------

--
-- Table structure for table `adrs_amb_statn`
--

CREATE TABLE `adrs_amb_statn` (
  `adrs_amb_statn_id` int(20) NOT NULL,
  `cntry_id` int(10) NOT NULL,
  `gvrnrt_id` int(10) NOT NULL,
  `city_id` int(10) NOT NULL,
  `adrs_street_nm` varchar(50) NOT NULL,
  `adrs_bld_num` int(5) NOT NULL,
  `Adrs_bld_floor` int(5) NOT NULL,
  `adrs_flat_num` int(10) NOT NULL,
  `amb_statn_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `adrs_clnc`
--

CREATE TABLE `adrs_clnc` (
  `adrs_clnc_id` int(20) NOT NULL,
  `cntry_id` int(10) NOT NULL,
  `gvrnrt_id` int(10) NOT NULL,
  `city_id` int(10) NOT NULL,
  `adrs_street_nm` varchar(50) NOT NULL,
  `adrs_bld_num` int(5) NOT NULL,
  `Adrs_bld_floor` int(5) NOT NULL,
  `adrs_flat_num` int(10) NOT NULL,
  `clnc_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `adrs_dctr`
--

CREATE TABLE `adrs_dctr` (
  `adrs_dctr_id` int(20) NOT NULL,
  `cntry_id` int(10) NOT NULL,
  `gvrnrt_id` int(10) NOT NULL,
  `city_id` int(10) NOT NULL,
  `adrs_street_nm` varchar(50) NOT NULL,
  `adrs_bld_num` int(5) NOT NULL,
  `Adrs_bld_floor` int(5) NOT NULL,
  `adrs_flat_num` int(10) NOT NULL,
  `dctr_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `adrs_hsptl`
--

CREATE TABLE `adrs_hsptl` (
  `adrs_hsptl_id` int(20) NOT NULL,
  `cntry_id` int(10) NOT NULL,
  `gvrnrt_id` int(10) NOT NULL,
  `city_id` int(10) NOT NULL,
  `adrs_street_nm` varchar(50) NOT NULL,
  `adrs_bld_num` int(5) NOT NULL,
  `Adrs_bld_floor` int(5) NOT NULL,
  `adrs_flat_num` int(10) NOT NULL,
  `hsptl_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `adrs_ptnt`
--

CREATE TABLE `adrs_ptnt` (
  `adrs_ptnt_id` int(20) NOT NULL,
  `cntry_id` int(10) NOT NULL,
  `gvrnrt_id` int(10) NOT NULL,
  `city_id` int(10) NOT NULL,
  `adrs_street_nm` varchar(50) NOT NULL,
  `adrs_bld_num` int(5) NOT NULL,
  `Adrs_bld_floor` int(5) NOT NULL,
  `adrs_flat_num` int(10) NOT NULL,
  `ptnt_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `amb_statn`
--

CREATE TABLE `amb_statn` (
  `amb_statn_id` int(20) NOT NULL,
  `amb_statn_nm` varchar(50) NOT NULL,
  `amb_statn_loc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `artcl`
--

CREATE TABLE `artcl` (
  `artcl_id` int(100) NOT NULL,
  `dctr_id` int(10) NOT NULL,
  `artcl_txt` text NOT NULL,
  `vw_id` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `clnc`
--

CREATE TABLE `clnc` (
  `clnc_id` int(10) NOT NULL,
  `dctr_id` int(10) NOT NULL,
  `clnc_nm` varchar(50) NOT NULL,
  `clnc_loc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cmnt`
--

CREATE TABLE `cmnt` (
  `cmnt_id` int(100) NOT NULL,
  `cmnt_txt` text NOT NULL,
  `cmnt_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cmunctn`
--

CREATE TABLE `cmunctn` (
  `cmunctn_id` int(3) NOT NULL,
  `cmunctn_nm` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cmunctn`
--

INSERT INTO `cmunctn` (`cmunctn_id`, `cmunctn_nm`) VALUES
(1, 'home phone'),
(2, 'mobile no'),
(3, 'email'),
(4, 'work phone');

-- --------------------------------------------------------

--
-- Table structure for table `cnctd`
--

CREATE TABLE `cnctd` (
  `cnctd_id` int(10) NOT NULL,
  `cnctd_dctr_1` int(10) NOT NULL,
  `cnctd_dctr_2` int(10) NOT NULL,
  `cnctd_ptnt_1` int(10) NOT NULL,
  `cnctd_ptnt_2` int(10) NOT NULL,
  `cnctd_dt` date NOT NULL,
  `rqst_cnct_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cntry`
--

CREATE TABLE `cntry` (
  `cntry_id` int(10) NOT NULL,
  `cntry_nm` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cty`
--

CREATE TABLE `cty` (
  `cty_id` int(10) NOT NULL,
  `cty_nm` varchar(20) NOT NULL,
  `cntry_id` int(10) NOT NULL,
  `gvrnrt_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `dcmnt`
--

CREATE TABLE `dcmnt` (
  `dcmnt_id` int(20) NOT NULL,
  `dcmnt_nm` varchar(30) NOT NULL,
  `dcmnt_vlue` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dcmnt`
--

INSERT INTO `dcmnt` (`dcmnt_id`, `dcmnt_nm`, `dcmnt_vlue`) VALUES
(1, 'master', 20),
(2, 'doctoration', 50);

-- --------------------------------------------------------

--
-- Table structure for table `dctr`
--

CREATE TABLE `dctr` (
  `dctr_id` int(10) NOT NULL,
  `dctr_first_nm` varchar(30) NOT NULL,
  `dctr_last_nm` varchar(30) NOT NULL,
  `dctr_birthdate` date NOT NULL,
  `id_scn` text,
  `photo_scn` text,
  `speclty_id` int(10) NOT NULL,
  `dctr_gndr` enum('male','female','','') NOT NULL,
  `vertificate_state` enum('pending','accept','reject','') NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dctr`
--

INSERT INTO `dctr` (`dctr_id`, `dctr_first_nm`, `dctr_last_nm`, `dctr_birthdate`, `id_scn`, `photo_scn`, `speclty_id`, `dctr_gndr`, `vertificate_state`) VALUES
(1, 'mohamed khaled', '', '1980-01-26', 'id1.png', 'photo1.png', 14, 'male', 'pending'),
(2, 'ahmed mohamed', '', '1990-01-11', 'id1.png', 'photo1.png', 1, 'male', 'pending'),
(3, 'marwa mohamed', '', '1996-01-04', 'id2.png', 'photo2.png', 5, 'female', 'pending'),
(4, 'mohamed elkomy', '', '1985-04-29', 'id4.jpg', 'photo4.jpg', 12, 'male', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `dctr_cmunctn`
--

CREATE TABLE `dctr_cmunctn` (
  `dctr_id` int(10) NOT NULL,
  `cmunctn_id` int(3) NOT NULL,
  `value` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dctr_cmunctn`
--

INSERT INTO `dctr_cmunctn` (`dctr_id`, `cmunctn_id`, `value`) VALUES
(1, 2, '01091298585'),
(1, 2, '01236547899');

-- --------------------------------------------------------

--
-- Table structure for table `dctr_cnctd`
--

CREATE TABLE `dctr_cnctd` (
  `dctr_id` int(10) NOT NULL,
  `cnctd_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `dctr_dcmnt`
--

CREATE TABLE `dctr_dcmnt` (
  `dctr_id` int(10) NOT NULL,
  `dcmnt_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dctr_dcmnt`
--

INSERT INTO `dctr_dcmnt` (`dctr_id`, `dcmnt_id`) VALUES
(1, 1),
(1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `dctr_hsptl`
--

CREATE TABLE `dctr_hsptl` (
  `dctr_id` int(10) NOT NULL,
  `hsptl_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `dctr_msg`
--

CREATE TABLE `dctr_msg` (
  `dctr_id` int(10) NOT NULL,
  `msg_id` int(100) NOT NULL,
  `dctr_msg_id` int(100) NOT NULL,
  `msg_state` enum('in','out','','') NOT NULL,
  `unread` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `dctr_on`
--

CREATE TABLE `dctr_on` (
  `dctr_on_id` int(10) NOT NULL,
  `dctr_id` int(10) NOT NULL,
  `emrgncy_spclty_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `dctr_rqst_cnct`
--

CREATE TABLE `dctr_rqst_cnct` (
  `dctr_id` int(10) NOT NULL,
  `rqst_cnct_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `dctr_srgry`
--

CREATE TABLE `dctr_srgry` (
  `dctr_id` int(10) NOT NULL,
  `srgry_id` int(20) NOT NULL,
  `srgry_date` date NOT NULL,
  `srgry_time` time(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `dises`
--

CREATE TABLE `dises` (
  `dises_id` int(20) NOT NULL,
  `dises_nm` varchar(50) NOT NULL,
  `spclty_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dises`
--

INSERT INTO `dises` (`dises_id`, `dises_nm`, `spclty_id`) VALUES
(1, 'Eye allergy', 9),
(2, 'Ophtalmia', 9),
(3, 'Eye infection', 9),
(4, 'Gingivitis', 2),
(5, ' tooth decay', 2),
(6, 'The growth of wisdom teeth', 2),
(7, 'Depression', 3),
(8, ' Calcium deficiency', 5),
(9, 'Measles', 7),
(10, 'Smallpox', 7),
(11, 'flu', 1),
(12, 'Appendix', 11),
(13, 'Colitis', 6),
(14, 'Gallbladder', 11),
(15, 'drought', 4),
(16, 'Indigestion', 11),
(17, 'Bags on the ovary', 8),
(18, 'Inflammation of the veins', 14),
(19, 'Pneumonia', 12),
(20, 'Asthma', 12),
(21, 'Coronary artery blockage', 14),
(22, 'Ulcers', 11),
(23, 'Intestinal influenza', 11);

-- --------------------------------------------------------

--
-- Table structure for table `dises_smptm`
--

CREATE TABLE `dises_smptm` (
  `dises_id` int(20) NOT NULL,
  `smptm_id` int(20) NOT NULL,
  `value` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `drg`
--

CREATE TABLE `drg` (
  `drg_id` int(20) NOT NULL,
  `drg_nm` varchar(50) NOT NULL,
  `drg_actv_sbstnc` varchar(30) NOT NULL,
  `spclty_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `emrgncy_splty`
--

CREATE TABLE `emrgncy_splty` (
  `emrgncy_splty_id` int(10) NOT NULL,
  `emrgncy_splty_nm` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `em_cs_nr`
--

CREATE TABLE `em_cs_nr` (
  `em_cs_nr_id` int(10) NOT NULL,
  `hsptl_id` int(20) NOT NULL,
  `amb_statn_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `em_cs_phne`
--

CREATE TABLE `em_cs_phne` (
  `em_cs_phne_id` int(10) NOT NULL,
  `em_spclty_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `gvrnrt`
--

CREATE TABLE `gvrnrt` (
  `gvrnrt_id` int(10) NOT NULL,
  `gvrnrt_nm` varchar(30) NOT NULL,
  `cntry_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `hits_count`
--

CREATE TABLE `hits_count` (
  `count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hits_count`
--

INSERT INTO `hits_count` (`count`) VALUES
(0);

-- --------------------------------------------------------

--
-- Table structure for table `hits_ip`
--

CREATE TABLE `hits_ip` (
  `ip` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `hsptl`
--

CREATE TABLE `hsptl` (
  `hsptl_id` int(20) NOT NULL,
  `hsptl_nm` varchar(50) NOT NULL,
  `hsptl_loc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `lnguge`
--

CREATE TABLE `lnguge` (
  `lnguge_id` int(5) NOT NULL,
  `lnguge_nm` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `mdl`
--

CREATE TABLE `mdl` (
  `mdl_id` int(2) NOT NULL,
  `mdl_nm` enum('man','woman','child','animal') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mdl`
--

INSERT INTO `mdl` (`mdl_id`, `mdl_nm`) VALUES
(1, 'man'),
(2, 'woman'),
(3, 'child'),
(4, 'man');

-- --------------------------------------------------------

--
-- Table structure for table `mdl_part`
--

CREATE TABLE `mdl_part` (
  `mdl_part_id` int(5) NOT NULL,
  `mdl_part_nm` varchar(30) NOT NULL,
  `mdl_id` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mdl_part`
--

INSERT INTO `mdl_part` (`mdl_part_id`, `mdl_part_nm`, `mdl_id`) VALUES
(1, 'head and neck', 1),
(2, 'eyes', 1),
(3, 'Ear,Noseand Throat', 1),
(4, 'Chest And Back', 1),
(5, 'Abdomen and pelvis', 1),
(6, 'Arams and Hands', 1),
(7, 'Legs', 1),
(8, 'Other', 1),
(9, 'head and neck', 2),
(10, 'eyes', 2),
(11, 'Ear,Noseand Throat', 2),
(12, 'Chest And Back', 2),
(13, 'Abdomen and pelvis', 2),
(14, 'Arams and Hands', 2),
(15, 'Legs', 2),
(16, 'Other', 2),
(17, 'head and neck', 3),
(18, 'eyes', 3),
(19, 'Ear,Noseand Throat', 3),
(20, 'Chest And Back', 3),
(21, 'Abdomen and pelvis', 3),
(22, 'Arams and Hands', 3),
(23, 'Legs', 3),
(24, 'Other', 3),
(25, 'test_mdl', 1);

-- --------------------------------------------------------

--
-- Table structure for table `msg`
--

CREATE TABLE `msg` (
  `msg_id` int(100) NOT NULL,
  `sndr_id` int(10) NOT NULL,
  `rcvr_id` int(10) NOT NULL,
  `msg_txt` text NOT NULL,
  `msg_tm` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `msg_read` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `msg`
--

INSERT INTO `msg` (`msg_id`, `sndr_id`, `rcvr_id`, `msg_txt`, `msg_tm`, `msg_read`) VALUES
(1, 9, 10, 'hiii', '0000-00-00 00:00:00', 0),
(2, 10, 9, 'hi there', '2017-02-10 20:40:33', 0),
(7, 9, 10, 'sdfghj', '2017-02-10 20:48:20', 0),
(8, 10, 9, 'marhaba', '2017-02-10 20:54:12', 0),
(9, 10, 9, 'marwty', '2017-02-10 20:57:30', 0),
(10, 9, 10, 'marwty!', '2017-02-10 20:57:42', 0),
(11, 9, 10, 'marwty!', '2017-02-10 20:57:43', 0),
(12, 9, 10, 'marwty!  3mla ah ya bnty \n', '2017-02-10 20:58:00', 0),
(13, 10, 9, 'mostafa enta feen', '2017-02-10 21:39:54', 0),
(14, 10, 9, 'm4 h2olik 3la fkra', '2017-02-10 21:40:20', 0),
(15, 12, 11, 'hi 3mla ah ya marwa :D', '2017-02-10 23:00:13', 0),
(16, 11, 12, 'na tmam l7l w nta ?', '2017-02-10 23:00:13', 0),
(17, 11, 12, 'a5bark nta a ?', '2017-02-10 23:00:13', 0),
(18, 12, 11, 'na  fol awii nta wa7shnii', '2017-02-10 23:00:13', 0),
(19, 11, 12, 'yalla salam', '2017-02-10 23:00:13', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ptnt`
--

CREATE TABLE `ptnt` (
  `ptnt_id` int(10) NOT NULL,
  `ptnt_first_nm` varchar(50) NOT NULL,
  `ptnt_last_nm` varchar(50) NOT NULL,
  `ptnt_birthdt` date NOT NULL,
  `ptnt_wght` int(3) NOT NULL,
  `ptnt_hght` int(2) NOT NULL,
  `ptnt_loc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ptnt_cnctd`
--

CREATE TABLE `ptnt_cnctd` (
  `ptnt_id` int(10) NOT NULL,
  `cnctd_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ptnt_dises`
--

CREATE TABLE `ptnt_dises` (
  `ptnt_id` int(10) NOT NULL,
  `dises_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ptnt_drg`
--

CREATE TABLE `ptnt_drg` (
  `ptnt_id` int(10) NOT NULL,
  `drg_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ptnt_msg`
--

CREATE TABLE `ptnt_msg` (
  `ptnt_msg_id` int(100) NOT NULL,
  `msg_id` int(100) NOT NULL,
  `ptnt_id` int(10) NOT NULL,
  `msg_state` enum('in','out','','') NOT NULL,
  `unread` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ptnt_rqst_cnct`
--

CREATE TABLE `ptnt_rqst_cnct` (
  `ptnt_id` int(10) NOT NULL,
  `rqst_cnct_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ptnt_srgry`
--

CREATE TABLE `ptnt_srgry` (
  `ptnt_id` int(10) NOT NULL,
  `srgery_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ptnt_tst`
--

CREATE TABLE `ptnt_tst` (
  `ptnt_id` int(10) NOT NULL,
  `tst_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `qstn`
--

CREATE TABLE `qstn` (
  `qstn_id` int(20) NOT NULL,
  `qstn_txt` text NOT NULL,
  `dctr_id` int(10) NOT NULL,
  `ptnt_id` int(10) NOT NULL,
  `vw_id` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `qstn_cmnt`
--

CREATE TABLE `qstn_cmnt` (
  `qstn_cmnt_id` int(100) NOT NULL,
  `dctr_id` int(10) NOT NULL,
  `qstn_cmnt_txt` text NOT NULL,
  `qstn_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `rate`
--

CREATE TABLE `rate` (
  `rate_id` int(10) NOT NULL,
  `rate_value` int(2) NOT NULL,
  `ptnt_id` int(10) NOT NULL,
  `dctr_id` int(10) NOT NULL,
  `rate_dt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `rate_txt` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `rqst_bk`
--

CREATE TABLE `rqst_bk` (
  `rqst_bk_id` int(20) NOT NULL,
  `dctr_id` int(10) NOT NULL,
  `ptnt_id` int(10) NOT NULL,
  `rqst_bk_dt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `rqst_cnct`
--

CREATE TABLE `rqst_cnct` (
  `rqst_cnct_id` int(10) NOT NULL,
  `rqst_sndr_dctr_1` int(10) NOT NULL,
  `rqst_rcvr_dctr_2` int(10) NOT NULL,
  `rqst_sndr_ptnt_1` int(10) NOT NULL,
  `rqst_rcvr_ptnt_2` int(10) NOT NULL,
  `rqst_stats` varchar(8) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `smptm`
--

CREATE TABLE `smptm` (
  `smptm_id` int(20) NOT NULL,
  `smptm_nm` varchar(100) NOT NULL,
  `smptm_app` varchar(5) NOT NULL,
  `mdl_part_id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `smptm`
--

INSERT INTO `smptm` (`smptm_id`, `smptm_nm`, `smptm_app`, `mdl_part_id`) VALUES
(1, 'A burning sensation in the eye', 'A', 2),
(2, 'Tears in eyes', 'B', 2),
(3, 'sand in eyes ', 'C', 2),
(4, 'Redness of the eye', 'D', 2),
(5, 'Secretions in the eye', 'E', 2),
(6, 'Pain in the eye', 'F', 2),
(7, 'Headache', 'G', 1),
(8, 'High blood pressure', 'H', 8),
(9, 'Reduction of Blood pressure', 'I', 8),
(10, 'Anorexia', 'J', 5),
(11, 'insomnia', 'K', 1),
(12, 'Pee reflex', 'L', 5),
(13, 'Bleeding in the gums when you use a toothbrush', 'M', 1),
(14, 'Redness of the gums', 'N', 1),
(15, 'Emitting a foul odor from the mouth is always', 'O', 1),
(16, 'Tooth loss', 'P', 1),
(17, 'Pain in the teeth when eating foods hot or cold', 'Q', 1),
(18, 'Holes in the teeth', 'R', 1),
(19, 'Swelling at the end of the jaw', 'S', 1),
(20, 'Pain in the last teeth in the jaw', 'T', 1),
(21, 'Neuronal', 'U', 1),
(22, 'Fever', 'V', 8),
(23, 'Dry cough', 'W', 4),
(24, ' Colds and mucous secretions from the nose rains', 'X', 3),
(25, ' (Sensitivity) excessive light', 'Y', 8),
(26, 'a white small dots inside the mouth or  on the inside of the cheeks', 'Z', 1),
(27, 'The appearance of a rash in the skin consists of a large red spots color', 'AA', 8),
(28, 'feeling of tiredness', 'AB', 8),
(29, 'pain in the back and head.', 'AC', 8),
(30, 'Numbness of the limbs', 'AD', 8),
(31, ' Continuous weight loss and unjustified.', 'AE', 8),
(32, ' Swelling and pain of joints', 'AF', 8),
(33, ' The emergence of textile blocks in the abdomen or  chest or neck or  armpit or the pelvis.', 'AG', 8),
(34, 'Constant nausea', 'AH', 5),
(35, ' Vision disorder abruptly and permanently.', 'AI', 2),
(36, ' cough with phlegm in abundance', 'AJ', 4),
(37, 'Chest pain with cough and take deep breath', 'AK', 4),
(38, 'chills', 'AL', 8),
(39, 'Shortness of breath', 'AM', 4),
(40, 'beeps or rattles could be heard when exhaling', 'AN', 4),
(41, 'sneeze', 'AO', 3),
(42, ' heart palpitations (tachycardia)', 'AP', 4),
(43, 'Feeling dizzy', 'AQ', 8),
(44, 'Feeling excessive sweating all the natural state', 'AR', 8),
(45, 'Fainting', 'AS', 8),
(46, 'Feeling a sense of discomfort in both the back ', 'AT', 4),
(47, ' burn feeling in the stomach', 'AU', 5),
(48, 'feeling pain in the area between the chest and abdomen', 'AV', 5),
(49, 'over feeling pain when the stomach is empty', 'AW', 5),
(50, 'Burp', 'AX', 5),
(51, 'Palm feeling when you eat certain foods and drinks', 'AY', 5),
(52, 'Diarrhea', 'AZ', 5),
(53, 'distension and abdominal cramps', 'BB', 5),
(54, 'Apathy', 'BC', 8),
(55, 'Sunken eyes', 'BD', 2),
(56, 'Dry mouth and tongue', 'BE', 1),
(57, 'skin dryness', 'BF', 8),
(58, 'The absence of tears', 'BG', 2),
(59, 'Pain in the hand or leg', 'BH', 6),
(60, 'The appearance of varicose veins', 'BI', 8),
(61, 'Pain unbearable at the end of the north side of the stomach', 'BJ', 5),
(62, 'Inability to do', 'BK', 8),
(63, 'The effect of weak painkillers', 'BL', 8),
(64, 'Back ache', 'BM', 4),
(65, 'A burning sensation when urinating', 'BN', 5),
(66, 'Belly fossilized', 'BO', 5),
(67, 'Late period', 'BP', 5),
(68, 'Bleeding in the period', 'BQ', 5),
(69, 'Delayed childbearing', 'BR', 5),
(70, 'Pain in bones', 'BS', 8),
(71, 'Sore throat', 'BT', 3),
(72, 'Runny', 'BU', 3);

-- --------------------------------------------------------

--
-- Table structure for table `smptm_smptm`
--

CREATE TABLE `smptm_smptm` (
  `smptm_id` int(11) NOT NULL,
  `related_smptm_id` int(11) NOT NULL,
  `width` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `smptm_smptm`
--

INSERT INTO `smptm_smptm` (`smptm_id`, `related_smptm_id`, `width`) VALUES
(1, 2, 4),
(1, 3, 7),
(1, 4, 5),
(2, 3, 5),
(2, 4, 3),
(3, 4, 6),
(5, 6, 10);

-- --------------------------------------------------------

--
-- Table structure for table `spclty`
--

CREATE TABLE `spclty` (
  `spclty_id` int(10) NOT NULL,
  `spclty_nm` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `spclty`
--

INSERT INTO `spclty` (`spclty_id`, `spclty_nm`) VALUES
(1, 'Ear, Nose and Throat'),
(2, 'dentist'),
(3, 'psychological'),
(4, 'pediatric'),
(5, 'bones and joints'),
(6, 'kidney and urinary'),
(7, 'skin and venereal'),
(8, 'Obstetrics and Gynecology'),
(9, 'ophthalmologist'),
(10, 'physiotherapist'),
(11, 'Gastroenterology'),
(12, 'Chest'),
(13, 'heart'),
(14, 'veins'),
(15, 'Neurologists');

-- --------------------------------------------------------

--
-- Table structure for table `srgry`
--

CREATE TABLE `srgry` (
  `srgry_id` int(20) NOT NULL,
  `srgry_nm` varchar(50) NOT NULL,
  `success_rate` varchar(3) NOT NULL,
  `spclty_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `srgry_tst`
--

CREATE TABLE `srgry_tst` (
  `srgry_id` int(20) NOT NULL,
  `tst_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `strnge_cs`
--

CREATE TABLE `strnge_cs` (
  `strng_cs_id` int(20) NOT NULL,
  `strnge_cs_desc` text NOT NULL,
  `ptnt_id` int(10) NOT NULL,
  `dctr_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `strng_cmnt`
--

CREATE TABLE `strng_cmnt` (
  `strng_cmnt_id` int(100) NOT NULL,
  `dctr_id` int(10) NOT NULL,
  `strng_cs_id` int(20) NOT NULL,
  `strng_cmnt_txt` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tst`
--

CREATE TABLE `tst` (
  `tst_id` int(10) NOT NULL,
  `tst_nm` varchar(20) NOT NULL,
  `tst_idel` varchar(20) NOT NULL,
  `spclty_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `username` varchar(255) NOT NULL,
  `type` enum('doctor','patient','','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `email`, `password`, `active`, `username`, `type`) VALUES
(9, 'mohamed@yahoo.com', '147258369', 1, 'mohamed', 'doctor'),
(10, 'marwa@yahoo.com', '123456', 0, 'maro', 'patient'),
(11, 'marwaelshora2013@gmail.com', '123456', 1, 'marwa', 'doctor'),
(12, 'mostafa.tarek.ibnm@gmail.com', '123456', 1, 'tofeee', '');

-- --------------------------------------------------------

--
-- Table structure for table `vw`
--

CREATE TABLE `vw` (
  `vw_id` int(1) NOT NULL,
  `vw_desc` enum('doctors','patients','public','connected') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wzrd`
--

CREATE TABLE `wzrd` (
  `wzrd_id` int(100) NOT NULL,
  `wzrd_desc` varchar(50) NOT NULL,
  `ptnt_id` int(10) NOT NULL,
  `mdl_id` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wzrd_qstn`
--

CREATE TABLE `wzrd_qstn` (
  `wzrd_qstn_id` int(20) NOT NULL,
  `wzrd_qstn_txt` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wzrd_qstn`
--

INSERT INTO `wzrd_qstn` (`wzrd_qstn_id`, `wzrd_qstn_txt`) VALUES
(1, 'are you feeling  burning sensation in the eye ?'),
(2, 'is there Tears in eyes ?'),
(3, 'is there sand in eyes ?'),
(4, 'is there Redness of the eye ?'),
(5, 'is there Secretions in the eye ?'),
(6, ' is there Pain in the eye ?');

-- --------------------------------------------------------

--
-- Table structure for table `wz_qstn_prt`
--

CREATE TABLE `wz_qstn_prt` (
  `mdl_part_id` int(5) NOT NULL,
  `wzrd_qstn_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wz_qstn_smptm`
--

CREATE TABLE `wz_qstn_smptm` (
  `smptm_id` int(20) NOT NULL,
  `wzrd_qstn_id` int(20) NOT NULL,
  `wzrd_qstn_ansr` enum('yes','no','','') NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wz_qstn_smptm`
--

INSERT INTO `wz_qstn_smptm` (`smptm_id`, `wzrd_qstn_id`, `wzrd_qstn_ansr`) VALUES
(1, 1, 'yes'),
(2, 2, 'yes'),
(3, 3, 'yes'),
(4, 4, 'yes'),
(5, 5, 'yes'),
(6, 6, 'yes');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adrs_amb_statn`
--
ALTER TABLE `adrs_amb_statn`
  ADD PRIMARY KEY (`adrs_amb_statn_id`),
  ADD KEY `amb_statn_id` (`amb_statn_id`),
  ADD KEY `cntry_id` (`cntry_id`),
  ADD KEY `gvrnrt_id` (`gvrnrt_id`),
  ADD KEY `city_id` (`city_id`);

--
-- Indexes for table `adrs_clnc`
--
ALTER TABLE `adrs_clnc`
  ADD PRIMARY KEY (`adrs_clnc_id`),
  ADD KEY `cntry_id` (`cntry_id`),
  ADD KEY `gvrnrt_id` (`gvrnrt_id`),
  ADD KEY `city_id` (`city_id`),
  ADD KEY `clnc_id` (`clnc_id`);

--
-- Indexes for table `adrs_dctr`
--
ALTER TABLE `adrs_dctr`
  ADD PRIMARY KEY (`adrs_dctr_id`),
  ADD KEY `cntry_id` (`cntry_id`),
  ADD KEY `gvrnrt_id` (`gvrnrt_id`),
  ADD KEY `city_id` (`city_id`),
  ADD KEY `dctr_id` (`dctr_id`);

--
-- Indexes for table `adrs_hsptl`
--
ALTER TABLE `adrs_hsptl`
  ADD PRIMARY KEY (`adrs_hsptl_id`),
  ADD KEY `amb_statn_id` (`hsptl_id`),
  ADD KEY `cntry_id` (`cntry_id`),
  ADD KEY `gvrnrt_id` (`gvrnrt_id`),
  ADD KEY `city_id` (`city_id`);

--
-- Indexes for table `adrs_ptnt`
--
ALTER TABLE `adrs_ptnt`
  ADD PRIMARY KEY (`adrs_ptnt_id`),
  ADD KEY `cntry_id` (`cntry_id`),
  ADD KEY `gvrnrt_id` (`gvrnrt_id`),
  ADD KEY `city_id` (`city_id`),
  ADD KEY `ptnt_id` (`ptnt_id`);

--
-- Indexes for table `amb_statn`
--
ALTER TABLE `amb_statn`
  ADD PRIMARY KEY (`amb_statn_id`);

--
-- Indexes for table `artcl`
--
ALTER TABLE `artcl`
  ADD PRIMARY KEY (`artcl_id`),
  ADD KEY `dctr_id` (`dctr_id`),
  ADD KEY `vw_id` (`vw_id`);

--
-- Indexes for table `clnc`
--
ALTER TABLE `clnc`
  ADD PRIMARY KEY (`clnc_id`),
  ADD KEY `dctr_id` (`dctr_id`);

--
-- Indexes for table `cmnt`
--
ALTER TABLE `cmnt`
  ADD PRIMARY KEY (`cmnt_id`);

--
-- Indexes for table `cmunctn`
--
ALTER TABLE `cmunctn`
  ADD PRIMARY KEY (`cmunctn_id`);

--
-- Indexes for table `cnctd`
--
ALTER TABLE `cnctd`
  ADD PRIMARY KEY (`cnctd_id`),
  ADD KEY `cnctd_dctr_1` (`cnctd_dctr_1`),
  ADD KEY `cnctd_dctr_2` (`cnctd_dctr_2`),
  ADD KEY `cnctd_ptnt_1` (`cnctd_ptnt_1`),
  ADD KEY `cnctd_ptnt_2` (`cnctd_ptnt_2`),
  ADD KEY `rqst_cnct_id` (`rqst_cnct_id`);

--
-- Indexes for table `cntry`
--
ALTER TABLE `cntry`
  ADD PRIMARY KEY (`cntry_id`);

--
-- Indexes for table `cty`
--
ALTER TABLE `cty`
  ADD PRIMARY KEY (`cty_id`),
  ADD KEY `cntry_id` (`cntry_id`),
  ADD KEY `gvrnrt_id` (`gvrnrt_id`);

--
-- Indexes for table `dcmnt`
--
ALTER TABLE `dcmnt`
  ADD PRIMARY KEY (`dcmnt_id`);

--
-- Indexes for table `dctr`
--
ALTER TABLE `dctr`
  ADD PRIMARY KEY (`dctr_id`),
  ADD KEY `speclty_id` (`speclty_id`);

--
-- Indexes for table `dctr_cmunctn`
--
ALTER TABLE `dctr_cmunctn`
  ADD PRIMARY KEY (`dctr_id`,`cmunctn_id`,`value`) USING BTREE,
  ADD KEY `dctr_id` (`dctr_id`,`cmunctn_id`),
  ADD KEY `dctr_cmunctn_fk2` (`cmunctn_id`);

--
-- Indexes for table `dctr_cnctd`
--
ALTER TABLE `dctr_cnctd`
  ADD PRIMARY KEY (`dctr_id`,`cnctd_id`),
  ADD KEY `dctr_id` (`dctr_id`,`cnctd_id`),
  ADD KEY `dctr_cnctd_fk_2` (`cnctd_id`);

--
-- Indexes for table `dctr_dcmnt`
--
ALTER TABLE `dctr_dcmnt`
  ADD PRIMARY KEY (`dctr_id`,`dcmnt_id`),
  ADD KEY `dctr_id` (`dctr_id`,`dcmnt_id`),
  ADD KEY `dctr_dcmnt_fk2` (`dcmnt_id`);

--
-- Indexes for table `dctr_hsptl`
--
ALTER TABLE `dctr_hsptl`
  ADD PRIMARY KEY (`dctr_id`,`hsptl_id`),
  ADD KEY `dctr_id` (`dctr_id`,`hsptl_id`),
  ADD KEY `dctr_hsptl_fk_2` (`hsptl_id`);

--
-- Indexes for table `dctr_msg`
--
ALTER TABLE `dctr_msg`
  ADD PRIMARY KEY (`dctr_msg_id`),
  ADD KEY `dctr_id` (`dctr_id`),
  ADD KEY `msg_id` (`msg_id`);

--
-- Indexes for table `dctr_on`
--
ALTER TABLE `dctr_on`
  ADD PRIMARY KEY (`dctr_on_id`),
  ADD KEY `dctr_id` (`dctr_id`),
  ADD KEY `emrgncy_spclty_id` (`emrgncy_spclty_id`);

--
-- Indexes for table `dctr_rqst_cnct`
--
ALTER TABLE `dctr_rqst_cnct`
  ADD KEY `dctr_id` (`dctr_id`,`rqst_cnct_id`),
  ADD KEY `dctr_rqst_cnct_fk_2` (`rqst_cnct_id`);

--
-- Indexes for table `dctr_srgry`
--
ALTER TABLE `dctr_srgry`
  ADD PRIMARY KEY (`dctr_id`,`srgry_id`,`srgry_date`,`srgry_time`) USING BTREE,
  ADD KEY `dctr_id` (`dctr_id`,`srgry_id`),
  ADD KEY `dctr_srgry_fk2` (`srgry_id`);

--
-- Indexes for table `dises`
--
ALTER TABLE `dises`
  ADD PRIMARY KEY (`dises_id`),
  ADD KEY `spclty_id` (`spclty_id`);

--
-- Indexes for table `dises_smptm`
--
ALTER TABLE `dises_smptm`
  ADD PRIMARY KEY (`dises_id`,`smptm_id`,`value`),
  ADD KEY `dises_id` (`dises_id`,`smptm_id`),
  ADD KEY `dises_smptm_fk2` (`smptm_id`);

--
-- Indexes for table `drg`
--
ALTER TABLE `drg`
  ADD PRIMARY KEY (`drg_id`),
  ADD KEY `spclty_id` (`spclty_id`);

--
-- Indexes for table `emrgncy_splty`
--
ALTER TABLE `emrgncy_splty`
  ADD PRIMARY KEY (`emrgncy_splty_id`);

--
-- Indexes for table `em_cs_nr`
--
ALTER TABLE `em_cs_nr`
  ADD PRIMARY KEY (`em_cs_nr_id`),
  ADD KEY `hsptl_id` (`hsptl_id`),
  ADD KEY `amb_statn_id` (`amb_statn_id`);

--
-- Indexes for table `em_cs_phne`
--
ALTER TABLE `em_cs_phne`
  ADD PRIMARY KEY (`em_cs_phne_id`),
  ADD KEY `em_spclty_id` (`em_spclty_id`);

--
-- Indexes for table `gvrnrt`
--
ALTER TABLE `gvrnrt`
  ADD PRIMARY KEY (`gvrnrt_id`),
  ADD KEY `cntry_id` (`cntry_id`);

--
-- Indexes for table `hits_count`
--
ALTER TABLE `hits_count`
  ADD PRIMARY KEY (`count`);

--
-- Indexes for table `hsptl`
--
ALTER TABLE `hsptl`
  ADD PRIMARY KEY (`hsptl_id`);

--
-- Indexes for table `lnguge`
--
ALTER TABLE `lnguge`
  ADD PRIMARY KEY (`lnguge_id`);

--
-- Indexes for table `mdl`
--
ALTER TABLE `mdl`
  ADD PRIMARY KEY (`mdl_id`);

--
-- Indexes for table `mdl_part`
--
ALTER TABLE `mdl_part`
  ADD PRIMARY KEY (`mdl_part_id`),
  ADD KEY `mdl_id` (`mdl_id`);

--
-- Indexes for table `msg`
--
ALTER TABLE `msg`
  ADD PRIMARY KEY (`msg_id`),
  ADD KEY `sndr_dctr` (`sndr_id`),
  ADD KEY `rcvr_dctr` (`rcvr_id`);

--
-- Indexes for table `ptnt`
--
ALTER TABLE `ptnt`
  ADD PRIMARY KEY (`ptnt_id`);

--
-- Indexes for table `ptnt_cnctd`
--
ALTER TABLE `ptnt_cnctd`
  ADD PRIMARY KEY (`ptnt_id`,`cnctd_id`),
  ADD KEY `ptnt_id` (`ptnt_id`,`cnctd_id`),
  ADD KEY `ptnt_cnctd_fk_2` (`cnctd_id`);

--
-- Indexes for table `ptnt_dises`
--
ALTER TABLE `ptnt_dises`
  ADD PRIMARY KEY (`ptnt_id`,`dises_id`),
  ADD KEY `ptnt_id` (`ptnt_id`,`dises_id`),
  ADD KEY `ptnt_dises_fk_2` (`dises_id`);

--
-- Indexes for table `ptnt_drg`
--
ALTER TABLE `ptnt_drg`
  ADD PRIMARY KEY (`ptnt_id`,`drg_id`),
  ADD KEY `ptnt_id` (`ptnt_id`,`drg_id`),
  ADD KEY `ptnt_drg_fk_2` (`drg_id`);

--
-- Indexes for table `ptnt_msg`
--
ALTER TABLE `ptnt_msg`
  ADD PRIMARY KEY (`ptnt_msg_id`),
  ADD KEY `msg_id` (`msg_id`),
  ADD KEY `ptnt_id` (`ptnt_id`);

--
-- Indexes for table `ptnt_rqst_cnct`
--
ALTER TABLE `ptnt_rqst_cnct`
  ADD PRIMARY KEY (`ptnt_id`,`rqst_cnct_id`),
  ADD KEY `ptnt_id` (`ptnt_id`,`rqst_cnct_id`),
  ADD KEY `ptnt_rqst_cnct_fk_2` (`rqst_cnct_id`);

--
-- Indexes for table `ptnt_srgry`
--
ALTER TABLE `ptnt_srgry`
  ADD PRIMARY KEY (`ptnt_id`,`srgery_id`),
  ADD KEY `ptnt_id` (`ptnt_id`,`srgery_id`),
  ADD KEY `ptnt_srgry_fk_2` (`srgery_id`);

--
-- Indexes for table `ptnt_tst`
--
ALTER TABLE `ptnt_tst`
  ADD KEY `ptnt_id` (`ptnt_id`,`tst_id`),
  ADD KEY `ptnt_tst_fk_2` (`tst_id`);

--
-- Indexes for table `qstn`
--
ALTER TABLE `qstn`
  ADD PRIMARY KEY (`qstn_id`),
  ADD KEY `dctr_id` (`dctr_id`),
  ADD KEY `ptnt_id` (`ptnt_id`),
  ADD KEY `vw_id` (`vw_id`);

--
-- Indexes for table `qstn_cmnt`
--
ALTER TABLE `qstn_cmnt`
  ADD PRIMARY KEY (`qstn_cmnt_id`),
  ADD KEY `qstn_id` (`qstn_id`),
  ADD KEY `dctr_id` (`dctr_id`);

--
-- Indexes for table `rate`
--
ALTER TABLE `rate`
  ADD PRIMARY KEY (`rate_id`),
  ADD KEY `dctr_id` (`dctr_id`),
  ADD KEY `ptnt_id` (`ptnt_id`);

--
-- Indexes for table `rqst_bk`
--
ALTER TABLE `rqst_bk`
  ADD PRIMARY KEY (`rqst_bk_id`),
  ADD KEY `dctr_id` (`dctr_id`),
  ADD KEY `ptnt_id` (`ptnt_id`);

--
-- Indexes for table `rqst_cnct`
--
ALTER TABLE `rqst_cnct`
  ADD PRIMARY KEY (`rqst_cnct_id`),
  ADD KEY `rqst_cnct_dctr_2` (`rqst_rcvr_dctr_2`),
  ADD KEY `rqst_cnct_dctr_1` (`rqst_sndr_dctr_1`),
  ADD KEY `rqst_cnct_ptnt_2` (`rqst_rcvr_ptnt_2`) USING BTREE,
  ADD KEY `rqst_cnct_ptnt_1` (`rqst_sndr_ptnt_1`) USING BTREE;

--
-- Indexes for table `smptm`
--
ALTER TABLE `smptm`
  ADD PRIMARY KEY (`smptm_id`),
  ADD KEY `mdl_part_id` (`mdl_part_id`);

--
-- Indexes for table `smptm_smptm`
--
ALTER TABLE `smptm_smptm`
  ADD KEY `smptm_id` (`smptm_id`),
  ADD KEY `related_smptm_id` (`related_smptm_id`);

--
-- Indexes for table `spclty`
--
ALTER TABLE `spclty`
  ADD PRIMARY KEY (`spclty_id`);

--
-- Indexes for table `srgry`
--
ALTER TABLE `srgry`
  ADD PRIMARY KEY (`srgry_id`),
  ADD KEY `spclty_id` (`spclty_id`);

--
-- Indexes for table `srgry_tst`
--
ALTER TABLE `srgry_tst`
  ADD PRIMARY KEY (`srgry_id`,`tst_id`),
  ADD KEY `srgry_id` (`srgry_id`,`tst_id`),
  ADD KEY `srgry_tst_fk2` (`tst_id`);

--
-- Indexes for table `strnge_cs`
--
ALTER TABLE `strnge_cs`
  ADD PRIMARY KEY (`strng_cs_id`),
  ADD KEY `ptnt_id` (`ptnt_id`),
  ADD KEY `dctr_id` (`dctr_id`);

--
-- Indexes for table `strng_cmnt`
--
ALTER TABLE `strng_cmnt`
  ADD PRIMARY KEY (`strng_cmnt_id`),
  ADD KEY `strng_cs_id` (`strng_cs_id`),
  ADD KEY `dctr_id` (`dctr_id`);

--
-- Indexes for table `tst`
--
ALTER TABLE `tst`
  ADD PRIMARY KEY (`tst_id`),
  ADD KEY `spclty_id` (`spclty_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `vw`
--
ALTER TABLE `vw`
  ADD PRIMARY KEY (`vw_id`);

--
-- Indexes for table `wzrd`
--
ALTER TABLE `wzrd`
  ADD PRIMARY KEY (`wzrd_id`),
  ADD KEY `mdl_id` (`mdl_id`),
  ADD KEY `ptnt_id` (`ptnt_id`);

--
-- Indexes for table `wzrd_qstn`
--
ALTER TABLE `wzrd_qstn`
  ADD PRIMARY KEY (`wzrd_qstn_id`);

--
-- Indexes for table `wz_qstn_prt`
--
ALTER TABLE `wz_qstn_prt`
  ADD PRIMARY KEY (`mdl_part_id`,`wzrd_qstn_id`),
  ADD KEY `mdl_part_id` (`mdl_part_id`,`wzrd_qstn_id`),
  ADD KEY `wz_qstn_prt_fk_2` (`wzrd_qstn_id`);

--
-- Indexes for table `wz_qstn_smptm`
--
ALTER TABLE `wz_qstn_smptm`
  ADD PRIMARY KEY (`smptm_id`,`wzrd_qstn_id`),
  ADD KEY `smptm_id` (`smptm_id`,`wzrd_qstn_id`),
  ADD KEY `wz_qstn_smptm_fk_2` (`wzrd_qstn_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adrs_amb_statn`
--
ALTER TABLE `adrs_amb_statn`
  MODIFY `adrs_amb_statn_id` int(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `adrs_clnc`
--
ALTER TABLE `adrs_clnc`
  MODIFY `adrs_clnc_id` int(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `adrs_dctr`
--
ALTER TABLE `adrs_dctr`
  MODIFY `adrs_dctr_id` int(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `adrs_hsptl`
--
ALTER TABLE `adrs_hsptl`
  MODIFY `adrs_hsptl_id` int(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `adrs_ptnt`
--
ALTER TABLE `adrs_ptnt`
  MODIFY `adrs_ptnt_id` int(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `amb_statn`
--
ALTER TABLE `amb_statn`
  MODIFY `amb_statn_id` int(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `artcl`
--
ALTER TABLE `artcl`
  MODIFY `artcl_id` int(100) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `clnc`
--
ALTER TABLE `clnc`
  MODIFY `clnc_id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cmnt`
--
ALTER TABLE `cmnt`
  MODIFY `cmnt_id` int(100) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cmunctn`
--
ALTER TABLE `cmunctn`
  MODIFY `cmunctn_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `cnctd`
--
ALTER TABLE `cnctd`
  MODIFY `cnctd_id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cntry`
--
ALTER TABLE `cntry`
  MODIFY `cntry_id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cty`
--
ALTER TABLE `cty`
  MODIFY `cty_id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dcmnt`
--
ALTER TABLE `dcmnt`
  MODIFY `dcmnt_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `dctr`
--
ALTER TABLE `dctr`
  MODIFY `dctr_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `dctr_msg`
--
ALTER TABLE `dctr_msg`
  MODIFY `dctr_msg_id` int(100) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dctr_on`
--
ALTER TABLE `dctr_on`
  MODIFY `dctr_on_id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dises`
--
ALTER TABLE `dises`
  MODIFY `dises_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `drg`
--
ALTER TABLE `drg`
  MODIFY `drg_id` int(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `emrgncy_splty`
--
ALTER TABLE `emrgncy_splty`
  MODIFY `emrgncy_splty_id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `em_cs_nr`
--
ALTER TABLE `em_cs_nr`
  MODIFY `em_cs_nr_id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `em_cs_phne`
--
ALTER TABLE `em_cs_phne`
  MODIFY `em_cs_phne_id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `gvrnrt`
--
ALTER TABLE `gvrnrt`
  MODIFY `gvrnrt_id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `hsptl`
--
ALTER TABLE `hsptl`
  MODIFY `hsptl_id` int(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `lnguge`
--
ALTER TABLE `lnguge`
  MODIFY `lnguge_id` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mdl`
--
ALTER TABLE `mdl`
  MODIFY `mdl_id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `mdl_part`
--
ALTER TABLE `mdl_part`
  MODIFY `mdl_part_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `msg`
--
ALTER TABLE `msg`
  MODIFY `msg_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `ptnt_msg`
--
ALTER TABLE `ptnt_msg`
  MODIFY `ptnt_msg_id` int(100) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `qstn`
--
ALTER TABLE `qstn`
  MODIFY `qstn_id` int(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `qstn_cmnt`
--
ALTER TABLE `qstn_cmnt`
  MODIFY `qstn_cmnt_id` int(100) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `rate`
--
ALTER TABLE `rate`
  MODIFY `rate_id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `rqst_bk`
--
ALTER TABLE `rqst_bk`
  MODIFY `rqst_bk_id` int(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `rqst_cnct`
--
ALTER TABLE `rqst_cnct`
  MODIFY `rqst_cnct_id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `smptm`
--
ALTER TABLE `smptm`
  MODIFY `smptm_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;
--
-- AUTO_INCREMENT for table `spclty`
--
ALTER TABLE `spclty`
  MODIFY `spclty_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `srgry`
--
ALTER TABLE `srgry`
  MODIFY `srgry_id` int(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `strnge_cs`
--
ALTER TABLE `strnge_cs`
  MODIFY `strng_cs_id` int(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `strng_cmnt`
--
ALTER TABLE `strng_cmnt`
  MODIFY `strng_cmnt_id` int(100) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tst`
--
ALTER TABLE `tst`
  MODIFY `tst_id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `vw`
--
ALTER TABLE `vw`
  MODIFY `vw_id` int(1) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wzrd`
--
ALTER TABLE `wzrd`
  MODIFY `wzrd_id` int(100) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wzrd_qstn`
--
ALTER TABLE `wzrd_qstn`
  MODIFY `wzrd_qstn_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `adrs_amb_statn`
--
ALTER TABLE `adrs_amb_statn`
  ADD CONSTRAINT `statn_cntry` FOREIGN KEY (`cntry_id`) REFERENCES `cntry` (`cntry_id`),
  ADD CONSTRAINT `statn_cty` FOREIGN KEY (`city_id`) REFERENCES `cty` (`cty_id`),
  ADD CONSTRAINT `statn_gvrnrt` FOREIGN KEY (`gvrnrt_id`) REFERENCES `gvrnrt` (`gvrnrt_id`),
  ADD CONSTRAINT `statn_id` FOREIGN KEY (`amb_statn_id`) REFERENCES `amb_statn` (`amb_statn_id`);

--
-- Constraints for table `adrs_clnc`
--
ALTER TABLE `adrs_clnc`
  ADD CONSTRAINT `clnc_id` FOREIGN KEY (`clnc_id`) REFERENCES `clnc` (`clnc_id`),
  ADD CONSTRAINT `cntry_clnc` FOREIGN KEY (`cntry_id`) REFERENCES `cntry` (`cntry_id`),
  ADD CONSTRAINT `cty_clnc` FOREIGN KEY (`city_id`) REFERENCES `cty` (`cty_id`),
  ADD CONSTRAINT `gvrnrt_clnc` FOREIGN KEY (`gvrnrt_id`) REFERENCES `gvrnrt` (`gvrnrt_id`);

--
-- Constraints for table `adrs_dctr`
--
ALTER TABLE `adrs_dctr`
  ADD CONSTRAINT `dctr_cntry` FOREIGN KEY (`cntry_id`) REFERENCES `cntry` (`cntry_id`),
  ADD CONSTRAINT `dctr_cty` FOREIGN KEY (`city_id`) REFERENCES `cty` (`cty_id`),
  ADD CONSTRAINT `dctr_gvrnrt` FOREIGN KEY (`gvrnrt_id`) REFERENCES `gvrnrt` (`gvrnrt_id`),
  ADD CONSTRAINT `dctr_id` FOREIGN KEY (`dctr_id`) REFERENCES `dctr` (`dctr_id`);

--
-- Constraints for table `adrs_hsptl`
--
ALTER TABLE `adrs_hsptl`
  ADD CONSTRAINT `hsptl_cntry` FOREIGN KEY (`cntry_id`) REFERENCES `cntry` (`cntry_id`),
  ADD CONSTRAINT `hsptl_cty` FOREIGN KEY (`city_id`) REFERENCES `cty` (`cty_id`),
  ADD CONSTRAINT `hsptl_gvrnrt` FOREIGN KEY (`gvrnrt_id`) REFERENCES `gvrnrt` (`gvrnrt_id`),
  ADD CONSTRAINT `hsptl_id` FOREIGN KEY (`hsptl_id`) REFERENCES `hsptl` (`hsptl_id`);

--
-- Constraints for table `adrs_ptnt`
--
ALTER TABLE `adrs_ptnt`
  ADD CONSTRAINT `adrs_ptnt` FOREIGN KEY (`ptnt_id`) REFERENCES `ptnt` (`ptnt_id`),
  ADD CONSTRAINT `cntry_ptnt` FOREIGN KEY (`cntry_id`) REFERENCES `cntry` (`cntry_id`),
  ADD CONSTRAINT `cty_ptnt` FOREIGN KEY (`city_id`) REFERENCES `cty` (`cty_id`),
  ADD CONSTRAINT `gvrnrt_ptnt` FOREIGN KEY (`gvrnrt_id`) REFERENCES `gvrnrt` (`gvrnrt_id`);

--
-- Constraints for table `artcl`
--
ALTER TABLE `artcl`
  ADD CONSTRAINT `artcl_dcte_fk` FOREIGN KEY (`dctr_id`) REFERENCES `dctr` (`dctr_id`),
  ADD CONSTRAINT `vw_artcl_fk` FOREIGN KEY (`vw_id`) REFERENCES `vw` (`vw_id`);

--
-- Constraints for table `clnc`
--
ALTER TABLE `clnc`
  ADD CONSTRAINT `dctr_clnc_fk` FOREIGN KEY (`dctr_id`) REFERENCES `dctr` (`dctr_id`);

--
-- Constraints for table `cnctd`
--
ALTER TABLE `cnctd`
  ADD CONSTRAINT `cnctd_dctr_1` FOREIGN KEY (`cnctd_dctr_1`) REFERENCES `dctr` (`dctr_id`),
  ADD CONSTRAINT `cnctd_dctr_2` FOREIGN KEY (`cnctd_dctr_2`) REFERENCES `dctr` (`dctr_id`),
  ADD CONSTRAINT `cnctd_ptnt_1` FOREIGN KEY (`cnctd_ptnt_1`) REFERENCES `ptnt` (`ptnt_id`),
  ADD CONSTRAINT `cnctd_ptnt_2` FOREIGN KEY (`cnctd_ptnt_2`) REFERENCES `ptnt` (`ptnt_id`),
  ADD CONSTRAINT `rqst_cnct_fk` FOREIGN KEY (`rqst_cnct_id`) REFERENCES `rqst_cnct` (`rqst_cnct_id`);

--
-- Constraints for table `cty`
--
ALTER TABLE `cty`
  ADD CONSTRAINT `cntry_cty_fk` FOREIGN KEY (`cntry_id`) REFERENCES `cntry` (`cntry_id`),
  ADD CONSTRAINT `gvrnrt_cty_fk` FOREIGN KEY (`gvrnrt_id`) REFERENCES `gvrnrt` (`gvrnrt_id`);

--
-- Constraints for table `dctr`
--
ALTER TABLE `dctr`
  ADD CONSTRAINT `dctr_spclty` FOREIGN KEY (`speclty_id`) REFERENCES `spclty` (`spclty_id`);

--
-- Constraints for table `dctr_cmunctn`
--
ALTER TABLE `dctr_cmunctn`
  ADD CONSTRAINT `dctr_cmunctn_fk` FOREIGN KEY (`dctr_id`) REFERENCES `dctr` (`dctr_id`),
  ADD CONSTRAINT `dctr_cmunctn_fk2` FOREIGN KEY (`cmunctn_id`) REFERENCES `cmunctn` (`cmunctn_id`);

--
-- Constraints for table `dctr_cnctd`
--
ALTER TABLE `dctr_cnctd`
  ADD CONSTRAINT `dctr_cnctd_fk` FOREIGN KEY (`dctr_id`) REFERENCES `dctr` (`dctr_id`),
  ADD CONSTRAINT `dctr_cnctd_fk_2` FOREIGN KEY (`cnctd_id`) REFERENCES `cnctd` (`cnctd_id`);

--
-- Constraints for table `dctr_dcmnt`
--
ALTER TABLE `dctr_dcmnt`
  ADD CONSTRAINT `dctr_dcmnt_fk` FOREIGN KEY (`dctr_id`) REFERENCES `dctr` (`dctr_id`),
  ADD CONSTRAINT `dctr_dcmnt_fk2` FOREIGN KEY (`dcmnt_id`) REFERENCES `dcmnt` (`dcmnt_id`);

--
-- Constraints for table `dctr_hsptl`
--
ALTER TABLE `dctr_hsptl`
  ADD CONSTRAINT `dctr_hsptl_fk` FOREIGN KEY (`dctr_id`) REFERENCES `dctr` (`dctr_id`),
  ADD CONSTRAINT `dctr_hsptl_fk_2` FOREIGN KEY (`hsptl_id`) REFERENCES `hsptl` (`hsptl_id`);

--
-- Constraints for table `dctr_msg`
--
ALTER TABLE `dctr_msg`
  ADD CONSTRAINT `dctr_msg_fk` FOREIGN KEY (`dctr_id`) REFERENCES `dctr` (`dctr_id`),
  ADD CONSTRAINT `msg_fk` FOREIGN KEY (`msg_id`) REFERENCES `msg` (`msg_id`);

--
-- Constraints for table `dctr_on`
--
ALTER TABLE `dctr_on`
  ADD CONSTRAINT `dctr_on_fk` FOREIGN KEY (`dctr_id`) REFERENCES `dctr` (`dctr_id`),
  ADD CONSTRAINT `dctr_splty_fk` FOREIGN KEY (`emrgncy_spclty_id`) REFERENCES `emrgncy_splty` (`emrgncy_splty_id`);

--
-- Constraints for table `dctr_rqst_cnct`
--
ALTER TABLE `dctr_rqst_cnct`
  ADD CONSTRAINT `dctr_rqst_cnct_fk` FOREIGN KEY (`dctr_id`) REFERENCES `dctr` (`dctr_id`),
  ADD CONSTRAINT `dctr_rqst_cnct_fk_2` FOREIGN KEY (`rqst_cnct_id`) REFERENCES `rqst_cnct` (`rqst_cnct_id`);

--
-- Constraints for table `dctr_srgry`
--
ALTER TABLE `dctr_srgry`
  ADD CONSTRAINT `dctr_srgry_fk` FOREIGN KEY (`dctr_id`) REFERENCES `dctr` (`dctr_id`),
  ADD CONSTRAINT `dctr_srgry_fk2` FOREIGN KEY (`srgry_id`) REFERENCES `srgry` (`srgry_id`);

--
-- Constraints for table `dises`
--
ALTER TABLE `dises`
  ADD CONSTRAINT `spclty_dises_fk` FOREIGN KEY (`spclty_id`) REFERENCES `spclty` (`spclty_id`);

--
-- Constraints for table `dises_smptm`
--
ALTER TABLE `dises_smptm`
  ADD CONSTRAINT `dises_smptm_fk` FOREIGN KEY (`dises_id`) REFERENCES `dises` (`dises_id`),
  ADD CONSTRAINT `dises_smptm_fk2` FOREIGN KEY (`smptm_id`) REFERENCES `smptm` (`smptm_id`);

--
-- Constraints for table `drg`
--
ALTER TABLE `drg`
  ADD CONSTRAINT `drg_spclty_fk` FOREIGN KEY (`spclty_id`) REFERENCES `spclty` (`spclty_id`);

--
-- Constraints for table `em_cs_nr`
--
ALTER TABLE `em_cs_nr`
  ADD CONSTRAINT `em_hsptl_fk` FOREIGN KEY (`hsptl_id`) REFERENCES `hsptl` (`hsptl_id`),
  ADD CONSTRAINT `em_statn_fk` FOREIGN KEY (`amb_statn_id`) REFERENCES `amb_statn` (`amb_statn_id`);

--
-- Constraints for table `em_cs_phne`
--
ALTER TABLE `em_cs_phne`
  ADD CONSTRAINT `em_spclty_fk` FOREIGN KEY (`em_spclty_id`) REFERENCES `emrgncy_splty` (`emrgncy_splty_id`);

--
-- Constraints for table `gvrnrt`
--
ALTER TABLE `gvrnrt`
  ADD CONSTRAINT `gvrnrtt_cntry_fk` FOREIGN KEY (`cntry_id`) REFERENCES `cntry` (`cntry_id`);

--
-- Constraints for table `mdl_part`
--
ALTER TABLE `mdl_part`
  ADD CONSTRAINT `mdl_part_fk` FOREIGN KEY (`mdl_id`) REFERENCES `mdl` (`mdl_id`);

--
-- Constraints for table `msg`
--
ALTER TABLE `msg`
  ADD CONSTRAINT `rcvr_id_fk` FOREIGN KEY (`rcvr_id`) REFERENCES `user` (`user_id`),
  ADD CONSTRAINT `sndr_id_fk` FOREIGN KEY (`sndr_id`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `ptnt_cnctd`
--
ALTER TABLE `ptnt_cnctd`
  ADD CONSTRAINT `ptnt_cnctd_fk` FOREIGN KEY (`ptnt_id`) REFERENCES `ptnt` (`ptnt_id`),
  ADD CONSTRAINT `ptnt_cnctd_fk_2` FOREIGN KEY (`cnctd_id`) REFERENCES `cnctd` (`cnctd_id`);

--
-- Constraints for table `ptnt_dises`
--
ALTER TABLE `ptnt_dises`
  ADD CONSTRAINT `ptnt_dises_fk` FOREIGN KEY (`ptnt_id`) REFERENCES `ptnt` (`ptnt_id`),
  ADD CONSTRAINT `ptnt_dises_fk_2` FOREIGN KEY (`dises_id`) REFERENCES `dises` (`dises_id`);

--
-- Constraints for table `ptnt_drg`
--
ALTER TABLE `ptnt_drg`
  ADD CONSTRAINT `ptnt_drg_fk` FOREIGN KEY (`ptnt_id`) REFERENCES `ptnt` (`ptnt_id`),
  ADD CONSTRAINT `ptnt_drg_fk_2` FOREIGN KEY (`drg_id`) REFERENCES `drg` (`drg_id`);

--
-- Constraints for table `ptnt_msg`
--
ALTER TABLE `ptnt_msg`
  ADD CONSTRAINT `msg_fk_2` FOREIGN KEY (`msg_id`) REFERENCES `msg` (`msg_id`),
  ADD CONSTRAINT `ptnt_msg_fk` FOREIGN KEY (`ptnt_id`) REFERENCES `ptnt` (`ptnt_id`);

--
-- Constraints for table `ptnt_rqst_cnct`
--
ALTER TABLE `ptnt_rqst_cnct`
  ADD CONSTRAINT `ptnt_rqst_cnct_fk` FOREIGN KEY (`ptnt_id`) REFERENCES `ptnt` (`ptnt_id`),
  ADD CONSTRAINT `ptnt_rqst_cnct_fk_2` FOREIGN KEY (`rqst_cnct_id`) REFERENCES `rqst_cnct` (`rqst_cnct_id`);

--
-- Constraints for table `ptnt_srgry`
--
ALTER TABLE `ptnt_srgry`
  ADD CONSTRAINT `ptnt_srgry_fk` FOREIGN KEY (`ptnt_id`) REFERENCES `ptnt` (`ptnt_id`),
  ADD CONSTRAINT `ptnt_srgry_fk_2` FOREIGN KEY (`srgery_id`) REFERENCES `srgry` (`srgry_id`);

--
-- Constraints for table `ptnt_tst`
--
ALTER TABLE `ptnt_tst`
  ADD CONSTRAINT `ptnt_tst_fk` FOREIGN KEY (`ptnt_id`) REFERENCES `ptnt` (`ptnt_id`),
  ADD CONSTRAINT `ptnt_tst_fk_2` FOREIGN KEY (`tst_id`) REFERENCES `tst` (`tst_id`);

--
-- Constraints for table `qstn`
--
ALTER TABLE `qstn`
  ADD CONSTRAINT `qstn_dctr` FOREIGN KEY (`dctr_id`) REFERENCES `dctr` (`dctr_id`),
  ADD CONSTRAINT `qstn_ptnt` FOREIGN KEY (`ptnt_id`) REFERENCES `ptnt` (`ptnt_id`),
  ADD CONSTRAINT `qstn_vw` FOREIGN KEY (`vw_id`) REFERENCES `vw` (`vw_id`);

--
-- Constraints for table `qstn_cmnt`
--
ALTER TABLE `qstn_cmnt`
  ADD CONSTRAINT `qstn_cmnt` FOREIGN KEY (`qstn_id`) REFERENCES `qstn` (`qstn_id`),
  ADD CONSTRAINT `qstn_cmnt_dctr` FOREIGN KEY (`dctr_id`) REFERENCES `dctr` (`dctr_id`);

--
-- Constraints for table `rate`
--
ALTER TABLE `rate`
  ADD CONSTRAINT `dctr_rate_fk` FOREIGN KEY (`dctr_id`) REFERENCES `dctr` (`dctr_id`),
  ADD CONSTRAINT `ptnt_rate_fk` FOREIGN KEY (`ptnt_id`) REFERENCES `ptnt` (`ptnt_id`);

--
-- Constraints for table `rqst_bk`
--
ALTER TABLE `rqst_bk`
  ADD CONSTRAINT `rqst_bk_dctr` FOREIGN KEY (`dctr_id`) REFERENCES `dctr` (`dctr_id`),
  ADD CONSTRAINT `rqst_bk_ptnt` FOREIGN KEY (`ptnt_id`) REFERENCES `ptnt` (`ptnt_id`);

--
-- Constraints for table `rqst_cnct`
--
ALTER TABLE `rqst_cnct`
  ADD CONSTRAINT `rqst_rcvr_dctr_2` FOREIGN KEY (`rqst_rcvr_dctr_2`) REFERENCES `dctr` (`dctr_id`),
  ADD CONSTRAINT `rqst_rcvr_ptnt_2` FOREIGN KEY (`rqst_rcvr_ptnt_2`) REFERENCES `ptnt` (`ptnt_id`),
  ADD CONSTRAINT `rqst_sndr_dctr_1` FOREIGN KEY (`rqst_sndr_dctr_1`) REFERENCES `dctr` (`dctr_id`),
  ADD CONSTRAINT `rqst_sndr_ptnt_1` FOREIGN KEY (`rqst_sndr_ptnt_1`) REFERENCES `ptnt` (`ptnt_id`);

--
-- Constraints for table `smptm`
--
ALTER TABLE `smptm`
  ADD CONSTRAINT `mdl_pary_sm_fk` FOREIGN KEY (`mdl_part_id`) REFERENCES `mdl_part` (`mdl_part_id`);

--
-- Constraints for table `smptm_smptm`
--
ALTER TABLE `smptm_smptm`
  ADD CONSTRAINT `smptm_id_1` FOREIGN KEY (`smptm_id`) REFERENCES `smptm` (`smptm_id`),
  ADD CONSTRAINT `smptm_id_2` FOREIGN KEY (`related_smptm_id`) REFERENCES `smptm` (`smptm_id`);

--
-- Constraints for table `srgry`
--
ALTER TABLE `srgry`
  ADD CONSTRAINT `splty_srgry_fk` FOREIGN KEY (`spclty_id`) REFERENCES `spclty` (`spclty_id`);

--
-- Constraints for table `srgry_tst`
--
ALTER TABLE `srgry_tst`
  ADD CONSTRAINT `srgry_tst_fk` FOREIGN KEY (`srgry_id`) REFERENCES `srgry` (`srgry_id`),
  ADD CONSTRAINT `srgry_tst_fk2` FOREIGN KEY (`tst_id`) REFERENCES `tst` (`tst_id`);

--
-- Constraints for table `strnge_cs`
--
ALTER TABLE `strnge_cs`
  ADD CONSTRAINT `strnge_cs_dctr` FOREIGN KEY (`dctr_id`) REFERENCES `dctr` (`dctr_id`),
  ADD CONSTRAINT `strnge_cs_ptnt` FOREIGN KEY (`ptnt_id`) REFERENCES `ptnt` (`ptnt_id`);

--
-- Constraints for table `strng_cmnt`
--
ALTER TABLE `strng_cmnt`
  ADD CONSTRAINT `strng_cmnt` FOREIGN KEY (`strng_cs_id`) REFERENCES `strnge_cs` (`strng_cs_id`),
  ADD CONSTRAINT `strng_cmnt_dctr` FOREIGN KEY (`dctr_id`) REFERENCES `dctr` (`dctr_id`);

--
-- Constraints for table `tst`
--
ALTER TABLE `tst`
  ADD CONSTRAINT `spclty_tst` FOREIGN KEY (`spclty_id`) REFERENCES `spclty` (`spclty_id`);

--
-- Constraints for table `wzrd`
--
ALTER TABLE `wzrd`
  ADD CONSTRAINT `wzrd_mdl` FOREIGN KEY (`mdl_id`) REFERENCES `mdl` (`mdl_id`),
  ADD CONSTRAINT `wzrd_ptnt` FOREIGN KEY (`ptnt_id`) REFERENCES `ptnt` (`ptnt_id`);

--
-- Constraints for table `wz_qstn_prt`
--
ALTER TABLE `wz_qstn_prt`
  ADD CONSTRAINT `wz_qstn_prt_fk` FOREIGN KEY (`mdl_part_id`) REFERENCES `mdl_part` (`mdl_part_id`),
  ADD CONSTRAINT `wz_qstn_prt_fk_2` FOREIGN KEY (`wzrd_qstn_id`) REFERENCES `wzrd_qstn` (`wzrd_qstn_id`);

--
-- Constraints for table `wz_qstn_smptm`
--
ALTER TABLE `wz_qstn_smptm`
  ADD CONSTRAINT `wz_qstn_smptm_fk` FOREIGN KEY (`smptm_id`) REFERENCES `smptm` (`smptm_id`),
  ADD CONSTRAINT `wz_qstn_smptm_fk_2` FOREIGN KEY (`wzrd_qstn_id`) REFERENCES `wzrd_qstn` (`wzrd_qstn_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
