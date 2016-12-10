CREATE TABLE tpcds.store_returns (
    sr_returned_date_sk integer,
    sr_return_time_sk integer,
    sr_item_sk integer NOT NULL,
    sr_customer_sk integer,
    sr_cdemo_sk integer,
    sr_hdemo_sk integer,
    sr_addr_sk integer,
    sr_store_sk integer,
    sr_reason_sk integer,
    sr_ticket_number bigint NOT NULL,
    sr_return_quantity integer,
    sr_return_amt numeric(7,2),
    sr_return_tax numeric(7,2),
    sr_return_amt_inc_tax numeric(7,2),
    sr_fee numeric(7,2),
    sr_return_ship_cost numeric(7,2),
    sr_refunded_cash numeric(7,2),
    sr_reversed_charge numeric(7,2),
    sr_store_credit numeric(7,2),
    sr_net_loss numeric(7,2)
)
partition by range(sr_returned_date_sk);
-- XXX: Unknown MEDIUM_STORAGE
-- XXX: DISTRIBUTED BY (probably irrelevant here)

CREATE TABLE tpcds.store_returns_2450815_2450915 PARTITION OF  tpcds.store_returns FOR VALUES FROM (2450815) to (2450915);
CREATE TABLE tpcds.store_returns_2450915_2451015 PARTITION OF  tpcds.store_returns FOR VALUES FROM (2450915) to (2451015);
CREATE TABLE tpcds.store_returns_2451015_2451115 PARTITION OF  tpcds.store_returns FOR VALUES FROM (2451015) to (2451115);
CREATE TABLE tpcds.store_returns_2451115_2451215 PARTITION OF  tpcds.store_returns FOR VALUES FROM (2451115) to (2451215);
CREATE TABLE tpcds.store_returns_2451215_2451315 PARTITION OF  tpcds.store_returns FOR VALUES FROM (2451215) to (2451315);
CREATE TABLE tpcds.store_returns_2451315_2451415 PARTITION OF  tpcds.store_returns FOR VALUES FROM (2451315) to (2451415);
CREATE TABLE tpcds.store_returns_2451415_2451515 PARTITION OF  tpcds.store_returns FOR VALUES FROM (2451415) to (2451515);
CREATE TABLE tpcds.store_returns_2451515_2451615 PARTITION OF  tpcds.store_returns FOR VALUES FROM (2451515) to (2451615);
CREATE TABLE tpcds.store_returns_2451615_2451715 PARTITION OF  tpcds.store_returns FOR VALUES FROM (2451615) to (2451715);
CREATE TABLE tpcds.store_returns_2451715_2451815 PARTITION OF  tpcds.store_returns FOR VALUES FROM (2451715) to (2451815);
CREATE TABLE tpcds.store_returns_2451815_2451915 PARTITION OF  tpcds.store_returns FOR VALUES FROM (2451815) to (2451915);
CREATE TABLE tpcds.store_returns_2451915_2452015 PARTITION OF  tpcds.store_returns FOR VALUES FROM (2451915) to (2452015);
CREATE TABLE tpcds.store_returns_2452015_2452115 PARTITION OF  tpcds.store_returns FOR VALUES FROM (2452015) to (2452115);
CREATE TABLE tpcds.store_returns_2452115_2452215 PARTITION OF  tpcds.store_returns FOR VALUES FROM (2452115) to (2452215);
CREATE TABLE tpcds.store_returns_2452215_2452315 PARTITION OF  tpcds.store_returns FOR VALUES FROM (2452215) to (2452315);
CREATE TABLE tpcds.store_returns_2452315_2452415 PARTITION OF  tpcds.store_returns FOR VALUES FROM (2452315) to (2452415);
CREATE TABLE tpcds.store_returns_2452415_2452515 PARTITION OF  tpcds.store_returns FOR VALUES FROM (2452415) to (2452515);
CREATE TABLE tpcds.store_returns_2452515_2452615 PARTITION OF  tpcds.store_returns FOR VALUES FROM (2452515) to (2452615);
CREATE TABLE tpcds.store_returns_2452615_2452715 PARTITION OF  tpcds.store_returns FOR VALUES FROM (2452615) to (2452715);
CREATE TABLE tpcds.store_returns_2452715_2452815 PARTITION OF  tpcds.store_returns FOR VALUES FROM (2452715) to (2452815);
CREATE TABLE tpcds.store_returns_2452815_2452915 PARTITION OF  tpcds.store_returns FOR VALUES FROM (2452815) to (2452915);
CREATE TABLE tpcds.store_returns_2452915_2453015 PARTITION OF  tpcds.store_returns FOR VALUES FROM (2452915) to (2453015);
CREATE TABLE tpcds.store_returns_others_pre      PARTITION OF  tpcds.store_returns FOR VALUES FROM (UNBOUNDED) to (2450815);
CREATE TABLE tpcds.store_returns_others_post     PARTITION OF  tpcds.store_returns FOR VALUES FROM (2453015) to (UNBOUNDED);
