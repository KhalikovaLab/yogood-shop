-- DROP SCHEMA yogood_tst;

CREATE SCHEMA yogood_tst AUTHORIZATION postgres;

-- DROP TYPE yogood_tst."delivery_type";

CREATE TYPE yogood_tst."delivery_type" AS ENUM (
	'delivery',
	'pickup',
	'pickup_point');

-- DROP SEQUENCE yogood_tst.business_statuses_business_status_id_seq;

CREATE SEQUENCE yogood_tst.business_statuses_business_status_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE yogood_tst.business_statuses_business_status_id_seq OWNER TO postgres;
GRANT ALL ON SEQUENCE yogood_tst.business_statuses_business_status_id_seq TO postgres;

-- DROP SEQUENCE yogood_tst.canceled_orders_canceled_order_id_seq;

CREATE SEQUENCE yogood_tst.canceled_orders_canceled_order_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE yogood_tst.canceled_orders_canceled_order_id_seq OWNER TO postgres;
GRANT ALL ON SEQUENCE yogood_tst.canceled_orders_canceled_order_id_seq TO postgres;

-- DROP SEQUENCE yogood_tst.cancellation_reasons_reason_id_seq;

CREATE SEQUENCE yogood_tst.cancellation_reasons_reason_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE yogood_tst.cancellation_reasons_reason_id_seq OWNER TO postgres;
GRANT ALL ON SEQUENCE yogood_tst.cancellation_reasons_reason_id_seq TO postgres;

-- DROP SEQUENCE yogood_tst.categories_category_id_seq;

CREATE SEQUENCE yogood_tst.categories_category_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE yogood_tst.categories_category_id_seq OWNER TO postgres;
GRANT ALL ON SEQUENCE yogood_tst.categories_category_id_seq TO postgres;

-- DROP SEQUENCE yogood_tst.deliveries_delivery_id_seq;

CREATE SEQUENCE yogood_tst.deliveries_delivery_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE yogood_tst.deliveries_delivery_id_seq OWNER TO postgres;
GRANT ALL ON SEQUENCE yogood_tst.deliveries_delivery_id_seq TO postgres;

-- DROP SEQUENCE yogood_tst.delivery_types_id_seq;

CREATE SEQUENCE yogood_tst.delivery_types_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE yogood_tst.delivery_types_id_seq OWNER TO postgres;
GRANT ALL ON SEQUENCE yogood_tst.delivery_types_id_seq TO postgres;

-- DROP SEQUENCE yogood_tst.fillers_filler_id_seq;

CREATE SEQUENCE yogood_tst.fillers_filler_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE yogood_tst.fillers_filler_id_seq OWNER TO postgres;
GRANT ALL ON SEQUENCE yogood_tst.fillers_filler_id_seq TO postgres;

-- DROP SEQUENCE yogood_tst.order_items_order_item_id_seq;

CREATE SEQUENCE yogood_tst.order_items_order_item_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE yogood_tst.order_items_order_item_id_seq OWNER TO postgres;
GRANT ALL ON SEQUENCE yogood_tst.order_items_order_item_id_seq TO postgres;

-- DROP SEQUENCE yogood_tst.order_status_history_id_seq;

CREATE SEQUENCE yogood_tst.order_status_history_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE yogood_tst.order_status_history_id_seq OWNER TO postgres;
GRANT ALL ON SEQUENCE yogood_tst.order_status_history_id_seq TO postgres;

-- DROP SEQUENCE yogood_tst.order_statuses_status_id_seq;

CREATE SEQUENCE yogood_tst.order_statuses_status_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE yogood_tst.order_statuses_status_id_seq OWNER TO postgres;
GRANT ALL ON SEQUENCE yogood_tst.order_statuses_status_id_seq TO postgres;

-- DROP SEQUENCE yogood_tst.orders_order_id_seq;

CREATE SEQUENCE yogood_tst.orders_order_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE yogood_tst.orders_order_id_seq OWNER TO postgres;
GRANT ALL ON SEQUENCE yogood_tst.orders_order_id_seq TO postgres;

-- DROP SEQUENCE yogood_tst.pickup_points_pickup_point_id_seq;

CREATE SEQUENCE yogood_tst.pickup_points_pickup_point_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE yogood_tst.pickup_points_pickup_point_id_seq OWNER TO postgres;
GRANT ALL ON SEQUENCE yogood_tst.pickup_points_pickup_point_id_seq TO postgres;

-- DROP SEQUENCE yogood_tst.product_prices_price_id_seq;

CREATE SEQUENCE yogood_tst.product_prices_price_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE yogood_tst.product_prices_price_id_seq OWNER TO postgres;
GRANT ALL ON SEQUENCE yogood_tst.product_prices_price_id_seq TO postgres;

-- DROP SEQUENCE yogood_tst.product_types_type_id_seq;

CREATE SEQUENCE yogood_tst.product_types_type_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE yogood_tst.product_types_type_id_seq OWNER TO postgres;
GRANT ALL ON SEQUENCE yogood_tst.product_types_type_id_seq TO postgres;

-- DROP SEQUENCE yogood_tst.products_product_id_seq;

CREATE SEQUENCE yogood_tst.products_product_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE yogood_tst.products_product_id_seq OWNER TO postgres;
GRANT ALL ON SEQUENCE yogood_tst.products_product_id_seq TO postgres;

-- DROP SEQUENCE yogood_tst.units_unit_id_seq;

CREATE SEQUENCE yogood_tst.units_unit_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE yogood_tst.units_unit_id_seq OWNER TO postgres;
GRANT ALL ON SEQUENCE yogood_tst.units_unit_id_seq TO postgres;

-- DROP SEQUENCE yogood_tst.volumes_volume_id_seq;

CREATE SEQUENCE yogood_tst.volumes_volume_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE yogood_tst.volumes_volume_id_seq OWNER TO postgres;
GRANT ALL ON SEQUENCE yogood_tst.volumes_volume_id_seq TO postgres;
-- yogood_tst.business_statuses definition

-- Drop table

-- DROP TABLE yogood_tst.business_statuses;

CREATE TABLE yogood_tst.business_statuses ( business_status_id serial4 NOT NULL, code varchar(50) NOT NULL, created_at timestamp DEFAULT now() NULL, updated_at timestamp DEFAULT now() NULL, data_source varchar(50) DEFAULT 'system'::character varying NULL, deleted_at timestamp NULL, CONSTRAINT business_statuses_code_key UNIQUE (code), CONSTRAINT business_statuses_pkey PRIMARY KEY (business_status_id));

-- Permissions

ALTER TABLE yogood_tst.business_statuses OWNER TO postgres;
GRANT ALL ON TABLE yogood_tst.business_statuses TO postgres;


-- yogood_tst.cancellation_reasons definition

-- Drop table

-- DROP TABLE yogood_tst.cancellation_reasons;

CREATE TABLE yogood_tst.cancellation_reasons ( reason_id serial4 NOT NULL, reason varchar(255) NOT NULL, "comment" text NULL, created_at timestamp DEFAULT now() NULL, updated_at timestamp DEFAULT now() NULL, data_source varchar(50) DEFAULT 'system'::character varying NULL, deleted_at timestamp NULL, CONSTRAINT cancellation_reasons_pkey PRIMARY KEY (reason_id), CONSTRAINT cancellation_reasons_reason_key UNIQUE (reason));
COMMENT ON TABLE yogood_tst.cancellation_reasons IS 'Справочник причин отмены заказа';

-- Column comments

COMMENT ON COLUMN yogood_tst.cancellation_reasons.reason IS 'Краткая причина отмены (исправочник)';
COMMENT ON COLUMN yogood_tst.cancellation_reasons."comment" IS 'Дополнительное описание причины или пояснение';

-- Permissions

ALTER TABLE yogood_tst.cancellation_reasons OWNER TO postgres;
GRANT ALL ON TABLE yogood_tst.cancellation_reasons TO postgres;


-- yogood_tst.categories definition

-- Drop table

-- DROP TABLE yogood_tst.categories;

CREATE TABLE yogood_tst.categories ( category_id serial4 NOT NULL, "name" varchar(50) NOT NULL, created_at timestamp DEFAULT now() NULL, updated_at timestamp DEFAULT now() NULL, data_source varchar(50) DEFAULT 'system'::character varying NULL, deleted_at timestamp NULL, CONSTRAINT categories_name_key UNIQUE (name), CONSTRAINT categories_pkey PRIMARY KEY (category_id));
COMMENT ON TABLE yogood_tst.categories IS 'Справочник категорий продуктов';

-- Permissions

ALTER TABLE yogood_tst.categories OWNER TO postgres;
GRANT ALL ON TABLE yogood_tst.categories TO postgres;


-- yogood_tst.delivery_types definition

-- Drop table

-- DROP TABLE yogood_tst.delivery_types;

CREATE TABLE yogood_tst.delivery_types ( id serial4 NOT NULL, code text NOT NULL, created_at timestamp DEFAULT now() NULL, updated_at timestamp DEFAULT now() NULL, data_source varchar(50) DEFAULT 'system'::character varying NULL, deleted_at timestamp NULL, CONSTRAINT delivery_types_code_key UNIQUE (code), CONSTRAINT delivery_types_pkey PRIMARY KEY (id));

-- Permissions

ALTER TABLE yogood_tst.delivery_types OWNER TO postgres;
GRANT ALL ON TABLE yogood_tst.delivery_types TO postgres;


-- yogood_tst.fillers definition

-- Drop table

-- DROP TABLE yogood_tst.fillers;

CREATE TABLE yogood_tst.fillers ( filler_id serial4 NOT NULL, "name" varchar(50) NOT NULL, "comment" text NULL, created_at timestamp DEFAULT now() NULL, updated_at timestamp DEFAULT now() NULL, data_source varchar(50) DEFAULT 'system'::character varying NULL, deleted_at timestamp NULL, CONSTRAINT fillers_name_key UNIQUE (name), CONSTRAINT fillers_pkey PRIMARY KEY (filler_id));
COMMENT ON TABLE yogood_tst.fillers IS 'Справочник наполнителей и джемов';

-- Column comments

COMMENT ON COLUMN yogood_tst.fillers."comment" IS 'Текст сообщения, если клиент выбрал вариант "другое"';

-- Permissions

ALTER TABLE yogood_tst.fillers OWNER TO postgres;
GRANT ALL ON TABLE yogood_tst.fillers TO postgres;


-- yogood_tst.order_statuses definition

-- Drop table

-- DROP TABLE yogood_tst.order_statuses;

CREATE TABLE yogood_tst.order_statuses ( status_id serial4 NOT NULL, "name" varchar(50) NOT NULL, code varchar(50) NOT NULL, created_at timestamp DEFAULT now() NULL, updated_at timestamp DEFAULT now() NULL, data_source varchar(50) DEFAULT 'system'::character varying NULL, deleted_at timestamp NULL, CONSTRAINT order_statuses_name_key UNIQUE (name), CONSTRAINT order_statuses_pkey PRIMARY KEY (status_id), CONSTRAINT uq_order_statuses_code UNIQUE (code));
COMMENT ON TABLE yogood_tst.order_statuses IS 'Справочник статусов заказа';

-- Permissions

ALTER TABLE yogood_tst.order_statuses OWNER TO postgres;
GRANT ALL ON TABLE yogood_tst.order_statuses TO postgres;


-- yogood_tst.pickup_points definition

-- Drop table

-- DROP TABLE yogood_tst.pickup_points;

CREATE TABLE yogood_tst.pickup_points ( pickup_point_id serial4 NOT NULL, "name" varchar(50) NOT NULL, created_at timestamp DEFAULT now() NULL, updated_at timestamp DEFAULT now() NULL, data_source varchar(50) DEFAULT 'system'::character varying NULL, deleted_at timestamp NULL, CONSTRAINT pickup_points_name_key UNIQUE (name), CONSTRAINT pickup_points_pkey PRIMARY KEY (pickup_point_id));

-- Permissions

ALTER TABLE yogood_tst.pickup_points OWNER TO postgres;
GRANT ALL ON TABLE yogood_tst.pickup_points TO postgres;


-- yogood_tst.product_types definition

-- Drop table

-- DROP TABLE yogood_tst.product_types;

CREATE TABLE yogood_tst.product_types ( type_id serial4 NOT NULL, "name" varchar(50) NOT NULL, created_at timestamp DEFAULT now() NULL, updated_at timestamp DEFAULT now() NULL, data_source varchar(50) DEFAULT 'system'::character varying NULL, deleted_at timestamp NULL, CONSTRAINT product_types_name_key UNIQUE (name), CONSTRAINT product_types_pkey PRIMARY KEY (type_id));
COMMENT ON TABLE yogood_tst.product_types IS 'Справочник типов продукта (например: классический, с наполнителем)';

-- Permissions

ALTER TABLE yogood_tst.product_types OWNER TO postgres;
GRANT ALL ON TABLE yogood_tst.product_types TO postgres;


-- yogood_tst.units definition

-- Drop table

-- DROP TABLE yogood_tst.units;

CREATE TABLE yogood_tst.units ( unit_id serial4 NOT NULL, "name" varchar(20) NOT NULL, short_name varchar(10) NOT NULL, created_at timestamp DEFAULT now() NULL, updated_at timestamp DEFAULT now() NULL, data_source varchar(50) DEFAULT 'system'::character varying NULL, deleted_at timestamp NULL, CONSTRAINT units_name_key UNIQUE (name), CONSTRAINT units_pkey PRIMARY KEY (unit_id), CONSTRAINT units_short_name_key UNIQUE (short_name));
COMMENT ON TABLE yogood_tst.units IS 'Справочник единиц измерения продуктов';

-- Column comments

COMMENT ON COLUMN yogood_tst.units."name" IS 'Полное название единицы измерения (миллилитры, граммы, штуки)';
COMMENT ON COLUMN yogood_tst.units.short_name IS 'Краткое обозначение (мл, г, шт)';

-- Permissions

ALTER TABLE yogood_tst.units OWNER TO postgres;
GRANT ALL ON TABLE yogood_tst.units TO postgres;


-- yogood_tst.volumes definition

-- Drop table

-- DROP TABLE yogood_tst.volumes;

CREATE TABLE yogood_tst.volumes ( volume_id serial4 NOT NULL, volume_ml int4 NOT NULL, created_at timestamp DEFAULT now() NULL, updated_at timestamp DEFAULT now() NULL, data_source varchar(50) DEFAULT 'system'::character varying NULL, deleted_at timestamp NULL, CONSTRAINT volumes_pkey PRIMARY KEY (volume_id), CONSTRAINT volumes_volume_ml_check CHECK ((volume_ml > 0)));
COMMENT ON TABLE yogood_tst.volumes IS 'Справочник объемов продукта в мл';

-- Column comments

COMMENT ON COLUMN yogood_tst.volumes.volume_ml IS 'Объем продукта в мл';

-- Permissions

ALTER TABLE yogood_tst.volumes OWNER TO postgres;
GRANT ALL ON TABLE yogood_tst.volumes TO postgres;


-- yogood_tst.orders definition

-- Drop table

-- DROP TABLE yogood_tst.orders;

CREATE TABLE yogood_tst.orders ( order_id serial4 NOT NULL, customer_name varchar(100) NOT NULL, telegram_contact varchar(100) NULL, phone varchar(30) NULL, created_at timestamp DEFAULT CURRENT_TIMESTAMP NULL, desired_date date NULL, is_closed bool DEFAULT false NOT NULL, "comments" text NULL, delivery_type_id int4 NULL, is_paid bool DEFAULT false NOT NULL, business_status_id int4 NOT NULL, business_status_changed_at timestamp DEFAULT now() NOT NULL, updated_at timestamp DEFAULT now() NULL, data_source varchar(50) DEFAULT 'system'::character varying NULL, deleted_at timestamp NULL, CONSTRAINT chk_contact_required CHECK (((telegram_contact IS NOT NULL) OR (phone IS NOT NULL))), CONSTRAINT chk_telegram_format CHECK (((telegram_contact IS NULL) OR ((telegram_contact)::text ~ '^@[A-Za-z0-9_]{5,32}$'::text))), CONSTRAINT orders_pkey PRIMARY KEY (order_id), CONSTRAINT fk_orders_business_status FOREIGN KEY (business_status_id) REFERENCES yogood_tst.business_statuses(business_status_id), CONSTRAINT fk_orders_delivery_type FOREIGN KEY (delivery_type_id) REFERENCES yogood_tst.delivery_types(id));
COMMENT ON TABLE yogood_tst.orders IS 'Основная таблица заказов с данными клиента, статусом, пожеланием даты готовности, флагом доставки и закрытия заказа';

-- Column comments

COMMENT ON COLUMN yogood_tst.orders.customer_name IS 'Имя клиента';
COMMENT ON COLUMN yogood_tst.orders.telegram_contact IS 'Контакт в Telegram (может быть NULL если указан телефон)';
COMMENT ON COLUMN yogood_tst.orders.phone IS 'Телефон клиента (может быть NULL если указан Telegram)';
COMMENT ON COLUMN yogood_tst.orders.created_at IS 'Дата и время создания заказа';
COMMENT ON COLUMN yogood_tst.orders.desired_date IS 'Пожелание клиента по дате готовности заказа';
COMMENT ON COLUMN yogood_tst.orders.is_closed IS 'Флаг завершения заказа';
COMMENT ON COLUMN yogood_tst.orders."comments" IS 'Комментарии клиента';

-- Table Triggers

create trigger trg_check_completed_requires_payment before
insert
    or
update
    on
    yogood_tst.orders for each row execute function yogood_tst.check_completed_requires_payment();
create trigger trg_update_business_status_timestamp before
update
    on
    yogood_tst.orders for each row execute function yogood_tst.update_business_status_timestamp();

-- Permissions

ALTER TABLE yogood_tst.orders OWNER TO postgres;
GRANT ALL ON TABLE yogood_tst.orders TO postgres;


-- yogood_tst.products definition

-- Drop table

-- DROP TABLE yogood_tst.products;

CREATE TABLE yogood_tst.products ( product_id serial4 NOT NULL, "name" varchar(100) NOT NULL, category_id int4 NOT NULL, description text NULL, is_available bool DEFAULT true NOT NULL, unit_id int4 NOT NULL, created_at timestamp DEFAULT now() NULL, updated_at timestamp DEFAULT now() NULL, data_source varchar(50) DEFAULT 'system'::character varying NULL, deleted_at timestamp NULL, CONSTRAINT products_pkey PRIMARY KEY (product_id), CONSTRAINT products_category_id_fkey FOREIGN KEY (category_id) REFERENCES yogood_tst.categories(category_id), CONSTRAINT products_unit_id_fkey FOREIGN KEY (unit_id) REFERENCES yogood_tst.units(unit_id));
COMMENT ON TABLE yogood_tst.products IS 'Справочник продуктов';

-- Column comments

COMMENT ON COLUMN yogood_tst.products.is_available IS 'Флаг доступности продукта для заказа, по умолчанию TRUE';
COMMENT ON COLUMN yogood_tst.products.unit_id IS 'Единица измерения продукта (мл, г, шт)';

-- Permissions

ALTER TABLE yogood_tst.products OWNER TO postgres;
GRANT ALL ON TABLE yogood_tst.products TO postgres;


-- yogood_tst.type_filler_map definition

-- Drop table

-- DROP TABLE yogood_tst.type_filler_map;

CREATE TABLE yogood_tst.type_filler_map ( type_id int4 NOT NULL, filler_id int4 NOT NULL, created_at timestamp DEFAULT now() NULL, updated_at timestamp DEFAULT now() NULL, data_source varchar(50) DEFAULT 'system'::character varying NULL, deleted_at timestamp NULL, CONSTRAINT type_filler_map_pkey PRIMARY KEY (type_id, filler_id), CONSTRAINT type_filler_map_filler_id_fkey FOREIGN KEY (filler_id) REFERENCES yogood_tst.fillers(filler_id), CONSTRAINT type_filler_map_type_id_fkey FOREIGN KEY (type_id) REFERENCES yogood_tst.product_types(type_id) ON DELETE CASCADE);

-- Permissions

ALTER TABLE yogood_tst.type_filler_map OWNER TO postgres;
GRANT ALL ON TABLE yogood_tst.type_filler_map TO postgres;


-- yogood_tst.canceled_orders definition

-- Drop table

-- DROP TABLE yogood_tst.canceled_orders;

CREATE TABLE yogood_tst.canceled_orders ( canceled_order_id serial4 NOT NULL, order_id int4 NOT NULL, reason_id int4 NOT NULL, canceled_at timestamp DEFAULT CURRENT_TIMESTAMP NULL, created_at timestamp DEFAULT now() NULL, updated_at timestamp DEFAULT now() NULL, data_source varchar(50) DEFAULT 'system'::character varying NULL, deleted_at timestamp NULL, CONSTRAINT canceled_orders_pkey PRIMARY KEY (canceled_order_id), CONSTRAINT canceled_orders_order_id_fkey FOREIGN KEY (order_id) REFERENCES yogood_tst.orders(order_id) ON DELETE CASCADE, CONSTRAINT canceled_orders_reason_id_fkey FOREIGN KEY (reason_id) REFERENCES yogood_tst.cancellation_reasons(reason_id));
COMMENT ON TABLE yogood_tst.canceled_orders IS 'Информация об отмененных заказах: ссылка на заказ, причина и дата отмены';

-- Column comments

COMMENT ON COLUMN yogood_tst.canceled_orders.canceled_at IS 'Дата и время отмены заказа';

-- Permissions

ALTER TABLE yogood_tst.canceled_orders OWNER TO postgres;
GRANT ALL ON TABLE yogood_tst.canceled_orders TO postgres;


-- yogood_tst.delivery_orders definition

-- Drop table

-- DROP TABLE yogood_tst.delivery_orders;

CREATE TABLE yogood_tst.delivery_orders ( delivery_id int4 DEFAULT nextval('yogood_tst.deliveries_delivery_id_seq'::regclass) NOT NULL, address text NOT NULL, delivery_date date NULL, delivery_time_start time NULL, delivery_time_end time NULL, courier_name varchar(100) NULL, courier_contact varchar(100) NULL, order_id int8 NULL, created_at timestamp DEFAULT now() NULL, updated_at timestamp DEFAULT now() NULL, data_source varchar(50) DEFAULT 'system'::character varying NULL, deleted_at timestamp NULL, CONSTRAINT deliveries_pkey PRIMARY KEY (delivery_id), CONSTRAINT fk_delivery_orders_order FOREIGN KEY (order_id) REFERENCES yogood_tst.orders(order_id) ON DELETE CASCADE);
CREATE UNIQUE INDEX uq_delivery_orders_order_id ON yogood_tst.delivery_orders USING btree (order_id);
COMMENT ON TABLE yogood_tst.delivery_orders IS 'Информация по доставке';

-- Column comments

COMMENT ON COLUMN yogood_tst.delivery_orders.address IS 'Адрес доставки';
COMMENT ON COLUMN yogood_tst.delivery_orders.delivery_date IS 'Дата доставки';
COMMENT ON COLUMN yogood_tst.delivery_orders.delivery_time_start IS 'Начало окна доставки';
COMMENT ON COLUMN yogood_tst.delivery_orders.delivery_time_end IS 'Конец окна доставки';
COMMENT ON COLUMN yogood_tst.delivery_orders.courier_name IS 'Имя курьера';
COMMENT ON COLUMN yogood_tst.delivery_orders.courier_contact IS 'Контакт курьера';

-- Permissions

ALTER TABLE yogood_tst.delivery_orders OWNER TO postgres;
GRANT ALL ON TABLE yogood_tst.delivery_orders TO postgres;


-- yogood_tst.order_items definition

-- Drop table

-- DROP TABLE yogood_tst.order_items;

CREATE TABLE yogood_tst.order_items ( order_item_id serial4 NOT NULL, order_id int4 NOT NULL, product_id int4 NOT NULL, product_type_id int4 NULL, filler_id int4 NULL, volume_id int4 NULL, weight_g int4 NULL, quantity int4 DEFAULT 1 NULL, created_at timestamp DEFAULT now() NULL, updated_at timestamp DEFAULT now() NULL, data_source varchar(50) DEFAULT 'system'::character varying NULL, deleted_at timestamp NULL, CONSTRAINT order_items_pkey PRIMARY KEY (order_item_id), CONSTRAINT order_items_quantity_check CHECK ((quantity > 0)), CONSTRAINT order_items_weight_g_check CHECK (((weight_g >= 50) AND (weight_g <= 10000))), CONSTRAINT order_items_filler_id_fkey FOREIGN KEY (filler_id) REFERENCES yogood_tst.fillers(filler_id), CONSTRAINT order_items_order_id_fkey FOREIGN KEY (order_id) REFERENCES yogood_tst.orders(order_id) ON DELETE CASCADE, CONSTRAINT order_items_product_id_fkey FOREIGN KEY (product_id) REFERENCES yogood_tst.products(product_id), CONSTRAINT order_items_product_type_id_fkey FOREIGN KEY (product_type_id) REFERENCES yogood_tst.product_types(type_id), CONSTRAINT order_items_volume_id_fkey FOREIGN KEY (volume_id) REFERENCES yogood_tst.volumes(volume_id));
COMMENT ON TABLE yogood_tst.order_items IS 'Детали заказа: продукты, типы, наполнители, объем, вес и количество';

-- Column comments

COMMENT ON COLUMN yogood_tst.order_items.product_id IS 'Продукт';
COMMENT ON COLUMN yogood_tst.order_items.product_type_id IS 'Тип продукта (например: с наполнителем)';
COMMENT ON COLUMN yogood_tst.order_items.filler_id IS 'Наполнитель (джем и т.п.)';
COMMENT ON COLUMN yogood_tst.order_items.volume_id IS 'Объем (используется для продуктов в мл)';
COMMENT ON COLUMN yogood_tst.order_items.weight_g IS 'Вес продукта в граммах (50–10000 г)';
COMMENT ON COLUMN yogood_tst.order_items.quantity IS 'Количество единиц продукта (по умолчанию 1)';

-- Table Triggers

create trigger trg_check_product_type_filler before
insert
    or
update
    on
    yogood_tst.order_items for each row execute function yogood_tst.check_product_type_filler();

-- Permissions

ALTER TABLE yogood_tst.order_items OWNER TO postgres;
GRANT ALL ON TABLE yogood_tst.order_items TO postgres;


-- yogood_tst.order_pickup_points definition

-- Drop table

-- DROP TABLE yogood_tst.order_pickup_points;

CREATE TABLE yogood_tst.order_pickup_points ( order_id int8 NOT NULL, pickup_point_id int8 NOT NULL, created_at timestamp DEFAULT CURRENT_TIMESTAMP NULL, updated_at timestamp DEFAULT now() NULL, data_source varchar(50) DEFAULT 'system'::character varying NULL, deleted_at timestamp NULL, CONSTRAINT order_pickup_points_pkey PRIMARY KEY (order_id), CONSTRAINT fk_opp_order FOREIGN KEY (order_id) REFERENCES yogood_tst.orders(order_id) ON DELETE CASCADE, CONSTRAINT fk_opp_pickup_point FOREIGN KEY (pickup_point_id) REFERENCES yogood_tst.pickup_points(pickup_point_id) ON DELETE RESTRICT);

-- Permissions

ALTER TABLE yogood_tst.order_pickup_points OWNER TO postgres;
GRANT ALL ON TABLE yogood_tst.order_pickup_points TO postgres;


-- yogood_tst.order_status_history definition

-- Drop table

-- DROP TABLE yogood_tst.order_status_history;

CREATE TABLE yogood_tst.order_status_history ( id bigserial NOT NULL, order_id int8 NOT NULL, status_id int4 NOT NULL, changed_at timestamp DEFAULT now() NOT NULL, created_at timestamp DEFAULT now() NULL, updated_at timestamp DEFAULT now() NULL, data_source varchar(50) DEFAULT 'system'::character varying NULL, deleted_at timestamp NULL, CONSTRAINT order_status_history_pkey PRIMARY KEY (id), CONSTRAINT fk_osh_order FOREIGN KEY (order_id) REFERENCES yogood_tst.orders(order_id), CONSTRAINT fk_osh_status FOREIGN KEY (status_id) REFERENCES yogood_tst.order_statuses(status_id));

-- Permissions

ALTER TABLE yogood_tst.order_status_history OWNER TO postgres;
GRANT ALL ON TABLE yogood_tst.order_status_history TO postgres;


-- yogood_tst.product_prices definition

-- Drop table

-- DROP TABLE yogood_tst.product_prices;

CREATE TABLE yogood_tst.product_prices ( price_id serial4 NOT NULL, product_id int4 NOT NULL, unit_id int4 NOT NULL, volume_id int4 NULL, price numeric(10, 2) NOT NULL, is_active bool DEFAULT true NOT NULL, created_at timestamp DEFAULT CURRENT_TIMESTAMP NULL, updated_at timestamp DEFAULT now() NULL, data_source varchar(50) DEFAULT 'system'::character varying NULL, deleted_at timestamp NULL, CONSTRAINT product_prices_pkey PRIMARY KEY (price_id), CONSTRAINT product_prices_price_check CHECK ((price >= (0)::numeric)), CONSTRAINT product_prices_product_id_fkey FOREIGN KEY (product_id) REFERENCES yogood_tst.products(product_id) ON DELETE CASCADE, CONSTRAINT product_prices_unit_id_fkey FOREIGN KEY (unit_id) REFERENCES yogood_tst.units(unit_id), CONSTRAINT product_prices_volume_id_fkey FOREIGN KEY (volume_id) REFERENCES yogood_tst.volumes(volume_id));
CREATE UNIQUE INDEX uq_product_price_idx ON yogood_tst.product_prices USING btree (product_id, unit_id, COALESCE(volume_id, 0));
COMMENT ON TABLE yogood_tst.product_prices IS 'Цены на продукты (за кг, за объем, за штуку)';

-- Column comments

COMMENT ON COLUMN yogood_tst.product_prices.product_id IS 'Продукт';
COMMENT ON COLUMN yogood_tst.product_prices.unit_id IS 'Единица измерения (г, мл, шт)';
COMMENT ON COLUMN yogood_tst.product_prices.volume_id IS 'Объем (цена задана за конкретный объем, например 250 мл)';
COMMENT ON COLUMN yogood_tst.product_prices.price IS 'Цена';
COMMENT ON COLUMN yogood_tst.product_prices.is_active IS 'Актуальна ли цена';
COMMENT ON COLUMN yogood_tst.product_prices.created_at IS 'Дата создания цены';

-- Permissions

ALTER TABLE yogood_tst.product_prices OWNER TO postgres;
GRANT ALL ON TABLE yogood_tst.product_prices TO postgres;


-- yogood_tst.product_type_map definition

-- Drop table

-- DROP TABLE yogood_tst.product_type_map;

CREATE TABLE yogood_tst.product_type_map ( product_id int4 NOT NULL, type_id int4 NOT NULL, created_at timestamp DEFAULT now() NULL, updated_at timestamp DEFAULT now() NULL, data_source varchar(50) DEFAULT 'system'::character varying NULL, deleted_at timestamp NULL, CONSTRAINT product_type_map_pkey PRIMARY KEY (product_id, type_id), CONSTRAINT product_type_map_product_id_fkey FOREIGN KEY (product_id) REFERENCES yogood_tst.products(product_id) ON DELETE CASCADE, CONSTRAINT product_type_map_type_id_fkey FOREIGN KEY (type_id) REFERENCES yogood_tst.product_types(type_id));

-- Permissions

ALTER TABLE yogood_tst.product_type_map OWNER TO postgres;
GRANT ALL ON TABLE yogood_tst.product_type_map TO postgres;



-- DROP FUNCTION yogood_tst.check_completed_requires_payment();

CREATE OR REPLACE FUNCTION yogood_tst.check_completed_requires_payment()
 RETURNS trigger
 LANGUAGE plpgsql
AS $function$
BEGIN
    IF NEW.business_status_id = (
        SELECT business_status_id
        FROM business_statuses
        WHERE code = 'COMPLETED'
    ) AND NEW.is_paid = FALSE THEN
        RAISE EXCEPTION 'Order must be paid before COMPLETED status';
    END IF;

    RETURN NEW;
END;
$function$
;

-- Permissions

ALTER FUNCTION yogood_tst.check_completed_requires_payment() OWNER TO postgres;
GRANT ALL ON FUNCTION yogood_tst.check_completed_requires_payment() TO postgres;

-- DROP FUNCTION yogood_tst.check_product_type_filler();

CREATE OR REPLACE FUNCTION yogood_tst.check_product_type_filler()
 RETURNS trigger
 LANGUAGE plpgsql
AS $function$
BEGIN
    -- проверка product + type
    IF NEW.product_type_id IS NOT NULL THEN
        IF NOT EXISTS (
            SELECT 1 
            FROM yogood_tst.product_type_map ptm
            WHERE ptm.product_id = NEW.product_id
              AND ptm.type_id = NEW.product_type_id
        ) THEN
            RAISE EXCEPTION 'Тип продукта не разрешен для данного продукта';
        END IF;
    END IF;

    -- проверка type + filler
    IF NEW.filler_id IS NOT NULL THEN
        IF NOT EXISTS (
            SELECT 1 
            FROM yogood_tst.type_filler_map tfm
            WHERE tfm.type_id = NEW.product_type_id
              AND tfm.filler_id = NEW.filler_id
        ) THEN
            RAISE EXCEPTION 'Наполнитель не разрешен для данного типа продукта';
        END IF;
    END IF;

    RETURN NEW;
END;
$function$
;

-- Permissions

ALTER FUNCTION yogood_tst.check_product_type_filler() OWNER TO postgres;
GRANT ALL ON FUNCTION yogood_tst.check_product_type_filler() TO postgres;

-- DROP FUNCTION yogood_tst.update_business_status_timestamp();

CREATE OR REPLACE FUNCTION yogood_tst.update_business_status_timestamp()
 RETURNS trigger
 LANGUAGE plpgsql
AS $function$
BEGIN
    IF NEW.business_status_id IS DISTINCT FROM OLD.business_status_id THEN
        NEW.business_status_changed_at = NOW();
    END IF;

    RETURN NEW;
END;
$function$
;

-- Permissions

ALTER FUNCTION yogood_tst.update_business_status_timestamp() OWNER TO postgres;
GRANT ALL ON FUNCTION yogood_tst.update_business_status_timestamp() TO postgres;


-- Permissions

GRANT ALL ON SCHEMA yogood_tst TO postgres;