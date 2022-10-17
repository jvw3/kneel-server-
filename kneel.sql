CREATE TABLE `Metals`
(
    `id` INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    `metal` VARCHAR(50) NOT NULL,
    `price` NUMERIC(5,2) NOT NULL,
);

CREATE TABLE `Orders`
(
    `id` INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    `metal_id` INT(3) NOT NULL,
    `size_id` INT(3) NOT NULL,
    `style_id` INT(3) NOT NULL,
    `timestamp` TIMESTAMP(15) NOT NULL,
    FOREIGN KEY(`metal_id`) REFERENCES `Metals`(`id`)
);

CREATE TABLE `Sizes`
(
    `id` INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    `carets` NUMERIC(3,2) NOT NULL,
    `price` NUMERIC(5) NOT NULL
);

DROP TABLE `Sizes`


CREATE TABLE `Styles`
(
    `id` INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    `style` VARCHAR(50) NOT NULL,
    `price` NUMERIC(5) NOT NULL
);




INSERT INTO `Metals` VALUES (null, "Sterling Silver", 12.42);
INSERT INTO `Metals` VALUES (null, "14K Gold", 736.4);
INSERT INTO `Metals` VALUES (null, "24K Gold", 1258.9);
INSERT INTO `Metals` VALUES (null, "Platinum", 795.45);
INSERT INTO `Metals` VALUES (null, "14K Gold", 736.4);


INSERT INTO `Sizes` VALUES (null, 0.5, 405);
INSERT INTO `Sizes` VALUES (null, 0.75, 782);
INSERT INTO `Sizes` VALUES (null, 1, 1470);
INSERT INTO `Sizes` VALUES (null, 1.5, 1997);
INSERT INTO `Sizes` VALUES (null, 2, 3638);


INSERT INTO `Styles` VALUES (null, "Classic", 500);
INSERT INTO `Styles` VALUES (null, "Modern", 710);
INSERT INTO `Styles` VALUES (null, "Vintage", 965);




INSERT INTO `Orders` VALUES (null, 3, 2, 3, 1614659931693);
INSERT INTO `Orders` VALUES (null, 1, 1, 2, 1613423331693);
INSERT INTO `Orders` VALUES (null, 2, 3, 1, 1611232231693);


SELECT
    o.timestamp,
    o.metal_id,
    o.size_id,
    o.style_id,
    m.metal,
    m.price,
    z.carets,
    z.price,
    s.style,
    s.price
FROM Orders o
JOIN Metals m ON m.id = o.metal_id
JOIN Sizes z ON z.id = o.size_id
JOIN Styles s ON s.id = o.style_id


SELECT
            o.id,
            o.metal_id,
            o.size_id,
            o.style_id,
            o.timestamp,
            m.metal,
            m.price,
            z.carets,
            z.price,
            s.style,
            s.price
        FROM orders o
        JOIN Metals m ON m.id = o.metal_id
        JOIN Sizes z ON z.id = o.size_id
        JOIN Styles s ON s.id = o.style_id
        WHERE o.id = ?
