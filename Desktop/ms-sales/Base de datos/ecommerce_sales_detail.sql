CREATE TABLE `sales_detail` (
  `id` int NOT NULL,
  `product_id` int DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `sales_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sales_detail_product_idx` (`product_id`),
  KEY `sales_detail_sales_idx` (`sales_id`),
  CONSTRAINT `sales_detail_product` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  CONSTRAINT `sales_detail_sales` FOREIGN KEY (`sales_id`) REFERENCES `sales` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
