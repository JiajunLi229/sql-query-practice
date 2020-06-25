/*
 * 请告诉我顾客（customer）中顾客编号（customerNumber）小于 150 的顾客每一个人的订单（order）
 * 数目。 查询结果中应当包含如下的信息：
 *
 * +─────────────────+──────────────+
 * | customerNumber  | totalOrders  |
 * +─────────────────+──────────────+
 *
 * 查询结果请按照 `customerNumber` 排序。
 */
SELECT
`customers`.`customerNumber`,
COUNT(`orders`.`orderNumber`) AS `totalOrders`
FROM `customers`
LEFT JOIN `orders`
ON `customers`.`customerNumber` = `orders`.`customerNumber`
WHERE `customers`.`customerNumber` < 150
group by `customers`.`customerNumber`;
