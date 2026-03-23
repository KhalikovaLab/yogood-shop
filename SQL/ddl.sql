-- ====================================================
-- DDL: Схема и объекты интернет-магазина yogood_tst
-- ====================================================

-- Создание схемы
CREATE SCHEMA IF NOT EXISTS yogood_tst;
ALTER SCHEMA yogood_tst OWNER TO postgres;
SET search_path TO yogood_tst, public;

-- Таблицы справочников и основных данных
-- 1. Единицы измерения
CREATE TABLE yogood_tst.units (
    unit_id SERIAL PRIMARY KEY,
    name VARCHAR(20) NOT NULL UNIQUE,
    short_name VARCHAR(10) NOT NULL UNIQUE
);
COMMENT ON TABLE yogood_tst.units IS 'Справочник единиц измерения продуктов';

-- 2. Категории продуктов
CREATE TABLE yogood_tst.categories (
    category_id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL UNIQUE
);
COMMENT ON TABLE yogood_tst.categories IS 'Справочник категорий продуктов';

-- 3. Продукты
CREATE TABLE yogood_tst.products (
    product_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    category_id INT NOT NULL REFERENCES yogood_tst.categories(category_id),
    unit_id INT NOT NULL REFERENCES yogood_tst.units(unit_id),
    description TEXT,
    is_available BOOLEAN NOT NULL DEFAULT TRUE
);
COMMENT ON TABLE yogood_tst.products IS 'Справочник продуктов';

-- 4. Типы продуктов
CREATE TABLE yogood_tst.product_types (
    type_id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL UNIQUE
);
COMMENT ON TABLE yogood_tst.product_types IS 'Справочник типов продукта';

-- 5. Наполнители
CREATE TABLE yogood_tst.fillers (
    filler_id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL UNIQUE,
    comment TEXT
);
COMMENT ON TABLE yogood_tst.fillers IS 'Справочник наполнителей';

-- 6. Объемы
CREATE TABLE yogood_tst.volumes (
    volume_id SERIAL PRIMARY KEY,
    volume_ml INT NOT NULL CHECK (volume_ml > 0)
);
COMMENT ON TABLE yogood_tst.volumes IS 'Справочник объемов продукта в мл';

-- 7. Статусы заказа
CREATE TABLE yogood_tst.order_statuses (
    status_id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL UNIQUE
);
COMMENT ON TABLE yogood_tst.order_statuses IS 'Справочник статусов заказа';

-- 8. Доставка
CREATE TABLE yogood_tst.deliveries (
    delivery_id SERIAL PRIMARY KEY,
    address TEXT NOT NULL,
    delivery_date DATE,
    delivery_time_start TIME,
    delivery_time_end TIME,
    courier_name VARCHAR(100),
    courier_contact VARCHAR(100)
);
COMMENT ON TABLE yogood_tst.deliveries IS 'Информация по доставке';

-- 9. Заказы
CREATE TABLE yogood_tst.orders (
    order_id SERIAL PRIMARY KEY,
    customer_name VARCHAR(100) NOT NULL,
    telegram_contact VARCHAR(100),
    phone VARCHAR(30),
    status_id INT NOT NULL REFERENCES yogood_tst.order_statuses(status_id),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    closed_at TIMESTAMP,
    desired_date DATE,
    is_delivery BOOLEAN NOT NULL DEFAULT FALSE,
    delivery_id INT REFERENCES yogood_tst.deliveries(delivery_id),
    is_closed BOOLEAN NOT NULL DEFAULT FALSE,
    comments TEXT,
    CONSTRAINT chk_contact_required 
    CHECK (telegram_contact IS NOT NULL OR phone IS NOT NULL)
);
COMMENT ON TABLE yogood_tst.orders IS 'Основная таблица заказов';

-- 10. Детали заказов
CREATE TABLE yogood_tst.order_items (
    order_item_id SERIAL PRIMARY KEY,
    order_id INT NOT NULL REFERENCES yogood_tst.orders(order_id) ON DELETE CASCADE,
    product_id INT NOT NULL REFERENCES yogood_tst.products(product_id),
    product_type_id INT REFERENCES yogood_tst.product_types(type_id),
    filler_id INT REFERENCES yogood_tst.fillers(filler_id),
    volume_id INT REFERENCES yogood_tst.volumes(volume_id),
    weight_g INT CHECK (weight_g BETWEEN 50 AND 10000),
    quantity INT DEFAULT 1 CHECK (quantity > 0)
);
COMMENT ON TABLE yogood_tst.order_items IS 'Детали заказа';

-- 11. Причины отмены
CREATE TABLE yogood_tst.cancellation_reasons (
    reason_id SERIAL PRIMARY KEY,
    reason VARCHAR(255) NOT NULL UNIQUE,
    comment TEXT
);
COMMENT ON TABLE yogood_tst.cancellation_reasons IS 'Справочник причин отмены';

-- 12. Отмененные заказы
CREATE TABLE yogood_tst.canceled_orders (
    canceled_order_id SERIAL PRIMARY KEY,
    order_id INT NOT NULL REFERENCES yogood_tst.orders(order_id) ON DELETE CASCADE,
    reason_id INT NOT NULL REFERENCES yogood_tst.cancellation_reasons(reason_id),
    canceled_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
COMMENT ON TABLE yogood_tst.canceled_orders IS 'Информация об отмененных заказах';

-- 13. Цены продуктов
CREATE TABLE yogood_tst.product_prices (
    price_id SERIAL PRIMARY KEY,
    product_id INT NOT NULL REFERENCES yogood_tst.products(product_id) ON DELETE CASCADE,
    unit_id INT NOT NULL REFERENCES yogood_tst.units(unit_id),
    volume_id INT REFERENCES yogood_tst.volumes(volume_id),
    price NUMERIC(10,2) NOT NULL CHECK (price >= 0),
    is_active BOOLEAN NOT NULL DEFAULT TRUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
CREATE UNIQUE INDEX uq_product_price_idx ON yogood_tst.product_prices (product_id, unit_id, COALESCE(volume_id,0));