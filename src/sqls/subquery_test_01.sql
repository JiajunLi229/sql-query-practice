/*
 * 请告诉我那些没有下任何订单的顾客（customer）的信息。结果应当包含如下的信息：
 *
 * +─────────────────+───────────────+
 * | customerNumber  | customerName  |
 * +─────────────────+───────────────+
 *
 * 结果应当按照 `customerNumber` 排序。
 */
SELECT `customers`.`customerNumber`,`customers`.`customerName`
FROM `customers`
LEFT JOIN `orders`
ON `customers`.`customerNumber` = `orders`.`customerNumber`
WHERE `orders`.`customerNumber` IS NULL
ORDER BY `customerNumber`;