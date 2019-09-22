/*
SQLyog Ultimate v8.53 
MySQL - 5.5.5-10.1.34-MariaDB : Database - larabbs-shop.v58
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`larabbs-shop.v58` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */;

USE `larabbs-shop.v58`;

/*Data for the table `admin_menu` */

insert  into `admin_menu`(`id`,`parent_id`,`order`,`title`,`icon`,`uri`,`permission`,`created_at`,`updated_at`) values (1,0,1,'首頁','fa-bar-chart','/',NULL,NULL,NULL),(2,0,5,'管理','fa-tasks',NULL,NULL,NULL,'2019-09-19 23:48:44'),(3,2,6,'管理員管理','fa-users','auth/users',NULL,NULL,'2019-09-19 23:48:44'),(4,2,7,'角色','fa-user','auth/roles',NULL,NULL,'2019-09-19 23:48:44'),(5,2,8,'權限','fa-ban','auth/permissions',NULL,NULL,'2019-09-19 23:48:44'),(6,2,9,'選單','fa-bars','auth/menu',NULL,NULL,'2019-09-19 23:48:44'),(7,2,10,'操作紀錄','fa-history','auth/logs',NULL,NULL,'2019-09-19 23:48:45'),(8,0,2,'使用者','fa-users','/users',NULL,'2019-09-16 13:07:13','2019-09-16 13:07:29'),(9,0,3,'商品管理','fa-cubes','/products',NULL,'2019-09-16 13:08:32','2019-09-16 13:08:50'),(10,0,4,'優惠券管理','fa-tags','/coupon_codes',NULL,'2019-09-19 23:48:40','2019-09-19 23:48:44');

/*Data for the table `admin_permissions` */

insert  into `admin_permissions`(`id`,`name`,`slug`,`http_method`,`http_path`,`created_at`,`updated_at`) values (1,'All permission','*','','*',NULL,NULL),(2,'Dashboard','dashboard','GET','/',NULL,NULL),(3,'Login','auth.login','','/auth/login\r\n/auth/logout',NULL,NULL),(4,'User setting','auth.setting','GET,PUT','/auth/setting',NULL,NULL),(5,'Auth management','auth.management','','/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs',NULL,NULL),(6,'商品管理','products','','/products*','2019-09-22 01:35:42','2019-09-22 01:35:42');

/*Data for the table `admin_role_menu` */

insert  into `admin_role_menu`(`role_id`,`menu_id`,`created_at`,`updated_at`) values (1,2,NULL,NULL);

/*Data for the table `admin_role_permissions` */

insert  into `admin_role_permissions`(`role_id`,`permission_id`,`created_at`,`updated_at`) values (1,1,NULL,NULL);

/*Data for the table `admin_role_users` */

insert  into `admin_role_users`(`role_id`,`user_id`,`created_at`,`updated_at`) values (1,1,NULL,NULL);

/*Data for the table `admin_roles` */

insert  into `admin_roles`(`id`,`name`,`slug`,`created_at`,`updated_at`) values (1,'Administrator','administrator','2019-09-16 00:59:09','2019-09-16 00:59:09');

/*Data for the table `admin_user_permissions` */

/*Data for the table `admin_users` */

insert  into `admin_users`(`id`,`username`,`password`,`name`,`avatar`,`remember_token`,`created_at`,`updated_at`) values (1,'admin','$2y$10$NzawH1OYLn0rwX3ODAxecOXl6dF40/4zFt3tZHSpya2OS4ddx8TWm','Administrator',NULL,'vrwvQpGCq9Q0Uuwb9tlgje8NDSxICe4WXcEPpwh8JSWWxWQv42yi6k4upRyT','2019-09-16 00:59:09','2019-09-16 00:59:09');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
