/*
 * 请告诉我所有员工（employee）中有管理者（manager）的员工姓名及其管理者的姓名。所有的姓名
 * 请按照 `lastName, firstName` 的格式输出。例如：`Bow, Anthony`：
 *
 * +───────────+──────────+
 * | employee  | manager  |
 * +───────────+──────────+
 *
 * 输出结果按照 `manager` 排序，然后按照 `employee` 排序。
 */
 SELECT
CONCAT(`a`.`lastName`, ', ', `a`.`firstName`) AS `employee`,
CONCAT(`b`.`lastName`, ', ', `b`.`firstName`) AS `manager` 
FROM `employees` `a`
INNER JOIN `employees` `b`
ON `b`.`employeeNumber` = `a`.`reportsTo`
ORDER BY `manager`, `employee`;
