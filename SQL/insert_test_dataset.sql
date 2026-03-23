-- ====================================================
-- INSERT: Справочники и тестовые данные
-- ====================================================

-- Единицы измерения
INSERT INTO yogood_tst.units (name, short_name) VALUES
('Миллилитры', 'мл'),
('Граммы', 'г'),
('Штуки', 'шт');

-- Категории продуктов
INSERT INTO yogood_tst.categories (name) VALUES
('Йогурты и кисломолочные продукты'),
('Десерты'),
('Сыры'),
('Масло'),
('Другое');

-- Продукты
INSERT INTO yogood_tst.products (name, category_id, unit_id, is_available) VALUES
('Йогурт', (SELECT category_id FROM yogood_tst.categories WHERE name='Йогурты и кисломолочные продукты'), (SELECT unit_id FROM yogood_tst.units WHERE short_name='мл'), TRUE),
('Ряженка', (SELECT category_id FROM yogood_tst.categories WHERE name='Йогурты и кисломолочные продукты'), (SELECT unit_id FROM yogood_tst.units WHERE short_name='мл'), TRUE),
('Чиа пудинг', (SELECT category_id FROM yogood_tst.categories WHERE name='Десерты'), (SELECT unit_id FROM yogood_tst.units WHERE short_name='шт'), TRUE),
('Смузи', (SELECT category_id FROM yogood_tst.categories WHERE name='Десерты'), (SELECT unit_id FROM yogood_tst.units WHERE short_name='шт'), TRUE),
('Маш пророщенный', (SELECT category_id FROM yogood_tst.categories WHERE name='Другое'), (SELECT unit_id FROM yogood_tst.units WHERE short_name='шт'), TRUE),
('Чечевичные вафли', (SELECT category_id FROM yogood_tst.categories WHERE name='Другое'), (SELECT unit_id FROM yogood_tst.units WHERE short_name='шт'), TRUE),
('Жареный нут', (SELECT category_id FROM yogood_tst.categories WHERE name='Другое'), (SELECT unit_id FROM yogood_tst.units WHERE short_name='шт'), TRUE),
('Топленое масло', (SELECT category_id FROM yogood_tst.categories WHERE name='Масло'), (SELECT unit_id FROM yogood_tst.units WHERE short_name='мл'), TRUE),
('Борщевая заправка', (SELECT category_id FROM yogood_tst.categories WHERE name='Масло'), (SELECT unit_id FROM yogood_tst.units WHERE short_name='шт'), TRUE),
('Моцарелла', (SELECT category_id FROM yogood_tst.categories WHERE name='Сыры'), (SELECT unit_id FROM yogood_tst.units WHERE short_name='г'), TRUE),
('Творог', (SELECT category_id FROM yogood_tst.categories WHERE name='Сыры'), (SELECT unit_id FROM yogood_tst.units WHERE short_name='г'), TRUE),
('Дилижанский адыгейский сыр', (SELECT category_id FROM yogood_tst.categories WHERE name='Сыры'), (SELECT unit_id FROM yogood_tst.units WHERE short_name='г'), TRUE);

-- Типы продуктов
INSERT INTO yogood_tst.product_types (name) VALUES
('Классический смузи'), ('С протеином'),
('Классический (без наполнителя)'), ('С наполнителем'), ('С семенами чиа'),
('Пластовой'), ('Рассыпчатый'), ('Пластовой из топленого молока');

-- Наполнители
INSERT INTO yogood_tst.fillers (name, comment) VALUES
('Абрикос', 'джем'),
('Инжир', 'джем'),
('Клубника', 'джем'),
('Другое', 'Пользователь указал индивидуальный вариант');

-- Объемы
INSERT INTO yogood_tst.volumes (volume_ml) VALUES (250), (450);

-- Статусы заказов
INSERT INTO yogood_tst.order_statuses (name) VALUES
('Новый'), ('В работе'), ('Готов'), ('Доставка'), ('Завершен');

-- Причины отмены
INSERT INTO yogood_tst.cancellation_reasons (reason, comment) VALUES
('Клиент передумал', 'Пользователь решил отменить заказ'),
('Нет в наличии', 'Товар отсутствует'),
('Ошибка в заказе', 'Неправильный данные заказа'),
('Другие причины', 'Прочие ситуации');

-- Тестовые заказы
-- Первый заказ с доставкой
INSERT INTO yogood_tst.deliveries (address, delivery_date, delivery_time_start, delivery_time_end, courier_name, courier_contact)
VALUES ('ул. Шаумяна, д. 10, кв.3', CURRENT_DATE + INTERVAL '1 day', '10:00', '12:00', 'Иван Иванов', '+055 11 22 33');

INSERT INTO yogood_tst.orders (customer_name, telegram_contact, phone, status_id, is_delivery, delivery_id, is_closed, comments)
VALUES ('Муся Кукуся', '@my_pet', '+044 23 45 67', 
        (SELECT status_id FROM yogood_tst.order_statuses WHERE name='Доставка'),
        TRUE,
        (SELECT delivery_id FROM yogood_tst.deliveries ORDER BY delivery_id DESC LIMIT 1),
        FALSE,
        'Пожелание: до 18:00');

-- Детали заказа (несколько продуктов)
INSERT INTO yogood_tst.order_items (order_id, product_id, product_type_id, filler_id, volume_id, quantity)
VALUES 
((SELECT order_id FROM yogood_tst.orders ORDER BY order_id DESC LIMIT 1),
 (SELECT product_id FROM yogood_tst.products WHERE name='Йогурт'),
 (SELECT type_id FROM yogood_tst.product_types WHERE name='Классический (без наполнителя)'),
 NULL,
 (SELECT volume_id FROM yogood_tst.volumes WHERE volume_ml=250),
 2),
((SELECT order_id FROM yogood_tst.orders ORDER BY order_id DESC LIMIT 1),
 (SELECT product_id FROM yogood_tst.products WHERE name='Смузи'),
 (SELECT type_id FROM yogood_tst.product_types WHERE name='С протеином'),
 NULL,
 (SELECT volume_id FROM yogood_tst.volumes WHERE volume_ml=450),
 1),
((SELECT order_id FROM yogood_tst.orders ORDER BY order_id DESC LIMIT 1),
 (SELECT product_id FROM yogood_tst.products WHERE name='Чиа пудинг'),
 NULL,
 (SELECT filler_id FROM yogood_tst.fillers WHERE name='Клубника'),
 NULL,
 1),
((SELECT order_id FROM yogood_tst.orders ORDER BY order_id DESC LIMIT 1),
 (SELECT product_id FROM yogood_tst.products WHERE name='Творог'),
 (SELECT type_id FROM yogood_tst.product_types WHERE name='Пластовой'),
 NULL,
 NULL,
 1);

-- Второй заказ на самовывоз: Жареный нут
INSERT INTO yogood_tst.orders (customer_name, telegram_contact, phone, status_id, is_delivery, delivery_id, is_closed, comments)
VALUES ('Муся Кукуся', '@my_pet', '+044 23 45 67',
        (SELECT status_id FROM yogood_tst.order_statuses WHERE name='Новый'),
        FALSE,
        NULL,
        FALSE,
        'Самовывоз, заскочу в 5 утра :)');

INSERT INTO yogood_tst.order_items (order_id, product_id, product_type_id, filler_id, quantity)
VALUES ((SELECT order_id FROM yogood_tst.orders ORDER BY order_id DESC LIMIT 1),
        (SELECT product_id FROM yogood_tst.products WHERE name='Жареный нут'),
        NULL,
        NULL,
        1);