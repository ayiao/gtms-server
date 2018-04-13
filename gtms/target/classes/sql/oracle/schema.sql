drop table cpo_process_criteria;
create table cpo_process_criteria (
	process_criteria_id bigint not null,
	process_type varchar(50),
	process_id bigint,
	factory_id bigint,
	criteria_version_id bigint,
	mandatory varchar(1),
	process_score int,
	criteria_status varchar(2),
	start_date datetime,
	end_date datetime,
	utc_create datetime,
	utc_update datetime,
	create_by bigint,
	update_by bigint,
	note varchar(1024)
);
alter table cpo_process_criteria add constraint cpo_process_criteria_pk PRIMARY KEY(process_criteria_id);
drop sequence seq_cpo_process_criteria_id;
create sequence seq_cpo_process_criteria_id minvalue 1 maxvalue 999999999999999999999999999 start with 1 increment by 1 nocache;
-- Add comments to the columns
comment on column cpo_process_criteria.process_criteria_id is '记录id';
comment on column cpo_process_criteria.process_type is '工序类型';
comment on column cpo_process_criteria.process_id is '工序id';
comment on column cpo_process_criteria.factory_id is '工厂id';
comment on column cpo_process_criteria.criteria_version_id is '标准版本id';
comment on column cpo_process_criteria.mandatory is '强制性';
comment on column cpo_process_criteria.process_score is '分数';
comment on column cpo_process_criteria.criteria_status is '状态';
comment on column cpo_process_criteria.start_date is '生效时间';
comment on column cpo_process_criteria.end_date is '失效时间';
comment on column cpo_process_criteria.utc_create is '创建时间';
comment on column cpo_process_criteria.utc_update is '修改时间';
comment on column cpo_process_criteria.create_by is '创建人';
comment on column cpo_process_criteria.update_by is '变更人';
comment on column cpo_process_criteria.note is '备注';
-- begin--cpo_criteria_version--
drop table cpo_criteria_version;
create table cpo_criteria_version (
	criteria_version_id bigint not null,
	version_name varchar(512),
	user_id bigint,
	default_version varchar(2),
	criteria_status varchar(2),
	start_date datetime,
	end_date datetime,
	utc_create datetime,
	utc_update datetime,
	create_by bigint,
	update_by bigint,
	note varchar(1024)
);
alter table cpo_criteria_version add constraint cpo_criteria_version_pk PRIMARY KEY(criteria_version_id);
drop sequence seq_cpo_criteria_version_id;
create sequence seq_cpo_criteria_version_id minvalue 1 maxvalue 999999999999999999999999999 start with 1 increment by 1 nocache;
-- Add comments to the columns
comment on column cpo_criteria_version.criteria_version_id is '记录id';
comment on column cpo_criteria_version.version_name is '版本名';
comment on column cpo_criteria_version.user_id is '用户id';
comment on column cpo_criteria_version.default_version is '默认版本';
comment on column cpo_criteria_version.criteria_status is '状态';
comment on column cpo_criteria_version.start_date is '开始时间';
comment on column cpo_criteria_version.end_date is '截止时间';
comment on column cpo_criteria_version.utc_create is '创建时间';
comment on column cpo_criteria_version.utc_update is '修改时间';
comment on column cpo_criteria_version.create_by is '创建人';
comment on column cpo_criteria_version.update_by is '变更人';
comment on column cpo_criteria_version.note is '备注';
-- end --

-- begin--cpo_factory_criteria--
drop table cpo_factory_criteria;
create table cpo_factory_criteria (
	factory_criteria_id bigint not null,
	criteria_code varchar(50),
	criteria_object varchar(50),
	factory_id varchar(50),
	order_type varchar(10),
	mandatory varchar(1),
	criteria_type  varchar(2),
	criteria_version_id bigint,
	original_source_id bigint,
	criteria_status varchar(2),
	start_date datetime,
	end_date datetime,
	utc_create datetime,
	utc_update datetime,
	create_by bigint,
	update_by bigint,
	note varchar(1024)
);
alter table cpo_factory_criteria add constraint cpo_factory_criteria_pk PRIMARY KEY(factory_criteria_id);
drop sequence seq_cpo_factory_criteria_id;
create sequence seq_cpo_factory_criteria_id minvalue 1 maxvalue 999999999999999999999999999 start with 1 increment by 1 nocache;
-- Add comments to the columns
comment on column cpo_factory_criteria.factory_criteria_id is '记录id';
comment on column cpo_factory_criteria.criteria_code is '标准参数代号';
comment on column cpo_factory_criteria.criteria_object is '标准参数对象';
comment on column cpo_factory_criteria.factory_id is '工厂id';
comment on column cpo_factory_criteria.order_type is 'order_type';
comment on column cpo_factory_criteria.mandatory is '强制性';
comment on column cpo_factory_criteria.criteria_type  is '标准类型';
comment on column cpo_factory_criteria.criteria_version_id is '标准版本id';
comment on column cpo_factory_criteria.original_source_id is 'original_source_id';
comment on column cpo_factory_criteria.criteria_status is '状态';
comment on column cpo_factory_criteria.start_date is '生效时间';
comment on column cpo_factory_criteria.end_date is '失效时间';
comment on column cpo_factory_criteria.utc_create is '创建时间';
comment on column cpo_factory_criteria.utc_update is '修改时间';
comment on column cpo_factory_criteria.create_by is '创建人';
comment on column cpo_factory_criteria.update_by is '变更人';
comment on column cpo_factory_criteria.note is '备注';
-- end --

-- begin--cpo_criteria_condition--
drop table cpo_criteria_condition;
create table cpo_criteria_condition (
	crit_condi_id bigint not null,
	factory_criteria_id bigint,
	factory_ids varchar(255),
	application_working_no varchar(8000),
	crit_condition varchar(2),
	value_type varchar(1),
	condition_value_1 varchar(50),
	condition_value_2 varchar(50),
	criteria_value double,
	start_date datetime,
	end_date datetime,
	utc_create datetime,
	utc_update datetime,
	create_by bigint,
	update_by bigint,
	note varchar(1024)
);
alter table cpo_criteria_condition add constraint cpo_criteria_condition_pk PRIMARY KEY(crit_condi_id);
drop sequence seq_cpo_criteria_condition_id;
create sequence seq_cpo_criteria_condition_id minvalue 1 maxvalue 999999999999999999999999999 start with 1 increment by 1 nocache;
-- Add comments to the columns
comment on column cpo_criteria_condition.crit_condi_id is '记录id';
comment on column cpo_criteria_condition.factory_criteria_id is '标准id';
comment on column cpo_criteria_condition.factory_ids is '工厂ids';
comment on column cpo_criteria_condition.application_working_no is '作用款';
comment on column cpo_criteria_condition.crit_condition is '条件 ';
comment on column cpo_criteria_condition.value_type is '条件值类型';
comment on column cpo_criteria_condition.condition_value_1 is '条件值1';
comment on column cpo_criteria_condition.condition_value_2 is '条件值2';
comment on column cpo_criteria_condition.criteria_value is '值';
comment on column cpo_criteria_condition.start_date is '开始时间';
comment on column cpo_criteria_condition.end_date is '失效时间';
comment on column cpo_criteria_condition.utc_create is '创建时间';
comment on column cpo_criteria_condition.utc_update is '修改时间';
comment on column cpo_criteria_condition.create_by is '创建人';
comment on column cpo_criteria_condition.update_by is '变更人';
comment on column cpo_criteria_condition.note is '备注';
-- end --

-- begin--cpo_document--
drop table cpo_document;
create table cpo_document (
	document_id bigint not null,
	document_old_name varchar(255),
	document_name varchar(255),
	document_url varchar(500),
	document_type varchar(2),
	source varchar(50),
	season varchar(5),
	month int,
	fr_flag varchar(1),
	ax_flag varchar(1),
	document_status varchar(2),
	order_date datetime,
	utc_create datetime,
	utc_update datetime,
	create_by bigint,
	update_by bigint,
	note varchar(1024)
);
alter table cpo_document add constraint cpo_document_pk PRIMARY KEY(document_id);
drop sequence seq_cpo_document_id;
create sequence seq_cpo_document_id minvalue 1 maxvalue 999999999999999999999999999 start with 1 increment by 1 nocache;
-- Add comments to the columns
comment on column cpo_document.document_id is '记录id';
comment on column cpo_document.document_old_name is '文档曾用名';
comment on column cpo_document.document_name is '文档名';
comment on column cpo_document.document_url is '文档路径';
comment on column cpo_document.document_type is '文档类型';
comment on column cpo_document.source is '文档来源';
comment on column cpo_document.season is '季度';
comment on column cpo_document.month is '月份';
comment on column cpo_document.fr_flag is 'Fr_flag';
comment on column cpo_document.ax_flag is 'Ax_flag';
comment on column cpo_document.document_status is '状态';
comment on column cpo_document.order_date is 'Order_date';
comment on column cpo_document.utc_create is '创建时间';
comment on column cpo_document.utc_update is '修改时间';
comment on column cpo_document.create_by is '创建人';
comment on column cpo_document.update_by is '变更人';
comment on column cpo_document.note is '备注';
-- end --

-- begin--cpo_customer_po_record--
drop table cpo_customer_po_record;
create table cpo_customer_po_record (
	customer_po_id bigint not null,
	document_id bigint,
	working_no varchar(255),
	gps_factory varchar(30),
	assigned_factory varchar(30),
	po_number varchar(255),
	po_type Varchar(20),
	customer_no varchar(255),
	article_no varchar(255),
	article_description varchar(512),
	class_code varchar(255),
	order_group varchar(255),
	brand varchar(255),
	total_qty varchar(10),
	price_per_unit double(16,2),
	cust_size_run varchar(10),
	tech_notation varchar(10),
	customer_size varchar(10),
	tech_size varchar(10),
	order_qty varchar(10),
	shipped_qty varchar(10),
	division varchar(10),
	classification varchar(255),
	warehouse varchar(255),
	season Varchar(10),
	cust_req_date datetime,
	plan_date datetime,
	po_batch_date datetime,
	first_prod_date datetime,
	last_prod_date datetime,
	ship_instruction varchar(255),
	remark varchar(512),
	tech_concept varchar(255),
	tech_concept_desc varchar(512),
	tech_comp_desc varchar(512),
	prior_indication varchar(64),
	subs_ship_to_no varchar(255),
	vas_shas_code_non_us varchar(255),
	for_account_of varchar(255),
	seller varchar(255),
	ship_mode varchar(50),
	cust_order_no varchar(255),
	order_type varchar(50),
	release_status varchar(255),
	shipped_status int,
	mtfc_number varchar(255),
	client_number varchar(50),
	purc_group_code varchar(255),
	contract_number varchar(255),
	types varchar(255),
	last_update_date datetime,
	model_number varchar(50),
	model_name varchar(255),
	gender varchar(1),
	busi_model_attr varchar(255),
	psdd datetime,
	podd datetime,
	comfirm_delay int,
	delivery_delay int,
	mark_for_addr varchar(512),
	total_mechan_amount double(16,2),
	total_tax_amount double(16,2),
	total_adjustsment double(16,2),
	total_doc_amount double(16,2),
	pre_ord_id Varchar(20),
	order_country Varchar(20),
	order_status Varchar(5),
	order_actual_type Varchar(30),
	utc_create datetime,
	utc_update datetime,
	status int,
	create_by bigint,
	update_by bigint,
	note varchar(1024)
);
alter table cpo_customer_po_record add constraint cpo_customer_po_record_pk PRIMARY KEY(customer_po_id);
drop sequence seq_cpo_customer_po_record_id;
create sequence seq_cpo_customer_po_record_id minvalue 1 maxvalue 999999999999999999999999999 start with 1 increment by 1 nocache;
-- Add comments to the columns
comment on column cpo_customer_po_record.customer_po_id is 'customer_po';
comment on column cpo_customer_po_record.document_id is 'document id';
comment on column cpo_customer_po_record.working_no is 'Working Number';
comment on column cpo_customer_po_record.gps_factory is 'GPS Factory';
comment on column cpo_customer_po_record.assigned_factory is 'Assigned Factory';
comment on column cpo_customer_po_record.po_number is 'PO Number';
comment on column cpo_customer_po_record.po_type is 'POType';
comment on column cpo_customer_po_record.customer_no is 'Customer Number';
comment on column cpo_customer_po_record.article_no is 'Article Number';
comment on column cpo_customer_po_record.article_description is 'Article Description';
comment on column cpo_customer_po_record.class_code is 'Class Code';
comment on column cpo_customer_po_record.order_group is 'Order Group';
comment on column cpo_customer_po_record.brand is 'Brand ';
comment on column cpo_customer_po_record.total_qty is 'Total Qty';
comment on column cpo_customer_po_record.price_per_unit is 'Price Per Unit';
comment on column cpo_customer_po_record.cust_size_run is 'Customer Size Run';
comment on column cpo_customer_po_record.tech_notation is 'Technical Notation';
comment on column cpo_customer_po_record.customer_size is 'Customer Size';
comment on column cpo_customer_po_record.tech_size is 'Technical Size';
comment on column cpo_customer_po_record.order_qty is 'Ordered Qty';
comment on column cpo_customer_po_record.shipped_qty is 'Shipped Qty';
comment on column cpo_customer_po_record.division is 'Division';
comment on column cpo_customer_po_record.classification is 'Classification ';
comment on column cpo_customer_po_record.warehouse is 'Warehouse';
comment on column cpo_customer_po_record.season is 'season';
comment on column cpo_customer_po_record.cust_req_date is 'Customer Request Date';
comment on column cpo_customer_po_record.plan_date is 'Plan Date';
comment on column cpo_customer_po_record.po_batch_date is 'PO Batch Date';
comment on column cpo_customer_po_record.first_prod_date is 'First Production Date';
comment on column cpo_customer_po_record.last_prod_date is 'Last Production Date';
comment on column cpo_customer_po_record.ship_instruction is 'Shipping Instruction';
comment on column cpo_customer_po_record.remark is 'Remark';
comment on column cpo_customer_po_record.tech_concept is 'Technology Concept';
comment on column cpo_customer_po_record.tech_concept_desc is 'Technology Concept Description';
comment on column cpo_customer_po_record.tech_comp_desc is 'Technology Component Description';
comment on column cpo_customer_po_record.prior_indication is 'Priority Indicator';
comment on column cpo_customer_po_record.subs_ship_to_no is 'Subsidiary Ship-To Number';
comment on column cpo_customer_po_record.vas_shas_code_non_us is 'VAS/SHAS Code Non-US';
comment on column cpo_customer_po_record.for_account_of is 'For Account Of';
comment on column cpo_customer_po_record.seller is 'Seller';
comment on column cpo_customer_po_record.ship_mode is 'Ship Mode';
comment on column cpo_customer_po_record.cust_order_no is 'Customer Order Number';
comment on column cpo_customer_po_record.order_type is 'Order Type';
comment on column cpo_customer_po_record.release_status is 'Release Status';
comment on column cpo_customer_po_record.shipped_status is 'ShippedStatus';
comment on column cpo_customer_po_record.mtfc_number is 'MTFC Number';
comment on column cpo_customer_po_record.client_number is 'Client Number';
comment on column cpo_customer_po_record.purc_group_code is 'Purchasing Group Code';
comment on column cpo_customer_po_record.contract_number is 'Contract Number';
comment on column cpo_customer_po_record.types is 'Types';
comment on column cpo_customer_po_record.last_update_date is 'Last Update Date';
comment on column cpo_customer_po_record.model_number is 'Model Number';
comment on column cpo_customer_po_record.model_name is 'Model Name';
comment on column cpo_customer_po_record.gender is 'Gender';
comment on column cpo_customer_po_record.busi_model_attr is 'Business Model Attribute';
comment on column cpo_customer_po_record.psdd is 'PSDD';
comment on column cpo_customer_po_record.podd is 'PODD';
comment on column cpo_customer_po_record.comfirm_delay is 'Confirmation Delay';
comment on column cpo_customer_po_record.delivery_delay is 'Delivery Delay';
comment on column cpo_customer_po_record.mark_for_addr is 'Mark for Address';
comment on column cpo_customer_po_record.total_mechan_amount is 'Total Mechandise Amount';
comment on column cpo_customer_po_record.total_tax_amount is 'Total Tax Amount';
comment on column cpo_customer_po_record.total_adjustsment is 'Total Adjustments';
comment on column cpo_customer_po_record.total_doc_amount is 'Total Document Amount';
comment on column cpo_customer_po_record.pre_ord_id is 'pre_ord_id';
comment on column cpo_customer_po_record.order_country is 'order_country';
comment on column cpo_customer_po_record.order_status is 'Order Status';
comment on column cpo_customer_po_record.order_actual_type is '订单实际类型';
comment on column cpo_customer_po_record.utc_create is '创建时间';
comment on column cpo_customer_po_record.utc_update is '修改时间';
comment on column cpo_customer_po_record.status is '状态';
comment on column cpo_customer_po_record.create_by is '创建人';
comment on column cpo_customer_po_record.update_by is '变更人';
comment on column cpo_customer_po_record.note is '备注';
-- end --

-- begin--cpo_customer_info--
drop table cpo_customer_info;
create table cpo_customer_info (
	cust_info_id bigint not null,
	customer_no varchar(30),
	cust_no_type varchar(10),
	cust_type Varchar(2),
	country varchar(64),
	country_code varchar(10),
	organise_type varchar(20),
	region varchar(30),
	utc_create datetime,
	utc_update datetime,
	cust_info_status varchar(1),
	create_by bigint,
	update_by bigint,
	note varchar(1024)
);
alter table cpo_customer_info add constraint cpo_customer_info_pk PRIMARY KEY(cust_info_id);
drop sequence seq_cpo_customer_info_id;
create sequence seq_cpo_customer_info_id minvalue 1 maxvalue 999999999999999999999999999 start with 1 increment by 1 nocache;
-- Add comments to the columns
comment on column cpo_customer_info.cust_info_id is '记录id';
comment on column cpo_customer_info.customer_no is 'Cust.No.';
comment on column cpo_customer_info.cust_no_type is 'Cust.No type';
comment on column cpo_customer_info.cust_type is 'Cust_type';
comment on column cpo_customer_info.country is 'country';
comment on column cpo_customer_info.country_code is 'Country code';
comment on column cpo_customer_info.organise_type is 'organise type';
comment on column cpo_customer_info.region is 'Region';
comment on column cpo_customer_info.utc_create is '创建时间';
comment on column cpo_customer_info.utc_update is '修改时间';
comment on column cpo_customer_info.cust_info_status is '状态';
comment on column cpo_customer_info.create_by is '创建人';
comment on column cpo_customer_info.update_by is '变更人';
comment on column cpo_customer_info.note is '备注';
-- end --

-- begin--cpo_factory_assignment--
drop table cpo_factory_assignment;
create table cpo_factory_assignment (
	fact_assign_id bigint not null,
	assign_source_id bigint,
	po varchar(50),
	customer_no varchar(50),
	plan_month varchar(30),
	assign_source varchar(2),
	size_group Varchar(30),
	contract_no varchar(30),
	order_type varchar(2),
	document_id bigint,
	pre_ord_id varchar(255),
	working_no varchar(255),
	gps_factory varchar(30),
	pv_quantity Double,
	assigned_factory varchar(30),
	a_source varchar(30),
	last_prod_fact varchar(50),
	organise_type varchar(20),
	order_country varchar(255),
	coo varchar(50),
	leftover Double,
	leftover_fty Varchar(10),
	pullforward Double,
	pullforward_fty Varchar(10),
	corrected_source varchar(50),
	base_style varchar(50),
	class_code varchar(255),
	order_group varchar(255),
	brand varchar(255),
	article_no varchar(255),
	fabric_type varchar(50),
	product_type varchar(50),
	art_lead_time varchar(10),
	supply_chain_track varchar(10),
	working_no_range varchar(50),
	request_date datetime,
	season varchar(255),
	season_remark varchar(50),
	total_qty varchar(255),
	eu_rate double,
	eu_quantity double,
	china_rate double,
	china_quantity double,
	sum_quantity double,
	forecast_qty varchar(20),
	open_forecast_qty varchar(20),
	order_actual_type Varchar(30),
	pre_doc_qty varchar(20),
	plan_date datetime,
	po_batch_date datetime,
	first_prod_date datetime,
	last_prod_date datetime,
	psdd datetime,
	podd datetime,
	order_quantity_by_plan_date varchar(255),
	mkt_assigned_result varchar(1024),
	half_month_period Varchar(10),
	utc_create datetime,
	utc_update datetime,
	assign_result_status varchar(1),
	create_by bigint,
	update_by bigint,
	note varchar(1024)
);
alter table cpo_factory_assignment add constraint cpo_factory_assignment_pk PRIMARY KEY(fact_assign_id);
drop sequence seq_cpo_factory_assignment_id;
create sequence seq_cpo_factory_assignment_id minvalue 1 maxvalue 999999999999999999999999999 start with 1 increment by 1 nocache;
-- Add comments to the columns
comment on column cpo_factory_assignment.fact_assign_id is '记录id';
comment on column cpo_factory_assignment.assign_source_id is 'source id';
comment on column cpo_factory_assignment.po is 'PO';
comment on column cpo_factory_assignment.customer_no is 'customer No';
comment on column cpo_factory_assignment.plan_month is 'plan_month';
comment on column cpo_factory_assignment.assign_source is 'source';
comment on column cpo_factory_assignment.size_group is 'Size group';
comment on column cpo_factory_assignment.contract_no is 'contract_no';
comment on column cpo_factory_assignment.order_type is 'order Type';
comment on column cpo_factory_assignment.document_id is 'document id';
comment on column cpo_factory_assignment.pre_ord_id is 'pre_ord_id';
comment on column cpo_factory_assignment.working_no is 'working no';
comment on column cpo_factory_assignment.gps_factory is 'GPS Factory';
comment on column cpo_factory_assignment.pv_quantity is 'pv_quantity';
comment on column cpo_factory_assignment.assigned_factory is 'Assigned Factory';
comment on column cpo_factory_assignment.a_source is 'A source';
comment on column cpo_factory_assignment.last_prod_fact is 'Last Production Factory';
comment on column cpo_factory_assignment.organise_type is 'EU/NON EU';
comment on column cpo_factory_assignment.order_country is 'Order Country';
comment on column cpo_factory_assignment.coo is 'COO';
comment on column cpo_factory_assignment.leftover is 'leftover';
comment on column cpo_factory_assignment.leftover_fty is 'leftover_fty';
comment on column cpo_factory_assignment.pullforward is 'pullforward';
comment on column cpo_factory_assignment.pullforward_fty is 'pullforward_fty';
comment on column cpo_factory_assignment.corrected_source is 'corrected source';
comment on column cpo_factory_assignment.base_style is 'base style';
comment on column cpo_factory_assignment.class_code is 'Class Code';
comment on column cpo_factory_assignment.order_group is 'Order Group';
comment on column cpo_factory_assignment.brand is 'Brand ';
comment on column cpo_factory_assignment.article_no is 'Article Number';
comment on column cpo_factory_assignment.fabric_type is 'fabricType';
comment on column cpo_factory_assignment.product_type is 'Product Type';
comment on column cpo_factory_assignment.art_lead_time is 'Article Lead time';
comment on column cpo_factory_assignment.supply_chain_track is 'supply chain track';
comment on column cpo_factory_assignment.working_no_range is 'workingNo range';
comment on column cpo_factory_assignment.request_date is 'Request Date';
comment on column cpo_factory_assignment.season is 'season';
comment on column cpo_factory_assignment.season_remark is 'season remark';
comment on column cpo_factory_assignment.total_qty is 'Total Qty';
comment on column cpo_factory_assignment.eu_rate is 'eu_rate';
comment on column cpo_factory_assignment.eu_quantity is 'eu_quantity';
comment on column cpo_factory_assignment.china_rate is 'china_rate';
comment on column cpo_factory_assignment.china_quantity is 'china_quantity';
comment on column cpo_factory_assignment.sum_quantity is 'sum_quantity';
comment on column cpo_factory_assignment.forecast_qty is 'Forecast Qty';
comment on column cpo_factory_assignment.open_forecast_qty is 'open_forecast_qty';
comment on column cpo_factory_assignment.order_actual_type is '订单实际类型';
comment on column cpo_factory_assignment.pre_doc_qty is 'pre_doc_qty';
comment on column cpo_factory_assignment.plan_date is 'Plan Date';
comment on column cpo_factory_assignment.po_batch_date is 'PO Batch Date';
comment on column cpo_factory_assignment.first_prod_date is 'First Production Date';
comment on column cpo_factory_assignment.last_prod_date is 'Last Production Date';
comment on column cpo_factory_assignment.psdd is 'PSDD';
comment on column cpo_factory_assignment.podd is 'PODD';
comment on column cpo_factory_assignment.order_quantity_by_plan_date is 'Order Quantity by Plan Date';
comment on column cpo_factory_assignment.mkt_assigned_result is 'mkt_assigned_result';
comment on column cpo_factory_assignment.half_month_period is 'half_month_period';
comment on column cpo_factory_assignment.utc_create is '创建时间';
comment on column cpo_factory_assignment.utc_update is '修改时间';
comment on column cpo_factory_assignment.assign_result_status is '状态';
comment on column cpo_factory_assignment.create_by is '创建人';
comment on column cpo_factory_assignment.update_by is '变更人';
comment on column cpo_factory_assignment.note is '备注';
-- end --

-- begin--cpo_process--
drop table cpo_process;
create table cpo_process (
	process_id bigint not null,
	process_category_id bigint,
	process_code varchar(30),
	process_name varchar(255),
	process_type varchar(50),
	fr_external_id varchar(10),
	utc_create datetime,
	utc_update datetime,
	process_status varchar(1),
	create_by bigint,
	update_by bigint,
	note varchar(1024)
);
alter table cpo_process add constraint cpo_process_pk PRIMARY KEY(process_id);
drop sequence seq_cpo_process_id;
create sequence seq_cpo_process_id minvalue 1 maxvalue 999999999999999999999999999 start with 1 increment by 1 nocache;
-- Add comments to the columns
comment on column cpo_process.process_id is '记录id';
comment on column cpo_process.process_category_id is 'process category id';
comment on column cpo_process.process_code is '工序代号';
comment on column cpo_process.process_name is '工序名称';
comment on column cpo_process.process_type is '工序类型';
comment on column cpo_process.fr_external_id is 'FR External ID';
comment on column cpo_process.utc_create is '创建时间';
comment on column cpo_process.utc_update is '修改时间';
comment on column cpo_process.process_status is '状态';
comment on column cpo_process.create_by is '创建人';
comment on column cpo_process.update_by is '变更人';
comment on column cpo_process.note is '备注';
-- end --

-- begin--cpo_factory--
drop table cpo_factory;
create table cpo_factory (
	factory_id bigint not null,
	factory_code varchar(60),
	factory_simple_code varchar(60),
	fact_simp_name varchar(20),
	factory_name varchar(255),
	factory_address varchar(255),
	factory_phone_num varchar(30),
	fr_factory_id Varchar(10),
	ax_factory_id Varchar(10),
	factory_type varchar(1),
	factory_status varchar(1),
	order_type Varchar(5),
	utc_create datetime,
	utc_update datetime,
	create_by bigint,
	update_by bigint,
	note varchar(1024)
);
alter table cpo_factory add constraint cpo_factory_pk PRIMARY KEY(factory_id);
drop sequence seq_cpo_factory_id;
create sequence seq_cpo_factory_id minvalue 1 maxvalue 999999999999999999999999999 start with 1 increment by 1 nocache;
-- Add comments to the columns
comment on column cpo_factory.factory_id is '记录id';
comment on column cpo_factory.factory_code is '工厂代号';
comment on column cpo_factory.factory_simple_code is '工厂代号';
comment on column cpo_factory.fact_simp_name is '工厂简称';
comment on column cpo_factory.factory_name is '工厂名称';
comment on column cpo_factory.factory_address is '工厂地址';
comment on column cpo_factory.factory_phone_num is '工厂电话';
comment on column cpo_factory.fr_factory_id is 'fr工厂代码';
comment on column cpo_factory.ax_factory_id is 'AX工厂代码';
comment on column cpo_factory.factory_type is '类型';
comment on column cpo_factory.factory_status is '状态';
comment on column cpo_factory.order_type is 'Order type';
comment on column cpo_factory.utc_create is '创建时间';
comment on column cpo_factory.utc_update is '修改时间';
comment on column cpo_factory.create_by is '创建人';
comment on column cpo_factory.update_by is '变更人';
comment on column cpo_factory.note is '备注';
-- end --

-- begin--cpo_factory_process--
drop table cpo_factory_process;
create table cpo_factory_process (
	factory_process_id bigint not null,
	factory_id varchar(30),
	process_id bigint,
	factory_process_type varchar(1),
	utc_create datetime,
	utc_update datetime,
	create_by bigint,
	update_by bigint,
	note varchar(1024)
);
alter table cpo_factory_process add constraint cpo_factory_process_pk PRIMARY KEY(factory_process_id);
drop sequence seq_cpo_factory_process_id;
create sequence seq_cpo_factory_process_id minvalue 1 maxvalue 999999999999999999999999999 start with 1 increment by 1 nocache;
-- Add comments to the columns
comment on column cpo_factory_process.factory_process_id is '记录id';
comment on column cpo_factory_process.factory_id is '工厂id';
comment on column cpo_factory_process.process_id is '工序id';
comment on column cpo_factory_process.factory_process_type is '工序类型';
comment on column cpo_factory_process.utc_create is '创建时间';
comment on column cpo_factory_process.utc_update is '修改时间';
comment on column cpo_factory_process.create_by is '创建人';
comment on column cpo_factory_process.update_by is '变更人';
comment on column cpo_factory_process.note is '备注';
-- end --

-- begin--cpo_working_no--
drop table cpo_working_no;
create table cpo_working_no (
	working_no_id bigint not null,
	working_no varchar(50),
	adidas_a_source varchar(30),
	bowker_a_source varchar(30),
	garment_producting_day double,
	working_no_range varchar(255),
	main_fabric varchar(255),
	t2_name varchar(255),
	product_lead_time Integer,
	unit varchar(255),
	b_source varchar(10),
	c_source varchar(10),
	d_source varchar(10),
	product_name Varchar(128),
	pad_print_style Varchar(50),
	pad_print_item Varchar(50),
	mainfabric_desc Varchar(100),
	t2_coo Varchar(20),
	model_id varchar(50),
	model_desc varchar(255),
	smv DOUBLE,
	mother_style varchar(255),
	inner_smv Double,
	top_smv Double,
	bottom_smv Double,
	gsp Varchar(5),
	wc_style varchar(20),
	ei_set_up varchar(50),
	special_process_remark varchar(500),
	gender Varchar(10),
	lo_merch Varchar(30),
	base_fob Double,
	costing_curr Varchar(10),
	product_mgr Varchar(30),
	tier_1_merch Varchar(30),
	developer Varchar(30),
	develop_type Varchar(30),
	dd_style Varchar(30),
	sports_code varchar(255),
	utc_create datetime,
	utc_update datetime,
	work_no_status varchar(2),
	create_by bigint,
	update_by bigint,
	note varchar(1024)
);
alter table cpo_working_no add constraint cpo_working_no_pk PRIMARY KEY(working_no_id);
drop sequence seq_cpo_working_no_id;
create sequence seq_cpo_working_no_id minvalue 1 maxvalue 999999999999999999999999999 start with 1 increment by 1 nocache;
-- Add comments to the columns
comment on column cpo_working_no.working_no_id is '记录id';
comment on column cpo_working_no.working_no is 'working no';
comment on column cpo_working_no.adidas_a_source is 'Adidas A Source';
comment on column cpo_working_no.bowker_a_source is 'Bowker A Source';
comment on column cpo_working_no.garment_producting_day is 'Garment Producting Day';
comment on column cpo_working_no.working_no_range is 'Range';
comment on column cpo_working_no.main_fabric is '主身布种';
comment on column cpo_working_no.t2_name is 'T2 name';
comment on column cpo_working_no.product_lead_time is 'ProductLeadTime';
comment on column cpo_working_no.unit is 'unit';
comment on column cpo_working_no.b_source is 'B source';
comment on column cpo_working_no.c_source is 'C source';
comment on column cpo_working_no.d_source is 'D source';
comment on column cpo_working_no.product_name is 'Product Name';
comment on column cpo_working_no.pad_print_style is 'pad print style';
comment on column cpo_working_no.pad_print_item is 'pad print item';
comment on column cpo_working_no.mainfabric_desc is 'mainFabric desc';
comment on column cpo_working_no.t2_coo is 'T2 COO';
comment on column cpo_working_no.model_id is 'model ID';
comment on column cpo_working_no.model_desc is 'model_desc';
comment on column cpo_working_no.smv is 'smv';
comment on column cpo_working_no.mother_style is 'mother style';
comment on column cpo_working_no.inner_smv is 'inner smv';
comment on column cpo_working_no.top_smv is 'top smv';
comment on column cpo_working_no.bottom_smv is 'bottom smv';
comment on column cpo_working_no.gsp is 'Gsp';
comment on column cpo_working_no.wc_style is 'Wc_style';
comment on column cpo_working_no.ei_set_up is 'EI Set-up';
comment on column cpo_working_no.special_process_remark is '特殊工序备注';
comment on column cpo_working_no.gender is 'Gender';
comment on column cpo_working_no.lo_merch is 'LO Merch';
comment on column cpo_working_no.base_fob is 'Base FOB';
comment on column cpo_working_no.costing_curr is 'Costing Curr.';
comment on column cpo_working_no.product_mgr is 'product mgr';
comment on column cpo_working_no.tier_1_merch is 'tier 1 merch';
comment on column cpo_working_no.developer is 'developer';
comment on column cpo_working_no.develop_type is 'develop type';
comment on column cpo_working_no.dd_style is 'dd_style';
comment on column cpo_working_no.sports_code is 'Sports code';
comment on column cpo_working_no.utc_create is '创建时间';
comment on column cpo_working_no.utc_update is '修改时间';
comment on column cpo_working_no.work_no_status is '状态';
comment on column cpo_working_no.create_by is '创建人';
comment on column cpo_working_no.update_by is '变更人';
comment on column cpo_working_no.note is '备注';
-- end --

-- begin--cpo_working_no_attributes--
drop table cpo_working_no_attributes;
create table cpo_working_no_attributes (
	work_no_attr_id bigint not null,
	working_no_id bigint,
	working_no varchar(50),
	category_code varchar(255),
	category_value varchar(255),
	attribute_code varchar(255),
	attribute_value varchar(255),
	weight double,
	utc_create datetime,
	utc_update datetime,
	attr_status varchar(2),
	create_by bigint,
	update_by bigint,
	note varchar(1024)
);
alter table cpo_working_no_attributes add constraint cpo_working_no_attributes_pk PRIMARY KEY(work_no_attr_id);
drop sequence seq_cpo_working_no_attributes_id;
create sequence seq_cpo_working_no_attributes_id minvalue 1 maxvalue 999999999999999999999999999 start with 1 increment by 1 nocache;
-- Add comments to the columns
comment on column cpo_working_no_attributes.work_no_attr_id is '记录id';
comment on column cpo_working_no_attributes.working_no_id is 'working no id';
comment on column cpo_working_no_attributes.working_no is 'working_no';
comment on column cpo_working_no_attributes.category_code is '目录编号';
comment on column cpo_working_no_attributes.category_value is '目录值';
comment on column cpo_working_no_attributes.attribute_code is '属性编号';
comment on column cpo_working_no_attributes.attribute_value is '属性值';
comment on column cpo_working_no_attributes.weight is '权重';
comment on column cpo_working_no_attributes.utc_create is '创建时间';
comment on column cpo_working_no_attributes.utc_update is '修改时间';
comment on column cpo_working_no_attributes.attr_status is '状态';
comment on column cpo_working_no_attributes.create_by is '创建人';
comment on column cpo_working_no_attributes.update_by is '变更人';
comment on column cpo_working_no_attributes.note is '备注';
-- end --

-- begin--cpo_factory_assignment_result--
drop table cpo_factory_assignment_result;
create table cpo_factory_assignment_result (
	assign_result_id bigint not null,
	fact_assign_id bigint,
	cpo_no varchar(255),
	mo varchar(255),
	working_no varchar(255),
	sugg_factory varchar(50),
	a_source varchar(50),
	corrected_source varchar(50),
	last_prod_factory varchar(50),
	confirm_factory varchar(50),
	new_factory varchar(50),
	old_factory varchar(50),
	factory_score_detial varchar(8000),
	special_order Varchar(100),
	transfer_order_info Varchar(200),
	pf_order Varchar(20),
	gsp Varchar(30),
	service_identify Varchar(20),
	customization_status Varchar(10),
	test Varchar(50),
	asian_size Varchar(20),
	japan_size Varchar(20),
	dd_style Varchar(20),
	new_ftyname Varchar(50),
	mix_size Varchar(50),
	athlete Varchar(50),
	ppc_status Varchar(5),
	flag_fr Varchar(1),
	flag_ax Varchar(1),
	transit_fr_remark varchar(128),
	transit_ax_remark varchar(128),
	mdp_fail_reason Varchar(128),
	pdp_fail_reason Varchar(128),
	psdd_factory datetime,
	fpd_factory datetime,
	transfer_reason varchar(255),
	transfer_remark Varchar(255),
	updated_information Varchar(128),
	latest_fabric_pi_eta datetime,
	latest_trim_pi_eta datetime,
	main_mpo Varchar(30),
	t2_name_1st Varchar(30),
	fabric_rms_1st Varchar(30),
	fabric_po_1st Varchar(30),
	fabric_pi_date datetime,
	no_168 Varchar(20),
	timetable Varchar(30),
	utc_create datetime,
	utc_update datetime,
	assign_result_status varchar(1),
	create_by bigint,
	update_by bigint,
	note varchar(1024)
);
alter table cpo_factory_assignment_result add constraint cpo_factory_assignment_result_pk PRIMARY KEY(assign_result_id);
drop sequence seq_cpo_factory_assignment_result_id;
create sequence seq_cpo_factory_assignment_result_id minvalue 1 maxvalue 999999999999999999999999999 start with 1 increment by 1 nocache;
-- Add comments to the columns
comment on column cpo_factory_assignment_result.assign_result_id is '记录id';
comment on column cpo_factory_assignment_result.fact_assign_id is 'fact_assign_id';
comment on column cpo_factory_assignment_result.cpo_no is 'CPO No';
comment on column cpo_factory_assignment_result.mo is 'MO';
comment on column cpo_factory_assignment_result.working_no is 'working_no';
comment on column cpo_factory_assignment_result.sugg_factory is 'suggest factory';
comment on column cpo_factory_assignment_result.a_source is 'a source';
comment on column cpo_factory_assignment_result.corrected_source is 'corrected_source';
comment on column cpo_factory_assignment_result.last_prod_factory is 'last production factory';
comment on column cpo_factory_assignment_result.confirm_factory is 'confirm factory';
comment on column cpo_factory_assignment_result.new_factory is 'new_factory';
comment on column cpo_factory_assignment_result.old_factory is 'old_factory';
comment on column cpo_factory_assignment_result.factory_score_detial is 'factory score_detial';
comment on column cpo_factory_assignment_result.special_order is '订单特殊要求';
comment on column cpo_factory_assignment_result.transfer_order_info is '订单更改资料';
comment on column cpo_factory_assignment_result.pf_order is 'PF ORDER';
comment on column cpo_factory_assignment_result.gsp is 'GSP';
comment on column cpo_factory_assignment_result.service_identify is 'Serviceidentify';
comment on column cpo_factory_assignment_result.customization_status is 'Customization Status';
comment on column cpo_factory_assignment_result.test is 'Test';
comment on column cpo_factory_assignment_result.asian_size is '亚洲款';
comment on column cpo_factory_assignment_result.japan_size is '日本款';
comment on column cpo_factory_assignment_result.dd_style is 'DD款';
comment on column cpo_factory_assignment_result.new_ftyname is 'New Ftyname';
comment on column cpo_factory_assignment_result.mix_size is '大混码';
comment on column cpo_factory_assignment_result.athlete is 'Athlete';
comment on column cpo_factory_assignment_result.ppc_status is 'Ppc status';
comment on column cpo_factory_assignment_result.flag_fr is 'Flag_fr';
comment on column cpo_factory_assignment_result.flag_ax is 'Flag_Ax';
comment on column cpo_factory_assignment_result.transit_fr_remark is 'transit_fr_remark';
comment on column cpo_factory_assignment_result.transit_ax_remark is 'transit_ax_remark';
comment on column cpo_factory_assignment_result.mdp_fail_reason is 'MDPfailreason';
comment on column cpo_factory_assignment_result.pdp_fail_reason is 'PDPfailreason';
comment on column cpo_factory_assignment_result.psdd_factory is 'psddfactory';
comment on column cpo_factory_assignment_result.fpd_factory is 'fpdfactory';
comment on column cpo_factory_assignment_result.transfer_reason is '转厂原因';
comment on column cpo_factory_assignment_result.transfer_remark is '转厂备注';
comment on column cpo_factory_assignment_result.updated_information is 'Updated Information';
comment on column cpo_factory_assignment_result.latest_fabric_pi_eta is 'Latest Fabric PI ETA';
comment on column cpo_factory_assignment_result.latest_trim_pi_eta is 'latest_trim_pi_eta';
comment on column cpo_factory_assignment_result.main_mpo is 'Main MPO#';
comment on column cpo_factory_assignment_result.t2_name_1st is '1st T2 Name';
comment on column cpo_factory_assignment_result.fabric_rms_1st is '1st Fabric RMS#';
comment on column cpo_factory_assignment_result.fabric_po_1st is '1st Fabric PO#';
comment on column cpo_factory_assignment_result.fabric_pi_date is '1st Fabric PI Date';
comment on column cpo_factory_assignment_result.no_168 is '168#';
comment on column cpo_factory_assignment_result.timetable is 'timetable';
comment on column cpo_factory_assignment_result.utc_create is '创建时间';
comment on column cpo_factory_assignment_result.utc_update is '修改时间';
comment on column cpo_factory_assignment_result.assign_result_status is '状态';
comment on column cpo_factory_assignment_result.create_by is '创建人';
comment on column cpo_factory_assignment_result.update_by is '变更人';
comment on column cpo_factory_assignment_result.note is '备注';
-- end --

-- begin--cpo_assign_score--
drop table cpo_assign_score;
create table cpo_assign_score (
	assign_score_id bigint not null,
	customer_po_id bigint,
	factory_score_detial varchar(8000),
	factory_sum_score varchar(512),
	utc_create datetime,
	utc_update datetime,
	assign_score_status varchar(1),
	create_by bigint,
	update_by bigint,
	note varchar(1024)
);
alter table cpo_assign_score add constraint cpo_assign_score_pk PRIMARY KEY(assign_score_id);
drop sequence seq_cpo_assign_score_id;
create sequence seq_cpo_assign_score_id minvalue 1 maxvalue 999999999999999999999999999 start with 1 increment by 1 nocache;
-- Add comments to the columns
comment on column cpo_assign_score.assign_score_id is '记录id';
comment on column cpo_assign_score.customer_po_id is 'customer po id';
comment on column cpo_assign_score.factory_score_detial is 'factory score_detial';
comment on column cpo_assign_score.factory_sum_score is 'factory_sum_score';
comment on column cpo_assign_score.utc_create is '创建时间';
comment on column cpo_assign_score.utc_update is '修改时间';
comment on column cpo_assign_score.assign_score_status is '状态';
comment on column cpo_assign_score.create_by is '创建人';
comment on column cpo_assign_score.update_by is '变更人';
comment on column cpo_assign_score.note is '备注';
-- end --

-- begin--cpo_admin_dict--
drop table cpo_admin_dict;
create table cpo_admin_dict (
	dictid bigint not null,
	code varchar(32),
	value varchar(16),
	label varchar(255),
	data varchar(800),
	fmt varchar(255),
	sort int,
	scode varchar(16),
	lang varchar(255)
);
alter table cpo_admin_dict add constraint cpo_admin_dict_pk PRIMARY KEY(dictid);
drop sequence seq_cpo_admin_dict_id;
create sequence seq_cpo_admin_dict_id minvalue 1 maxvalue 999999999999999999999999999 start with 1 increment by 1 nocache;
-- Add comments to the columns
comment on column cpo_admin_dict.dictid is '序号';
comment on column cpo_admin_dict.code is '参数代码';
comment on column cpo_admin_dict.value is '值';
comment on column cpo_admin_dict.label is '名  称';
comment on column cpo_admin_dict.data is '数  据';
comment on column cpo_admin_dict.fmt is '格  式';
comment on column cpo_admin_dict.sort is '排  序';
comment on column cpo_admin_dict.scode is '父参数';
comment on column cpo_admin_dict.lang is '语言';
-- end --

-- begin--cpo_admin_script--
drop table cpo_admin_script;
create table cpo_admin_script (
	code varchar(50) not null,
	scripts varchar(1000),
	label varchar(50),
	kind char(1),
	title varchar(50),
	header varchar(200),
	fmt varchar(100)
);
alter table cpo_admin_script add constraint cpo_admin_script_pk PRIMARY KEY(code);
-- Add comments to the columns
comment on column cpo_admin_script.code is '编码';
comment on column cpo_admin_script.scripts is '脚本';
comment on column cpo_admin_script.label is '名称';
comment on column cpo_admin_script.kind is '类型';
comment on column cpo_admin_script.title is '标题';
comment on column cpo_admin_script.header is '头部';
comment on column cpo_admin_script.fmt is '格式';
-- end --

-- begin--cpo_marketing_forecast--
drop table cpo_marketing_forecast;
create table cpo_marketing_forecast (
	marketing_forecast_id bigint not null,
	document_id bigint,
	rccp_division varchar(255),
	projected_reference varchar(255),
	lo varchar(255),
	factory_id varchar(255),
	factory_desc varchar(255),
	development_factory varchar(255),
	creation_center varchar(255),
	business_segment varchar(255),
	capability_name varchar(255),
	otp_reference varchar(255),
	rccp_season varchar(255),
	demand_type varchar(255),
	model_no varchar(255),
	new_style_count_seasonal varchar(255),
	likely_vol_adj varchar(255),
	likely_vol_1 varchar(255),
	likely_vol_2 varchar(255),
	likely_vol_3 varchar(255),
	likely_vol_4 varchar(255),
	likely_vol_5 varchar(255),
	likely_vol_6 varchar(255),
	down_vol_tol varchar(255),
	down_vol_adj varchar(255),
	up_vol_tol varchar(255),
	up_vol_adj varchar(255),
	developer varchar(255),
	product_mgr varchar(255),
	working_no varchar(255),
	quarter varchar(255),
	sports_category varchar(255),
	alloc_cat varchar(255),
	cat_mkt_line varchar(255),
	corp_mkt_line varchar(255),
	sales_line varchar(255),
	age_group varchar(255),
	gender varchar(255),
	product_speciality varchar(255),
	timeline varchar(255),
	retail_intro varchar(255),
	retail_exit varchar(255),
	first_xfty_date varchar(255),
	last_xfty_date varchar(255),
	product_type varchar(255),
	product_group varchar(255),
	unit_of_measure varchar(255),
	sales_unit varchar(255),
	carry_over varchar(255),
	dev_type varchar(255),
	corrected_source varchar(255),
	fty_id varchar(255),
	fty_status varchar(255),
	fty_group varchar(255),
	fty_group_name varchar(255),
	segmentation varchar(255),
	lo2 varchar(255),
	coo varchar(255),
	coo_or_region varchar(255),
	targ_tech varchar(255),
	targ_mat varchar(255),
	flex_source varchar(255),
	priority varchar(255),
	adj_p_grp varchar(255),
	adj_tech varchar(255),
	adj_mat varchar(255),
	total_pt varchar(255),
	adj_bu varchar(255),
	status_milestones varchar(255),
	offered_capacity varchar(255),
	development_capacity varchar(255),
	pre_order_assigned_result varchar(8000),
	pre_order_quantity varchar(20),
	flex_check varchar(255),
	utc_update datetime,
	status int,
	create_by bigint,
	update_by bigint,
	note varchar(1024)
);
alter table cpo_marketing_forecast add constraint cpo_marketing_forecast_pk PRIMARY KEY(marketing_forecast_id);
drop sequence seq_cpo_marketing_forecast_id;
create sequence seq_cpo_marketing_forecast_id minvalue 1 maxvalue 999999999999999999999999999 start with 1 increment by 1 nocache;
-- Add comments to the columns
comment on column cpo_marketing_forecast.marketing_forecast_id is 'marketing_forecast';
comment on column cpo_marketing_forecast.document_id is 'document id';
comment on column cpo_marketing_forecast.rccp_division is 'RCCP Division';
comment on column cpo_marketing_forecast.projected_reference is 'Projected Reference';
comment on column cpo_marketing_forecast.lo is 'LO';
comment on column cpo_marketing_forecast.factory_id is 'Factory ID';
comment on column cpo_marketing_forecast.factory_desc is 'Factory DESC';
comment on column cpo_marketing_forecast.development_factory is 'Development Factory';
comment on column cpo_marketing_forecast.creation_center is 'Creation Center';
comment on column cpo_marketing_forecast.business_segment is 'Business Segment';
comment on column cpo_marketing_forecast.capability_name is 'Capability Capability Name';
comment on column cpo_marketing_forecast.otp_reference is 'OTP Reference';
comment on column cpo_marketing_forecast.rccp_season is 'RCCP Season';
comment on column cpo_marketing_forecast.demand_type is 'Demand Type';
comment on column cpo_marketing_forecast.model_no is 'Model No';
comment on column cpo_marketing_forecast.new_style_count_seasonal is 'New Style Count Seasonal';
comment on column cpo_marketing_forecast.likely_vol_adj is 'Likely Volume adjusted';
comment on column cpo_marketing_forecast.likely_vol_1 is 'Likely Volume 1';
comment on column cpo_marketing_forecast.likely_vol_2 is 'Likely Volume 2';
comment on column cpo_marketing_forecast.likely_vol_3 is 'Likely Volume 3';
comment on column cpo_marketing_forecast.likely_vol_4 is 'Likely Volume 4';
comment on column cpo_marketing_forecast.likely_vol_5 is 'Likely Volume 5';
comment on column cpo_marketing_forecast.likely_vol_6 is 'Likely Volume 6';
comment on column cpo_marketing_forecast.down_vol_tol is 'Downside Volume Total';
comment on column cpo_marketing_forecast.down_vol_adj is 'Downside Volume adjusted';
comment on column cpo_marketing_forecast.up_vol_tol is 'Upside Volume Total';
comment on column cpo_marketing_forecast.up_vol_adj is 'Upside Volume adjusted';
comment on column cpo_marketing_forecast.developer is 'Developer';
comment on column cpo_marketing_forecast.product_mgr is 'Product Mgr';
comment on column cpo_marketing_forecast.working_no is 'Working#';
comment on column cpo_marketing_forecast.quarter is 'Quarter';
comment on column cpo_marketing_forecast.sports_category is 'Sports Category';
comment on column cpo_marketing_forecast.alloc_cat is 'Alloc Cat';
comment on column cpo_marketing_forecast.cat_mkt_line is 'Cat Mkt Line';
comment on column cpo_marketing_forecast.corp_mkt_line is 'Corp Mkt Line';
comment on column cpo_marketing_forecast.sales_line is 'Sales Line';
comment on column cpo_marketing_forecast.age_group is 'Age Group';
comment on column cpo_marketing_forecast.gender is 'Gender';
comment on column cpo_marketing_forecast.product_speciality is 'Product Speciality';
comment on column cpo_marketing_forecast.timeline is 'Timeline';
comment on column cpo_marketing_forecast.retail_intro is 'Retail Intro';
comment on column cpo_marketing_forecast.retail_exit is 'Retail Exit';
comment on column cpo_marketing_forecast.first_xfty_date is 'First_xfty_Date';
comment on column cpo_marketing_forecast.last_xfty_date is 'Last_xfty_Date';
comment on column cpo_marketing_forecast.product_type is 'Product Type';
comment on column cpo_marketing_forecast.product_group is 'Product Group';
comment on column cpo_marketing_forecast.unit_of_measure is 'Unit Of Measure';
comment on column cpo_marketing_forecast.sales_unit is 'Sales Unit';
comment on column cpo_marketing_forecast.carry_over is 'Carry Over';
comment on column cpo_marketing_forecast.dev_type is 'Dev Type';
comment on column cpo_marketing_forecast.corrected_source is 'Corrected Source - ';
comment on column cpo_marketing_forecast.fty_id is 'Fty id';
comment on column cpo_marketing_forecast.fty_status is 'Fty Status';
comment on column cpo_marketing_forecast.fty_group is 'Fty group';
comment on column cpo_marketing_forecast.fty_group_name is 'Fty group name';
comment on column cpo_marketing_forecast.segmentation is 'Segmentation';
comment on column cpo_marketing_forecast.lo2 is 'LO2';
comment on column cpo_marketing_forecast.coo is 'COO';
comment on column cpo_marketing_forecast.coo_or_region is 'COO/Region';
comment on column cpo_marketing_forecast.targ_tech is 'Targ. Tech.';
comment on column cpo_marketing_forecast.targ_mat is 'Target Mat.';
comment on column cpo_marketing_forecast.flex_source is 'Flex Source';
comment on column cpo_marketing_forecast.priority is 'Priority';
comment on column cpo_marketing_forecast.adj_p_grp is 'Adj P Grp';
comment on column cpo_marketing_forecast.adj_tech is 'Adj Tech';
comment on column cpo_marketing_forecast.adj_mat is 'Adj Mat';
comment on column cpo_marketing_forecast.total_pt is 'Total PT';
comment on column cpo_marketing_forecast.adj_bu is 'Adj BU';
comment on column cpo_marketing_forecast.status_milestones is 'Status/ Milestones';
comment on column cpo_marketing_forecast.offered_capacity is 'Offered Capacity';
comment on column cpo_marketing_forecast.development_capacity is 'Development Capacity';
comment on column cpo_marketing_forecast.pre_order_assigned_result is 'pre_order_assigned_result';
comment on column cpo_marketing_forecast.pre_order_quantity is 'pre_order_quantity';
comment on column cpo_marketing_forecast.flex_check is 'Flex check';
comment on column cpo_marketing_forecast.utc_update is '修改时间';
comment on column cpo_marketing_forecast.status is '状态';
comment on column cpo_marketing_forecast.create_by is '创建人';
comment on column cpo_marketing_forecast.update_by is '变更人';
comment on column cpo_marketing_forecast.note is '备注';
-- end --

-- begin--cpo_process_category--
drop table cpo_process_category;
create table cpo_process_category (
	process_category_id bigint not null,
	category_code varchar(30),
	category_name varchar(255),
	category_type varchar(50),
	utc_create datetime,
	utc_update datetime,
	category_status varchar(1),
	create_by bigint,
	update_by bigint,
	note varchar(1024)
);
alter table cpo_process_category add constraint cpo_process_category_pk PRIMARY KEY(process_category_id);
drop sequence seq_cpo_process_category_id;
create sequence seq_cpo_process_category_id minvalue 1 maxvalue 999999999999999999999999999 start with 1 increment by 1 nocache;
-- Add comments to the columns
comment on column cpo_process_category.process_category_id is '记录id';
comment on column cpo_process_category.category_code is '栏目代号';
comment on column cpo_process_category.category_name is '栏目名称';
comment on column cpo_process_category.category_type is '栏目类型';
comment on column cpo_process_category.utc_create is '创建时间';
comment on column cpo_process_category.utc_update is '修改时间';
comment on column cpo_process_category.category_status is '状态';
comment on column cpo_process_category.create_by is '创建人';
comment on column cpo_process_category.update_by is '变更人';
comment on column cpo_process_category.note is '备注';
-- end --

-- begin--cpo_customer_forecast--
drop table cpo_customer_forecast;
create table cpo_customer_forecast (
	customer_forecast_id bigint not null,
	document_id bigint,
	lo varchar(50),
	season VARCHAR(10),
	brand varchar(255),
	factory_group varchar(20),
	factory_id varchar(255),
	factory_name varchar(255),
	coo varchar(255),
	working_no varchar(255),
	model_id varchar(255),
	model_desc varchar(255),
	article varchar(255),
	business_segment varchar(255),
	sports_code varchar(255),
	product_type varchar(255),
	sales_line varchar(255),
	category_marketing_line varchar(255),
	corporate_marketing_line varchar(255),
	gps_customer_customer varchar(255),
	gps_customer_desc varchar(255),
	article_lead_time varchar(255),
	supply_chain_track varchar(255),
	period varchar(255),
	planning_volume_quantity varchar(255),
	forecast_quantity varchar(255),
	open_forecast varchar(255),
	order_quantity_by_crd varchar(255),
	order_quantity_by_plan_date varchar(255),
	pre_order_assigned_result varchar(1024),
	mkt_fc_assigned_result varchar(1024),
	mkt_fc_quantity varchar(20),
	order_country varchar(20),
	eu_rate double,
	eu_quantity double,
	china_rate double,
	china_quantity double,
	total_quantity double,
	utc_update datetime,
	status int,
	create_by bigint,
	update_by bigint,
	note varchar(1024)
);
alter table cpo_customer_forecast add constraint cpo_customer_forecast_pk PRIMARY KEY(customer_forecast_id);
drop sequence seq_cpo_customer_forecast_id;
create sequence seq_cpo_customer_forecast_id minvalue 1 maxvalue 999999999999999999999999999 start with 1 increment by 1 nocache;
-- Add comments to the columns
comment on column cpo_customer_forecast.customer_forecast_id is 'customer_forecast';
comment on column cpo_customer_forecast.document_id is 'document id';
comment on column cpo_customer_forecast.lo is 'lo';
comment on column cpo_customer_forecast.season is 'Season';
comment on column cpo_customer_forecast.brand is 'Brand';
comment on column cpo_customer_forecast.factory_group is 'Factory Group';
comment on column cpo_customer_forecast.factory_id is 'Factory ID';
comment on column cpo_customer_forecast.factory_name is 'Factory Name';
comment on column cpo_customer_forecast.coo is 'COO';
comment on column cpo_customer_forecast.working_no is 'Working No';
comment on column cpo_customer_forecast.model_id is 'Model ID';
comment on column cpo_customer_forecast.model_desc is 'Model DESC';
comment on column cpo_customer_forecast.article is 'Article';
comment on column cpo_customer_forecast.business_segment is 'Business Segment';
comment on column cpo_customer_forecast.sports_code is 'Sports Code';
comment on column cpo_customer_forecast.product_type is 'Product Type';
comment on column cpo_customer_forecast.sales_line is 'Sales Line';
comment on column cpo_customer_forecast.category_marketing_line is 'Category Marketing Line';
comment on column cpo_customer_forecast.corporate_marketing_line is 'Corporate Marketing Line';
comment on column cpo_customer_forecast.gps_customer_customer is 'customer_no';
comment on column cpo_customer_forecast.gps_customer_desc is 'GPS Customer DESC';
comment on column cpo_customer_forecast.article_lead_time is 'Article Lead time';
comment on column cpo_customer_forecast.supply_chain_track is 'Supply Chain Track';
comment on column cpo_customer_forecast.period is 'Period';
comment on column cpo_customer_forecast.planning_volume_quantity is 'Planning Volume Quantity';
comment on column cpo_customer_forecast.forecast_quantity is 'Forecast Quantity';
comment on column cpo_customer_forecast.open_forecast is 'OPEN FC (all SCT)';
comment on column cpo_customer_forecast.order_quantity_by_crd is 'Order Quantity by CRD';
comment on column cpo_customer_forecast.order_quantity_by_plan_date is 'Order Quantity by Plan Date';
comment on column cpo_customer_forecast.pre_order_assigned_result is 'pre_order_assigned_result';
comment on column cpo_customer_forecast.mkt_fc_assigned_result is 'mkt_fc_assigned_result';
comment on column cpo_customer_forecast.mkt_fc_quantity is 'mkt_fc_quantity';
comment on column cpo_customer_forecast.order_country is 'order_country';
comment on column cpo_customer_forecast.eu_rate is 'eu_rate';
comment on column cpo_customer_forecast.eu_quantity is 'eu_quantity';
comment on column cpo_customer_forecast.china_rate is 'china_rate';
comment on column cpo_customer_forecast.china_quantity is 'china_quantity';
comment on column cpo_customer_forecast.total_quantity is 'total_quantity';
comment on column cpo_customer_forecast.utc_update is '修改时间';
comment on column cpo_customer_forecast.status is '状态';
comment on column cpo_customer_forecast.create_by is '创建人';
comment on column cpo_customer_forecast.update_by is '变更人';
comment on column cpo_customer_forecast.note is '备注';
-- end --

-- begin--cpo_edi_order_master--
drop table cpo_edi_order_master;
create table cpo_edi_order_master (
	order_master_id bigint not null,
	document_id bigint,
	po varchar(255),
	quantity varchar(255),
	price varchar(255),
	orderuid varchar(255),
	customerordernumber varchar(255),
	pobatchdate datetime,
	salesgroup varchar(255),
	subsidiaryid varchar(255),
	distributionchannel varchar(255),
	clientnumber varchar(255),
	customernumber varchar(255),
	factorynumber varchar(255),
	purchasinggroupcode varchar(255),
	releasestatus varchar(255),
	purchasingorganization varchar(255),
	originalfactory varchar(255),
	productionleadtime varchar(255),
	plandate datetime,
	classcode varchar(255),
	customerrequestdate datetime,
	customcountryfortax varchar(255),
	vatnumber varchar(255),
	erpordernumber varchar(255),
	potype varchar(255),
	hidehts varchar(255),
	htseligibility varchar(255),
	origineligibility varchar(255),
	htsformtype varchar(255),
	htsformcurrency varchar(255),
	inscopeindicator varchar(255),
	ismtfc varchar(255),
	liasonsofficecode varchar(255),
	idrevisionnumber varchar(255),
	shasorder varchar(255),
	shasready varchar(255),
	customertype varchar(255),
	shascustomer varchar(255),
	ordertypedescription varchar(255),
	adidasshipmode varchar(255),
	workflow varchar(255),
	allowmixedpopacking varchar(255),
	labelid varchar(255),
	portofloading varchar(255),
	accountnumber varchar(255),
	lspadidascode varchar(255),
	integrated3pl varchar(255),
	multiplecontainers varchar(255),
	usepodustable varchar(255),
	portofdischarge varchar(255),
	currency varchar(255),
	orderstatus; varchar(255),
	ordertype varchar(255),
	releasenumber varchar(255),
	orderdate datetime,
	contractnumber varchar(255),
	partialshipment varchar(255),
	transitshipment varchar(255),
	workingnumber varchar(255),
	articlenumber varchar(255),
	articlename varchar(255),
	customerno varchar(255),
	firstproductiondate datetime,
	lastproductiondate datetime,
	postatisticaldeliverydate datetime,
	podd datetime,
	sportsdescription varchar(255),
	brand varchar(255),
	branddescription varchar(255),
	modelnumber varchar(255),
	modelname varchar(255),
	ordergroup varchar(255),
	podelupdatedelay datetime,
	customersizerun varchar(255),
	gender varchar(255),
	deliverydelay datetime,
	division varchar(255),
	materialcolordescription varchar(255),
	businessmodelattribute varchar(255),
	gpsitemlinenumber varchar(255),
	category varchar(255),
	classification varchar(255),
	confirmationdelay datetime,
	barcodetype varchar(255),
	customeridentifier varchar(255),
	poextendeddatastatusindicator varchar(255),
	vascutoffdate datetime,
	shippinginstruction varchar(255),
	technicalnotation varchar(255),
	caselottext varchar(255),
	caselot2text varchar(255),
	caselot2qty varchar(255),
	caselot2ratio varchar(255),
	caselot3text varchar(255),
	caselot3qty varchar(255),
	caselot3ratio varchar(255),
	caselot4text varchar(255),
	caselot4qty varchar(255),
	caselot4ratio varchar(255),
	caselot5text varchar(255),
	caselot5qty varchar(255),
	caselot5ratio varchar(255),
	technologyconcept varchar(255),
	technologyconceptdescription varchar(255),
	technologycomponent varchar(255),
	confirmationdelaypd varchar(255),
	deliverydelaypd varchar(255),
	destinationcountry varchar(255),
	htscodechangeflag varchar(255),
	htsflagupdatedtimestamp varchar(255),
	markforaddress varchar(255),
	marketdeliverydate datetime,
	numberofcartons varchar(255),
	numberofunits varchar(255),
	priorityindicator varchar(255),
	shascodenonus varchar(255),
	totalcartonpieces varchar(255),
	zzcust_cntry varchar(255),
	mtfcnumber varchar(255)
);
alter table cpo_edi_order_master add constraint cpo_edi_order_master_pk PRIMARY KEY(order_master_id);
drop sequence seq_cpo_edi_order_master_id;
create sequence seq_cpo_edi_order_master_id minvalue 1 maxvalue 999999999999999999999999999 start with 1 increment by 1 nocache;
-- Add comments to the columns
comment on column cpo_edi_order_master.order_master_id is '记录id';
comment on column cpo_edi_order_master.document_id is 'document id';
comment on column cpo_edi_order_master.po is 'PO';
comment on column cpo_edi_order_master.quantity is 'Quantity';
comment on column cpo_edi_order_master.price is 'Price';
comment on column cpo_edi_order_master.orderuid is 'ORDERUID';
comment on column cpo_edi_order_master.customerordernumber is 'CustomerOrderNumber';
comment on column cpo_edi_order_master.pobatchdate is 'PoBatchDate';
comment on column cpo_edi_order_master.salesgroup is 'SalesGroup';
comment on column cpo_edi_order_master.subsidiaryid is 'SubsidiaryId';
comment on column cpo_edi_order_master.distributionchannel is 'DistributionChannel';
comment on column cpo_edi_order_master.clientnumber is 'ClientNumber';
comment on column cpo_edi_order_master.customernumber is 'CustomerNumber';
comment on column cpo_edi_order_master.factorynumber is 'FactoryNumber';
comment on column cpo_edi_order_master.purchasinggroupcode is 'PurchasingGroupCode';
comment on column cpo_edi_order_master.releasestatus is 'ReleaseStatus';
comment on column cpo_edi_order_master.purchasingorganization is 'PurchasingOrganization';
comment on column cpo_edi_order_master.originalfactory is 'OriginalFactory';
comment on column cpo_edi_order_master.productionleadtime is 'ProductionLeadTime';
comment on column cpo_edi_order_master.plandate is 'PlanDate';
comment on column cpo_edi_order_master.classcode is 'ClassCode';
comment on column cpo_edi_order_master.customerrequestdate is 'CustomerRequestDate';
comment on column cpo_edi_order_master.customcountryfortax is 'CustomCountryForTax';
comment on column cpo_edi_order_master.vatnumber is 'VatNumber';
comment on column cpo_edi_order_master.erpordernumber is 'ErpOrderNumber';
comment on column cpo_edi_order_master.potype is 'POType';
comment on column cpo_edi_order_master.hidehts is 'HideHTS';
comment on column cpo_edi_order_master.htseligibility is 'HTSEligibility';
comment on column cpo_edi_order_master.origineligibility is 'OriginEligibility';
comment on column cpo_edi_order_master.htsformtype is 'HTSFormType';
comment on column cpo_edi_order_master.htsformcurrency is 'HTSFormCurrency';
comment on column cpo_edi_order_master.inscopeindicator is 'InScopeIndicator';
comment on column cpo_edi_order_master.ismtfc is 'isMTFC';
comment on column cpo_edi_order_master.liasonsofficecode is 'LiasonsOfficeCode';
comment on column cpo_edi_order_master.idrevisionnumber is 'idRevisionNumber';
comment on column cpo_edi_order_master.shasorder is 'ShasOrder';
comment on column cpo_edi_order_master.shasready is 'ShasReady';
comment on column cpo_edi_order_master.customertype is 'CustomerType';
comment on column cpo_edi_order_master.shascustomer is 'ShasCustomer';
comment on column cpo_edi_order_master.ordertypedescription is 'OrderTypeDescription';
comment on column cpo_edi_order_master.adidasshipmode is 'AdidasShipMode';
comment on column cpo_edi_order_master.workflow is 'Workflow';
comment on column cpo_edi_order_master.allowmixedpopacking is 'AllowMixedPoPacking';
comment on column cpo_edi_order_master.labelid is 'LabelID';
comment on column cpo_edi_order_master.portofloading is 'PortOfLoading';
comment on column cpo_edi_order_master.accountnumber is 'AccountNumber';
comment on column cpo_edi_order_master.lspadidascode is 'LspAdidasCode';
comment on column cpo_edi_order_master.integrated3pl is 'Integrated3pl';
comment on column cpo_edi_order_master.multiplecontainers is 'MultipleContainers';
comment on column cpo_edi_order_master.usepodustable is 'UsePodUsTable';
comment on column cpo_edi_order_master.portofdischarge is 'PortOfDischarge';
comment on column cpo_edi_order_master.currency is 'Currency';
comment on column cpo_edi_order_master.orderstatus; is 'OrderStatus;';
comment on column cpo_edi_order_master.ordertype is 'OrderType';
comment on column cpo_edi_order_master.releasenumber is 'ReleaseNumber';
comment on column cpo_edi_order_master.orderdate is 'OrderDate';
comment on column cpo_edi_order_master.contractnumber is 'ContractNumber';
comment on column cpo_edi_order_master.partialshipment is 'PartialShipment';
comment on column cpo_edi_order_master.transitshipment is 'TransitShipment';
comment on column cpo_edi_order_master.workingnumber is 'WorkingNumber';
comment on column cpo_edi_order_master.articlenumber is 'ArticleNumber';
comment on column cpo_edi_order_master.articlename is 'ArticleName';
comment on column cpo_edi_order_master.customerno is 'CustomerNo';
comment on column cpo_edi_order_master.firstproductiondate is 'FirstProductionDate';
comment on column cpo_edi_order_master.lastproductiondate is 'LastProductionDate';
comment on column cpo_edi_order_master.postatisticaldeliverydate is 'PoStatisticalDeliveryDate';
comment on column cpo_edi_order_master.podd is 'Podd';
comment on column cpo_edi_order_master.sportsdescription is 'SportsDescription';
comment on column cpo_edi_order_master.brand is 'Brand';
comment on column cpo_edi_order_master.branddescription is 'BrandDescription';
comment on column cpo_edi_order_master.modelnumber is 'ModelNumber';
comment on column cpo_edi_order_master.modelname is 'ModelName';
comment on column cpo_edi_order_master.ordergroup is 'OrderGroup';
comment on column cpo_edi_order_master.podelupdatedelay is 'PoDelUpdateDelay';
comment on column cpo_edi_order_master.customersizerun is 'CustomerSizeRun';
comment on column cpo_edi_order_master.gender is 'Gender';
comment on column cpo_edi_order_master.deliverydelay is 'DeliveryDelay';
comment on column cpo_edi_order_master.division is 'Division';
comment on column cpo_edi_order_master.materialcolordescription is 'MaterialColorDescription';
comment on column cpo_edi_order_master.businessmodelattribute is 'BusinessModelAttribute';
comment on column cpo_edi_order_master.gpsitemlinenumber is 'GpsItemLineNumber';
comment on column cpo_edi_order_master.category is 'Category';
comment on column cpo_edi_order_master.classification is 'Classification';
comment on column cpo_edi_order_master.confirmationdelay is 'ConfirmationDelay';
comment on column cpo_edi_order_master.barcodetype is 'BarcodeType';
comment on column cpo_edi_order_master.customeridentifier is 'CustomerIdentifier';
comment on column cpo_edi_order_master.poextendeddatastatusindicator is 'PoExtendedDataStatusIndicator';
comment on column cpo_edi_order_master.vascutoffdate is 'VASCutoffDate';
comment on column cpo_edi_order_master.shippinginstruction is 'ShippingInstruction';
comment on column cpo_edi_order_master.technicalnotation is 'TechnicalNotation';
comment on column cpo_edi_order_master.caselottext is 'CaseLotText';
comment on column cpo_edi_order_master.caselot2text is 'CaseLot2Text';
comment on column cpo_edi_order_master.caselot2qty is 'CaseLot2Qty';
comment on column cpo_edi_order_master.caselot2ratio is 'CaseLot2Ratio';
comment on column cpo_edi_order_master.caselot3text is 'CaseLot3Text';
comment on column cpo_edi_order_master.caselot3qty is 'CaseLot3Qty';
comment on column cpo_edi_order_master.caselot3ratio is 'CaseLot3Ratio';
comment on column cpo_edi_order_master.caselot4text is 'CaseLot4Text';
comment on column cpo_edi_order_master.caselot4qty is 'CaseLot4Qty';
comment on column cpo_edi_order_master.caselot4ratio is 'CaseLot4Ratio';
comment on column cpo_edi_order_master.caselot5text is 'CaseLot5Text';
comment on column cpo_edi_order_master.caselot5qty is 'CaseLot5Qty';
comment on column cpo_edi_order_master.caselot5ratio is 'CaseLot5Ratio';
comment on column cpo_edi_order_master.technologyconcept is 'TechnologyConcept';
comment on column cpo_edi_order_master.technologyconceptdescription is 'TechnologyConceptDescription';
comment on column cpo_edi_order_master.technologycomponent is 'TechnologyComponent';
comment on column cpo_edi_order_master.confirmationdelaypd is 'ConfirmationDelayPd';
comment on column cpo_edi_order_master.deliverydelaypd is 'DeliveryDelayPd';
comment on column cpo_edi_order_master.destinationcountry is 'DestinationCountry';
comment on column cpo_edi_order_master.htscodechangeflag is 'HTSCodeChangeFlag';
comment on column cpo_edi_order_master.htsflagupdatedtimestamp is 'HTSFlagUpdatedTimestamp';
comment on column cpo_edi_order_master.markforaddress is 'MarkForAddress';
comment on column cpo_edi_order_master.marketdeliverydate is 'MarketDeliveryDate';
comment on column cpo_edi_order_master.numberofcartons is 'NumberOfCartons';
comment on column cpo_edi_order_master.numberofunits is 'NumberOfUnits';
comment on column cpo_edi_order_master.priorityindicator is 'PriorityIndicator';
comment on column cpo_edi_order_master.shascodenonus is 'ShasCodeNonUs';
comment on column cpo_edi_order_master.totalcartonpieces is 'TotalCartonPieces';
comment on column cpo_edi_order_master.zzcust_cntry is 'ZZCUST_CNTRY';
comment on column cpo_edi_order_master.mtfcnumber is 'mtfcNumber';
-- end --

-- begin--worktable_edi_order_master--
drop table worktable_edi_order_master;
create table worktable_edi_order_master (
	order_master_id bigint not null,
	document_id bigint,
	pre_ord_id bigint,
	season varchar(10),
	season_remark varchar(50),
	order_actual_type Varchar(30),
	po varchar(30),
	original_po Varchar(30),
	transferred_po Varchar(30),
	batch_no varchar(5),
	assigned_factory varchar(10),
	quantity varchar(10),
	price varchar(10),
	orderuid varchar(255),
	customerordernumber varchar(255),
	pobatchdate datetime,
	salesgroup varchar(255),
	subsidiaryid varchar(255),
	distributionchannel varchar(255),
	clientnumber varchar(50),
	customernumber varchar(50),
	lastupdatedate datetime,
	factorynumber varchar(50),
	purchasinggroupcode varchar(255),
	releasestatus varchar(255),
	purchasingorganization varchar(255),
	originalfactory varchar(255),
	productionleadtime varchar(10),
	plandate datetime,
	classcode varchar(50),
	customerrequestdate datetime,
	customcountryfortax varchar(255),
	vatnumber varchar(255),
	erpordernumber varchar(255),
	potype varchar(20),
	hidehts varchar(255),
	htseligibility varchar(255),
	origineligibility varchar(255),
	htsformtype varchar(10),
	htsformcurrency varchar(50),
	inscopeindicator varchar(255),
	ismtfc varchar(255),
	liasonsofficecode varchar(255),
	idrevisionnumber varchar(50),
	shasorder varchar(255),
	shasready varchar(255),
	customertype varchar(50),
	shascustomer varchar(255),
	ordertypedescription varchar(255),
	adidasshipmode varchar(10),
	workflow varchar(50),
	allowmixedpopacking varchar(255),
	labelid varchar(255),
	portofloading varchar(255),
	accountnumber varchar(255),
	lspadidascode varchar(255),
	integrated3pl varchar(255),
	multiplecontainers varchar(255),
	usepodustable varchar(50),
	portofdischarge varchar(255),
	currency varchar(50),
	orderstatus varchar(10),
	ordertype varchar(50),
	releasenumber varchar(100),
	orderdate datetime,
	contractnumber varchar(150),
	partialshipment varchar(255),
	transitshipment varchar(255),
	workingnumber varchar(100),
	articlenumber varchar(50),
	articlename varchar(255),
	firstproductiondate datetime,
	lastproductiondate datetime,
	postatisticaldeliverydate datetime,
	podd datetime,
	sportsdescription varchar(255),
	brand varchar(50),
	branddescription varchar(255),
	modelnumber varchar(50),
	modelname varchar(255),
	ordergroup varchar(50),
	podelupdatedelay datetime,
	customersizerun varchar(10),
	gender varchar(3),
	deliverydelay datetime,
	division varchar(50),
	materialcolordescription varchar(255),
	businessmodelattribute varchar(255),
	gpsitemlinenumber varchar(255),
	category varchar(50),
	classification varchar(50),
	confirmationdelay datetime,
	barcodetype varchar(50),
	customeridentifier varchar(255),
	poextendeddatastatusindicator varchar(255),
	vascutoffdate datetime,
	shippinginstruction varchar(50),
	technicalnotation varchar(255),
	caselottext varchar(255),
	caselot2text varchar(255),
	caselot2qty varchar(10),
	caselot2ratio varchar(50),
	caselot3text varchar(255),
	caselot3qty varchar(10),
	caselot3ratio varchar(50),
	caselot4text varchar(255),
	caselot4qty varchar(10),
	caselot4ratio varchar(50),
	caselot5text varchar(255),
	caselot5qty varchar(10),
	caselot5ratio varchar(50),
	technologyconcept varchar(255),
	technologyconceptdescription varchar(255),
	technologycomponent varchar(255),
	confirmationdelaypd varchar(50),
	deliverydelaypd varchar(50),
	destinationcountry varchar(50),
	htscodechangeflag varchar(50),
	htsflagupdatedtimestamp varchar(50),
	markforaddress varchar(255),
	warehouselocationcode varchar(10),
	retailercurrencylineitem varchar(10),
	marketdeliverydate datetime,
	numberofcartons varchar(10),
	numberofunits varchar(10),
	priorityindicator varchar(255),
	shascodenonus varchar(50),
	totalcartonpieces varchar(10),
	zzcust_cntry varchar(255),
	mtfcnumber varchar(50),
	newcustomerrequestdate datetime,
	newplandate datetime,
	newfirstproductiondate datetime,
	newlastproductiondate datetime,
	newpodd datetime,
	newpsdd datetime,
	factory_fpd datetime,
	factory_psdd datetime,
	balance double,
	assignment_remark Varchar(128),
	change_remark Varchar(500),
	original_lc0190_date Datetime,
	ppc_order_status Varchar(10),
	special_order varchar(10),
	date_remark Varchar(50),
	order_remark varchar(256),
	mi_hem_insert varchar(100),
	mi_logo varchar(50),
	mi_n_n varchar(50),
	mi_print varchar(50),
	mi_stripes varchar(50),
	size_type varchar(20),
	remark Varchar(50),
	athletic Varchar(50),
	utc_create datetime,
	utc_update datetime,
	order_master_status varchar(1),
	create_by bigint,
	update_by bigint,
	note varchar(1024)
);
alter table worktable_edi_order_master add constraint worktable_edi_order_master_pk PRIMARY KEY(order_master_id);
drop sequence seq_worktable_edi_order_master_id;
create sequence seq_worktable_edi_order_master_id minvalue 1 maxvalue 999999999999999999999999999 start with 1 increment by 1 nocache;
-- Add comments to the columns
comment on column worktable_edi_order_master.order_master_id is '记录id';
comment on column worktable_edi_order_master.document_id is 'document id';
comment on column worktable_edi_order_master.pre_ord_id is 'pre_ord_id';
comment on column worktable_edi_order_master.season is 'season';
comment on column worktable_edi_order_master.season_remark is 'season remark';
comment on column worktable_edi_order_master.order_actual_type is '订单实际类型';
comment on column worktable_edi_order_master.po is 'PO';
comment on column worktable_edi_order_master.original_po is 'original_po';
comment on column worktable_edi_order_master.transferred_po is 'transferred_po';
comment on column worktable_edi_order_master.batch_no is 'Batch no';
comment on column worktable_edi_order_master.assigned_factory is 'Assigned_factory';
comment on column worktable_edi_order_master.quantity is 'Quantity';
comment on column worktable_edi_order_master.price is 'Price';
comment on column worktable_edi_order_master.orderuid is 'ORDERUID';
comment on column worktable_edi_order_master.customerordernumber is 'CustomerOrderNumber';
comment on column worktable_edi_order_master.pobatchdate is 'PoBatchDate';
comment on column worktable_edi_order_master.salesgroup is 'SalesGroup';
comment on column worktable_edi_order_master.subsidiaryid is 'SubsidiaryId';
comment on column worktable_edi_order_master.distributionchannel is 'DistributionChannel';
comment on column worktable_edi_order_master.clientnumber is 'ClientNumber';
comment on column worktable_edi_order_master.customernumber is 'CustomerNumber';
comment on column worktable_edi_order_master.lastupdatedate is 'LastUpdateDate';
comment on column worktable_edi_order_master.factorynumber is 'FactoryNumber';
comment on column worktable_edi_order_master.purchasinggroupcode is 'PurchasingGroupCode';
comment on column worktable_edi_order_master.releasestatus is 'ReleaseStatus';
comment on column worktable_edi_order_master.purchasingorganization is 'PurchasingOrganization';
comment on column worktable_edi_order_master.originalfactory is 'OriginalFactory';
comment on column worktable_edi_order_master.productionleadtime is 'ProductionLeadTime';
comment on column worktable_edi_order_master.plandate is 'PlanDate';
comment on column worktable_edi_order_master.classcode is 'ClassCode';
comment on column worktable_edi_order_master.customerrequestdate is 'CustomerRequestDate';
comment on column worktable_edi_order_master.customcountryfortax is 'CustomCountryForTax';
comment on column worktable_edi_order_master.vatnumber is 'VatNumber';
comment on column worktable_edi_order_master.erpordernumber is 'ErpOrderNumber';
comment on column worktable_edi_order_master.potype is 'POType';
comment on column worktable_edi_order_master.hidehts is 'HideHTS';
comment on column worktable_edi_order_master.htseligibility is 'HTSEligibility';
comment on column worktable_edi_order_master.origineligibility is 'OriginEligibility';
comment on column worktable_edi_order_master.htsformtype is 'HTSFormType';
comment on column worktable_edi_order_master.htsformcurrency is 'HTSFormCurrency';
comment on column worktable_edi_order_master.inscopeindicator is 'InScopeIndicator';
comment on column worktable_edi_order_master.ismtfc is 'isMTFC';
comment on column worktable_edi_order_master.liasonsofficecode is 'LiasonsOfficeCode';
comment on column worktable_edi_order_master.idrevisionnumber is 'idRevisionNumber';
comment on column worktable_edi_order_master.shasorder is 'ShasOrder';
comment on column worktable_edi_order_master.shasready is 'ShasReady';
comment on column worktable_edi_order_master.customertype is 'CustomerType';
comment on column worktable_edi_order_master.shascustomer is 'ShasCustomer';
comment on column worktable_edi_order_master.ordertypedescription is 'OrderTypeDescription';
comment on column worktable_edi_order_master.adidasshipmode is 'AdidasShipMode';
comment on column worktable_edi_order_master.workflow is 'Workflow';
comment on column worktable_edi_order_master.allowmixedpopacking is 'AllowMixedPoPacking';
comment on column worktable_edi_order_master.labelid is 'LabelID';
comment on column worktable_edi_order_master.portofloading is 'PortOfLoading';
comment on column worktable_edi_order_master.accountnumber is 'AccountNumber';
comment on column worktable_edi_order_master.lspadidascode is 'LspAdidasCode';
comment on column worktable_edi_order_master.integrated3pl is 'Integrated3pl';
comment on column worktable_edi_order_master.multiplecontainers is 'MultipleContainers';
comment on column worktable_edi_order_master.usepodustable is 'UsePodUsTable';
comment on column worktable_edi_order_master.portofdischarge is 'PortOfDischarge';
comment on column worktable_edi_order_master.currency is 'Currency';
comment on column worktable_edi_order_master.orderstatus is 'OrderStatus;';
comment on column worktable_edi_order_master.ordertype is 'OrderType';
comment on column worktable_edi_order_master.releasenumber is 'ReleaseNumber';
comment on column worktable_edi_order_master.orderdate is 'OrderDate';
comment on column worktable_edi_order_master.contractnumber is 'ContractNumber';
comment on column worktable_edi_order_master.partialshipment is 'PartialShipment';
comment on column worktable_edi_order_master.transitshipment is 'TransitShipment';
comment on column worktable_edi_order_master.workingnumber is 'WorkingNumber';
comment on column worktable_edi_order_master.articlenumber is 'ArticleNumber';
comment on column worktable_edi_order_master.articlename is 'ArticleName';
comment on column worktable_edi_order_master.firstproductiondate is 'FirstProductionDate';
comment on column worktable_edi_order_master.lastproductiondate is 'LastProductionDate';
comment on column worktable_edi_order_master.postatisticaldeliverydate is 'PoStatisticalDeliveryDate';
comment on column worktable_edi_order_master.podd is 'Podd';
comment on column worktable_edi_order_master.sportsdescription is 'SportsDescription';
comment on column worktable_edi_order_master.brand is 'Brand';
comment on column worktable_edi_order_master.branddescription is 'BrandDescription';
comment on column worktable_edi_order_master.modelnumber is 'ModelNumber';
comment on column worktable_edi_order_master.modelname is 'ModelName';
comment on column worktable_edi_order_master.ordergroup is 'OrderGroup';
comment on column worktable_edi_order_master.podelupdatedelay is 'PoDelUpdateDelay';
comment on column worktable_edi_order_master.customersizerun is 'CustomerSizeRun';
comment on column worktable_edi_order_master.gender is 'Gender';
comment on column worktable_edi_order_master.deliverydelay is 'DeliveryDelay';
comment on column worktable_edi_order_master.division is 'Division';
comment on column worktable_edi_order_master.materialcolordescription is 'MaterialColorDescription';
comment on column worktable_edi_order_master.businessmodelattribute is 'BusinessModelAttribute';
comment on column worktable_edi_order_master.gpsitemlinenumber is 'GpsItemLineNumber';
comment on column worktable_edi_order_master.category is 'Category';
comment on column worktable_edi_order_master.classification is 'Classification';
comment on column worktable_edi_order_master.confirmationdelay is 'ConfirmationDelay';
comment on column worktable_edi_order_master.barcodetype is 'BarcodeType';
comment on column worktable_edi_order_master.customeridentifier is 'CustomerIdentifier';
comment on column worktable_edi_order_master.poextendeddatastatusindicator is 'PoExtendedDataStatusIndicator';
comment on column worktable_edi_order_master.vascutoffdate is 'VASCutoffDate';
comment on column worktable_edi_order_master.shippinginstruction is 'ShippingInstruction';
comment on column worktable_edi_order_master.technicalnotation is 'TechnicalNotation';
comment on column worktable_edi_order_master.caselottext is 'CaseLotText';
comment on column worktable_edi_order_master.caselot2text is 'CaseLot2Text';
comment on column worktable_edi_order_master.caselot2qty is 'CaseLot2Qty';
comment on column worktable_edi_order_master.caselot2ratio is 'CaseLot2Ratio';
comment on column worktable_edi_order_master.caselot3text is 'CaseLot3Text';
comment on column worktable_edi_order_master.caselot3qty is 'CaseLot3Qty';
comment on column worktable_edi_order_master.caselot3ratio is 'CaseLot3Ratio';
comment on column worktable_edi_order_master.caselot4text is 'CaseLot4Text';
comment on column worktable_edi_order_master.caselot4qty is 'CaseLot4Qty';
comment on column worktable_edi_order_master.caselot4ratio is 'CaseLot4Ratio';
comment on column worktable_edi_order_master.caselot5text is 'CaseLot5Text';
comment on column worktable_edi_order_master.caselot5qty is 'CaseLot5Qty';
comment on column worktable_edi_order_master.caselot5ratio is 'CaseLot5Ratio';
comment on column worktable_edi_order_master.technologyconcept is 'TechnologyConcept';
comment on column worktable_edi_order_master.technologyconceptdescription is 'TechnologyConceptDescription';
comment on column worktable_edi_order_master.technologycomponent is 'TechnologyComponent';
comment on column worktable_edi_order_master.confirmationdelaypd is 'ConfirmationDelayPd';
comment on column worktable_edi_order_master.deliverydelaypd is 'DeliveryDelayPd';
comment on column worktable_edi_order_master.destinationcountry is 'DestinationCountry';
comment on column worktable_edi_order_master.htscodechangeflag is 'HTSCodeChangeFlag';
comment on column worktable_edi_order_master.htsflagupdatedtimestamp is 'HTSFlagUpdatedTimestamp';
comment on column worktable_edi_order_master.markforaddress is 'MarkForAddress';
comment on column worktable_edi_order_master.warehouselocationcode is 'warehouselocationcode';
comment on column worktable_edi_order_master.retailercurrencylineitem is 'RetailerCurrencyLineItem';
comment on column worktable_edi_order_master.marketdeliverydate is 'MarketDeliveryDate';
comment on column worktable_edi_order_master.numberofcartons is 'NumberOfCartons';
comment on column worktable_edi_order_master.numberofunits is 'NumberOfUnits';
comment on column worktable_edi_order_master.priorityindicator is 'PriorityIndicator';
comment on column worktable_edi_order_master.shascodenonus is 'ShasCodeNonUs';
comment on column worktable_edi_order_master.totalcartonpieces is 'TotalCartonPieces';
comment on column worktable_edi_order_master.zzcust_cntry is 'ZZCUST_CNTRY';
comment on column worktable_edi_order_master.mtfcnumber is 'mtfcNumber';
comment on column worktable_edi_order_master.newcustomerrequestdate is 'newCustomerRequestDate';
comment on column worktable_edi_order_master.newplandate is 'newPlanDate';
comment on column worktable_edi_order_master.newfirstproductiondate is 'newFirstProductionDate';
comment on column worktable_edi_order_master.newlastproductiondate is 'new lastProductionDate';
comment on column worktable_edi_order_master.newpodd is 'newPodd';
comment on column worktable_edi_order_master.newpsdd is 'newPsdd';
comment on column worktable_edi_order_master.factory_fpd is 'Factory FPD';
comment on column worktable_edi_order_master.factory_psdd is 'Factory PSDD';
comment on column worktable_edi_order_master.balance is 'balance';
comment on column worktable_edi_order_master.assignment_remark is 'Assignment_remark';
comment on column worktable_edi_order_master.change_remark is 'Change_remark';
comment on column worktable_edi_order_master.original_lc0190_date is 'originalLc0190Date';
comment on column worktable_edi_order_master.ppc_order_status is 'ppc_order_status';
comment on column worktable_edi_order_master.special_order is '特殊单';
comment on column worktable_edi_order_master.date_remark is 'Date Remark';
comment on column worktable_edi_order_master.order_remark is 'order_remark';
comment on column worktable_edi_order_master.mi_hem_insert is 'mi_hem_insert';
comment on column worktable_edi_order_master.mi_logo is 'mi_logo';
comment on column worktable_edi_order_master.mi_n_n is 'mi_n_n';
comment on column worktable_edi_order_master.mi_print is 'mi_print';
comment on column worktable_edi_order_master.mi_stripes is 'mi_stripes';
comment on column worktable_edi_order_master.size_type is 'size_type';
comment on column worktable_edi_order_master.remark is 'remark';
comment on column worktable_edi_order_master.athletic is 'athletic';
comment on column worktable_edi_order_master.utc_create is '创建时间';
comment on column worktable_edi_order_master.utc_update is '修改时间';
comment on column worktable_edi_order_master.order_master_status is '状态';
comment on column worktable_edi_order_master.create_by is '创建人';
comment on column worktable_edi_order_master.update_by is '变更人';
comment on column worktable_edi_order_master.note is '备注';
-- end --

-- begin--worktable_edi_order_size--
drop table worktable_edi_order_size;
create table worktable_edi_order_size (
	edi_order_size_id bigint not null,
	order_master_id bigint,
	size_name varchar(20),
	manufacturing_size varchar(20),
	size_quantity varchar(20),
	unit_price varchar(20),
	upc_code varchar(255),
	buyer_size_code varchar(255),
	utc_create datetime,
	utc_update datetime,
	order_size_status varchar(1),
	create_by bigint,
	update_by bigint,
	note varchar(1024)
);
alter table worktable_edi_order_size add constraint worktable_edi_order_size_pk PRIMARY KEY(edi_order_size_id);
drop sequence seq_worktable_edi_order_size_id;
create sequence seq_worktable_edi_order_size_id minvalue 1 maxvalue 999999999999999999999999999 start with 1 increment by 1 nocache;
-- Add comments to the columns
comment on column worktable_edi_order_size.edi_order_size_id is '记录id';
comment on column worktable_edi_order_size.order_master_id is '订单id';
comment on column worktable_edi_order_size.size_name is 'size Name';
comment on column worktable_edi_order_size.manufacturing_size is 'manufacturing Size';
comment on column worktable_edi_order_size.size_quantity is '数量';
comment on column worktable_edi_order_size.unit_price is 'unit Price';
comment on column worktable_edi_order_size.upc_code is 'UPCCode';
comment on column worktable_edi_order_size.buyer_size_code is 'buyer Size Code';
comment on column worktable_edi_order_size.utc_create is '创建时间';
comment on column worktable_edi_order_size.utc_update is '修改时间';
comment on column worktable_edi_order_size.order_size_status is '状态';
comment on column worktable_edi_order_size.create_by is '创建人';
comment on column worktable_edi_order_size.update_by is '变更人';
comment on column worktable_edi_order_size.note is '备注';
-- end --

-- begin--worktable_edi_order_charge--
drop table worktable_edi_order_charge;
create table worktable_edi_order_charge (
	edi_order_charge_id bigint not null,
	order_master_id bigint,
	charge_code varchar(255),
	amount varchar(20),
	charge_type varchar(20),
	rate varchar(20),
	utc_create datetime,
	utc_update datetime,
	order_charge_status varchar(1),
	create_by bigint,
	update_by bigint,
	note varchar(1024)
);
alter table worktable_edi_order_charge add constraint worktable_edi_order_charge_pk PRIMARY KEY(edi_order_charge_id);
drop sequence seq_worktable_edi_order_charge_id;
create sequence seq_worktable_edi_order_charge_id minvalue 1 maxvalue 999999999999999999999999999 start with 1 increment by 1 nocache;
-- Add comments to the columns
comment on column worktable_edi_order_charge.edi_order_charge_id is '记录id';
comment on column worktable_edi_order_charge.order_master_id is '订单id';
comment on column worktable_edi_order_charge.charge_code is 'charge Code';
comment on column worktable_edi_order_charge.amount is '数量';
comment on column worktable_edi_order_charge.charge_type is 'charge_type';
comment on column worktable_edi_order_charge.rate is 'rate';
comment on column worktable_edi_order_charge.utc_create is '创建时间';
comment on column worktable_edi_order_charge.utc_update is '修改时间';
comment on column worktable_edi_order_charge.order_charge_status is '状态';
comment on column worktable_edi_order_charge.create_by is '创建人';
comment on column worktable_edi_order_charge.update_by is '变更人';
comment on column worktable_edi_order_charge.note is '备注';
-- end --

-- begin--worktable_edi_order_fob--
drop table worktable_edi_order_fob;
create table worktable_edi_order_fob (
	edi_order_fob_id bigint not null,
	order_master_id bigint,
	united_nationlocation_code varchar(255),
	incoterm varchar(255),
	fob_status varchar(20),
	utc_create datetime,
	utc_update datetime,
	order_fob_status varchar(1),
	create_by bigint,
	update_by bigint,
	note varchar(1024)
);
alter table worktable_edi_order_fob add constraint worktable_edi_order_fob_pk PRIMARY KEY(edi_order_fob_id);
drop sequence seq_worktable_edi_order_fob_id;
create sequence seq_worktable_edi_order_fob_id minvalue 1 maxvalue 999999999999999999999999999 start with 1 increment by 1 nocache;
-- Add comments to the columns
comment on column worktable_edi_order_fob.edi_order_fob_id is '记录id';
comment on column worktable_edi_order_fob.order_master_id is '订单id';
comment on column worktable_edi_order_fob.united_nationlocation_code is 'UnitedNationLocationCode';
comment on column worktable_edi_order_fob.incoterm is 'Incoterm';
comment on column worktable_edi_order_fob.fob_status is 'FOBStatus';
comment on column worktable_edi_order_fob.utc_create is '创建时间';
comment on column worktable_edi_order_fob.utc_update is '修改时间';
comment on column worktable_edi_order_fob.order_fob_status is '状态';
comment on column worktable_edi_order_fob.create_by is '创建人';
comment on column worktable_edi_order_fob.update_by is '变更人';
comment on column worktable_edi_order_fob.note is '备注';
-- end --

-- begin--worktable_edi_order_carrier--
drop table worktable_edi_order_carrier;
create table worktable_edi_order_carrier (
	edi_order_fob_id bigint not null,
	order_master_id bigint,
	carrier_detail varchar(255),
	utc_create datetime,
	utc_update datetime,
	order_carrier_status varchar(1),
	create_by bigint,
	update_by bigint,
	note varchar(1024)
);
alter table worktable_edi_order_carrier add constraint worktable_edi_order_carrier_pk PRIMARY KEY(edi_order_fob_id);
drop sequence seq_worktable_edi_order_carrier_id;
create sequence seq_worktable_edi_order_carrier_id minvalue 1 maxvalue 999999999999999999999999999 start with 1 increment by 1 nocache;
-- Add comments to the columns
comment on column worktable_edi_order_carrier.edi_order_fob_id is '记录id';
comment on column worktable_edi_order_carrier.order_master_id is '订单id';
comment on column worktable_edi_order_carrier.carrier_detail is 'CarrierDetail';
comment on column worktable_edi_order_carrier.utc_create is '创建时间';
comment on column worktable_edi_order_carrier.utc_update is '修改时间';
comment on column worktable_edi_order_carrier.order_carrier_status is '状态';
comment on column worktable_edi_order_carrier.create_by is '创建人';
comment on column worktable_edi_order_carrier.update_by is '变更人';
comment on column worktable_edi_order_carrier.note is '备注';
-- end --

-- begin--worktable_edi_order_parties--
drop table worktable_edi_order_parties;
create table worktable_edi_order_parties (
	edi_order_parties_id bigint not null,
	order_master_id bigint,
	type varchar(10),
	party_name varchar(255),
	additional_name_information varchar(255),
	address_infomation Varchar(128),
	geographic_location varchar(255),
	reference_information varchar(255),
	department_number varchar(50),
	primary_contact varchar(10),
	tel varchar(255),
	utc_create datetime,
	utc_update datetime,
	order_carrier_status varchar(1),
	create_by bigint,
	update_by bigint,
	note varchar(1024)
);
alter table worktable_edi_order_parties add constraint worktable_edi_order_parties_pk PRIMARY KEY(edi_order_parties_id);
drop sequence seq_worktable_edi_order_parties_id;
create sequence seq_worktable_edi_order_parties_id minvalue 1 maxvalue 999999999999999999999999999 start with 1 increment by 1 nocache;
-- Add comments to the columns
comment on column worktable_edi_order_parties.edi_order_parties_id is '记录id';
comment on column worktable_edi_order_parties.order_master_id is '订单id';
comment on column worktable_edi_order_parties.type is 'type';
comment on column worktable_edi_order_parties.party_name is 'party name';
comment on column worktable_edi_order_parties.additional_name_information is 'Additional Name Information';
comment on column worktable_edi_order_parties.address_infomation is 'Address Information ';
comment on column worktable_edi_order_parties.geographic_location is 'Geographic Location';
comment on column worktable_edi_order_parties.reference_information is 'Reference Information';
comment on column worktable_edi_order_parties.department_number is 'department number';
comment on column worktable_edi_order_parties.primary_contact is 'Primary Contact';
comment on column worktable_edi_order_parties.tel is 'tel';
comment on column worktable_edi_order_parties.utc_create is '创建时间';
comment on column worktable_edi_order_parties.utc_update is '修改时间';
comment on column worktable_edi_order_parties.order_carrier_status is '状态';
comment on column worktable_edi_order_parties.create_by is '创建人';
comment on column worktable_edi_order_parties.update_by is '变更人';
comment on column worktable_edi_order_parties.note is '备注';
-- end --

-- begin--worktable_factory_assignment--
drop table worktable_factory_assignment;
create table worktable_factory_assignment (
	fact_assign_id bigint not null,
	assign_source_id bigint,
	assign_source varchar(2),
	order_type varchar(2),
	document_id bigint,
	working_no varchar(255),
	gps_factory varchar(30),
	assigned_factory varchar(30),
	last_prod_fact varchar(50),
	organise_type varchar(20),
	order_country varchar(255),
	coo varchar(50),
	corrected_source varchar(50),
	base_style varchar(50),
	class_code varchar(255),
	order_group varchar(255),
	brand varchar(255),
	article_no varchar(255),
	product_type varchar(50),
	art_lead_time int,
	request_date datetime,
	season varchar(255),
	total_qty varchar(255),
	utc_create datetime,
	utc_update datetime,
	assign_result_status varchar(1),
	create_by bigint,
	update_by bigint,
	note varchar(1024)
);
alter table worktable_factory_assignment add constraint worktable_factory_assignment_pk PRIMARY KEY(fact_assign_id);
drop sequence seq_worktable_factory_assignment_id;
create sequence seq_worktable_factory_assignment_id minvalue 1 maxvalue 999999999999999999999999999 start with 1 increment by 1 nocache;
-- Add comments to the columns
comment on column worktable_factory_assignment.fact_assign_id is '记录id';
comment on column worktable_factory_assignment.assign_source_id is 'source id';
comment on column worktable_factory_assignment.assign_source is 'source';
comment on column worktable_factory_assignment.order_type is 'order Type';
comment on column worktable_factory_assignment.document_id is 'document id';
comment on column worktable_factory_assignment.working_no is 'working no';
comment on column worktable_factory_assignment.gps_factory is 'GPS Factory';
comment on column worktable_factory_assignment.assigned_factory is 'Assigned Factory';
comment on column worktable_factory_assignment.last_prod_fact is 'Last Production Factory';
comment on column worktable_factory_assignment.organise_type is 'EU/NON EU';
comment on column worktable_factory_assignment.order_country is 'Order Country';
comment on column worktable_factory_assignment.coo is 'COO';
comment on column worktable_factory_assignment.corrected_source is 'corrected source';
comment on column worktable_factory_assignment.base_style is 'base style';
comment on column worktable_factory_assignment.class_code is 'Class Code';
comment on column worktable_factory_assignment.order_group is 'Order Group';
comment on column worktable_factory_assignment.brand is 'Brand ';
comment on column worktable_factory_assignment.article_no is 'Article Number';
comment on column worktable_factory_assignment.product_type is 'Product Type';
comment on column worktable_factory_assignment.art_lead_time is 'Article Lead time';
comment on column worktable_factory_assignment.request_date is 'Request Date';
comment on column worktable_factory_assignment.season is 'season';
comment on column worktable_factory_assignment.total_qty is 'Total Qty';
comment on column worktable_factory_assignment.utc_create is '创建时间';
comment on column worktable_factory_assignment.utc_update is '修改时间';
comment on column worktable_factory_assignment.assign_result_status is '状态';
comment on column worktable_factory_assignment.create_by is '创建人';
comment on column worktable_factory_assignment.update_by is '变更人';
comment on column worktable_factory_assignment.note is '备注';
-- end --

-- begin--factory_factory--
drop table factory_factory;
create table factory_factory (
	factory_id bigint not null,
	factory_code varchar(30),
	fact_simp_name varchar(20),
	factory_name varchar(255),
	factory_address varchar(255),
	factory_phone_num varchar(30),
	ax_factory_id Varchar(10),
	factory_type varchar(1),
	factory_status varchar(1),
	utc_create datetime,
	utc_update datetime,
	create_by bigint,
	update_by bigint,
	note varchar(1024)
);
alter table factory_factory add constraint factory_factory_pk PRIMARY KEY(factory_id);
drop sequence seq_factory_factory_id;
create sequence seq_factory_factory_id minvalue 1 maxvalue 999999999999999999999999999 start with 1 increment by 1 nocache;
-- Add comments to the columns
comment on column factory_factory.factory_id is '记录id';
comment on column factory_factory.factory_code is '工厂代号';
comment on column factory_factory.fact_simp_name is '工厂简称';
comment on column factory_factory.factory_name is '工厂名称';
comment on column factory_factory.factory_address is '工厂地址';
comment on column factory_factory.factory_phone_num is '工厂电话';
comment on column factory_factory.ax_factory_id is 'AX工厂代码';
comment on column factory_factory.factory_type is '类型';
comment on column factory_factory.factory_status is '状态';
comment on column factory_factory.utc_create is '创建时间';
comment on column factory_factory.utc_update is '修改时间';
comment on column factory_factory.create_by is '创建人';
comment on column factory_factory.update_by is '变更人';
comment on column factory_factory.note is '备注';
-- end --

-- begin--process_process--
drop table process_process;
create table process_process (
	process_id bigint not null,
	process_category_id bigint,
	process_code varchar(30),
	process_name varchar(255),
	process_type varchar(50),
	fr_external_id varchar(10),
	utc_create datetime,
	utc_update datetime,
	process_status varchar(1),
	create_by bigint,
	update_by bigint,
	note varchar(1024)
);
alter table process_process add constraint process_process_pk PRIMARY KEY(process_id);
drop sequence seq_process_process_id;
create sequence seq_process_process_id minvalue 1 maxvalue 999999999999999999999999999 start with 1 increment by 1 nocache;
-- Add comments to the columns
comment on column process_process.process_id is '记录id';
comment on column process_process.process_category_id is 'process category id';
comment on column process_process.process_code is '工序代号';
comment on column process_process.process_name is '工序名称';
comment on column process_process.process_type is '工序类型';
comment on column process_process.fr_external_id is 'FR External ID';
comment on column process_process.utc_create is '创建时间';
comment on column process_process.utc_update is '修改时间';
comment on column process_process.process_status is '状态';
comment on column process_process.create_by is '创建人';
comment on column process_process.update_by is '变更人';
comment on column process_process.note is '备注';
-- end --

-- begin--factory_factory_process--
drop table factory_factory_process;
create table factory_factory_process (
	factory_process_id bigint not null,
	factory_id varchar(30),
	process_id bigint,
	process_code varchar(30),
	factory_process_type varchar(1),
	utc_create datetime,
	utc_update datetime,
	create_by bigint,
	update_by bigint,
	note varchar(1024)
);
alter table factory_factory_process add constraint factory_factory_process_pk PRIMARY KEY(factory_process_id);
drop sequence seq_factory_factory_process_id;
create sequence seq_factory_factory_process_id minvalue 1 maxvalue 999999999999999999999999999 start with 1 increment by 1 nocache;
-- Add comments to the columns
comment on column factory_factory_process.factory_process_id is '记录id';
comment on column factory_factory_process.factory_id is '工厂id';
comment on column factory_factory_process.process_id is '工序id';
comment on column factory_factory_process.process_code is '工序Code';
comment on column factory_factory_process.factory_process_type is '工序类型';
comment on column factory_factory_process.utc_create is '创建时间';
comment on column factory_factory_process.utc_update is '修改时间';
comment on column factory_factory_process.create_by is '创建人';
comment on column factory_factory_process.update_by is '变更人';
comment on column factory_factory_process.note is '备注';
-- end --

-- begin--factory_factory_loading--
drop table factory_factory_loading;
create table factory_factory_loading (
	factory_loading_id bigint not null,
	factory_id bigint,
	woven_knit varchar(20),
	product_type varchar(50),
	loading double,
	capacity double,
	fact_load_type varchar(1),
	year int,
	month int,
	utc_update datetime,
	create_by bigint,
	update_by bigint,
	note varchar(1024)
);
alter table factory_factory_loading add constraint factory_factory_loading_pk PRIMARY KEY(factory_loading_id);
drop sequence seq_factory_factory_loading_id;
create sequence seq_factory_factory_loading_id minvalue 1 maxvalue 999999999999999999999999999 start with 1 increment by 1 nocache;
-- Add comments to the columns
comment on column factory_factory_loading.factory_loading_id is '记录id';
comment on column factory_factory_loading.factory_id is '工厂id';
comment on column factory_factory_loading.woven_knit is 'woven/knit';
comment on column factory_factory_loading.product_type is 'product Type';
comment on column factory_factory_loading.loading is 'Loading';
comment on column factory_factory_loading.capacity is 'Capacity';
comment on column factory_factory_loading.fact_load_type is 'factory loading type';
comment on column factory_factory_loading.year is '年';
comment on column factory_factory_loading.month is '月';
comment on column factory_factory_loading.utc_update is '修改时间';
comment on column factory_factory_loading.create_by is '创建人';
comment on column factory_factory_loading.update_by is '变更人';
comment on column factory_factory_loading.note is '备注';
-- end --

-- begin--factory_factory_process_loading--
drop table factory_factory_process_loading;
create table factory_factory_process_loading (
	fact_pro_load_id bigint not null,
	factory_id bigint,
	factory_code varchar(30),
	process_id bigint,
	process_code varchar(30),
	loading double,
	capacity double,
	year int,
	month int,
	utc_update datetime,
	create_by bigint,
	update_by bigint,
	note varchar(1024)
);
alter table factory_factory_process_loading add constraint factory_factory_process_loading_pk PRIMARY KEY(fact_pro_load_id);
drop sequence seq_factory_factory_process_loading_id;
create sequence seq_factory_factory_process_loading_id minvalue 1 maxvalue 999999999999999999999999999 start with 1 increment by 1 nocache;
-- Add comments to the columns
comment on column factory_factory_process_loading.fact_pro_load_id is '记录id';
comment on column factory_factory_process_loading.factory_id is '工厂id';
comment on column factory_factory_process_loading.factory_code is '工厂code';
comment on column factory_factory_process_loading.process_id is '工序id';
comment on column factory_factory_process_loading.process_code is 'process code';
comment on column factory_factory_process_loading.loading is 'Loading';
comment on column factory_factory_process_loading.capacity is 'Capacity';
comment on column factory_factory_process_loading.year is '年';
comment on column factory_factory_process_loading.month is '月';
comment on column factory_factory_process_loading.utc_update is '修改时间';
comment on column factory_factory_process_loading.create_by is '创建人';
comment on column factory_factory_process_loading.update_by is '变更人';
comment on column factory_factory_process_loading.note is '备注';
-- end --

-- begin--factory_process_loading--
drop table factory_process_loading;
create table factory_process_loading (
	fact_pro_load_id bigint not null,
	factory_id bigint,
	factory_code varchar(30),
	process_id bigint,
	process_code varchar(30),
	loading double,
	capacity double,
	year int,
	month int,
	utc_update datetime,
	create_by bigint,
	update_by bigint,
	note varchar(1024)
);
alter table factory_process_loading add constraint factory_process_loading_pk PRIMARY KEY(fact_pro_load_id);
drop sequence seq_factory_process_loading_id;
create sequence seq_factory_process_loading_id minvalue 1 maxvalue 999999999999999999999999999 start with 1 increment by 1 nocache;
-- Add comments to the columns
comment on column factory_process_loading.fact_pro_load_id is '记录id';
comment on column factory_process_loading.factory_id is '工厂id';
comment on column factory_process_loading.factory_code is '工厂code';
comment on column factory_process_loading.process_id is '工序id';
comment on column factory_process_loading.process_code is 'process code';
comment on column factory_process_loading.loading is 'Loading';
comment on column factory_process_loading.capacity is 'Capacity';
comment on column factory_process_loading.year is '年';
comment on column factory_process_loading.month is '月';
comment on column factory_process_loading.utc_update is '修改时间';
comment on column factory_process_loading.create_by is '创建人';
comment on column factory_process_loading.update_by is '变更人';
comment on column factory_process_loading.note is '备注';
-- end --

-- begin--factory_loading--
drop table factory_loading;
create table factory_loading (
	factory_loading_id bigint not null,
	factory_id bigint,
	woven_knit varchar(20),
	product_type varchar(50),
	loading double,
	capacity double,
	fact_load_type varchar(1),
	year int,
	month int,
	utc_update datetime,
	create_by bigint,
	update_by bigint,
	note varchar(1024)
);
alter table factory_loading add constraint factory_loading_pk PRIMARY KEY(factory_loading_id);
drop sequence seq_factory_loading_id;
create sequence seq_factory_loading_id minvalue 1 maxvalue 999999999999999999999999999 start with 1 increment by 1 nocache;
-- Add comments to the columns
comment on column factory_loading.factory_loading_id is '记录id';
comment on column factory_loading.factory_id is '工厂id';
comment on column factory_loading.woven_knit is 'woven/knit';
comment on column factory_loading.product_type is 'product Type';
comment on column factory_loading.loading is 'Loading';
comment on column factory_loading.capacity is 'Capacity';
comment on column factory_loading.fact_load_type is 'factory loading type';
comment on column factory_loading.year is '年';
comment on column factory_loading.month is '月';
comment on column factory_loading.utc_update is '修改时间';
comment on column factory_loading.create_by is '创建人';
comment on column factory_loading.update_by is '变更人';
comment on column factory_loading.note is '备注';
-- end --

-- begin--cpo_factory_loading--
drop table cpo_factory_loading;
create table cpo_factory_loading (
	factory_loading_id bigint not null,
	factory_id bigint,
	woven_knit varchar(20),
	product_type varchar(50),
	cur_doc_loading double,
	mkt_fc_loading double,
	mkt_fc_cur_loading double,
	cus_fc_cur_loading double,
	fr_mkt_fc_loading double,
	fr_cus_fc_loading double,
	cus_fc_loading double,
	fr_loading double,
	loading double,
	capacity double,
	fact_load_type varchar(1),
	ap_group varchar(255),
	averge_smv Double,
	actual_order_loading_by_qty Double,
	cf_order_loading_by_qty Double,
	mf_order_loading_by_qty Double,
	actual_order_cur_loading_by_qty Double,
	cf_order_cur_loading_by_qty Double,
	mf_order_cur_loading_by_qty Double,
	cus_fc_sub_loading double,
	cus_fc_sub_loading_by_qty double,
	year int,
	month int,
	utc_update datetime,
	create_by bigint,
	update_by bigint,
	note varchar(1024)
);
alter table cpo_factory_loading add constraint cpo_factory_loading_pk PRIMARY KEY(factory_loading_id);
drop sequence seq_cpo_factory_loading_id;
create sequence seq_cpo_factory_loading_id minvalue 1 maxvalue 999999999999999999999999999 start with 1 increment by 1 nocache;
-- Add comments to the columns
comment on column cpo_factory_loading.factory_loading_id is '记录id';
comment on column cpo_factory_loading.factory_id is '工厂id';
comment on column cpo_factory_loading.woven_knit is 'woven/knit';
comment on column cpo_factory_loading.product_type is 'product Type';
comment on column cpo_factory_loading.cur_doc_loading is 'cur_doc_loading';
comment on column cpo_factory_loading.mkt_fc_loading is 'mkt fc loading';
comment on column cpo_factory_loading.mkt_fc_cur_loading is 'mkt fc cur loading';
comment on column cpo_factory_loading.cus_fc_cur_loading is 'cus fc cur loading';
comment on column cpo_factory_loading.fr_mkt_fc_loading is 'fr_mkt_fc_loading';
comment on column cpo_factory_loading.fr_cus_fc_loading is 'fr_cus_fc_loading';
comment on column cpo_factory_loading.cus_fc_loading is 'cus fc loading';
comment on column cpo_factory_loading.fr_loading is 'Fast React Loading';
comment on column cpo_factory_loading.loading is 'Loading';
comment on column cpo_factory_loading.capacity is 'Capacity';
comment on column cpo_factory_loading.fact_load_type is 'factory loading type';
comment on column cpo_factory_loading.ap_group is 'ap_group';
comment on column cpo_factory_loading.averge_smv is 'averge smv';
comment on column cpo_factory_loading.actual_order_loading_by_qty is 'actual_order_loading_by_qty';
comment on column cpo_factory_loading.cf_order_loading_by_qty is 'cf_order_loading_by_qty';
comment on column cpo_factory_loading.mf_order_loading_by_qty is 'mf_order_loading_by_qty';
comment on column cpo_factory_loading.actual_order_cur_loading_by_qty is 'actual_order_cur_loading_by_qty';
comment on column cpo_factory_loading.cf_order_cur_loading_by_qty is 'cf_order_cur_loading_by_qty';
comment on column cpo_factory_loading.mf_order_cur_loading_by_qty is 'mf_order_cur_loading_by_qty';
comment on column cpo_factory_loading.cus_fc_sub_loading is 'cus_fc_sub_loading';
comment on column cpo_factory_loading.cus_fc_sub_loading_by_qty is 'cus_fc_sub_loading_by_qty';
comment on column cpo_factory_loading.year is '年';
comment on column cpo_factory_loading.month is '月';
comment on column cpo_factory_loading.utc_update is '修改时间';
comment on column cpo_factory_loading.create_by is '创建人';
comment on column cpo_factory_loading.update_by is '变更人';
comment on column cpo_factory_loading.note is '备注';
-- end --

-- begin--cpo_factory_process_loading--
drop table cpo_factory_process_loading;
create table cpo_factory_process_loading (
	fact_pro_load_id bigint not null,
	factory_id bigint,
	factory_code varchar(30),
	process_id bigint,
	process_code varchar(30),
	loading double,
	mkt_fc_loading double,
	cus_fc_loading double,
	mkt_fc_cur_loading double,
	cus_fc_cur_loading double,
	cur_loading double,
	capacity double,
	fr_order_loading double,
	fr_cf_loading double,
	fr_mf_loading double,
	cus_fc_sub_loading double,
	year int,
	month int,
	utc_update datetime,
	create_by bigint,
	update_by bigint,
	note varchar(1024)
);
alter table cpo_factory_process_loading add constraint cpo_factory_process_loading_pk PRIMARY KEY(fact_pro_load_id);
drop sequence seq_cpo_factory_process_loading_id;
create sequence seq_cpo_factory_process_loading_id minvalue 1 maxvalue 999999999999999999999999999 start with 1 increment by 1 nocache;
-- Add comments to the columns
comment on column cpo_factory_process_loading.fact_pro_load_id is '记录id';
comment on column cpo_factory_process_loading.factory_id is '工厂id';
comment on column cpo_factory_process_loading.factory_code is '工厂code';
comment on column cpo_factory_process_loading.process_id is '工序id';
comment on column cpo_factory_process_loading.process_code is 'process code';
comment on column cpo_factory_process_loading.loading is 'Loading';
comment on column cpo_factory_process_loading.mkt_fc_loading is 'mkt fc loading';
comment on column cpo_factory_process_loading.cus_fc_loading is 'cus fc loading';
comment on column cpo_factory_process_loading.mkt_fc_cur_loading is 'mkt fc cur loading';
comment on column cpo_factory_process_loading.cus_fc_cur_loading is 'cus fc cur loading';
comment on column cpo_factory_process_loading.cur_loading is 'cur loading';
comment on column cpo_factory_process_loading.capacity is 'Capacity';
comment on column cpo_factory_process_loading.fr_order_loading is 'fr_order_loading';
comment on column cpo_factory_process_loading.fr_cf_loading is 'fr_cf_loading';
comment on column cpo_factory_process_loading.fr_mf_loading is 'fr_mf_loading';
comment on column cpo_factory_process_loading.cus_fc_sub_loading is 'cus_fc_sub_loading';
comment on column cpo_factory_process_loading.year is '年';
comment on column cpo_factory_process_loading.month is '月';
comment on column cpo_factory_process_loading.utc_update is '修改时间';
comment on column cpo_factory_process_loading.create_by is '创建人';
comment on column cpo_factory_process_loading.update_by is '变更人';
comment on column cpo_factory_process_loading.note is '备注';
-- end --

-- begin--cpo_worktable_factory_assignment--
drop table cpo_worktable_factory_assignment;
create table cpo_worktable_factory_assignment (
	fact_assign_id bigint not null,
	assign_source_id bigint,
	assign_source varchar(2),
	order_type varchar(2),
	document_id bigint,
	working_no varchar(255),
	gps_factory varchar(30),
	assigned_factory varchar(30),
	last_prod_fact varchar(50),
	organise_type varchar(20),
	order_country varchar(255),
	coo varchar(50),
	corrected_source varchar(50),
	base_style varchar(50),
	class_code varchar(255),
	order_group varchar(255),
	brand varchar(255),
	article_no varchar(255),
	product_type varchar(50),
	art_lead_time int,
	request_date datetime,
	season varchar(255),
	total_qty varchar(255),
	utc_create datetime,
	utc_update datetime,
	assign_result_status varchar(1),
	create_by bigint,
	update_by bigint,
	note varchar(1024)
);
alter table cpo_worktable_factory_assignment add constraint cpo_worktable_factory_assignment_pk PRIMARY KEY(fact_assign_id);
drop sequence seq_cpo_worktable_factory_assignment_id;
create sequence seq_cpo_worktable_factory_assignment_id minvalue 1 maxvalue 999999999999999999999999999 start with 1 increment by 1 nocache;
-- Add comments to the columns
comment on column cpo_worktable_factory_assignment.fact_assign_id is '记录id';
comment on column cpo_worktable_factory_assignment.assign_source_id is 'source id';
comment on column cpo_worktable_factory_assignment.assign_source is 'source';
comment on column cpo_worktable_factory_assignment.order_type is 'order Type';
comment on column cpo_worktable_factory_assignment.document_id is 'document id';
comment on column cpo_worktable_factory_assignment.working_no is 'working no';
comment on column cpo_worktable_factory_assignment.gps_factory is 'GPS Factory';
comment on column cpo_worktable_factory_assignment.assigned_factory is 'Assigned Factory';
comment on column cpo_worktable_factory_assignment.last_prod_fact is 'Last Production Factory';
comment on column cpo_worktable_factory_assignment.organise_type is 'EU/NON EU';
comment on column cpo_worktable_factory_assignment.order_country is 'Order Country';
comment on column cpo_worktable_factory_assignment.coo is 'COO';
comment on column cpo_worktable_factory_assignment.corrected_source is 'corrected source';
comment on column cpo_worktable_factory_assignment.base_style is 'base style';
comment on column cpo_worktable_factory_assignment.class_code is 'Class Code';
comment on column cpo_worktable_factory_assignment.order_group is 'Order Group';
comment on column cpo_worktable_factory_assignment.brand is 'Brand ';
comment on column cpo_worktable_factory_assignment.article_no is 'Article Number';
comment on column cpo_worktable_factory_assignment.product_type is 'Product Type';
comment on column cpo_worktable_factory_assignment.art_lead_time is 'Article Lead time';
comment on column cpo_worktable_factory_assignment.request_date is 'Request Date';
comment on column cpo_worktable_factory_assignment.season is 'season';
comment on column cpo_worktable_factory_assignment.total_qty is 'Total Qty';
comment on column cpo_worktable_factory_assignment.utc_create is '创建时间';
comment on column cpo_worktable_factory_assignment.utc_update is '修改时间';
comment on column cpo_worktable_factory_assignment.assign_result_status is '状态';
comment on column cpo_worktable_factory_assignment.create_by is '创建人';
comment on column cpo_worktable_factory_assignment.update_by is '变更人';
comment on column cpo_worktable_factory_assignment.note is '备注';
-- end --

-- begin--cpo_sms_pre_order--
drop table cpo_sms_pre_order;
create table cpo_sms_pre_order (
	sms_pre_order_id bigint not null,
	document_id bigint,
	customer_no varchar(50),
	product_factory varchar(30),
	article_number varchar(30),
	quantity varchar(20),
	working_no varchar(50),
	lo_no varchar(10),
	model_no varchar(30),
	model_name varchar(255),
	assigned_factory varchar(10),
	pre_ord_id varchar(20),
	season Varchar(5),
	utc_create datetime,
	utc_update datetime,
	work_no_status varchar(2),
	create_by bigint,
	update_by bigint,
	note varchar(1024)
);
alter table cpo_sms_pre_order add constraint cpo_sms_pre_order_pk PRIMARY KEY(sms_pre_order_id);
drop sequence seq_cpo_sms_pre_order_id;
create sequence seq_cpo_sms_pre_order_id minvalue 1 maxvalue 999999999999999999999999999 start with 1 increment by 1 nocache;
-- Add comments to the columns
comment on column cpo_sms_pre_order.sms_pre_order_id is 'sms pre order';
comment on column cpo_sms_pre_order.document_id is 'document id';
comment on column cpo_sms_pre_order.customer_no is 'customer_no';
comment on column cpo_sms_pre_order.product_factory is 'product_factory';
comment on column cpo_sms_pre_order.article_number is 'article_number';
comment on column cpo_sms_pre_order.quantity is 'quantity';
comment on column cpo_sms_pre_order.working_no is 'working_no';
comment on column cpo_sms_pre_order.lo_no is 'lo_no';
comment on column cpo_sms_pre_order.model_no is 'model_no';
comment on column cpo_sms_pre_order.model_name is 'model_name';
comment on column cpo_sms_pre_order.assigned_factory is 'assigned_factory';
comment on column cpo_sms_pre_order.pre_ord_id is 'pre_ord_id';
comment on column cpo_sms_pre_order.season is 'Season';
comment on column cpo_sms_pre_order.utc_create is '创建时间';
comment on column cpo_sms_pre_order.utc_update is '修改时间';
comment on column cpo_sms_pre_order.work_no_status is '状态';
comment on column cpo_sms_pre_order.create_by is '创建人';
comment on column cpo_sms_pre_order.update_by is '变更人';
comment on column cpo_sms_pre_order.note is '备注';
-- end --

-- begin--cpo_mi_order_record--
drop table cpo_mi_order_record;
create table cpo_mi_order_record (
	mi_order_id bigint not null,
	document_id bigint,
	working_no varchar(255),
	gps_factory varchar(30),
	assigned_factory varchar(30),
	po_number varchar(255),
	customer_no varchar(255),
	article_no varchar(255),
	article_description varchar(512),
	class_code varchar(255),
	order_group varchar(255),
	brand varchar(255),
	total_qty varchar(255),
	price_per_unit varchar(255),
	cust_size_run varchar(10),
	tech_notation varchar(10),
	customer_size varchar(10),
	tech_size varchar(10),
	order_qty varchar(255),
	shipped_qty varchar(10),
	division varchar(10),
	classification varchar(255),
	warehourse varchar(255),
	cust_req_date varchar(255),
	plan_date varchar(255),
	po_batch_date varchar(255),
	first_prod_date varchar(255),
	last_prod_date varchar(255),
	ship_instruction varchar(255),
	remark varchar(512),
	tech_concept varchar(255),
	tech_concept_desc varchar(512),
	tech_comp_desc varchar(512),
	prior_indication varchar(64),
	subs_ship_to_no varchar(255),
	vas_shas_code_non_us varchar(255),
	for_account_of varchar(255),
	seller varchar(255),
	ship_mode varchar(255),
	cust_order_no varchar(255),
	order_type varchar(255),
	release_status varchar(255),
	shipped_status varchar(255),
	mtfc_number varchar(255),
	client_number varchar(255),
	purc_group_code varchar(255),
	contract_number varchar(255),
	types varchar(255),
	last_update_date varchar(255),
	model_number varchar(255),
	model_name varchar(255),
	gender varchar(255),
	busi_model_attr varchar(255),
	psdd varchar(255),
	podd varchar(255),
	comfirm_delay varchar(255),
	delivery_delay varchar(255),
	mark_for_addr varchar(512),
	total_mechan_amount varchar(255),
	total_tax_amount varchar(255),
	total_adjustsment varchar(255),
	total_doc_amount varchar(255),
	utc_create datetime,
	utc_update datetime,
	status int,
	create_by bigint,
	update_by bigint,
	note varchar(1024)
);
alter table cpo_mi_order_record add constraint cpo_mi_order_record_pk PRIMARY KEY(mi_order_id);
drop sequence seq_cpo_mi_order_record_id;
create sequence seq_cpo_mi_order_record_id minvalue 1 maxvalue 999999999999999999999999999 start with 1 increment by 1 nocache;
-- Add comments to the columns
comment on column cpo_mi_order_record.mi_order_id is 'mi_order_id';
comment on column cpo_mi_order_record.document_id is 'document id';
comment on column cpo_mi_order_record.working_no is 'Working Number';
comment on column cpo_mi_order_record.gps_factory is 'GPS Factory';
comment on column cpo_mi_order_record.assigned_factory is 'Assigned Factory';
comment on column cpo_mi_order_record.po_number is 'PO Number';
comment on column cpo_mi_order_record.customer_no is 'Customer Number';
comment on column cpo_mi_order_record.article_no is 'Article Number';
comment on column cpo_mi_order_record.article_description is 'Article Description';
comment on column cpo_mi_order_record.class_code is 'Class Code';
comment on column cpo_mi_order_record.order_group is 'Order Group';
comment on column cpo_mi_order_record.brand is 'Brand ';
comment on column cpo_mi_order_record.total_qty is 'Total Qty';
comment on column cpo_mi_order_record.price_per_unit is 'Price Per Unit';
comment on column cpo_mi_order_record.cust_size_run is 'Customer Size Run';
comment on column cpo_mi_order_record.tech_notation is 'Technical Notation';
comment on column cpo_mi_order_record.customer_size is 'Customer Size';
comment on column cpo_mi_order_record.tech_size is 'Technical Size';
comment on column cpo_mi_order_record.order_qty is 'Ordered Qty';
comment on column cpo_mi_order_record.shipped_qty is 'Shipped Qty';
comment on column cpo_mi_order_record.division is 'Division';
comment on column cpo_mi_order_record.classification is 'Classification ';
comment on column cpo_mi_order_record.warehourse is 'Warehouse';
comment on column cpo_mi_order_record.cust_req_date is 'Customer Request Date';
comment on column cpo_mi_order_record.plan_date is 'Plan Date';
comment on column cpo_mi_order_record.po_batch_date is 'PO Batch Date';
comment on column cpo_mi_order_record.first_prod_date is 'First Production Date';
comment on column cpo_mi_order_record.last_prod_date is 'Last Production Date';
comment on column cpo_mi_order_record.ship_instruction is 'Shipping Instruction';
comment on column cpo_mi_order_record.remark is 'Remark';
comment on column cpo_mi_order_record.tech_concept is 'Technology Concept';
comment on column cpo_mi_order_record.tech_concept_desc is 'Technology Concept Description';
comment on column cpo_mi_order_record.tech_comp_desc is 'Technology Component Description';
comment on column cpo_mi_order_record.prior_indication is 'Priority Indicator';
comment on column cpo_mi_order_record.subs_ship_to_no is 'Subsidiary Ship-To Number';
comment on column cpo_mi_order_record.vas_shas_code_non_us is 'VAS/SHAS Code Non-US';
comment on column cpo_mi_order_record.for_account_of is 'For Account Of';
comment on column cpo_mi_order_record.seller is 'Seller';
comment on column cpo_mi_order_record.ship_mode is 'Ship Mode';
comment on column cpo_mi_order_record.cust_order_no is 'Customer Order Number';
comment on column cpo_mi_order_record.order_type is 'Order Type';
comment on column cpo_mi_order_record.release_status is 'Release Status';
comment on column cpo_mi_order_record.shipped_status is 'ShippedStatus';
comment on column cpo_mi_order_record.mtfc_number is 'MTFC Number';
comment on column cpo_mi_order_record.client_number is 'Client Number';
comment on column cpo_mi_order_record.purc_group_code is 'Purchasing Group Code';
comment on column cpo_mi_order_record.contract_number is 'Contract Number';
comment on column cpo_mi_order_record.types is 'Types';
comment on column cpo_mi_order_record.last_update_date is 'Last Update Date';
comment on column cpo_mi_order_record.model_number is 'Model Number';
comment on column cpo_mi_order_record.model_name is 'Model Name';
comment on column cpo_mi_order_record.gender is 'Gender';
comment on column cpo_mi_order_record.busi_model_attr is 'Business Model Attribute';
comment on column cpo_mi_order_record.psdd is 'PSDD';
comment on column cpo_mi_order_record.podd is 'PODD';
comment on column cpo_mi_order_record.comfirm_delay is 'Confirmation Delay';
comment on column cpo_mi_order_record.delivery_delay is 'Delivery Delay';
comment on column cpo_mi_order_record.mark_for_addr is 'Mark for Address';
comment on column cpo_mi_order_record.total_mechan_amount is 'Total Mechandise Amount';
comment on column cpo_mi_order_record.total_tax_amount is 'Total Tax Amount';
comment on column cpo_mi_order_record.total_adjustsment is 'Total Adjustments';
comment on column cpo_mi_order_record.total_doc_amount is 'Total Document Amount';
comment on column cpo_mi_order_record.utc_create is '创建时间';
comment on column cpo_mi_order_record.utc_update is '修改时间';
comment on column cpo_mi_order_record.status is '状态';
comment on column cpo_mi_order_record.create_by is '创建人';
comment on column cpo_mi_order_record.update_by is '变更人';
comment on column cpo_mi_order_record.note is '备注';
-- end --

-- begin--cpo_factory_group--
drop table cpo_factory_group;
create table cpo_factory_group (
	factory_group_id bigint not null,
	ap_group_code varchar(128),
	fact_simp_name varchar(20),
	knit_woven varchar(50),
	product_type varchar(128),
	ap_group varchar(128),
	plan_group varchar(128),
	utc_create datetime,
	utc_update datetime,
	create_by bigint,
	update_by bigint,
	note varchar(1024)
);
alter table cpo_factory_group add constraint cpo_factory_group_pk PRIMARY KEY(factory_group_id);
drop sequence seq_cpo_factory_group_id;
create sequence seq_cpo_factory_group_id minvalue 1 maxvalue 999999999999999999999999999 start with 1 increment by 1 nocache;
-- Add comments to the columns
comment on column cpo_factory_group.factory_group_id is '记录id';
comment on column cpo_factory_group.ap_group_code is 'ap group code';
comment on column cpo_factory_group.fact_simp_name is '工厂简称';
comment on column cpo_factory_group.knit_woven is '针织梭织';
comment on column cpo_factory_group.product_type is '产品类型';
comment on column cpo_factory_group.ap_group is 'AP group';
comment on column cpo_factory_group.plan_group is 'plan_group';
comment on column cpo_factory_group.utc_create is '创建时间';
comment on column cpo_factory_group.utc_update is '修改时间';
comment on column cpo_factory_group.create_by is '创建人';
comment on column cpo_factory_group.update_by is '变更人';
comment on column cpo_factory_group.note is '备注';
-- end --

-- begin--cpo_high_level_plan--
drop table cpo_high_level_plan;
create table cpo_high_level_plan (
	high_level_plan_id bigint not null,
	mo varchar(255),
	plan_start_date datetime,
	plan_end_date datetime,
	create_time datetime,
	plan_group varchar(255),
	utc_create datetime,
	utc_update datetime,
	high_level_plan_status varchar(1),
	create_by bigint,
	update_by bigint,
	note varchar(1024)
);
alter table cpo_high_level_plan add constraint cpo_high_level_plan_pk PRIMARY KEY(high_level_plan_id);
drop sequence seq_cpo_high_level_plan_id;
create sequence seq_cpo_high_level_plan_id minvalue 1 maxvalue 999999999999999999999999999 start with 1 increment by 1 nocache;
-- Add comments to the columns
comment on column cpo_high_level_plan.high_level_plan_id is '记录id';
comment on column cpo_high_level_plan.mo is 'MO';
comment on column cpo_high_level_plan.plan_start_date is 'PLAN START DATE';
comment on column cpo_high_level_plan.plan_end_date is 'PLAN END DATE';
comment on column cpo_high_level_plan.create_time is 'CREATETIME';
comment on column cpo_high_level_plan.plan_group is 'PLAN GROUP';
comment on column cpo_high_level_plan.utc_create is '创建时间';
comment on column cpo_high_level_plan.utc_update is '修改时间';
comment on column cpo_high_level_plan.high_level_plan_status is '状态';
comment on column cpo_high_level_plan.create_by is '创建人';
comment on column cpo_high_level_plan.update_by is '变更人';
comment on column cpo_high_level_plan.note is '备注';
-- end --

-- begin--cpo_process_criteria--
drop table cpo_process_criteria;
create table cpo_process_criteria (
	process_criteria_id bigint not null,
	process_type varchar(50),
	process_id bigint,
	factory_id varchar(255),
	criteria_version_id bigint,
	mandatory varchar(1),
	process_score int,
	criteria_status varchar(2),
	start_date datetime,
	end_date datetime,
	utc_create datetime,
	utc_update datetime,
	create_by bigint,
	update_by bigint,
	note varchar(1024)
);
alter table cpo_process_criteria add constraint cpo_process_criteria_pk PRIMARY KEY(process_criteria_id);
drop sequence seq_cpo_process_criteria_id;
create sequence seq_cpo_process_criteria_id minvalue 1 maxvalue 999999999999999999999999999 start with 1 increment by 1 nocache;
-- Add comments to the columns
comment on column cpo_process_criteria.process_criteria_id is '记录id';
comment on column cpo_process_criteria.process_type is '工序类型';
comment on column cpo_process_criteria.process_id is '工序id';
comment on column cpo_process_criteria.factory_id is '工厂id';
comment on column cpo_process_criteria.criteria_version_id is '标准版本id';
comment on column cpo_process_criteria.mandatory is '强制性';
comment on column cpo_process_criteria.process_score is '分数';
comment on column cpo_process_criteria.criteria_status is '状态';
comment on column cpo_process_criteria.start_date is '生效时间';
comment on column cpo_process_criteria.end_date is '失效时间';
comment on column cpo_process_criteria.utc_create is '创建时间';
comment on column cpo_process_criteria.utc_update is '修改时间';
comment on column cpo_process_criteria.create_by is '创建人';
comment on column cpo_process_criteria.update_by is '变更人';
comment on column cpo_process_criteria.note is '备注';
-- end --

-- begin--cpo_fr_master_data--
drop table cpo_fr_master_data;
create table cpo_fr_master_data (
	fr_master_data_id bigint not null,
	document_id bigint,
	fact_assign_id Bigint,
	assign_result_id Bigint,
	b_number Varchar(50),
	size_group Varchar(50),
	code varchar(30),
	prod varchar(30),
	cust varchar(15),
	dd datetime,
	dq Integer,
	ex_status varchar(30),
	order_set varchar(20),
	ud_sport_code varchar(50),
	product_type varchar(30),
	ud_client_code Varchar(20),
	fabric_type varchar(20),
	size_name_1 varchar(25),
	size_ratio_1 Integer,
	size_name_2 varchar(25),
	size_ratio_2 Integer,
	size_name_3 varchar(25),
	size_ratio_3 Integer,
	size_name_4 varchar(25),
	size_ratio_4 Integer,
	size_name_5 varchar(25),
	size_ratio_5 Integer,
	size_name_6 varchar(25),
	size_ratio_6 Integer,
	size_name_7 varchar(25),
	size_ratio_7 Integer,
	size_name_8 varchar(25),
	size_ratio_8 Integer,
	size_name_9 varchar(25),
	size_ratio_9 Integer,
	size_name_10 varchar(25),
	size_ratio_10 Integer,
	size_name_11 varchar(25),
	size_ratio_11 Integer,
	size_name_12 varchar(25),
	size_ratio_12 Integer,
	size_name_13 varchar(25),
	size_ratio_13 Integer,
	size_name_14 varchar(25),
	size_ratio_14 Integer,
	size_name_15 varchar(25),
	size_ratio_15 Integer,
	size_name_16 varchar(25),
	size_ratio_16 Integer,
	size_name_17 varchar(25),
	size_ratio_17 Integer,
	size_name_18 varchar(25),
	size_ratio_18 Integer,
	size_name_19 varchar(25),
	size_ratio_19 Integer,
	size_name_20 varchar(25),
	size_ratio_20 Integer,
	size_name_21 varchar(25),
	size_ratio_21 Integer,
	size_name_22 varchar(25),
	size_ratio_22 Integer,
	size_name_23 varchar(25),
	size_ratio_23 Integer,
	size_name_24 varchar(25),
	size_ratio_24 Integer,
	size_name_25 varchar(25),
	size_ratio_25 Integer,
	size_name_26 varchar(25),
	size_ratio_26 Integer,
	size_name_27 varchar(25),
	size_ratio_27 Integer,
	size_name_28 varchar(25),
	size_ratio_28 Integer,
	size_name_29 varchar(25),
	size_ratio_29 Integer,
	size_name_30 varchar(25),
	size_ratio_30 Integer,
	size_name_31 varchar(25),
	size_ratio_31 Integer,
	size_name_32 varchar(25),
	size_ratio_32 Integer,
	size_name_33 varchar(25),
	size_ratio_33 Integer,
	size_name_34 varchar(25),
	size_ratio_34 Integer,
	size_name_35 varchar(25),
	size_ratio_35 Integer,
	ud_batch_date varchar(15),
	status varchar(15),
	descrip varchar(50),
	time varchar(15),
	ap_group varchar(15),
	ud_fty_id varchar(15),
	ud_model varchar(15),
	ud_article varchar(15),
	ud_customer_no varchar(15),
	ud_country varchar(15),
	ud_fty_name varchar(15),
	ud_classic_code varchar(15),
	ud_special_wmsp varchar(15),
	ud_eu_non_eu varchar(15),
	ud_shipment_fty varchar(15),
	ud_count_fty varchar(15),
	ud_168_no varchar(30),
	dd_style Varchar(20),
	ud_tc_psdd datetime,
	ud_category varchar(15),
	ud_gb16_request_date datetime,
	lc0190_date varchar(15),
	ud_ord_no varchar(15),
	ud_plan_date datetime,
	ud_plan_group varchar(30),
	ud_plan_month varchar(15),
	ud_po varchar(30),
	ud_podd datetime,
	ud_psdd_date datetime,
	ud_season varchar(15),
	ud_60_day_project varchar(15),
	ud_loading_port varchar(15),
	ud_lpd datetime,
	ud_new_crd datetime,
	ud_new_pd datetime,
	ud_add_total_date datetime,
	batch_no Varchar(10),
	smv double,
	customer_status Varchar(30),
	ship_mode Varchar(10),
	ud_service_identify Varchar(50),
	special_order_remark varchar(30),
	main_mpo varchar(30),
	last_fabric_pi_eta datetime,
	order_change_date datetime,
	ud_remarks varchar(256),
	athlete varchar(50),
	utc_create datetime,
	utc_update datetime,
	high_level_plan_status varchar(1),
	create_by bigint,
	update_by bigint,
	transfer_status Varchar(2),
	note varchar(1024)
);
alter table cpo_fr_master_data add constraint cpo_fr_master_data_pk PRIMARY KEY(fr_master_data_id);
drop sequence seq_cpo_fr_master_data_id;
create sequence seq_cpo_fr_master_data_id minvalue 1 maxvalue 999999999999999999999999999 start with 1 increment by 1 nocache;
-- Add comments to the columns
comment on column cpo_fr_master_data.fr_master_data_id is '记录id';
comment on column cpo_fr_master_data.document_id is 'document_id';
comment on column cpo_fr_master_data.fact_assign_id is 'Factory assignment id';
comment on column cpo_fr_master_data.assign_result_id is 'assign_result_id';
comment on column cpo_fr_master_data.b_number is 'B_number';
comment on column cpo_fr_master_data.size_group is 'size group';
comment on column cpo_fr_master_data.code is 'A unique planning order reference(MO)';
comment on column cpo_fr_master_data.prod is 'The product/style for this order';
comment on column cpo_fr_master_data.cust is 'The customer for this order';
comment on column cpo_fr_master_data.dd is 'The required delivery date for the order';
comment on column cpo_fr_master_data.dq is 'The required delivery quantiy for the order';
comment on column cpo_fr_master_data.ex_status is 'The order extend status';
comment on column cpo_fr_master_data.order_set is 'The order set that order belong to order';
comment on column cpo_fr_master_data.ud_sport_code is 'ud_sport_code';
comment on column cpo_fr_master_data.product_type is 'product_type';
comment on column cpo_fr_master_data.ud_client_code is 'ud_client_code';
comment on column cpo_fr_master_data.fabric_type is 'fabric type';
comment on column cpo_fr_master_data.size_name_1 is 'Size name 1';
comment on column cpo_fr_master_data.size_ratio_1 is 'size ratio 1';
comment on column cpo_fr_master_data.size_name_2 is 'Size name 2';
comment on column cpo_fr_master_data.size_ratio_2 is 'size ratio 2';
comment on column cpo_fr_master_data.size_name_3 is 'Size name 3';
comment on column cpo_fr_master_data.size_ratio_3 is 'size ratio 3';
comment on column cpo_fr_master_data.size_name_4 is 'Size name 4';
comment on column cpo_fr_master_data.size_ratio_4 is 'size ratio 4';
comment on column cpo_fr_master_data.size_name_5 is 'Size name 5';
comment on column cpo_fr_master_data.size_ratio_5 is 'size ratio 5';
comment on column cpo_fr_master_data.size_name_6 is 'Size name 6';
comment on column cpo_fr_master_data.size_ratio_6 is 'size ratio 6';
comment on column cpo_fr_master_data.size_name_7 is 'Size name 7';
comment on column cpo_fr_master_data.size_ratio_7 is 'size ratio 7';
comment on column cpo_fr_master_data.size_name_8 is 'Size name 8';
comment on column cpo_fr_master_data.size_ratio_8 is 'size ratio 8';
comment on column cpo_fr_master_data.size_name_9 is 'Size name 9';
comment on column cpo_fr_master_data.size_ratio_9 is 'size ratio 9';
comment on column cpo_fr_master_data.size_name_10 is 'Size name 10';
comment on column cpo_fr_master_data.size_ratio_10 is 'size ratio 10';
comment on column cpo_fr_master_data.size_name_11 is 'Size name 11';
comment on column cpo_fr_master_data.size_ratio_11 is 'size ratio 11';
comment on column cpo_fr_master_data.size_name_12 is 'Size name 12';
comment on column cpo_fr_master_data.size_ratio_12 is 'size ratio 12';
comment on column cpo_fr_master_data.size_name_13 is 'Size name 13';
comment on column cpo_fr_master_data.size_ratio_13 is 'size ratio 13';
comment on column cpo_fr_master_data.size_name_14 is 'Size name 14';
comment on column cpo_fr_master_data.size_ratio_14 is 'size ratio 14';
comment on column cpo_fr_master_data.size_name_15 is 'Size name 15';
comment on column cpo_fr_master_data.size_ratio_15 is 'size ratio 15';
comment on column cpo_fr_master_data.size_name_16 is 'Size name 16';
comment on column cpo_fr_master_data.size_ratio_16 is 'size ratio 16';
comment on column cpo_fr_master_data.size_name_17 is 'Size name 17';
comment on column cpo_fr_master_data.size_ratio_17 is 'size ratio 17';
comment on column cpo_fr_master_data.size_name_18 is 'Size name 18';
comment on column cpo_fr_master_data.size_ratio_18 is 'size ratio 18';
comment on column cpo_fr_master_data.size_name_19 is 'Size name 19';
comment on column cpo_fr_master_data.size_ratio_19 is 'size ratio 19';
comment on column cpo_fr_master_data.size_name_20 is 'Size name 20';
comment on column cpo_fr_master_data.size_ratio_20 is 'size ratio 20';
comment on column cpo_fr_master_data.size_name_21 is 'Size name 21';
comment on column cpo_fr_master_data.size_ratio_21 is 'size ratio 21';
comment on column cpo_fr_master_data.size_name_22 is 'Size name 22';
comment on column cpo_fr_master_data.size_ratio_22 is 'size ratio 22';
comment on column cpo_fr_master_data.size_name_23 is 'Size name 23';
comment on column cpo_fr_master_data.size_ratio_23 is 'size ratio 23';
comment on column cpo_fr_master_data.size_name_24 is 'Size name 24';
comment on column cpo_fr_master_data.size_ratio_24 is 'size ratio 24';
comment on column cpo_fr_master_data.size_name_25 is 'Size name 25';
comment on column cpo_fr_master_data.size_ratio_25 is 'size ratio 25';
comment on column cpo_fr_master_data.size_name_26 is 'Size name 26';
comment on column cpo_fr_master_data.size_ratio_26 is 'size ratio 26';
comment on column cpo_fr_master_data.size_name_27 is 'Size name 27';
comment on column cpo_fr_master_data.size_ratio_27 is 'size ratio 27';
comment on column cpo_fr_master_data.size_name_28 is 'Size name 28';
comment on column cpo_fr_master_data.size_ratio_28 is 'size ratio 28';
comment on column cpo_fr_master_data.size_name_29 is 'Size name 29';
comment on column cpo_fr_master_data.size_ratio_29 is 'size ratio 29';
comment on column cpo_fr_master_data.size_name_30 is 'Size name 30';
comment on column cpo_fr_master_data.size_ratio_30 is 'size ratio 30';
comment on column cpo_fr_master_data.size_name_31 is 'Size name 31';
comment on column cpo_fr_master_data.size_ratio_31 is 'size ratio 31';
comment on column cpo_fr_master_data.size_name_32 is 'Size name 32';
comment on column cpo_fr_master_data.size_ratio_32 is 'size ratio 32';
comment on column cpo_fr_master_data.size_name_33 is 'Size name 33';
comment on column cpo_fr_master_data.size_ratio_33 is 'size ratio 33';
comment on column cpo_fr_master_data.size_name_34 is 'Size name 34';
comment on column cpo_fr_master_data.size_ratio_34 is 'size ratio 34';
comment on column cpo_fr_master_data.size_name_35 is 'Size name 35';
comment on column cpo_fr_master_data.size_ratio_35 is 'size ratio 35';
comment on column cpo_fr_master_data.ud_batch_date is 'A order user defined field';
comment on column cpo_fr_master_data.status is '状态';
comment on column cpo_fr_master_data.descrip is 'A order description';
comment on column cpo_fr_master_data.time is 'A timetable name of the order';
comment on column cpo_fr_master_data.ap_group is 'A valid FastReact planning group';
comment on column cpo_fr_master_data.ud_fty_id is '工厂code';
comment on column cpo_fr_master_data.ud_model is '';
comment on column cpo_fr_master_data.ud_article is 'A article No. for the order';
comment on column cpo_fr_master_data.ud_customer_no is 'A order s cust No.';
comment on column cpo_fr_master_data.ud_country is 'The country name of the order';
comment on column cpo_fr_master_data.ud_fty_name is 'The Fty name';
comment on column cpo_fr_master_data.ud_classic_code is 'The Classic code of the order';
comment on column cpo_fr_master_data.ud_special_wmsp is '特殊工序';
comment on column cpo_fr_master_data.ud_eu_non_eu is '是否欧盟';
comment on column cpo_fr_master_data.ud_shipment_fty is 'Shipment Fty name';
comment on column cpo_fr_master_data.ud_count_fty is '计数工厂';
comment on column cpo_fr_master_data.ud_168_no is '168 No. for the order';
comment on column cpo_fr_master_data.dd_style is 'dd_style';
comment on column cpo_fr_master_data.ud_tc_psdd is 'ud_tc_psdd';
comment on column cpo_fr_master_data.ud_category is '类型';
comment on column cpo_fr_master_data.ud_gb16_request_date is '';
comment on column cpo_fr_master_data.lc0190_date is 'LC0190下单日期';
comment on column cpo_fr_master_data.ud_ord_no is '订单号';
comment on column cpo_fr_master_data.ud_plan_date is '计划日期';
comment on column cpo_fr_master_data.ud_plan_group is '计划组';
comment on column cpo_fr_master_data.ud_plan_month is '计划月份';
comment on column cpo_fr_master_data.ud_po is 'pucharse order';
comment on column cpo_fr_master_data.ud_podd is '';
comment on column cpo_fr_master_data.ud_psdd_date is '走货日期';
comment on column cpo_fr_master_data.ud_season is '季度';
comment on column cpo_fr_master_data.ud_60_day_project is '';
comment on column cpo_fr_master_data.ud_loading_port is '停货港口';
comment on column cpo_fr_master_data.ud_lpd is 'EDI.LastProductionDate';
comment on column cpo_fr_master_data.ud_new_crd is 'CRD';
comment on column cpo_fr_master_data.ud_new_pd is 'PD';
comment on column cpo_fr_master_data.ud_add_total_date is '';
comment on column cpo_fr_master_data.batch_no is 'batch no';
comment on column cpo_fr_master_data.smv is 'smv';
comment on column cpo_fr_master_data.customer_status is 'Customer Status';
comment on column cpo_fr_master_data.ship_mode is 'Ship Mode';
comment on column cpo_fr_master_data.ud_service_identify is 'ud_service_identify';
comment on column cpo_fr_master_data.special_order_remark is 'special order remark';
comment on column cpo_fr_master_data.main_mpo is 'main mpo';
comment on column cpo_fr_master_data.last_fabric_pi_eta is 'last fabric pi eta';
comment on column cpo_fr_master_data.order_change_date is 'order_change_date';
comment on column cpo_fr_master_data.ud_remarks is 'ud_remarks';
comment on column cpo_fr_master_data.athlete is 'athlete';
comment on column cpo_fr_master_data.utc_create is '创建时间';
comment on column cpo_fr_master_data.utc_update is '修改时间';
comment on column cpo_fr_master_data.high_level_plan_status is '状态';
comment on column cpo_fr_master_data.create_by is '创建人';
comment on column cpo_fr_master_data.update_by is '变更人';
comment on column cpo_fr_master_data.transfer_status is '状态';
comment on column cpo_fr_master_data.note is '备注';
-- end --

-- begin--linkgoo_uploadfile_config--
drop table linkgoo_uploadfile_config;
create table linkgoo_uploadfile_config (
	id bigint not null,
	file_url varchar(255),
	file_type_filter varchar(128),
	info_language varchar(30),
	del_after_day Integer,
	result_file_url varchar(255),
	create_by bigint,
	create_time datetime,
	update_by BIGINT,
	update_time datetime
);
alter table linkgoo_uploadfile_config add constraint linkgoo_uploadfile_config_pk PRIMARY KEY(id);
drop sequence seq_linkgoo_uploadfile_config_id;
create sequence seq_linkgoo_uploadfile_config_id minvalue 1 maxvalue 999999999999999999999999999 start with 1 increment by 1 nocache;
-- Add comments to the columns
comment on column linkgoo_uploadfile_config.id is 'ID';
comment on column linkgoo_uploadfile_config.file_url is '上传路径';
comment on column linkgoo_uploadfile_config.file_type_filter is '文件过滤';
comment on column linkgoo_uploadfile_config.info_language is '信息默认语言';
comment on column linkgoo_uploadfile_config.del_after_day is '文件保留天数';
comment on column linkgoo_uploadfile_config.result_file_url is '处理结果路径';
comment on column linkgoo_uploadfile_config.create_by is '创建者';
comment on column linkgoo_uploadfile_config.create_time is '创建时间';
comment on column linkgoo_uploadfile_config.update_by is '上次更新者';
comment on column linkgoo_uploadfile_config.update_time is '上次更新时间';
-- end --

-- begin--linkgoo_method_config--
drop table linkgoo_method_config;
create table linkgoo_method_config (
	id bigint not null,
	method varchar(128),
	method_name varchar(128),
	create_by bigint,
	create_time datetime,
	update_by bigint,
	update_time datetime
);
alter table linkgoo_method_config add constraint linkgoo_method_config_pk PRIMARY KEY(id);
drop sequence seq_linkgoo_method_config_id;
create sequence seq_linkgoo_method_config_id minvalue 1 maxvalue 999999999999999999999999999 start with 1 increment by 1 nocache;
-- Add comments to the columns
comment on column linkgoo_method_config.id is 'ID';
comment on column linkgoo_method_config.method is '处理方法';
comment on column linkgoo_method_config.method_name is '处理方法名';
comment on column linkgoo_method_config.create_by is '创建者';
comment on column linkgoo_method_config.create_time is '创建时间';
comment on column linkgoo_method_config.update_by is '上次更新者';
comment on column linkgoo_method_config.update_time is '上次更新时间';
-- end --

-- begin--linkgoo_task--
drop table linkgoo_task;
create table linkgoo_task (
	id bigint not null,
	original_file_url varchar(255),
	name varchar(255),
	original_name varchar(255),
	processing_schedule Integer,
	method varchar(128),
	status Integer,
	begin_time datetime,
	finish_time datetime,
	del_after_day Integer,
	summary_language varchar(30),
	result_summary varchar(255),
	result_file_url varchar(255),
	result_name varchar(255),
	create_by bigint,
	create_time datetime,
	update_by bigint,
	update_time datetime
);
alter table linkgoo_task add constraint linkgoo_task_pk PRIMARY KEY(id);
drop sequence seq_linkgoo_task_id;
create sequence seq_linkgoo_task_id minvalue 1 maxvalue 999999999999999999999999999 start with 1 increment by 1 nocache;
-- Add comments to the columns
comment on column linkgoo_task.id is 'ID';
comment on column linkgoo_task.original_file_url is '文件路径';
comment on column linkgoo_task.name is '文件名';
comment on column linkgoo_task.original_name is '原文件名';
comment on column linkgoo_task.processing_schedule is '处理进度';
comment on column linkgoo_task.method is '处理方法';
comment on column linkgoo_task.status is '状态';
comment on column linkgoo_task.begin_time is '处理开始时间';
comment on column linkgoo_task.finish_time is '处理结束时间';
comment on column linkgoo_task.del_after_day is '文件保留天数';
comment on column linkgoo_task.summary_language is '概述默认语言';
comment on column linkgoo_task.result_summary is '处理结果汇总';
comment on column linkgoo_task.result_file_url is '处理结果路径';
comment on column linkgoo_task.result_name is '处理结果文件名';
comment on column linkgoo_task.create_by is '创建者';
comment on column linkgoo_task.create_time is '创建时间';
comment on column linkgoo_task.update_by is '上次更新者';
comment on column linkgoo_task.update_time is '上次更新时间';
-- end --

-- begin--linkgoo_import_table_rule--
drop table linkgoo_import_table_rule;
create table linkgoo_import_table_rule (
	id bigint not null,
	method varchar(128),
	next_method_class varchar(255),
	next_method varchar(128),
	next_method_parameter varchar(8000),
	end_sign varchar(30),
	header_index Integer,
	data_index Integer,
	table_name varchar(255),
	delete_repeat Integer,
	insert_no Integer,
	is_valid Integer,
	sort Integer,
	f1 varchar(255),
	f2 varchar(255),
	f3 varchar(255),
	f4 varchar(255),
	f5 varchar(255),
	create_by bigint,
	create_time datetime,
	update_by bigint,
	update_time datetime
);
alter table linkgoo_import_table_rule add constraint linkgoo_import_table_rule_pk PRIMARY KEY(id);
drop sequence seq_linkgoo_import_table_rule_id;
create sequence seq_linkgoo_import_table_rule_id minvalue 1 maxvalue 999999999999999999999999999 start with 1 increment by 1 nocache;
-- Add comments to the columns
comment on column linkgoo_import_table_rule.id is 'ID';
comment on column linkgoo_import_table_rule.method is '处理方法';
comment on column linkgoo_import_table_rule.next_method_class is '下一步骤Class';
comment on column linkgoo_import_table_rule.next_method is '下一步骤';
comment on column linkgoo_import_table_rule.next_method_parameter is '下一步骤参数';
comment on column linkgoo_import_table_rule.end_sign is '结束标识';
comment on column linkgoo_import_table_rule.header_index is '标题行索引';
comment on column linkgoo_import_table_rule.data_index is '数据行索引';
comment on column linkgoo_import_table_rule.table_name is '表名称';
comment on column linkgoo_import_table_rule.delete_repeat is '是否删除重复行';
comment on column linkgoo_import_table_rule.insert_no is '每次导入记录数';
comment on column linkgoo_import_table_rule.is_valid is '是否有效';
comment on column linkgoo_import_table_rule.sort is '顺序';
comment on column linkgoo_import_table_rule.f1 is '扩展字段1';
comment on column linkgoo_import_table_rule.f2 is '扩展字段2';
comment on column linkgoo_import_table_rule.f3 is '扩展字段3';
comment on column linkgoo_import_table_rule.f4 is '扩展字段4';
comment on column linkgoo_import_table_rule.f5 is '扩展字段5';
comment on column linkgoo_import_table_rule.create_by is '创建者';
comment on column linkgoo_import_table_rule.create_time is '创建时间';
comment on column linkgoo_import_table_rule.update_by is '上次更新者';
comment on column linkgoo_import_table_rule.update_time is '上次更新时间';
-- end --

-- begin--linkgoo_import_column_rule--
drop table linkgoo_import_column_rule;
create table linkgoo_import_column_rule (
	id bigint not null,
	upa_import_table_rule_id bigint,
	table_name varchar(255),
	field_name varchar(255),
	is_pk Integer,
	is_unique Integer,
	column_name varchar(255),
	header_name varchar(255),
	required Integer,
	data_type varchar(50),
	max_length Integer,
	produce_method Integer,
	produce_method_value varchar(8000),
	is_dictionary Integer,
	dic_table_name varchar(255),
	dic_type_column varchar(255),
	dic_type_value varchar(50),
	dic_required_column varchar(255),
	dic_reference_column varchar(255),
	is_valid Integer,
	f1 varchar(255),
	f2 varchar(255),
	f3 varchar(255),
	f4 varchar(255),
	f5 varchar(255),
	create_by bigint,
	create_time datetime,
	update_by bigint,
	update_time datetime
);
alter table linkgoo_import_column_rule add constraint linkgoo_import_column_rule_pk PRIMARY KEY(id);
drop sequence seq_linkgoo_import_column_rule_id;
create sequence seq_linkgoo_import_column_rule_id minvalue 1 maxvalue 999999999999999999999999999 start with 1 increment by 1 nocache;
-- Add comments to the columns
comment on column linkgoo_import_column_rule.id is 'ID';
comment on column linkgoo_import_column_rule.upa_import_table_rule_id is '导入表规则ID';
comment on column linkgoo_import_column_rule.table_name is '表名';
comment on column linkgoo_import_column_rule.field_name is '表字段名';
comment on column linkgoo_import_column_rule.is_pk is '是否是主键';
comment on column linkgoo_import_column_rule.is_unique is '是否唯一 ';
comment on column linkgoo_import_column_rule.column_name is '列名称';
comment on column linkgoo_import_column_rule.header_name is '对应excel列头';
comment on column linkgoo_import_column_rule.required is '是否必须填入';
comment on column linkgoo_import_column_rule.data_type is '数据类型';
comment on column linkgoo_import_column_rule.max_length is '允许最大存储长度 ';
comment on column linkgoo_import_column_rule.produce_method is '生成方法';
comment on column linkgoo_import_column_rule.produce_method_value is '生成方法值 ';
comment on column linkgoo_import_column_rule.is_dictionary is '是否属于字典';
comment on column linkgoo_import_column_rule.dic_table_name is '字典表名称';
comment on column linkgoo_import_column_rule.dic_type_column is '字典类型字段名';
comment on column linkgoo_import_column_rule.dic_type_value is '字典类型';
comment on column linkgoo_import_column_rule.dic_required_column is '字典获取值列的名称';
comment on column linkgoo_import_column_rule.dic_reference_column is '字典表参考列的名称';
comment on column linkgoo_import_column_rule.is_valid is '是否有效';
comment on column linkgoo_import_column_rule.f1 is '扩展字段1';
comment on column linkgoo_import_column_rule.f2 is '扩展字段2';
comment on column linkgoo_import_column_rule.f3 is '扩展字段3';
comment on column linkgoo_import_column_rule.f4 is '扩展字段4';
comment on column linkgoo_import_column_rule.f5 is '扩展字段5';
comment on column linkgoo_import_column_rule.create_by is '创建者';
comment on column linkgoo_import_column_rule.create_time is '创建时间';
comment on column linkgoo_import_column_rule.update_by is '上次更新者';
comment on column linkgoo_import_column_rule.update_time is '上次更新时间';
-- end --

-- begin--linkgoo_import_value_rule--
drop table linkgoo_import_value_rule;
create table linkgoo_import_value_rule (
	id bigint not null,
	produce_method_value varchar(255),
	rule_content varchar(8000),
	is_valid Integer,
	f1 varchar(255),
	f2 varchar(255),
	f3 varchar(255),
	f4 varchar(255),
	f5 varchar(255),
	create_by bigint,
	create_time datetime,
	update_by bigint,
	update_time datetime
);
alter table linkgoo_import_value_rule add constraint linkgoo_import_value_rule_pk PRIMARY KEY(id);
drop sequence seq_linkgoo_import_value_rule_id;
create sequence seq_linkgoo_import_value_rule_id minvalue 1 maxvalue 999999999999999999999999999 start with 1 increment by 1 nocache;
-- Add comments to the columns
comment on column linkgoo_import_value_rule.id is 'ID';
comment on column linkgoo_import_value_rule.produce_method_value is '生成方法值 ';
comment on column linkgoo_import_value_rule.rule_content is '内容';
comment on column linkgoo_import_value_rule.is_valid is '是否有效';
comment on column linkgoo_import_value_rule.f1 is '扩展字段1';
comment on column linkgoo_import_value_rule.f2 is '扩展字段2';
comment on column linkgoo_import_value_rule.f3 is '扩展字段3';
comment on column linkgoo_import_value_rule.f4 is '扩展字段4';
comment on column linkgoo_import_value_rule.f5 is '扩展字段5';
comment on column linkgoo_import_value_rule.create_by is '创建者';
comment on column linkgoo_import_value_rule.create_time is '创建时间';
comment on column linkgoo_import_value_rule.update_by is '上次更新者';
comment on column linkgoo_import_value_rule.update_time is '上次更新时间';
-- end --

-- begin--linkgoo_export_column_rule--
drop table linkgoo_export_column_rule;
create table linkgoo_export_column_rule (
	id bigint not null,
	entry_code varchar(128),
	field_name varchar(255),
	export_column_name varchar(255),
	sort Integer,
	tips varchar(255),
	combos varchar(512),
	f1 varchar(255),
	f2 varchar(255),
	f3 varchar(255),
	f4 varchar(255),
	f5 varchar(255),
	create_by bigint,
	create_time datetime,
	update_by bigint,
	update_time datetime
);
alter table linkgoo_export_column_rule add constraint linkgoo_export_column_rule_pk PRIMARY KEY(id);
drop sequence seq_linkgoo_export_column_rule_id;
create sequence seq_linkgoo_export_column_rule_id minvalue 1 maxvalue 999999999999999999999999999 start with 1 increment by 1 nocache;
-- Add comments to the columns
comment on column linkgoo_export_column_rule.id is 'ID';
comment on column linkgoo_export_column_rule.entry_code is '实体code';
comment on column linkgoo_export_column_rule.field_name is '实体属性名';
comment on column linkgoo_export_column_rule.export_column_name is 'excel表头';
comment on column linkgoo_export_column_rule.sort is '顺序';
comment on column linkgoo_export_column_rule.tips is 'tips';
comment on column linkgoo_export_column_rule.combos is '下来内容';
comment on column linkgoo_export_column_rule.f1 is '扩展字段1';
comment on column linkgoo_export_column_rule.f2 is '扩展字段2';
comment on column linkgoo_export_column_rule.f3 is '扩展字段3';
comment on column linkgoo_export_column_rule.f4 is '扩展字段4';
comment on column linkgoo_export_column_rule.f5 is '扩展字段5';
comment on column linkgoo_export_column_rule.create_by is '创建者';
comment on column linkgoo_export_column_rule.create_time is '创建时间';
comment on column linkgoo_export_column_rule.update_by is '上次更新者';
comment on column linkgoo_export_column_rule.update_time is '上次更新时间';
-- end --

-- begin--worktable_edi_order_log--
drop table worktable_edi_order_log;
create table worktable_edi_order_log (
	edi_order_log_id bigint not null,
	edi_order varchar(8000),
	log_message varchar(8000),
	start_time datetime,
	end_time datetime,
	utc_create datetime,
	utc_update datetime,
	order_log_status varchar(5),
	create_by bigint,
	update_by bigint,
	note varchar(1024)
);
alter table worktable_edi_order_log add constraint worktable_edi_order_log_pk PRIMARY KEY(edi_order_log_id);
drop sequence seq_worktable_edi_order_log_id;
create sequence seq_worktable_edi_order_log_id minvalue 1 maxvalue 999999999999999999999999999 start with 1 increment by 1 nocache;
-- Add comments to the columns
comment on column worktable_edi_order_log.edi_order_log_id is '记录id';
comment on column worktable_edi_order_log.edi_order is 'ediorder';
comment on column worktable_edi_order_log.log_message is 'log_message';
comment on column worktable_edi_order_log.start_time is '开始时间';
comment on column worktable_edi_order_log.end_time is '结束时间';
comment on column worktable_edi_order_log.utc_create is '创建时间';
comment on column worktable_edi_order_log.utc_update is '修改时间';
comment on column worktable_edi_order_log.order_log_status is '状态';
comment on column worktable_edi_order_log.create_by is '创建人';
comment on column worktable_edi_order_log.update_by is '变更人';
comment on column worktable_edi_order_log.note is '备注';
-- end --

-- begin--cpo_mi_forecast--
drop table cpo_mi_forecast;
create table cpo_mi_forecast (
	mi_forecast_id bigint not null,
	document_id bigint,
	mi_div varchar(50),
	factory varchar(255),
	customer varchar(255),
	model_name varchar(255),
	last_update varchar(255),
	january varchar(10),
	february varchar(10),
	march varchar(10),
	april varchar(10),
	may varchar(10),
	june varchar(10),
	july varchar(10),
	august varchar(10),
	september varchar(10),
	october varchar(10),
	november varchar(10),
	december varchar(10),
	utc_create datetime,
	utc_update datetime,
	status int,
	create_by bigint,
	update_by bigint,
	note varchar(1024)
);
alter table cpo_mi_forecast add constraint cpo_mi_forecast_pk PRIMARY KEY(mi_forecast_id);
drop sequence seq_cpo_mi_forecast_id;
create sequence seq_cpo_mi_forecast_id minvalue 1 maxvalue 999999999999999999999999999 start with 1 increment by 1 nocache;
-- Add comments to the columns
comment on column cpo_mi_forecast.mi_forecast_id is 'mi forecast';
comment on column cpo_mi_forecast.document_id is 'document id';
comment on column cpo_mi_forecast.mi_div is 'mi_Div';
comment on column cpo_mi_forecast.factory is 'factory';
comment on column cpo_mi_forecast.customer is 'customer';
comment on column cpo_mi_forecast.model_name is 'model name';
comment on column cpo_mi_forecast.last_update is 'last update';
comment on column cpo_mi_forecast.january is 'January';
comment on column cpo_mi_forecast.february is 'February';
comment on column cpo_mi_forecast.march is 'March';
comment on column cpo_mi_forecast.april is 'April';
comment on column cpo_mi_forecast.may is 'May';
comment on column cpo_mi_forecast.june is 'June';
comment on column cpo_mi_forecast.july is 'July';
comment on column cpo_mi_forecast.august is 'August';
comment on column cpo_mi_forecast.september is 'September';
comment on column cpo_mi_forecast.october is 'October';
comment on column cpo_mi_forecast.november is 'November';
comment on column cpo_mi_forecast.december is 'December';
comment on column cpo_mi_forecast.utc_create is '创建时间';
comment on column cpo_mi_forecast.utc_update is '修改时间';
comment on column cpo_mi_forecast.status is '状态';
comment on column cpo_mi_forecast.create_by is '创建人';
comment on column cpo_mi_forecast.update_by is '变更人';
comment on column cpo_mi_forecast.note is '备注';
-- end --

-- begin--cpo_document_log--
drop table cpo_document_log;
create table cpo_document_log (
	document_log_id bigint not null,
	document_id bigint,
	document_name varchar(255),
	document_url varchar(500),
	document_type varchar(2),
	source varchar(50),
	start_time datetime,
	end_time datetime,
	utc_create datetime,
	create_by bigint,
	note varchar(1024)
);
alter table cpo_document_log add constraint cpo_document_log_pk PRIMARY KEY(document_log_id);
drop sequence seq_cpo_document_log_id;
create sequence seq_cpo_document_log_id minvalue 1 maxvalue 999999999999999999999999999 start with 1 increment by 1 nocache;
-- Add comments to the columns
comment on column cpo_document_log.document_log_id is '记录id';
comment on column cpo_document_log.document_id is '文档信息id';
comment on column cpo_document_log.document_name is '文档名';
comment on column cpo_document_log.document_url is '文档路径';
comment on column cpo_document_log.document_type is '文档类型';
comment on column cpo_document_log.source is '文档来源';
comment on column cpo_document_log.start_time is '开始时间';
comment on column cpo_document_log.end_time is '结束时间';
comment on column cpo_document_log.utc_create is '创建时间';
comment on column cpo_document_log.create_by is '创建人';
comment on column cpo_document_log.note is '备注';
-- end --

-- begin--cpo_a_chian_buy_plan--
drop table cpo_a_chian_buy_plan;
create table cpo_a_chian_buy_plan (
	a_china_buy_plan_id bigint not null,
	document_id bigint,
	season Varchar(10),
	assigned_factory Varchar(10),
	develop_sourcing varchar(255),
	season_of_tm varchar(255),
	ib_po_no varchar(255),
	sap_order_no varchar(255),
	working_no varchar(30),
	model_no varchar(30),
	article_no varchar(30),
	model_name varchar(255),
	division varchar(30),
	gender varchar(10),
	local_drop varchar(10),
	category varchar(50),
	themes varchar(50),
	priority_tracking varchar(30),
	owr_launch_date varchar(30),
	crd_in_system varchar(30),
	sourcing_channel varchar(30),
	sourcing_group varchar(30),
	sourcing_origin varchar(30),
	manufactory varchar(255),
	int_l_vendor_code varchar(30),
	lo varchar(100),
	ds_fty_code varchar(30),
	lead_time varchar(10),
	shipping_mode varchar(30),
	buy_ready_cut_off varchar(30),
	actual_cut_off varchar(30),
	brand_ii varchar(128),
	ils_fc_qty varchar(10),
	size_name1 varchar(10),
	size_quantity1 int,
	size_name2 varchar(10),
	size_quantity2 int,
	size_name3 varchar(10),
	size_quantity3 int,
	size_name4 varchar(10),
	size_quantity4 int,
	size_name5 varchar(10),
	size_quantity5 int,
	size_name6 varchar(10),
	size_quantity6 int,
	size_name7 varchar(10),
	size_quantity7 int,
	size_name8 varchar(10),
	size_quantity8 int,
	size_name9 varchar(10),
	size_quantity9 int,
	size_name10 varchar(10),
	size_quantity10 int,
	size_name11 varchar(10),
	size_quantity11 int,
	size_name12 varchar(10),
	size_quantity12 int,
	size_name13 varchar(10),
	size_quantity13 int,
	size_name14 varchar(10),
	size_quantity14 int,
	size_name15 varchar(10),
	size_quantity15 int,
	size_name16 varchar(10),
	size_quantity16 int,
	size_name17 varchar(10),
	size_quantity17 int,
	size_name18 varchar(10),
	size_quantity18 int,
	size_name19 varchar(10),
	size_quantity19 int,
	size_name20 varchar(10),
	size_quantity20 int,
	size_name21 varchar(10),
	size_quantity21 int,
	size_name22 varchar(10),
	size_quantity22 int,
	size_name23 varchar(10),
	size_quantity23 int,
	size_name24 varchar(10),
	size_quantity24 int,
	size_name25 varchar(10),
	size_quantity25 int,
	size_name26 varchar(10),
	size_quantity26 int,
	size_name27 varchar(10),
	size_quantity27 int,
	size_name28 varchar(10),
	size_quantity28 int,
	size_name29 varchar(10),
	size_quantity29 int,
	size_name30 varchar(10),
	size_quantity30 int,
	consolidation_qty varchar(10),
	po_qty varchar(10),
	size_pattern varchar(30),
	size_run varchar(30),
	priority varchar(30),
	utc_create datetime,
	utc_update datetime,
	a_chian_buy_plan_status varchar(1),
	create_by bigint,
	update_by bigint,
	note varchar(1024)
);
alter table cpo_a_chian_buy_plan add constraint cpo_a_chian_buy_plan_pk PRIMARY KEY(a_china_buy_plan_id);
drop sequence seq_cpo_a_chian_buy_plan_id;
create sequence seq_cpo_a_chian_buy_plan_id minvalue 1 maxvalue 999999999999999999999999999 start with 1 increment by 1 nocache;
-- Add comments to the columns
comment on column cpo_a_chian_buy_plan.a_china_buy_plan_id is '记录id';
comment on column cpo_a_chian_buy_plan.document_id is 'document id';
comment on column cpo_a_chian_buy_plan.season is 'Season';
comment on column cpo_a_chian_buy_plan.assigned_factory is 'Assigned_factory';
comment on column cpo_a_chian_buy_plan.develop_sourcing is 'DEVELOP SOURCING';
comment on column cpo_a_chian_buy_plan.season_of_tm is 'SEASON OF TM';
comment on column cpo_a_chian_buy_plan.ib_po_no is 'IB PO NO';
comment on column cpo_a_chian_buy_plan.sap_order_no is 'SAP ORDER NO';
comment on column cpo_a_chian_buy_plan.working_no is 'WORKING NO';
comment on column cpo_a_chian_buy_plan.model_no is 'MODEL NO';
comment on column cpo_a_chian_buy_plan.article_no is 'ARTICLE NO';
comment on column cpo_a_chian_buy_plan.model_name is 'MODEL NAME';
comment on column cpo_a_chian_buy_plan.division is 'DIVISION';
comment on column cpo_a_chian_buy_plan.gender is 'GENDER';
comment on column cpo_a_chian_buy_plan.local_drop is 'LOCAL DROP';
comment on column cpo_a_chian_buy_plan.category is 'CATEGORY';
comment on column cpo_a_chian_buy_plan.themes is 'THEMES';
comment on column cpo_a_chian_buy_plan.priority_tracking is 'PRIORITY TRACKING';
comment on column cpo_a_chian_buy_plan.owr_launch_date is 'OWR LAUNCH DATE';
comment on column cpo_a_chian_buy_plan.crd_in_system is 'CRD IN SYSTEM';
comment on column cpo_a_chian_buy_plan.sourcing_channel is 'SOURCING CHANNEL';
comment on column cpo_a_chian_buy_plan.sourcing_group is 'SOURCING GROUP';
comment on column cpo_a_chian_buy_plan.sourcing_origin is 'SOURCING ORIGIN';
comment on column cpo_a_chian_buy_plan.manufactory is 'MANUFACTORY';
comment on column cpo_a_chian_buy_plan.int_l_vendor_code is 'INT'L VENDOR CODE';
comment on column cpo_a_chian_buy_plan.lo is 'LO';
comment on column cpo_a_chian_buy_plan.ds_fty_code is 'DS fty code';
comment on column cpo_a_chian_buy_plan.lead_time is 'LEAD TIME';
comment on column cpo_a_chian_buy_plan.shipping_mode is 'SHIPPING MODE';
comment on column cpo_a_chian_buy_plan.buy_ready_cut_off is 'BUY-READY CUT-OFF';
comment on column cpo_a_chian_buy_plan.actual_cut_off is 'ACTUAL CUT OFF';
comment on column cpo_a_chian_buy_plan.brand_ii is 'BRAND II';
comment on column cpo_a_chian_buy_plan.ils_fc_qty is 'ILS FC QTY';
comment on column cpo_a_chian_buy_plan.size_name1 is 'size_name1';
comment on column cpo_a_chian_buy_plan.size_quantity1 is 'size_quantity1';
comment on column cpo_a_chian_buy_plan.size_name2 is 'size_name2';
comment on column cpo_a_chian_buy_plan.size_quantity2 is 'size_quantity2';
comment on column cpo_a_chian_buy_plan.size_name3 is 'size_name3';
comment on column cpo_a_chian_buy_plan.size_quantity3 is 'size_quantity3';
comment on column cpo_a_chian_buy_plan.size_name4 is 'size_name4';
comment on column cpo_a_chian_buy_plan.size_quantity4 is 'size_quantity4';
comment on column cpo_a_chian_buy_plan.size_name5 is 'size_name5';
comment on column cpo_a_chian_buy_plan.size_quantity5 is 'size_quantity5';
comment on column cpo_a_chian_buy_plan.size_name6 is 'size_name6';
comment on column cpo_a_chian_buy_plan.size_quantity6 is 'size_quantity6';
comment on column cpo_a_chian_buy_plan.size_name7 is 'size_name7';
comment on column cpo_a_chian_buy_plan.size_quantity7 is 'size_quantity7';
comment on column cpo_a_chian_buy_plan.size_name8 is 'size_name8';
comment on column cpo_a_chian_buy_plan.size_quantity8 is 'size_quantity8';
comment on column cpo_a_chian_buy_plan.size_name9 is 'size_name9';
comment on column cpo_a_chian_buy_plan.size_quantity9 is 'size_quantity9';
comment on column cpo_a_chian_buy_plan.size_name10 is 'size_name10';
comment on column cpo_a_chian_buy_plan.size_quantity10 is 'size_quantity10';
comment on column cpo_a_chian_buy_plan.size_name11 is 'size_name11';
comment on column cpo_a_chian_buy_plan.size_quantity11 is 'size_quantity11';
comment on column cpo_a_chian_buy_plan.size_name12 is 'size_name12';
comment on column cpo_a_chian_buy_plan.size_quantity12 is 'size_quantity12';
comment on column cpo_a_chian_buy_plan.size_name13 is 'size_name13';
comment on column cpo_a_chian_buy_plan.size_quantity13 is 'size_quantity13';
comment on column cpo_a_chian_buy_plan.size_name14 is 'size_name14';
comment on column cpo_a_chian_buy_plan.size_quantity14 is 'size_quantity14';
comment on column cpo_a_chian_buy_plan.size_name15 is 'size_name15';
comment on column cpo_a_chian_buy_plan.size_quantity15 is 'size_quantity15';
comment on column cpo_a_chian_buy_plan.size_name16 is 'size_name16';
comment on column cpo_a_chian_buy_plan.size_quantity16 is 'size_quantity16';
comment on column cpo_a_chian_buy_plan.size_name17 is 'size_name17';
comment on column cpo_a_chian_buy_plan.size_quantity17 is 'size_quantity17';
comment on column cpo_a_chian_buy_plan.size_name18 is 'size_name18';
comment on column cpo_a_chian_buy_plan.size_quantity18 is 'size_quantity18';
comment on column cpo_a_chian_buy_plan.size_name19 is 'size_name19';
comment on column cpo_a_chian_buy_plan.size_quantity19 is 'size_quantity19';
comment on column cpo_a_chian_buy_plan.size_name20 is 'size_name20';
comment on column cpo_a_chian_buy_plan.size_quantity20 is 'size_quantity20';
comment on column cpo_a_chian_buy_plan.size_name21 is 'size_name21';
comment on column cpo_a_chian_buy_plan.size_quantity21 is 'size_quantity21';
comment on column cpo_a_chian_buy_plan.size_name22 is 'size_name22';
comment on column cpo_a_chian_buy_plan.size_quantity22 is 'size_quantity22';
comment on column cpo_a_chian_buy_plan.size_name23 is 'size_name23';
comment on column cpo_a_chian_buy_plan.size_quantity23 is 'size_quantity23';
comment on column cpo_a_chian_buy_plan.size_name24 is 'size_name24';
comment on column cpo_a_chian_buy_plan.size_quantity24 is 'size_quantity24';
comment on column cpo_a_chian_buy_plan.size_name25 is 'size_name25';
comment on column cpo_a_chian_buy_plan.size_quantity25 is 'size_quantity25';
comment on column cpo_a_chian_buy_plan.size_name26 is 'size_name26';
comment on column cpo_a_chian_buy_plan.size_quantity26 is 'size_quantity26';
comment on column cpo_a_chian_buy_plan.size_name27 is 'size_name27';
comment on column cpo_a_chian_buy_plan.size_quantity27 is 'size_quantity27';
comment on column cpo_a_chian_buy_plan.size_name28 is 'size_name28';
comment on column cpo_a_chian_buy_plan.size_quantity28 is 'size_quantity28';
comment on column cpo_a_chian_buy_plan.size_name29 is 'size_name29';
comment on column cpo_a_chian_buy_plan.size_quantity29 is 'size_quantity29';
comment on column cpo_a_chian_buy_plan.size_name30 is 'size_name30';
comment on column cpo_a_chian_buy_plan.size_quantity30 is 'size_quantity30';
comment on column cpo_a_chian_buy_plan.consolidation_qty is 'CONSOLIDATION  QTY';
comment on column cpo_a_chian_buy_plan.po_qty is 'PO QTY';
comment on column cpo_a_chian_buy_plan.size_pattern is 'SIZE PATTERN';
comment on column cpo_a_chian_buy_plan.size_run is 'SIZE RUN';
comment on column cpo_a_chian_buy_plan.priority is 'Priority';
comment on column cpo_a_chian_buy_plan.utc_create is '创建时间';
comment on column cpo_a_chian_buy_plan.utc_update is '修改时间';
comment on column cpo_a_chian_buy_plan.a_chian_buy_plan_status is '状态';
comment on column cpo_a_chian_buy_plan.create_by is '创建人';
comment on column cpo_a_chian_buy_plan.update_by is '变更人';
comment on column cpo_a_chian_buy_plan.note is '备注';
-- end --

-- begin--cpo_fr_export_data_dict--
drop table cpo_fr_export_data_dict;
create table cpo_fr_export_data_dict (
	fr_export_dict_id bigint not null,
	entry_code varchar(50),
	entry_field_name varchar(50),
	export_field_name varchar(50),
	f1 varchar(50),
	f2 varchar(50),
	f3 varchar(50),
	f4 varchar(50),
	f5 varchar(50),
	f6 varchar(50),
	f7 varchar(50),
	f8 varchar(50),
	utc_create datetime,
	utc_update datetime,
	fr_export_dict_status varchar(1),
	create_by bigint,
	update_by bigint,
	note varchar(1024)
);
alter table cpo_fr_export_data_dict add constraint cpo_fr_export_data_dict_pk PRIMARY KEY(fr_export_dict_id);
drop sequence seq_cpo_fr_export_data_dict_id;
create sequence seq_cpo_fr_export_data_dict_id minvalue 1 maxvalue 999999999999999999999999999 start with 1 increment by 1 nocache;
-- Add comments to the columns
comment on column cpo_fr_export_data_dict.fr_export_dict_id is '记录id';
comment on column cpo_fr_export_data_dict.entry_code is '实体code';
comment on column cpo_fr_export_data_dict.entry_field_name is '实体字段名';
comment on column cpo_fr_export_data_dict.export_field_name is '输出字段名';
comment on column cpo_fr_export_data_dict.f1 is '动态字段1';
comment on column cpo_fr_export_data_dict.f2 is '动态字段2';
comment on column cpo_fr_export_data_dict.f3 is '动态字段3';
comment on column cpo_fr_export_data_dict.f4 is '动态字段4';
comment on column cpo_fr_export_data_dict.f5 is '动态字段5';
comment on column cpo_fr_export_data_dict.f6 is '动态字段6';
comment on column cpo_fr_export_data_dict.f7 is '动态字段7';
comment on column cpo_fr_export_data_dict.f8 is '动态字段8';
comment on column cpo_fr_export_data_dict.utc_create is '创建时间';
comment on column cpo_fr_export_data_dict.utc_update is '修改时间';
comment on column cpo_fr_export_data_dict.fr_export_dict_status is '状态';
comment on column cpo_fr_export_data_dict.create_by is '创建人';
comment on column cpo_fr_export_data_dict.update_by is '变更人';
comment on column cpo_fr_export_data_dict.note is '备注';
-- end --

-- begin--cpo_fr_high_level_plan--
drop table cpo_fr_high_level_plan;
create table cpo_fr_high_level_plan (
	high_level_plan_id bigint not null,
	mo varchar(255),
	plan_start_date datetime,
	plan_end_date datetime,
	create_time datetime,
	plan_group varchar(255),
	utc_create datetime,
	utc_update datetime,
	high_level_plan_status varchar(1),
	create_by bigint,
	update_by bigint,
	note varchar(1024)
);
alter table cpo_fr_high_level_plan add constraint cpo_fr_high_level_plan_pk PRIMARY KEY(high_level_plan_id);
drop sequence seq_cpo_fr_high_level_plan_id;
create sequence seq_cpo_fr_high_level_plan_id minvalue 1 maxvalue 999999999999999999999999999 start with 1 increment by 1 nocache;
-- Add comments to the columns
comment on column cpo_fr_high_level_plan.high_level_plan_id is '记录id';
comment on column cpo_fr_high_level_plan.mo is 'MO';
comment on column cpo_fr_high_level_plan.plan_start_date is 'PLAN START DATE';
comment on column cpo_fr_high_level_plan.plan_end_date is 'PLAN END DATE';
comment on column cpo_fr_high_level_plan.create_time is 'CREATETIME';
comment on column cpo_fr_high_level_plan.plan_group is 'PLAN GROUP';
comment on column cpo_fr_high_level_plan.utc_create is '创建时间';
comment on column cpo_fr_high_level_plan.utc_update is '修改时间';
comment on column cpo_fr_high_level_plan.high_level_plan_status is '状态';
comment on column cpo_fr_high_level_plan.create_by is '创建人';
comment on column cpo_fr_high_level_plan.update_by is '变更人';
comment on column cpo_fr_high_level_plan.note is '备注';
-- end --

-- begin--cpo_fr_low_level_plan--
drop table cpo_fr_low_level_plan;
create table cpo_fr_low_level_plan (
	low_level_plan_id bigint not null,
	factory_code varchar(255),
	factory varchar(255),
	ap_group varchar(255),
	product_line varchar(255),
	mo varchar(255),
	product varchar(255),
	customer varchar(255),
	plan_qty varchar(255),
	production_start_date varchar(255),
	production_end_date varchar(255),
	plan_per_day varchar(255),
	utc_create datetime,
	utc_update datetime,
	low_level_plan_status varchar(1),
	create_by bigint,
	update_by bigint,
	note varchar(1024)
);
alter table cpo_fr_low_level_plan add constraint cpo_fr_low_level_plan_pk PRIMARY KEY(low_level_plan_id);
drop sequence seq_cpo_fr_low_level_plan_id;
create sequence seq_cpo_fr_low_level_plan_id minvalue 1 maxvalue 999999999999999999999999999 start with 1 increment by 1 nocache;
-- Add comments to the columns
comment on column cpo_fr_low_level_plan.low_level_plan_id is '记录id';
comment on column cpo_fr_low_level_plan.factory_code is 'factoryCode';
comment on column cpo_fr_low_level_plan.factory is 'factory';
comment on column cpo_fr_low_level_plan.ap_group is 'GROUP';
comment on column cpo_fr_low_level_plan.product_line is 'LINE';
comment on column cpo_fr_low_level_plan.mo is 'ORDER';
comment on column cpo_fr_low_level_plan.product is 'PRODUCT';
comment on column cpo_fr_low_level_plan.customer is 'CUSTOMER';
comment on column cpo_fr_low_level_plan.plan_qty is 'PLAN QTY';
comment on column cpo_fr_low_level_plan.production_start_date is 'PRODUCTION START DATE';
comment on column cpo_fr_low_level_plan.production_end_date is 'PRODUCTION END DATE';
comment on column cpo_fr_low_level_plan.plan_per_day is 'PLAN PER DAY';
comment on column cpo_fr_low_level_plan.utc_create is '创建时间';
comment on column cpo_fr_low_level_plan.utc_update is '修改时间';
comment on column cpo_fr_low_level_plan.low_level_plan_status is '状态';
comment on column cpo_fr_low_level_plan.create_by is '创建人';
comment on column cpo_fr_low_level_plan.update_by is '变更人';
comment on column cpo_fr_low_level_plan.note is '备注';
-- end --

-- begin--cpo_slt_forecast--
drop table cpo_slt_forecast;
create table cpo_slt_forecast (
	slt_forecast_id bigint not null,
	document_id bigint,
	division varchar(10),
	brand varchar(50),
	supply_chain_track varchar(10),
	season varchar(10),
	period varchar(10),
	working_no varchar(50),
	tooling_number varchar(10),
	sport_code varchar(255),
	business_segment varchar(255),
	model varchar(10),
	article_code varchar(10),
	article varchar(255),
	lot_size varchar(10),
	gps_customer_customer varchar(10),
	pre_order_assigned_result Varchar(10),
	gps_customer_desc varchar(255),
	lo varchar(255),
	factory_code varchar(10),
	factory_id varchar(10),
	factory_name_short varchar(255),
	half_month_period varchar(50),
	vpn_ind varchar(255),
	lead_time varchar(10),
	forecast_quantity varchar(15),
	open_forecast_quantity varchar(15),
	order_quantity varchar(15),
	pv_quantity varchar(15),
	eu_rate double,
	eu_quantity double,
	china_rate double,
	china_quantity double,
	total_quantity double,
	utc_update datetime,
	status varchar(2),
	create_by bigint,
	update_by bigint,
	note varchar(1024)
);
alter table cpo_slt_forecast add constraint cpo_slt_forecast_pk PRIMARY KEY(slt_forecast_id);
drop sequence seq_cpo_slt_forecast_id;
create sequence seq_cpo_slt_forecast_id minvalue 1 maxvalue 999999999999999999999999999 start with 1 increment by 1 nocache;
-- Add comments to the columns
comment on column cpo_slt_forecast.slt_forecast_id is 'slt_forecast';
comment on column cpo_slt_forecast.document_id is 'document id';
comment on column cpo_slt_forecast.division is 'division';
comment on column cpo_slt_forecast.brand is 'Brand';
comment on column cpo_slt_forecast.supply_chain_track is 'Supply Chain Track';
comment on column cpo_slt_forecast.season is 'Season';
comment on column cpo_slt_forecast.period is 'Period';
comment on column cpo_slt_forecast.working_no is 'Working No';
comment on column cpo_slt_forecast.tooling_number is 'Tooling Number';
comment on column cpo_slt_forecast.sport_code is 'Sports Code';
comment on column cpo_slt_forecast.business_segment is 'Business Segment';
comment on column cpo_slt_forecast.model is 'Model';
comment on column cpo_slt_forecast.article_code is 'ArticleCode';
comment on column cpo_slt_forecast.article is 'Article';
comment on column cpo_slt_forecast.lot_size is 'Lot Size';
comment on column cpo_slt_forecast.gps_customer_customer is 'customer_no';
comment on column cpo_slt_forecast.pre_order_assigned_result is 'pre_order_assigned_result';
comment on column cpo_slt_forecast.gps_customer_desc is 'GPS Customer DESC';
comment on column cpo_slt_forecast.lo is 'LO';
comment on column cpo_slt_forecast.factory_code is 'Factory Group';
comment on column cpo_slt_forecast.factory_id is 'Factory ID';
comment on column cpo_slt_forecast.factory_name_short is 'Factory Factory Name Short';
comment on column cpo_slt_forecast.half_month_period is 'Half Month Period';
comment on column cpo_slt_forecast.vpn_ind is 'VPH Ind';
comment on column cpo_slt_forecast.lead_time is 'Lead Time';
comment on column cpo_slt_forecast.forecast_quantity is 'Forecast Quantity';
comment on column cpo_slt_forecast.open_forecast_quantity is 'Open Forecast Quantity';
comment on column cpo_slt_forecast.order_quantity is 'Order Qty';
comment on column cpo_slt_forecast.pv_quantity is 'PV Qty';
comment on column cpo_slt_forecast.eu_rate is 'eu_rate';
comment on column cpo_slt_forecast.eu_quantity is 'eu_quantity';
comment on column cpo_slt_forecast.china_rate is 'china_rate';
comment on column cpo_slt_forecast.china_quantity is 'china_quantity';
comment on column cpo_slt_forecast.total_quantity is 'total_quantity';
comment on column cpo_slt_forecast.utc_update is '修改时间';
comment on column cpo_slt_forecast.status is '状态';
comment on column cpo_slt_forecast.create_by is '创建人';
comment on column cpo_slt_forecast.update_by is '变更人';
comment on column cpo_slt_forecast.note is '备注';
-- end --

-- begin--cpo_working_no_season_attributes--
drop table cpo_working_no_season_attributes;
create table cpo_working_no_season_attributes (
	work_no_seasonly_attr_id bigint not null,
	working_no_id bigint,
	working_no varchar(50),
	season varchar(10),
	speed_order varchar(50),
	wc_style varchar(20),
	slt_factory_name varchar(10),
	pr_factory_name varchar(10),
	special_order varchar(10),
	new_factroy_name varchar(10),
	transfer_reason varchar(255),
	transfer_remark Varchar(255),
	ei_set_up varchar(50),
	by_ready datetime,
	style_status Varchar(10),
	develop_type Varchar(30),
	garment_producting_day double,
	presell_fty varchar(10),
	sms_fty varchar(10),
	bulk_order_factory varchar(10),
	mkt_forecast_factory varchar(10),
	cus_forecast_factory varchar(10),
	cus_forecast_factory_eu varchar(10),
	cus_forecast_factory_noneu varchar(10),
	cus_forecast_factory_china varchar(10),
	a_source Varchar(10),
	b_source Varchar(10),
	c_source Varchar(10),
	d_source Varchar(10),
	pad_print varchar(10),
	pad_item varchar(10),
	special_process_schedule varchar(10),
	special_process_remark varchar(500),
	mtf_fty_name varchar(15),
	china_buy_plan_fty varchar(15),
	ipf_fty_name varchar(15),
	gsp Varchar(2),
	test Varchar(128),
	utc_create datetime,
	utc_update datetime,
	attr_status varchar(2),
	create_by bigint,
	update_by bigint,
	note varchar(1024)
);
alter table cpo_working_no_season_attributes add constraint cpo_working_no_season_attributes_pk PRIMARY KEY(work_no_seasonly_attr_id);
drop sequence seq_cpo_working_no_season_attributes_id;
create sequence seq_cpo_working_no_season_attributes_id minvalue 1 maxvalue 999999999999999999999999999 start with 1 increment by 1 nocache;
-- Add comments to the columns
comment on column cpo_working_no_season_attributes.work_no_seasonly_attr_id is '记录id';
comment on column cpo_working_no_season_attributes.working_no_id is 'working no id';
comment on column cpo_working_no_season_attributes.working_no is 'working_no';
comment on column cpo_working_no_season_attributes.season is 'season';
comment on column cpo_working_no_season_attributes.speed_order is '急单';
comment on column cpo_working_no_season_attributes.wc_style is '世界杯款';
comment on column cpo_working_no_season_attributes.slt_factory_name is 'Slt厂名';
comment on column cpo_working_no_season_attributes.pr_factory_name is 'Pr厂名';
comment on column cpo_working_no_season_attributes.special_order is '特殊单';
comment on column cpo_working_no_season_attributes.new_factroy_name is '新厂名';
comment on column cpo_working_no_season_attributes.transfer_reason is '转厂原因';
comment on column cpo_working_no_season_attributes.transfer_remark is '转厂备注';
comment on column cpo_working_no_season_attributes.ei_set_up is 'EI Set-up';
comment on column cpo_working_no_season_attributes.by_ready is 'byready';
comment on column cpo_working_no_season_attributes.style_status is 'Style Status';
comment on column cpo_working_no_season_attributes.develop_type is 'develop type';
comment on column cpo_working_no_season_attributes.garment_producting_day is 'Garment Producting Day';
comment on column cpo_working_no_season_attributes.presell_fty is 'presell fty';
comment on column cpo_working_no_season_attributes.sms_fty is 'sms fty';
comment on column cpo_working_no_season_attributes.bulk_order_factory is '大货单厂名';
comment on column cpo_working_no_season_attributes.mkt_forecast_factory is '市场预测单厂名';
comment on column cpo_working_no_season_attributes.cus_forecast_factory is '客户预测单厂名';
comment on column cpo_working_no_season_attributes.cus_forecast_factory_eu is '客户预测单厂名-eu';
comment on column cpo_working_no_season_attributes.cus_forecast_factory_noneu is '客户预测单厂名-noneu';
comment on column cpo_working_no_season_attributes.cus_forecast_factory_china is '客户预测单厂名-china';
comment on column cpo_working_no_season_attributes.a_source is 'A source';
comment on column cpo_working_no_season_attributes.b_source is 'B source';
comment on column cpo_working_no_season_attributes.c_source is 'C source';
comment on column cpo_working_no_season_attributes.d_source is 'D source';
comment on column cpo_working_no_season_attributes.pad_print is '墨水打印';
comment on column cpo_working_no_season_attributes.pad_item is 'pad_item';
comment on column cpo_working_no_season_attributes.special_process_schedule is '特殊工序排期';
comment on column cpo_working_no_season_attributes.special_process_remark is '特殊工序备注';
comment on column cpo_working_no_season_attributes.mtf_fty_name is 'mtf_fty_name';
comment on column cpo_working_no_season_attributes.china_buy_plan_fty is 'china_buy_plan_fty';
comment on column cpo_working_no_season_attributes.ipf_fty_name is 'ipf_fty_name';
comment on column cpo_working_no_season_attributes.gsp is 'Gsp';
comment on column cpo_working_no_season_attributes.test is 'test';
comment on column cpo_working_no_season_attributes.utc_create is '创建时间';
comment on column cpo_working_no_season_attributes.utc_update is '修改时间';
comment on column cpo_working_no_season_attributes.attr_status is '状态';
comment on column cpo_working_no_season_attributes.create_by is '创建人';
comment on column cpo_working_no_season_attributes.update_by is '变更人';
comment on column cpo_working_no_season_attributes.note is '备注';
-- end --

-- begin--cpo_working_no_process--
drop table cpo_working_no_process;
create table cpo_working_no_process (
	work_no_process_id bigint not null,
	working_no_id bigint,
	working_no varchar(50),
	process_category varchar(50),
	process_id Bigint,
	process_code Varchar(30),
	process_name Varchar(255),
	process_content_type Varchar(10),
	process_content_value double,
	type Varchar(2),
	utc_create datetime,
	utc_update datetime,
	attr_status varchar(2),
	create_by bigint,
	update_by bigint,
	note varchar(1024)
);
alter table cpo_working_no_process add constraint cpo_working_no_process_pk PRIMARY KEY(work_no_process_id);
drop sequence seq_cpo_working_no_process_id;
create sequence seq_cpo_working_no_process_id minvalue 1 maxvalue 999999999999999999999999999 start with 1 increment by 1 nocache;
-- Add comments to the columns
comment on column cpo_working_no_process.work_no_process_id is '记录id';
comment on column cpo_working_no_process.working_no_id is 'working no id';
comment on column cpo_working_no_process.working_no is 'working_no';
comment on column cpo_working_no_process.process_category is '工序类型';
comment on column cpo_working_no_process.process_id is '工序ID';
comment on column cpo_working_no_process.process_code is '工序代码';
comment on column cpo_working_no_process.process_name is '工序名';
comment on column cpo_working_no_process.process_content_type is '工序内容类型';
comment on column cpo_working_no_process.process_content_value is '工序内容值';
comment on column cpo_working_no_process.type is 'Type';
comment on column cpo_working_no_process.utc_create is '创建时间';
comment on column cpo_working_no_process.utc_update is '修改时间';
comment on column cpo_working_no_process.attr_status is '状态';
comment on column cpo_working_no_process.create_by is '创建人';
comment on column cpo_working_no_process.update_by is '变更人';
comment on column cpo_working_no_process.note is '备注';
-- end --

-- begin--cpo_ax_interface_log--
drop table cpo_ax_interface_log;
create table cpo_ax_interface_log (
	ax_interface_log_id bigint not null,
	ax_data varchar(8000),
	log_message varchar(8000),
	interfacename varchar(500),
	request_data Varchar(500),
	start_time datetime,
	end_time datetime,
	utc_create datetime,
	utc_update datetime,
	ax_interface_status varchar(5),
	create_by bigint,
	update_by bigint,
	note varchar(1024)
);
alter table cpo_ax_interface_log add constraint cpo_ax_interface_log_pk PRIMARY KEY(ax_interface_log_id);
drop sequence seq_cpo_ax_interface_log_id;
create sequence seq_cpo_ax_interface_log_id minvalue 1 maxvalue 999999999999999999999999999 start with 1 increment by 1 nocache;
-- Add comments to the columns
comment on column cpo_ax_interface_log.ax_interface_log_id is '记录id';
comment on column cpo_ax_interface_log.ax_data is 'ax_data';
comment on column cpo_ax_interface_log.log_message is 'log_message';
comment on column cpo_ax_interface_log.interfacename is 'interfaceName';
comment on column cpo_ax_interface_log.request_data is 'request data';
comment on column cpo_ax_interface_log.start_time is '开始时间';
comment on column cpo_ax_interface_log.end_time is '结束时间';
comment on column cpo_ax_interface_log.utc_create is '创建时间';
comment on column cpo_ax_interface_log.utc_update is '修改时间';
comment on column cpo_ax_interface_log.ax_interface_status is '状态';
comment on column cpo_ax_interface_log.create_by is '创建人';
comment on column cpo_ax_interface_log.update_by is '变更人';
comment on column cpo_ax_interface_log.note is '备注';
-- end --

-- begin--cpo_slt_style--
drop table cpo_slt_style;
create table cpo_slt_style (
	slt_style_id bigint not null,
	document_id bigint,
	working_no varchar(30),
	season varchar(10),
	confirm_factory varchar(10),
	cus_in_fty varchar(10),
	cus_cr_fty varchar(10),
	cus_fr_fty varchar(10),
	cus_fx_fty varchar(10),
	utc_update datetime,
	status bigint,
	create_by bigint,
	update_by bigint,
	note varchar(1024)
);
alter table cpo_slt_style add constraint cpo_slt_style_pk PRIMARY KEY(slt_style_id);
drop sequence seq_cpo_slt_style_id;
create sequence seq_cpo_slt_style_id minvalue 1 maxvalue 999999999999999999999999999 start with 1 increment by 1 nocache;
-- Add comments to the columns
comment on column cpo_slt_style.slt_style_id is '记录ID';
comment on column cpo_slt_style.document_id is 'document id';
comment on column cpo_slt_style.working_no is 'Working No';
comment on column cpo_slt_style.season is 'season';
comment on column cpo_slt_style.confirm_factory is 'Confirm_factory';
comment on column cpo_slt_style.cus_in_fty is 'cus_in_fty';
comment on column cpo_slt_style.cus_cr_fty is 'cus_cr_fty';
comment on column cpo_slt_style.cus_fr_fty is 'cus_fr_fty';
comment on column cpo_slt_style.cus_fx_fty is 'cus_fx_fty';
comment on column cpo_slt_style.utc_update is '修改时间';
comment on column cpo_slt_style.status is '状态';
comment on column cpo_slt_style.create_by is '创建人';
comment on column cpo_slt_style.update_by is '变更人';
comment on column cpo_slt_style.note is '备注';
-- end --

-- begin--cpo_fr_interface_log--
drop table cpo_fr_interface_log;
create table cpo_fr_interface_log (
	fr_interface_log_id bigint not null,
	interface_name varchar(255),
	request_data varchar(8000),
	response_data varchar(8000),
	log_message varchar(8000),
	start_time datetime,
	end_time datetime,
	f1 varchar(50),
	f2 varchar(50),
	f3 varchar(50),
	f4 varchar(50),
	utc_create datetime,
	utc_update datetime,
	fr_interface_log_status varchar(10),
	create_by bigint,
	update_by bigint,
	note varchar(1024)
);
alter table cpo_fr_interface_log add constraint cpo_fr_interface_log_pk PRIMARY KEY(fr_interface_log_id);
drop sequence seq_cpo_fr_interface_log_id;
create sequence seq_cpo_fr_interface_log_id minvalue 1 maxvalue 999999999999999999999999999 start with 1 increment by 1 nocache;
-- Add comments to the columns
comment on column cpo_fr_interface_log.fr_interface_log_id is '记录id';
comment on column cpo_fr_interface_log.interface_name is 'interfaceName';
comment on column cpo_fr_interface_log.request_data is 'requestData';
comment on column cpo_fr_interface_log.response_data is 'responseData';
comment on column cpo_fr_interface_log.log_message is 'log_message';
comment on column cpo_fr_interface_log.start_time is 'start_time';
comment on column cpo_fr_interface_log.end_time is 'end_time';
comment on column cpo_fr_interface_log.f1 is '动态字段1';
comment on column cpo_fr_interface_log.f2 is '动态字段2';
comment on column cpo_fr_interface_log.f3 is '动态字段3';
comment on column cpo_fr_interface_log.f4 is '动态字段4';
comment on column cpo_fr_interface_log.utc_create is '创建时间';
comment on column cpo_fr_interface_log.utc_update is '修改时间';
comment on column cpo_fr_interface_log.fr_interface_log_status is '状态';
comment on column cpo_fr_interface_log.create_by is '创建人';
comment on column cpo_fr_interface_log.update_by is '变更人';
comment on column cpo_fr_interface_log.note is '备注';
-- end --

-- begin--cpo_fr_capacity--
drop table cpo_fr_capacity;
create table cpo_fr_capacity (
	fr_capacity_id bigint not null,
	factory varchar(10),
	plan_group varchar(50),
	capacity_smv double,
	actual_order_loading_smv double,
	cf_loading_smv double,
	mf_loading_smv double,
	month varchar(10),
	process_id Varchar(10),
	process_name Varchar(30),
	weighted_avg_smv Double,
	utc_create datetime,
	utc_update datetime,
	high_level_plan_status varchar(1),
	create_by bigint,
	update_by bigint,
	note varchar(1024)
);
alter table cpo_fr_capacity add constraint cpo_fr_capacity_pk PRIMARY KEY(fr_capacity_id);
drop sequence seq_cpo_fr_capacity_id;
create sequence seq_cpo_fr_capacity_id minvalue 1 maxvalue 999999999999999999999999999 start with 1 increment by 1 nocache;
-- Add comments to the columns
comment on column cpo_fr_capacity.fr_capacity_id is '记录id';
comment on column cpo_fr_capacity.factory is 'FACTORY';
comment on column cpo_fr_capacity.plan_group is 'PLAN GROUP';
comment on column cpo_fr_capacity.capacity_smv is 'CAPACITY(SMV)';
comment on column cpo_fr_capacity.actual_order_loading_smv is 'ACTUAL ORDER LOADING(SMV)';
comment on column cpo_fr_capacity.cf_loading_smv is 'CF LOADING(SMV)';
comment on column cpo_fr_capacity.mf_loading_smv is 'MF LOADING(SMV)';
comment on column cpo_fr_capacity.month is 'MONTH';
comment on column cpo_fr_capacity.process_id is 'Process id';
comment on column cpo_fr_capacity.process_name is 'Process_name';
comment on column cpo_fr_capacity.weighted_avg_smv is 'weighted_avg_smv';
comment on column cpo_fr_capacity.utc_create is '创建时间';
comment on column cpo_fr_capacity.utc_update is '修改时间';
comment on column cpo_fr_capacity.high_level_plan_status is '状态';
comment on column cpo_fr_capacity.create_by is '创建人';
comment on column cpo_fr_capacity.update_by is '变更人';
comment on column cpo_fr_capacity.note is '备注';
-- end --

-- begin--cpo_working_no_product_type--
drop table cpo_working_no_product_type;
create table cpo_working_no_product_type (
	working_no_product_type_id bigint not null,
	working_no_id bigint,
	working_no varchar(50),
	product_type_fr Varchar(30),
	product_type_ax varchar(100),
	fabric_type varchar(100),
	unit Varchar(30),
	utc_create datetime,
	utc_update datetime,
	status varchar(2),
	create_by bigint,
	update_by bigint,
	note varchar(1024)
);
alter table cpo_working_no_product_type add constraint cpo_working_no_product_type_pk PRIMARY KEY(working_no_product_type_id);
drop sequence seq_cpo_working_no_product_type_id;
create sequence seq_cpo_working_no_product_type_id minvalue 1 maxvalue 999999999999999999999999999 start with 1 increment by 1 nocache;
-- Add comments to the columns
comment on column cpo_working_no_product_type.working_no_product_type_id is '记录id';
comment on column cpo_working_no_product_type.working_no_id is 'working no id';
comment on column cpo_working_no_product_type.working_no is 'working_no';
comment on column cpo_working_no_product_type.product_type_fr is 'product_type_fr';
comment on column cpo_working_no_product_type.product_type_ax is 'product_type_ax';
comment on column cpo_working_no_product_type.fabric_type is '针织/梭织';
comment on column cpo_working_no_product_type.unit is '配套';
comment on column cpo_working_no_product_type.utc_create is '创建时间';
comment on column cpo_working_no_product_type.utc_update is '修改时间';
comment on column cpo_working_no_product_type.status is '状态';
comment on column cpo_working_no_product_type.create_by is '创建人';
comment on column cpo_working_no_product_type.update_by is '变更人';
comment on column cpo_working_no_product_type.note is '备注';
-- end --

-- begin--cpo_article_development--
drop table cpo_article_development;
create table cpo_article_development (
	cpo_article_development_id bigint not null,
	article_no varchar(30),
	article_name varchar(255),
	develop_season varchar(5),
	by_ready_date datetime,
	carry_status varchar(10),
	from_date datetime,
	to_date datetime,
	utc_create datetime,
	utc_update datetime,
	create_by bigint,
	update_by bigint,
	note varchar(1024)
);
alter table cpo_article_development add constraint cpo_article_development_pk PRIMARY KEY(cpo_article_development_id);
drop sequence seq_cpo_article_development_id;
create sequence seq_cpo_article_development_id minvalue 1 maxvalue 999999999999999999999999999 start with 1 increment by 1 nocache;
-- Add comments to the columns
comment on column cpo_article_development.cpo_article_development_id is '自增id';
comment on column cpo_article_development.article_no is 'article no';
comment on column cpo_article_development.article_name is 'article name';
comment on column cpo_article_development.develop_season is 'develop season';
comment on column cpo_article_development.by_ready_date is 'by ready date';
comment on column cpo_article_development.carry_status is 'carry status';
comment on column cpo_article_development.from_date is 'fromdate';
comment on column cpo_article_development.to_date is 'todate';
comment on column cpo_article_development.utc_create is '创建时间';
comment on column cpo_article_development.utc_update is '修改时间';
comment on column cpo_article_development.create_by is '创建人';
comment on column cpo_article_development.update_by is '变更人';
comment on column cpo_article_development.note is '备注';
-- end --

-- begin--cpo_working_no_size_group--
drop table cpo_working_no_size_group;
create table cpo_working_no_size_group (
	working_no_size_group_id bigint not null,
	working_no_id bigint,
	working_no varchar(50),
	season varchar(10),
	b_no varchar(50),
	size varchar(256),
	size_group varchar(50),
	product_no varchar(50),
	product_name varchar(128),
	is_garment_set varchar(30),
	athletic Varchar(50),
	utc_create datetime,
	utc_update datetime,
	status varchar(2),
	create_by bigint,
	update_by bigint,
	note varchar(1024)
);
alter table cpo_working_no_size_group add constraint cpo_working_no_size_group_pk PRIMARY KEY(working_no_size_group_id);
drop sequence seq_cpo_working_no_size_group_id;
create sequence seq_cpo_working_no_size_group_id minvalue 1 maxvalue 999999999999999999999999999 start with 1 increment by 1 nocache;
-- Add comments to the columns
comment on column cpo_working_no_size_group.working_no_size_group_id is '记录id';
comment on column cpo_working_no_size_group.working_no_id is 'working no id';
comment on column cpo_working_no_size_group.working_no is 'working_no';
comment on column cpo_working_no_size_group.season is 'season';
comment on column cpo_working_no_size_group.b_no is 'b_no';
comment on column cpo_working_no_size_group.size is 'size';
comment on column cpo_working_no_size_group.size_group is 'size_group';
comment on column cpo_working_no_size_group.product_no is 'product_no';
comment on column cpo_working_no_size_group.product_name is 'product_name';
comment on column cpo_working_no_size_group.is_garment_set is 'is_garment_set';
comment on column cpo_working_no_size_group.athletic is 'athletic';
comment on column cpo_working_no_size_group.utc_create is '创建时间';
comment on column cpo_working_no_size_group.utc_update is '修改时间';
comment on column cpo_working_no_size_group.status is '状态';
comment on column cpo_working_no_size_group.create_by is '创建人';
comment on column cpo_working_no_size_group.update_by is '变更人';
comment on column cpo_working_no_size_group.note is '备注';
-- end --

-- begin--cpo_customer_forecast_tuning--
drop table cpo_customer_forecast_tuning;
create table cpo_customer_forecast_tuning (
	customer_forecast_tuning_id bigint not null,
	working_no varchar(30),
	factory varchar(10),
	customer_no varchar(10),
	supply_chain_track varchar(10),
	pv_month DATETIME,
	to_pv_month DATETIME,
	article varchar(10),
	order_country varchar(10),
	season Varchar(5),
	country_code varchar(10),
	utc_create datetime,
	utc_update datetime,
	status int,
	create_by varchar(30),
	update_by varchar(30),
	note varchar(1024)
);
alter table cpo_customer_forecast_tuning add constraint cpo_customer_forecast_tuning_pk PRIMARY KEY(customer_forecast_tuning_id);
drop sequence seq_cpo_customer_forecast_tuning_id;
create sequence seq_cpo_customer_forecast_tuning_id minvalue 1 maxvalue 999999999999999999999999999 start with 1 increment by 1 nocache;
-- Add comments to the columns
comment on column cpo_customer_forecast_tuning.customer_forecast_tuning_id is '记录ID';
comment on column cpo_customer_forecast_tuning.working_no is 'working_no';
comment on column cpo_customer_forecast_tuning.factory is 'factory';
comment on column cpo_customer_forecast_tuning.customer_no is 'customer_no';
comment on column cpo_customer_forecast_tuning.supply_chain_track is 'supply_chain_track';
comment on column cpo_customer_forecast_tuning.pv_month is 'pv_month';
comment on column cpo_customer_forecast_tuning.to_pv_month is 'to_pv_month';
comment on column cpo_customer_forecast_tuning.article is 'article';
comment on column cpo_customer_forecast_tuning.order_country is 'order_country';
comment on column cpo_customer_forecast_tuning.season is 'season';
comment on column cpo_customer_forecast_tuning.country_code is 'country code';
comment on column cpo_customer_forecast_tuning.utc_create is '创建时间';
comment on column cpo_customer_forecast_tuning.utc_update is '修改时间';
comment on column cpo_customer_forecast_tuning.status is '状态';
comment on column cpo_customer_forecast_tuning.create_by is '创建人';
comment on column cpo_customer_forecast_tuning.update_by is '变更人';
comment on column cpo_customer_forecast_tuning.note is '备注';
-- end --

-- begin--cpo_interface_process--
drop table cpo_interface_process;
create table cpo_interface_process (
	interface_process_id bigint not null,
	platform varchar(10),
	interface_type varchar(10),
	status varchar(2),
	process_id varchar(256),
	utc_create datetime,
	utc_update datetime
);
alter table cpo_interface_process add constraint cpo_interface_process_pk PRIMARY KEY(interface_process_id);
drop sequence seq_cpo_interface_process_id;
create sequence seq_cpo_interface_process_id minvalue 1 maxvalue 999999999999999999999999999 start with 1 increment by 1 nocache;
-- Add comments to the columns
comment on column cpo_interface_process.interface_process_id is '记录id';
comment on column cpo_interface_process.platform is 'platform';
comment on column cpo_interface_process.interface_type is 'Interface_type';
comment on column cpo_interface_process.status is 'status';
comment on column cpo_interface_process.process_id is 'process_id';
comment on column cpo_interface_process.utc_create is '创建时间';
comment on column cpo_interface_process.utc_update is '修改时间';
-- end --

-- begin--cpo_non_trade_card--
drop table cpo_non_trade_card;
create table cpo_non_trade_card (
	non_trade_card_id bigint not null,
	document_id bigint,
	cpo_168_no varchar(50),
	b_no varchar(50),
	batch_no varchar(50),
	factory_name varchar(50),
	assigned_factory varchar(10),
	ipmt_no varchar(50),
	woven_knit varchar(10),
	product_type varchar(30),
	quantity varchar(30),
	unit varchar(30),
	article varchar(30),
	product_name varchar(30),
	season varchar(10),
	country varchar(10),
	customer_no varchar(10),
	gps_po_no varchar(30),
	tc_po_no varchar(30),
	classic_code varchar(30),
	order_no varchar(30),
	customer_request_date datetime,
	plan_date datetime,
	psdd datetime,
	fpd datetime,
	price varchar(30),
	main_po_no varchar(30),
	fabric_pi_date datetime,
	ts_1 varchar(10),
	qty_1 varchar(10),
	ts_2 varchar(10),
	qty_2 varchar(10),
	ts_3 varchar(10),
	qty_3 varchar(10),
	ts_4 varchar(10),
	qty_4 varchar(10),
	ts_5 varchar(10),
	qty_5 varchar(10),
	ts_6 varchar(10),
	qty_6 varchar(10),
	ts_7 varchar(10),
	qty_7 varchar(10),
	ts_8 varchar(10),
	qty_8 varchar(10),
	ts_9 varchar(10),
	qty_9 varchar(10),
	ts_10 varchar(10),
	qty_10 varchar(10),
	utc_create datetime,
	utc_update datetime,
	assign_result_status varchar(1),
	create_by bigint,
	update_by bigint,
	note varchar(1024)
);
alter table cpo_non_trade_card add constraint cpo_non_trade_card_pk PRIMARY KEY(non_trade_card_id);
drop sequence seq_cpo_non_trade_card_id;
create sequence seq_cpo_non_trade_card_id minvalue 1 maxvalue 999999999999999999999999999 start with 1 increment by 1 nocache;
-- Add comments to the columns
comment on column cpo_non_trade_card.non_trade_card_id is 'non trade card order';
comment on column cpo_non_trade_card.document_id is 'document id';
comment on column cpo_non_trade_card.cpo_168_no is '168 No';
comment on column cpo_non_trade_card.b_no is 'B No';
comment on column cpo_non_trade_card.batch_no is 'Batch No';
comment on column cpo_non_trade_card.factory_name is 'factory name';
comment on column cpo_non_trade_card.assigned_factory is 'assigned_factory';
comment on column cpo_non_trade_card.ipmt_no is 'IPMT_NO';
comment on column cpo_non_trade_card.woven_knit is 'woven_knit';
comment on column cpo_non_trade_card.product_type is 'product_type';
comment on column cpo_non_trade_card.quantity is 'quantity';
comment on column cpo_non_trade_card.unit is 'unit';
comment on column cpo_non_trade_card.article is 'article';
comment on column cpo_non_trade_card.product_name is 'product_name';
comment on column cpo_non_trade_card.season is 'season';
comment on column cpo_non_trade_card.country is 'country';
comment on column cpo_non_trade_card.customer_no is 'customer no';
comment on column cpo_non_trade_card.gps_po_no is 'gps po no';
comment on column cpo_non_trade_card.tc_po_no is 'tc po no';
comment on column cpo_non_trade_card.classic_code is 'classic code';
comment on column cpo_non_trade_card.order_no is 'order no';
comment on column cpo_non_trade_card.customer_request_date is 'Customer request date';
comment on column cpo_non_trade_card.plan_date is 'plan_date';
comment on column cpo_non_trade_card.psdd is 'psdd ';
comment on column cpo_non_trade_card.fpd is 'fpd';
comment on column cpo_non_trade_card.price is 'price';
comment on column cpo_non_trade_card.main_po_no is 'MainPONo';
comment on column cpo_non_trade_card.fabric_pi_date is 'fabric pi date';
comment on column cpo_non_trade_card.ts_1 is 'ts_1';
comment on column cpo_non_trade_card.qty_1 is 'qty_1';
comment on column cpo_non_trade_card.ts_2 is 'ts_2';
comment on column cpo_non_trade_card.qty_2 is 'qty_2';
comment on column cpo_non_trade_card.ts_3 is 'ts_3';
comment on column cpo_non_trade_card.qty_3 is 'qty_3';
comment on column cpo_non_trade_card.ts_4 is 'ts_4';
comment on column cpo_non_trade_card.qty_4 is 'qty_4';
comment on column cpo_non_trade_card.ts_5 is 'ts_5';
comment on column cpo_non_trade_card.qty_5 is 'qty_5';
comment on column cpo_non_trade_card.ts_6 is 'ts_6';
comment on column cpo_non_trade_card.qty_6 is 'qty_6';
comment on column cpo_non_trade_card.ts_7 is 'ts_7';
comment on column cpo_non_trade_card.qty_7 is 'qty_7';
comment on column cpo_non_trade_card.ts_8 is 'ts_8';
comment on column cpo_non_trade_card.qty_8 is 'qty_8';
comment on column cpo_non_trade_card.ts_9 is 'ts_9';
comment on column cpo_non_trade_card.qty_9 is 'qty_9';
comment on column cpo_non_trade_card.ts_10 is 'ts_10';
comment on column cpo_non_trade_card.qty_10 is 'qty_10';
comment on column cpo_non_trade_card.utc_create is '创建时间';
comment on column cpo_non_trade_card.utc_update is '修改时间';
comment on column cpo_non_trade_card.assign_result_status is '状态';
comment on column cpo_non_trade_card.create_by is '创建人';
comment on column cpo_non_trade_card.update_by is '变更人';
comment on column cpo_non_trade_card.note is '备注';
-- end --

-- begin--cpo_ax_po_entity--
drop table cpo_ax_po_entity;
create table cpo_ax_po_entity (
	ax_po_entity_id bigint not null,
	forecast_id varchar(30),
	po_id varchar(30),
	document_id varchar(30),
	document_type Varchar(5),
	assign_result_id Bigint,
	tex_sales_doc_type_id varchar(30),
	account_num varchar(30),
	delivery_date datetime,
	inconterm varchar(30),
	site_id varchar(30),
	factory_id varchar(30),
	order_status varchar(20),
	change_date varchar(5),
	change_qty varchar(5),
	change_price varchar(5),
	change_site varchar(5),
	coo varchar(30),
	period varchar(30),
	brand varchar(30),
	tex_bas_season_code varchar(30),
	item_id varchar(30),
	product_model varchar(30),
	product_no varchar(30),
	name varchar(30),
	color varchar(30),
	color_name varchar(30),
	gar_1stsize varchar(30),
	gar_2ndsize varchar(30),
	size_group_id varchar(30),
	qty Double,
	price Double,
	address varchar(30),
	first_prod_date Datetime,
	last_prod_date Datetime,
	cust_num varchar(30),
	service_identifier varchar(30),
	country varchar(30),
	delivery_reason varchar(30),
	domestic_order int,
	order_type varchar(30),
	shipment_address varchar(30),
	classic_code varchar(30),
	customer_order_number varchar(30),
	model_number varchar(30),
	customer_status varchar(30),
	mdp_fail_reason varchar(30),
	sdp_fail_reason varchar(30),
	payment_team varchar(30),
	charges varchar(30),
	plan_date Datetime,
	psdd Datetime,
	podd Datetime,
	garment_lead_time varchar(30),
	fr_order_no varchar(30),
	supply_chain_track varchar(255),
	customer_request_date Datetime,
	region varchar(30),
	b_number varchar(10),
	size_run varchar(100),
	technical_notation varchar(100),
	client_code Varchar(20),
	ship_mode varchar(10),
	test Varchar(100),
	gsp Varchar(100),
	mtf_ppc_order_num Varchar(20),
	crd_confirm_status varchar(10),
	pd_confirm_status varchar(10),
	order_special_requirement varchar(100),
	customization_status varchar(10),
	expected_material_date Datetime,
	last_fabric_pi_eta_date Datetime,
	last_trim_pi_eta_date datetime,
	mi_hem_insert varchar(100),
	mi_logo varchar(50),
	mi_n_n varchar(50),
	mi_print varchar(50),
	mi_stripes varchar(50),
	po_batch_date datetime,
	issue_date datetime,
	utc_create datetime,
	utc_update datetime,
	ax_po_status varchar(1),
	create_by bigint,
	update_by bigint,
	transfer_status Varchar(2),
	note varchar(1024)
);
alter table cpo_ax_po_entity add constraint cpo_ax_po_entity_pk PRIMARY KEY(ax_po_entity_id);
drop sequence seq_cpo_ax_po_entity_id;
create sequence seq_cpo_ax_po_entity_id minvalue 1 maxvalue 999999999999999999999999999 start with 1 increment by 1 nocache;
-- Add comments to the columns
comment on column cpo_ax_po_entity.ax_po_entity_id is '自增ID';
comment on column cpo_ax_po_entity.forecast_id is 'ForecastId';
comment on column cpo_ax_po_entity.po_id is 'POId';
comment on column cpo_ax_po_entity.document_id is 'document_id';
comment on column cpo_ax_po_entity.document_type is 'Document_type';
comment on column cpo_ax_po_entity.assign_result_id is 'assign_result_id';
comment on column cpo_ax_po_entity.tex_sales_doc_type_id is 'TEX_SalesDocTypeId';
comment on column cpo_ax_po_entity.account_num is 'AccountNum';
comment on column cpo_ax_po_entity.delivery_date is 'DeliveryDate';
comment on column cpo_ax_po_entity.inconterm is 'Inconterm';
comment on column cpo_ax_po_entity.site_id is 'SiteId';
comment on column cpo_ax_po_entity.factory_id is 'FactoryId';
comment on column cpo_ax_po_entity.order_status is 'order_status';
comment on column cpo_ax_po_entity.change_date is 'change date';
comment on column cpo_ax_po_entity.change_qty is 'change qty';
comment on column cpo_ax_po_entity.change_price is 'change price';
comment on column cpo_ax_po_entity.change_site is 'change site';
comment on column cpo_ax_po_entity.coo is 'COO';
comment on column cpo_ax_po_entity.period is 'Period';
comment on column cpo_ax_po_entity.brand is 'Brand';
comment on column cpo_ax_po_entity.tex_bas_season_code is 'TEX_BAS_SeasonCode';
comment on column cpo_ax_po_entity.item_id is 'ItemId';
comment on column cpo_ax_po_entity.product_model is 'ProductModel';
comment on column cpo_ax_po_entity.product_no is 'ProductNo';
comment on column cpo_ax_po_entity.name is 'Name';
comment on column cpo_ax_po_entity.color is 'Color';
comment on column cpo_ax_po_entity.color_name is 'ColorName';
comment on column cpo_ax_po_entity.gar_1stsize is 'GAR_1stSize';
comment on column cpo_ax_po_entity.gar_2ndsize is 'GAR_2ndSize';
comment on column cpo_ax_po_entity.size_group_id is 'SizeGroupId';
comment on column cpo_ax_po_entity.qty is 'Qty';
comment on column cpo_ax_po_entity.price is 'Price';
comment on column cpo_ax_po_entity.address is 'Address';
comment on column cpo_ax_po_entity.first_prod_date is 'FirstProdDate';
comment on column cpo_ax_po_entity.last_prod_date is 'LastProdDate';
comment on column cpo_ax_po_entity.cust_num is 'CustNum';
comment on column cpo_ax_po_entity.service_identifier is 'ServiceIdentifier';
comment on column cpo_ax_po_entity.country is 'Country';
comment on column cpo_ax_po_entity.delivery_reason is 'DeliveryReason';
comment on column cpo_ax_po_entity.domestic_order is 'DomesticOrder';
comment on column cpo_ax_po_entity.order_type is 'OrderType';
comment on column cpo_ax_po_entity.shipment_address is 'ShipmentAddress';
comment on column cpo_ax_po_entity.classic_code is 'ClassicCode';
comment on column cpo_ax_po_entity.customer_order_number is 'CustomerOrderNumber';
comment on column cpo_ax_po_entity.model_number is 'ModelNumber';
comment on column cpo_ax_po_entity.customer_status is 'CustomerStatus';
comment on column cpo_ax_po_entity.mdp_fail_reason is 'MDPFailReason';
comment on column cpo_ax_po_entity.sdp_fail_reason is 'SDPFailReason';
comment on column cpo_ax_po_entity.payment_team is 'PaymentTeam';
comment on column cpo_ax_po_entity.charges is 'Charges';
comment on column cpo_ax_po_entity.plan_date is 'PlanDate';
comment on column cpo_ax_po_entity.psdd is 'PSDD';
comment on column cpo_ax_po_entity.podd is 'PODD';
comment on column cpo_ax_po_entity.garment_lead_time is 'GarmentLeadTime';
comment on column cpo_ax_po_entity.fr_order_no is 'frOrderNo';
comment on column cpo_ax_po_entity.supply_chain_track is 'Supply Chain Track';
comment on column cpo_ax_po_entity.customer_request_date is 'CustomerRequestDate';
comment on column cpo_ax_po_entity.region is 'Region';
comment on column cpo_ax_po_entity.b_number is 'BNumber';
comment on column cpo_ax_po_entity.size_run is 'SizeRun';
comment on column cpo_ax_po_entity.technical_notation is 'TechnicalNotation';
comment on column cpo_ax_po_entity.client_code is 'ClientCode';
comment on column cpo_ax_po_entity.ship_mode is 'ShipMode';
comment on column cpo_ax_po_entity.test is 'Test';
comment on column cpo_ax_po_entity.gsp is 'GSP';
comment on column cpo_ax_po_entity.mtf_ppc_order_num is 'MTFPPCOrderNum';
comment on column cpo_ax_po_entity.crd_confirm_status is 'CRDConfirmStatus';
comment on column cpo_ax_po_entity.pd_confirm_status is 'PDConfirmStatus';
comment on column cpo_ax_po_entity.order_special_requirement is 'OrderSpecialRequirement';
comment on column cpo_ax_po_entity.customization_status is 'CustomizationStatus';
comment on column cpo_ax_po_entity.expected_material_date is 'ExpectedMaterialDate';
comment on column cpo_ax_po_entity.last_fabric_pi_eta_date is 'LastFabricPIETADate';
comment on column cpo_ax_po_entity.last_trim_pi_eta_date is 'LastTrimPIETADate';
comment on column cpo_ax_po_entity.mi_hem_insert is 'mi_hem_insert';
comment on column cpo_ax_po_entity.mi_logo is 'mi_logo';
comment on column cpo_ax_po_entity.mi_n_n is 'mi_n_n';
comment on column cpo_ax_po_entity.mi_print is 'mi_print';
comment on column cpo_ax_po_entity.mi_stripes is 'mi_stripes';
comment on column cpo_ax_po_entity.po_batch_date is 'po_batch_date';
comment on column cpo_ax_po_entity.issue_date is 'issue_date';
comment on column cpo_ax_po_entity.utc_create is '创建时间';
comment on column cpo_ax_po_entity.utc_update is '修改时间';
comment on column cpo_ax_po_entity.ax_po_status is '状态';
comment on column cpo_ax_po_entity.create_by is '创建人';
comment on column cpo_ax_po_entity.update_by is '变更人';
comment on column cpo_ax_po_entity.transfer_status is '状态';
comment on column cpo_ax_po_entity.note is '备注';
-- end --

-- begin--cpo_working_no_pull_forward--
drop table cpo_working_no_pull_forward;
create table cpo_working_no_pull_forward (
	working_no_pull_forward_id bigint not null,
	working_no varchar(50),
	season varchar(10),
	factory Varchar(5),
	quantity Double,
	utc_create datetime,
	utc_update datetime,
	status varchar(2),
	create_by bigint,
	update_by bigint,
	note varchar(1024)
);
alter table cpo_working_no_pull_forward add constraint cpo_working_no_pull_forward_pk PRIMARY KEY(working_no_pull_forward_id);
drop sequence seq_cpo_working_no_pull_forward_id;
create sequence seq_cpo_working_no_pull_forward_id minvalue 1 maxvalue 999999999999999999999999999 start with 1 increment by 1 nocache;
-- Add comments to the columns
comment on column cpo_working_no_pull_forward.working_no_pull_forward_id is '记录id';
comment on column cpo_working_no_pull_forward.working_no is 'working_no';
comment on column cpo_working_no_pull_forward.season is 'season';
comment on column cpo_working_no_pull_forward.factory is 'Factory';
comment on column cpo_working_no_pull_forward.quantity is 'quantity';
comment on column cpo_working_no_pull_forward.utc_create is '创建时间';
comment on column cpo_working_no_pull_forward.utc_update is '修改时间';
comment on column cpo_working_no_pull_forward.status is '状态';
comment on column cpo_working_no_pull_forward.create_by is '创建人';
comment on column cpo_working_no_pull_forward.update_by is '变更人';
comment on column cpo_working_no_pull_forward.note is '备注';
-- end --

-- begin--cpo_admin_country--
drop table cpo_admin_country;
create table cpo_admin_country (
	country_id bigint not null,
	code varchar(5),
	name varchar(50)
);
alter table cpo_admin_country add constraint cpo_admin_country_pk PRIMARY KEY(country_id);
drop sequence seq_cpo_admin_country_id;
create sequence seq_cpo_admin_country_id minvalue 1 maxvalue 999999999999999999999999999 start with 1 increment by 1 nocache;
-- Add comments to the columns
comment on column cpo_admin_country.country_id is '记录ID';
comment on column cpo_admin_country.code is '编码';
comment on column cpo_admin_country.name is '名称';
-- end --

-- begin--cpo_factory_transfer_result--
drop table cpo_factory_transfer_result;
create table cpo_factory_transfer_result (
	transfer_result_id bigint not null,
	fact_assign_id bigint,
	assign_result_id bigint,
	working_no varchar(30),
	document_type varchar(30),
	season varchar(10),
	transfer_reason varchar(500),
	pad_print varchar(30),
	speed_style varchar(50),
	bulk_order_assigned_factory varchar(100),
	china_buy_plan_fty varchar(10),
	slt_fty varchar(10),
	ipf_fty_name Varchar(10),
	mtf_fty_name Varchar(10),
	eu_factory Varchar(10),
	china_factory Varchar(10),
	non_eu_factory Varchar(10),
	ei_set_up Varchar(10),
	special_process Varchar(128),
	old_fty Varchar(10),
	new_fty_name Varchar(10),
	transfer_remark Varchar(500),
	a_source Varchar(10),
	b_source Varchar(10),
	c_source Varchar(10),
	d_source Varchar(10),
	to_do_style_transfer Varchar(2),
	to_source Varchar(10),
	remark_date datetime,
	working_no_range Varchar(50),
	quantity double,
	brand Varchar(20),
	transfer_source Varchar(10),
	utc_create datetime,
	utc_update datetime,
	assign_result_status varchar(1),
	create_by varchar(30),
	update_by varchar(30),
	note varchar(1024)
);
alter table cpo_factory_transfer_result add constraint cpo_factory_transfer_result_pk PRIMARY KEY(transfer_result_id);
drop sequence seq_cpo_factory_transfer_result_id;
create sequence seq_cpo_factory_transfer_result_id minvalue 1 maxvalue 999999999999999999999999999 start with 1 increment by 1 nocache;
-- Add comments to the columns
comment on column cpo_factory_transfer_result.transfer_result_id is '记录id';
comment on column cpo_factory_transfer_result.fact_assign_id is 'fact_assign_id';
comment on column cpo_factory_transfer_result.assign_result_id is 'assign_result_id';
comment on column cpo_factory_transfer_result.working_no is 'Working No';
comment on column cpo_factory_transfer_result.document_type is 'document_type';
comment on column cpo_factory_transfer_result.season is 'Season';
comment on column cpo_factory_transfer_result.transfer_reason is '转厂原因';
comment on column cpo_factory_transfer_result.pad_print is 'Pad print';
comment on column cpo_factory_transfer_result.speed_style is 'Speed style';
comment on column cpo_factory_transfer_result.bulk_order_assigned_factory is '大貨做過工廠';
comment on column cpo_factory_transfer_result.china_buy_plan_fty is 'China buy plan FTY';
comment on column cpo_factory_transfer_result.slt_fty is 'SLT FTY';
comment on column cpo_factory_transfer_result.ipf_fty_name is 'IPF fty name';
comment on column cpo_factory_transfer_result.mtf_fty_name is 'MTF fty name';
comment on column cpo_factory_transfer_result.eu_factory is 'EU Factory';
comment on column cpo_factory_transfer_result.china_factory is 'China Factory';
comment on column cpo_factory_transfer_result.non_eu_factory is 'Non EU Factory';
comment on column cpo_factory_transfer_result.ei_set_up is 'EI set up';
comment on column cpo_factory_transfer_result.special_process is '特殊做工排期';
comment on column cpo_factory_transfer_result.old_fty is 'Old fty';
comment on column cpo_factory_transfer_result.new_fty_name is 'NEW FTY NAME';
comment on column cpo_factory_transfer_result.transfer_remark is '转厂备注';
comment on column cpo_factory_transfer_result.a_source is 'A Source';
comment on column cpo_factory_transfer_result.b_source is 'B Source';
comment on column cpo_factory_transfer_result.c_source is 'C Source';
comment on column cpo_factory_transfer_result.d_source is 'D Source';
comment on column cpo_factory_transfer_result.to_do_style_transfer is 'To do styles transfer';
comment on column cpo_factory_transfer_result.to_source is 'TO Source';
comment on column cpo_factory_transfer_result.remark_date is 'RemarkDate';
comment on column cpo_factory_transfer_result.working_no_range is 'working no range';
comment on column cpo_factory_transfer_result.quantity is 'quantity';
comment on column cpo_factory_transfer_result.brand is 'brand';
comment on column cpo_factory_transfer_result.transfer_source is 'transfer_source';
comment on column cpo_factory_transfer_result.utc_create is '创建时间';
comment on column cpo_factory_transfer_result.utc_update is '修改时间';
comment on column cpo_factory_transfer_result.assign_result_status is '状态';
comment on column cpo_factory_transfer_result.create_by is '创建人';
comment on column cpo_factory_transfer_result.update_by is '变更人';
comment on column cpo_factory_transfer_result.note is '备注';
-- end --

-- begin--cpo_po_transfer--
drop table cpo_po_transfer;
create table cpo_po_transfer (
	po_transfer_id bigint not null,
	working_no varchar(30),
	working_no_range varchar(30),
	brand varchar(30),
	factory_code varchar(10),
	plan_date datetime,
	customer_request_date datetime,
	psdd datetime,
	fpd datetime,
	po varchar(30),
	tc_po varchar(10),
	updated_po_number varchar(30),
	class_code varchar(10),
	cpo_no varchar(50),
	customer_no varchar(10),
	order_country varchar(30),
	assigned_factory varchar(10),
	po_qty double,
	from_factory varchar(10),
	to_factory varchar(10),
	quota_approved varchar(50),
	reason varchar(500),
	order_release_date datetime,
	b_source_needed varchar(50),
	lo_contract varchar(50),
	gps_contract varchar(50),
	transfer_contract varchar(50),
	completed_date datetime,
	tc_client_number varchar(30),
	release_date datetime,
	document_type Varchar(5),
	lc0190_date datetime,
	utc_create datetime,
	utc_update datetime,
	status varchar(5),
	create_by varchar(30),
	update_by varchar(30),
	note varchar(1024)
);
alter table cpo_po_transfer add constraint cpo_po_transfer_pk PRIMARY KEY(po_transfer_id);
drop sequence seq_cpo_po_transfer_id;
create sequence seq_cpo_po_transfer_id minvalue 1 maxvalue 999999999999999999999999999 start with 1 increment by 1 nocache;
-- Add comments to the columns
comment on column cpo_po_transfer.po_transfer_id is '记录id';
comment on column cpo_po_transfer.working_no is 'working No';
comment on column cpo_po_transfer.working_no_range is 'working No Range';
comment on column cpo_po_transfer.brand is 'brand';
comment on column cpo_po_transfer.factory_code is 'factory code';
comment on column cpo_po_transfer.plan_date is 'plan date';
comment on column cpo_po_transfer.customer_request_date is 'customer request date';
comment on column cpo_po_transfer.psdd is 'PSDD';
comment on column cpo_po_transfer.fpd is 'FPD';
comment on column cpo_po_transfer.po is 'po';
comment on column cpo_po_transfer.tc_po is 't/c po';
comment on column cpo_po_transfer.updated_po_number is 'updated po number';
comment on column cpo_po_transfer.class_code is 'class code';
comment on column cpo_po_transfer.cpo_no is 'cpoNo';
comment on column cpo_po_transfer.customer_no is 'customer code';
comment on column cpo_po_transfer.order_country is 'order_country';
comment on column cpo_po_transfer.assigned_factory is 'assigned_factory';
comment on column cpo_po_transfer.po_qty is 'po_qty';
comment on column cpo_po_transfer.from_factory is 'from_factory';
comment on column cpo_po_transfer.to_factory is 'to_factory';
comment on column cpo_po_transfer.quota_approved is 'quota_approved';
comment on column cpo_po_transfer.reason is 'reason';
comment on column cpo_po_transfer.order_release_date is 'order_release_date';
comment on column cpo_po_transfer.b_source_needed is 'b_source_needed';
comment on column cpo_po_transfer.lo_contract is 'lo_contract';
comment on column cpo_po_transfer.gps_contract is 'gps_contract';
comment on column cpo_po_transfer.transfer_contract is 'transfer_contract';
comment on column cpo_po_transfer.completed_date is 'completed_date';
comment on column cpo_po_transfer.tc_client_number is 'tc_client_number';
comment on column cpo_po_transfer.release_date is 'release date';
comment on column cpo_po_transfer.document_type is 'Document_type';
comment on column cpo_po_transfer.lc0190_date is 'LC0190 Date';
comment on column cpo_po_transfer.utc_create is '创建时间';
comment on column cpo_po_transfer.utc_update is '修改时间';
comment on column cpo_po_transfer.status is '状态';
comment on column cpo_po_transfer.create_by is '创建人';
comment on column cpo_po_transfer.update_by is '变更人';
comment on column cpo_po_transfer.note is '备注';
-- end --

-- begin--cpo_style_transfer--
drop table cpo_style_transfer;
create table cpo_style_transfer (
	style_transfer_id bigint not null,
	working_no varchar(30),
	if_got_lc0 varchar(5),
	division varchar(10),
	allocation_type varchar(30),
	sourcing_type varchar(30),
	transfer_reason varchar(500),
	season varchar(10),
	a_source varchar(10),
	b_source varchar(10),
	c_source varchar(10),
	d_source varchar(10),
	fty_code Varchar(20),
	giving_factory varchar(10),
	receiving_factory varchar(10),
	receiving_factory_lead_time Integer,
	transfer_volume double,
	request_transfer_month_from datetime,
	request_transfer_month_to datetime,
	change_a_source varchar(10),
	giving_factory_fob double,
	receiving_factory_fob double,
	diff_of_fob_data double,
	diff_of_fob_percent double,
	reason_for_price_variance varchar(500),
	working_no_range varchar(30),
	lo_merch varchar(128),
	tier_merch varchar(128),
	remarks varchar(1024),
	field_name Varchar(20),
	giving_factory_price_landed double,
	receiving_factory_price_landed double,
	ei_set_up_needed Varchar(10),
	selling_region_percentage_eu double,
	selling_region_percentage_asia double,
	selling_region_percentage_nam double,
	selling_region_percentage_lam double,
	selling_region_percentage_cis double,
	selling_region_percentage_china double,
	landed_price_per_selling_region_giving_factory_eu double,
	landed_price_per_selling_region_giving_factory_asia double,
	landed_price_per_selling_region_giving_factory_nam double,
	landed_price_per_selling_region_giving_factory_lam double,
	landed_price_per_selling_region_giving_factory_cis double,
	landed_price_per_selling_region_giving_factory_china double,
	skip_techpack Varchar(30),
	document_type varchar(30),
	confirm_factory Varchar(30),
	source_remark Varchar(50),
	utc_create datetime,
	utc_update datetime,
	status varchar(5),
	create_by varchar(30),
	update_by varchar(30),
	note varchar(1024)
);
alter table cpo_style_transfer add constraint cpo_style_transfer_pk PRIMARY KEY(style_transfer_id);
drop sequence seq_cpo_style_transfer_id;
create sequence seq_cpo_style_transfer_id minvalue 1 maxvalue 999999999999999999999999999 start with 1 increment by 1 nocache;
-- Add comments to the columns
comment on column cpo_style_transfer.style_transfer_id is '记录id';
comment on column cpo_style_transfer.working_no is 'working No';
comment on column cpo_style_transfer.if_got_lc0 is 'if_got_lc0';
comment on column cpo_style_transfer.division is 'division';
comment on column cpo_style_transfer.allocation_type is 'allocation_type';
comment on column cpo_style_transfer.sourcing_type is 'sourcing_type';
comment on column cpo_style_transfer.transfer_reason is 'transfer_reason';
comment on column cpo_style_transfer.season is 'season';
comment on column cpo_style_transfer.a_source is 'a_source';
comment on column cpo_style_transfer.b_source is 'b_source';
comment on column cpo_style_transfer.c_source is 'c_source';
comment on column cpo_style_transfer.d_source is 'd_source';
comment on column cpo_style_transfer.fty_code is 'Fty_code';
comment on column cpo_style_transfer.giving_factory is 'giving_factory';
comment on column cpo_style_transfer.receiving_factory is 'receiving_factory';
comment on column cpo_style_transfer.receiving_factory_lead_time is 'receiving_factory_lead_time';
comment on column cpo_style_transfer.transfer_volume is 'transfer_volume';
comment on column cpo_style_transfer.request_transfer_month_from is 'request_transfer_month_from';
comment on column cpo_style_transfer.request_transfer_month_to is 'request_transfer_month_to';
comment on column cpo_style_transfer.change_a_source is 'change_a_source';
comment on column cpo_style_transfer.giving_factory_fob is 'giving_factory_fob';
comment on column cpo_style_transfer.receiving_factory_fob is 'receiving_factory_fob';
comment on column cpo_style_transfer.diff_of_fob_data is 'diff_of_fob_data';
comment on column cpo_style_transfer.diff_of_fob_percent is 'diff_of_fob_percent';
comment on column cpo_style_transfer.reason_for_price_variance is 'reason_for_price_variancr';
comment on column cpo_style_transfer.working_no_range is 'working_no_range';
comment on column cpo_style_transfer.lo_merch is 'lo_merch';
comment on column cpo_style_transfer.tier_merch is 'tier_merch';
comment on column cpo_style_transfer.remarks is 'remarks';
comment on column cpo_style_transfer.field_name is 'Field name';
comment on column cpo_style_transfer.giving_factory_price_landed is 'Giving Factory price Landed';
comment on column cpo_style_transfer.receiving_factory_price_landed is 'Receiving Factory price Landed';
comment on column cpo_style_transfer.ei_set_up_needed is 'EI set up needed';
comment on column cpo_style_transfer.selling_region_percentage_eu is 'selling region percentage - EU';
comment on column cpo_style_transfer.selling_region_percentage_asia is 'selling region percentage - Asia';
comment on column cpo_style_transfer.selling_region_percentage_nam is 'selling region percentage - NAM';
comment on column cpo_style_transfer.selling_region_percentage_lam is 'selling region percentage - LAM';
comment on column cpo_style_transfer.selling_region_percentage_cis is 'selling region percentage - CIS';
comment on column cpo_style_transfer.selling_region_percentage_china is 'selling region percentage - China';
comment on column cpo_style_transfer.landed_price_per_selling_region_giving_factory_eu is 'landed price per selling region - Giving Factory - EU';
comment on column cpo_style_transfer.landed_price_per_selling_region_giving_factory_asia is 'landed price per selling region - Giving Factory - Asia';
comment on column cpo_style_transfer.landed_price_per_selling_region_giving_factory_nam is 'landed price per selling region - Giving Factory - NAM';
comment on column cpo_style_transfer.landed_price_per_selling_region_giving_factory_lam is 'landed price per selling region - Giving Factory - LAM';
comment on column cpo_style_transfer.landed_price_per_selling_region_giving_factory_cis is 'landed price per selling region - Giving Factory - CIS';
comment on column cpo_style_transfer.landed_price_per_selling_region_giving_factory_china is 'landed price per selling region - Giving Factory - China';
comment on column cpo_style_transfer.skip_techpack is 'Skip techpack';
comment on column cpo_style_transfer.document_type is 'document type';
comment on column cpo_style_transfer.confirm_factory is 'confirm_factory';
comment on column cpo_style_transfer.source_remark is 'source_remark';
comment on column cpo_style_transfer.utc_create is '创建时间';
comment on column cpo_style_transfer.utc_update is '修改时间';
comment on column cpo_style_transfer.status is '状态';
comment on column cpo_style_transfer.create_by is '创建人';
comment on column cpo_style_transfer.update_by is '变更人';
comment on column cpo_style_transfer.note is '备注';
-- end --

-- begin--cpo_vendorkpi_shipping_manual--
drop table cpo_vendorkpi_shipping_manual;
create table cpo_vendorkpi_shipping_manual (
	vendorkpi_shipping_manual_id bigint not null,
	forwarder varchar(50),
	origin_region varchar(50),
	destination_region varchar(50),
	orgin_country varchar(50),
	destination_country varchar(50),
	customer_number varchar(50),
	base_date varchar(30),
	type_of_days varchar(20),
	no_of_days int,
	upload_date datetime,
	upload_user int
);
alter table cpo_vendorkpi_shipping_manual add constraint cpo_vendorkpi_shipping_manual_pk PRIMARY KEY(vendorkpi_shipping_manual_id);
drop sequence seq_cpo_vendorkpi_shipping_manual_id;
create sequence seq_cpo_vendorkpi_shipping_manual_id minvalue 1 maxvalue 999999999999999999999999999 start with 1 increment by 1 nocache;
-- Add comments to the columns
comment on column cpo_vendorkpi_shipping_manual.vendorkpi_shipping_manual_id is '记录id';
comment on column cpo_vendorkpi_shipping_manual.forwarder is 'forwarder';
comment on column cpo_vendorkpi_shipping_manual.origin_region is 'origin_region';
comment on column cpo_vendorkpi_shipping_manual.destination_region is 'destination_region';
comment on column cpo_vendorkpi_shipping_manual.orgin_country is 'orgin_country';
comment on column cpo_vendorkpi_shipping_manual.destination_country is 'destination_country';
comment on column cpo_vendorkpi_shipping_manual.customer_number is 'customer_number';
comment on column cpo_vendorkpi_shipping_manual.base_date is 'base_date';
comment on column cpo_vendorkpi_shipping_manual.type_of_days is 'type_of_days';
comment on column cpo_vendorkpi_shipping_manual.no_of_days is 'no_of_days';
comment on column cpo_vendorkpi_shipping_manual.upload_date is 'upload_date';
comment on column cpo_vendorkpi_shipping_manual.upload_user is 'upload_user';
-- end --

-- begin--cpo_shipping_order--
drop table cpo_shipping_order;
create table cpo_shipping_order (
	vendorkpi_shipping_order_id bigint not null,
	forwarder varchar(50),
	shipping_order varchar(50),
	pl3_shipping_order_reference varchar(50),
	po_number varchar(50),
	customer_number varchar(50),
	ship_mode varchar(50),
	shipper varchar(50),
	book_date datetime,
	intended_delivery datetime,
	fgr varchar(50),
	loadport varchar(50),
	loadtype varchar(50),
	factory_code varchar(50),
	origin varchar(50),
	origin_country varchar(50),
	destination varchar(50),
	destination_country varchar(50),
	creation_date datetime,
	creation_user Int
);
alter table cpo_shipping_order add constraint cpo_shipping_order_pk PRIMARY KEY(vendorkpi_shipping_order_id);
drop sequence seq_cpo_shipping_order_id;
create sequence seq_cpo_shipping_order_id minvalue 1 maxvalue 999999999999999999999999999 start with 1 increment by 1 nocache;
-- Add comments to the columns
comment on column cpo_shipping_order.vendorkpi_shipping_order_id is '记录id';
comment on column cpo_shipping_order.forwarder is 'forwarder';
comment on column cpo_shipping_order.shipping_order is 'shipping_order';
comment on column cpo_shipping_order.pl3_shipping_order_reference is 'pl3_shipping_order_reference';
comment on column cpo_shipping_order.po_number is 'po_number';
comment on column cpo_shipping_order.customer_number is 'customer_number';
comment on column cpo_shipping_order.ship_mode is 'ship_mode';
comment on column cpo_shipping_order.shipper is 'shipper';
comment on column cpo_shipping_order.book_date is 'book_date';
comment on column cpo_shipping_order.intended_delivery is 'intended_delivery';
comment on column cpo_shipping_order.fgr is 'fgr';
comment on column cpo_shipping_order.loadport is 'loadport';
comment on column cpo_shipping_order.loadtype is 'loadtype';
comment on column cpo_shipping_order.factory_code is 'factory_code';
comment on column cpo_shipping_order.origin is 'origin';
comment on column cpo_shipping_order.origin_country is 'origin_country';
comment on column cpo_shipping_order.destination is 'destination';
comment on column cpo_shipping_order.destination_country is 'destination_country';
comment on column cpo_shipping_order.creation_date is 'creation_date';
comment on column cpo_shipping_order.creation_user is 'creation_user';
-- end --

-- begin--cpo_shipping_manual--
drop table cpo_shipping_manual;
create table cpo_shipping_manual (
	vendorkpi_shipping_manual_id bigint not null,
	forwarder varchar(50),
	origin_region varchar(50),
	destination_region varchar(50),
	orgin_country varchar(50),
	destination_country varchar(50),
	customer_number varchar(50),
	base_date datetime,
	type_of_days int,
	no_of_days int,
	upload_date datetime,
	upload_user int
);
alter table cpo_shipping_manual add constraint cpo_shipping_manual_pk PRIMARY KEY(vendorkpi_shipping_manual_id);
drop sequence seq_cpo_shipping_manual_id;
create sequence seq_cpo_shipping_manual_id minvalue 1 maxvalue 999999999999999999999999999 start with 1 increment by 1 nocache;
-- Add comments to the columns
comment on column cpo_shipping_manual.vendorkpi_shipping_manual_id is '记录id';
comment on column cpo_shipping_manual.forwarder is 'forwarder';
comment on column cpo_shipping_manual.origin_region is 'origin_region';
comment on column cpo_shipping_manual.destination_region is 'destination_region';
comment on column cpo_shipping_manual.orgin_country is 'orgin_country';
comment on column cpo_shipping_manual.destination_country is 'destination_country';
comment on column cpo_shipping_manual.customer_number is 'customer_number';
comment on column cpo_shipping_manual.base_date is 'base_date';
comment on column cpo_shipping_manual.type_of_days is 'type_of_days';
comment on column cpo_shipping_manual.no_of_days is 'no_of_days';
comment on column cpo_shipping_manual.upload_date is 'upload_date';
comment on column cpo_shipping_manual.upload_user is 'upload_user';
-- end --

-- begin--cpo_shipping_invoice--
drop table cpo_shipping_invoice;
create table cpo_shipping_invoice (
	vendorkpi_shipping_invoice_id bigint not null,
	shipping_order varchar(50),
	invoice_nubmer varchar(50),
	creation_date datetime,
	creation_user int
);
alter table cpo_shipping_invoice add constraint cpo_shipping_invoice_pk PRIMARY KEY(vendorkpi_shipping_invoice_id);
drop sequence seq_cpo_shipping_invoice_id;
create sequence seq_cpo_shipping_invoice_id minvalue 1 maxvalue 999999999999999999999999999 start with 1 increment by 1 nocache;
-- Add comments to the columns
comment on column cpo_shipping_invoice.vendorkpi_shipping_invoice_id is '记录id';
comment on column cpo_shipping_invoice.shipping_order is 'shipping_order';
comment on column cpo_shipping_invoice.invoice_nubmer is 'invoice_nubmer';
comment on column cpo_shipping_invoice.creation_date is 'creation_date';
comment on column cpo_shipping_invoice.creation_user is 'creation_user';
-- end --

-- begin--cpo_document_date--
drop table cpo_document_date;
create table cpo_document_date (
	vendorkpi_document_date_id bigint not null,
	shipping_order varchar(50),
	invoice_nubmer varchar(50),
	documen_treceipt_date datetime,
	etd varchar(50),
	upload_date datetime,
	upload_user int
);
alter table cpo_document_date add constraint cpo_document_date_pk PRIMARY KEY(vendorkpi_document_date_id);
drop sequence seq_cpo_document_date_id;
create sequence seq_cpo_document_date_id minvalue 1 maxvalue 999999999999999999999999999 start with 1 increment by 1 nocache;
-- Add comments to the columns
comment on column cpo_document_date.vendorkpi_document_date_id is '记录id';
comment on column cpo_document_date.shipping_order is 'shipping_order';
comment on column cpo_document_date.invoice_nubmer is 'invoice_nubmer';
comment on column cpo_document_date.documen_treceipt_date is 'documen_treceipt_date';
comment on column cpo_document_date.etd is 'etd';
comment on column cpo_document_date.upload_date is 'upload_date';
comment on column cpo_document_date.upload_user is 'upload_user';
-- end --

-- begin--cpo_public_holiday--
drop table cpo_public_holiday;
create table cpo_public_holiday (
	vendorkpi_public_holiday_id bigint not null,
	country varchar(50),
	holiday_date datetime,
	description varchar(50),
	upload_date datetime,
	upload_user int
);
alter table cpo_public_holiday add constraint cpo_public_holiday_pk PRIMARY KEY(vendorkpi_public_holiday_id);
drop sequence seq_cpo_public_holiday_id;
create sequence seq_cpo_public_holiday_id minvalue 1 maxvalue 999999999999999999999999999 start with 1 increment by 1 nocache;
-- Add comments to the columns
comment on column cpo_public_holiday.vendorkpi_public_holiday_id is '记录id';
comment on column cpo_public_holiday.country is 'country';
comment on column cpo_public_holiday.holiday_date is 'holiday_date';
comment on column cpo_public_holiday.description is 'description';
comment on column cpo_public_holiday.upload_date is 'upload_date';
comment on column cpo_public_holiday.upload_user is 'upload_user';
-- end --

-- begin--cpo_vendorkpi_public_holiday--
drop table cpo_vendorkpi_public_holiday;
create table cpo_vendorkpi_public_holiday (
	vendorkpi_public_holiday_id bigint not null,
	country varchar(50),
	holiday_date datetime,
	description varchar(50),
	upload_date datetime,
	upload_user int
);
alter table cpo_vendorkpi_public_holiday add constraint cpo_vendorkpi_public_holiday_pk PRIMARY KEY(vendorkpi_public_holiday_id);
drop sequence seq_cpo_vendorkpi_public_holiday_id;
create sequence seq_cpo_vendorkpi_public_holiday_id minvalue 1 maxvalue 999999999999999999999999999 start with 1 increment by 1 nocache;
-- Add comments to the columns
comment on column cpo_vendorkpi_public_holiday.vendorkpi_public_holiday_id is '记录id';
comment on column cpo_vendorkpi_public_holiday.country is 'country';
comment on column cpo_vendorkpi_public_holiday.holiday_date is 'holiday_date';
comment on column cpo_vendorkpi_public_holiday.description is 'description';
comment on column cpo_vendorkpi_public_holiday.upload_date is 'upload_date';
comment on column cpo_vendorkpi_public_holiday.upload_user is 'upload_user';
-- end --

-- begin--cpo_vendorkpi_document_date--
drop table cpo_vendorkpi_document_date;
create table cpo_vendorkpi_document_date (
	vendorkpi_document_date_id bigint not null,
	shipping_order varchar(50),
	invoice_nubmer varchar(50),
	documen_treceipt_date datetime,
	etd datetime,
	upload_date datetime,
	upload_user int
);
alter table cpo_vendorkpi_document_date add constraint cpo_vendorkpi_document_date_pk PRIMARY KEY(vendorkpi_document_date_id);
drop sequence seq_cpo_vendorkpi_document_date_id;
create sequence seq_cpo_vendorkpi_document_date_id minvalue 1 maxvalue 999999999999999999999999999 start with 1 increment by 1 nocache;
-- Add comments to the columns
comment on column cpo_vendorkpi_document_date.vendorkpi_document_date_id is '记录id';
comment on column cpo_vendorkpi_document_date.shipping_order is 'shipping_order';
comment on column cpo_vendorkpi_document_date.invoice_nubmer is 'invoice_nubmer';
comment on column cpo_vendorkpi_document_date.documen_treceipt_date is 'documen_treceipt_date';
comment on column cpo_vendorkpi_document_date.etd is 'etd';
comment on column cpo_vendorkpi_document_date.upload_date is 'upload_date';
comment on column cpo_vendorkpi_document_date.upload_user is 'upload_user';
-- end --

-- begin--cpo_vendorkpi_shipping_invoice--
drop table cpo_vendorkpi_shipping_invoice;
create table cpo_vendorkpi_shipping_invoice (
	vendorkpi_shipping_invoice_id bigint not null,
	shipping_order varchar(50),
	invoice_nubmer varchar(50),
	creation_date datetime,
	creation_user int
);
alter table cpo_vendorkpi_shipping_invoice add constraint cpo_vendorkpi_shipping_invoice_pk PRIMARY KEY(vendorkpi_shipping_invoice_id);
drop sequence seq_cpo_vendorkpi_shipping_invoice_id;
create sequence seq_cpo_vendorkpi_shipping_invoice_id minvalue 1 maxvalue 999999999999999999999999999 start with 1 increment by 1 nocache;
-- Add comments to the columns
comment on column cpo_vendorkpi_shipping_invoice.vendorkpi_shipping_invoice_id is '记录id';
comment on column cpo_vendorkpi_shipping_invoice.shipping_order is 'shipping_order';
comment on column cpo_vendorkpi_shipping_invoice.invoice_nubmer is 'invoice_nubmer';
comment on column cpo_vendorkpi_shipping_invoice.creation_date is 'creation_date';
comment on column cpo_vendorkpi_shipping_invoice.creation_user is 'creation_user';
-- end --

-- begin--cpo_vendorkpi_shipping_order--
drop table cpo_vendorkpi_shipping_order;
create table cpo_vendorkpi_shipping_order (
	vendorkpi_shipping_order_id bigint not null,
	forwarder varchar(50),
	shipping_order varchar(50),
	pl3_shipping_order_reference varchar(50),
	po_number varchar(50),
	customer_number varchar(50),
	ship_mode varchar(50),
	shipper varchar(50),
	book_date datetime,
	intended_delivery datetime,
	fgr datetime,
	loadport varchar(50),
	loadtype varchar(50),
	factory_code varchar(50),
	origin varchar(50),
	origin_country varchar(50),
	destination varchar(50),
	destination_country varchar(50),
	creation_date datetime,
	creation_user Int,
	shipping_order_status varchar(50)
);
alter table cpo_vendorkpi_shipping_order add constraint cpo_vendorkpi_shipping_order_pk PRIMARY KEY(vendorkpi_shipping_order_id);
drop sequence seq_cpo_vendorkpi_shipping_order_id;
create sequence seq_cpo_vendorkpi_shipping_order_id minvalue 1 maxvalue 999999999999999999999999999 start with 1 increment by 1 nocache;
-- Add comments to the columns
comment on column cpo_vendorkpi_shipping_order.vendorkpi_shipping_order_id is '记录id';
comment on column cpo_vendorkpi_shipping_order.forwarder is 'forwarder';
comment on column cpo_vendorkpi_shipping_order.shipping_order is 'shipping_order';
comment on column cpo_vendorkpi_shipping_order.pl3_shipping_order_reference is 'pl3_shipping_order_reference';
comment on column cpo_vendorkpi_shipping_order.po_number is 'po_number';
comment on column cpo_vendorkpi_shipping_order.customer_number is 'customer_number';
comment on column cpo_vendorkpi_shipping_order.ship_mode is 'ship_mode';
comment on column cpo_vendorkpi_shipping_order.shipper is 'shipper';
comment on column cpo_vendorkpi_shipping_order.book_date is 'book_date';
comment on column cpo_vendorkpi_shipping_order.intended_delivery is 'intended_delivery';
comment on column cpo_vendorkpi_shipping_order.fgr is 'fgr';
comment on column cpo_vendorkpi_shipping_order.loadport is 'loadport';
comment on column cpo_vendorkpi_shipping_order.loadtype is 'loadtype';
comment on column cpo_vendorkpi_shipping_order.factory_code is 'factory_code';
comment on column cpo_vendorkpi_shipping_order.origin is 'origin';
comment on column cpo_vendorkpi_shipping_order.origin_country is 'origin_country';
comment on column cpo_vendorkpi_shipping_order.destination is 'destination';
comment on column cpo_vendorkpi_shipping_order.destination_country is 'destination_country';
comment on column cpo_vendorkpi_shipping_order.creation_date is 'creation_date';
comment on column cpo_vendorkpi_shipping_order.creation_user is 'creation_user';
comment on column cpo_vendorkpi_shipping_order.shipping_order_status is 'shipping_order_status';
-- end --

-- begin--cpo_working_no_factory_smv--
drop table cpo_working_no_factory_smv;
create table cpo_working_no_factory_smv (
	working_no_factory_smv_id bigint not null,
	working_no varchar(50),
	factory_id bigint,
	factory_name varchar(30),
	smv Double,
	unit varchar(5),
	smv_type varchar(1),
	product_type varchar(30)
);
alter table cpo_working_no_factory_smv add constraint cpo_working_no_factory_smv_pk PRIMARY KEY(working_no_factory_smv_id);
drop sequence seq_cpo_working_no_factory_smv_id;
create sequence seq_cpo_working_no_factory_smv_id minvalue 1 maxvalue 999999999999999999999999999 start with 1 increment by 1 nocache;
-- Add comments to the columns
comment on column cpo_working_no_factory_smv.working_no_factory_smv_id is '记录id';
comment on column cpo_working_no_factory_smv.working_no is 'working_no';
comment on column cpo_working_no_factory_smv.factory_id is 'factory_id';
comment on column cpo_working_no_factory_smv.factory_name is 'Factory_name';
comment on column cpo_working_no_factory_smv.smv is 'smv';
comment on column cpo_working_no_factory_smv.unit is 'unit';
comment on column cpo_working_no_factory_smv.smv_type is 'smv_type';
comment on column cpo_working_no_factory_smv.product_type is 'product_type';
-- end --

-- begin--cpo_a_chian_buy_plan_size--
drop table cpo_a_chian_buy_plan_size;
create table cpo_a_chian_buy_plan_size (
	a_china_buy_plan_size_id bigint not null,
	a_china_buy_plan_id bigint,
	sizename varchar(10),
	sizequantity int,
	utc_create datetime,
	utc_update datetime,
	status varchar(1),
	create_by bigint,
	update_by bigint,
	note varchar(1024)
);
alter table cpo_a_chian_buy_plan_size add constraint cpo_a_chian_buy_plan_size_pk PRIMARY KEY(a_china_buy_plan_size_id);
drop sequence seq_cpo_a_chian_buy_plan_size_id;
create sequence seq_cpo_a_chian_buy_plan_size_id minvalue 1 maxvalue 999999999999999999999999999 start with 1 increment by 1 nocache;
-- Add comments to the columns
comment on column cpo_a_chian_buy_plan_size.a_china_buy_plan_size_id is '记录id';
comment on column cpo_a_chian_buy_plan_size.a_china_buy_plan_id is 'aChinaBuyPlanId';
comment on column cpo_a_chian_buy_plan_size.sizename is 'sizeName';
comment on column cpo_a_chian_buy_plan_size.sizequantity is 'sizeQuantity';
comment on column cpo_a_chian_buy_plan_size.utc_create is '创建时间';
comment on column cpo_a_chian_buy_plan_size.utc_update is '修改时间';
comment on column cpo_a_chian_buy_plan_size.status is '状态';
comment on column cpo_a_chian_buy_plan_size.create_by is '创建人';
comment on column cpo_a_chian_buy_plan_size.update_by is '变更人';
comment on column cpo_a_chian_buy_plan_size.note is '备注';
-- end --

-- begin--cpo_a_china_buy_plan_size--
drop table cpo_a_china_buy_plan_size;
create table cpo_a_china_buy_plan_size (
	a_china_buy_plan_size_id bigint not null,
	a_china_buy_plan_id bigint,
	sizename varchar(10),
	sizequantity int,
	utc_create datetime,
	utc_update datetime,
	status varchar(1),
	create_by bigint,
	update_by bigint,
	note varchar(1024)
);
alter table cpo_a_china_buy_plan_size add constraint cpo_a_china_buy_plan_size_pk PRIMARY KEY(a_china_buy_plan_size_id);
drop sequence seq_cpo_a_china_buy_plan_size_id;
create sequence seq_cpo_a_china_buy_plan_size_id minvalue 1 maxvalue 999999999999999999999999999 start with 1 increment by 1 nocache;
-- Add comments to the columns
comment on column cpo_a_china_buy_plan_size.a_china_buy_plan_size_id is '记录id';
comment on column cpo_a_china_buy_plan_size.a_china_buy_plan_id is 'aChinaBuyPlanId';
comment on column cpo_a_china_buy_plan_size.sizename is 'sizeName';
comment on column cpo_a_china_buy_plan_size.sizequantity is 'sizeQuantity';
comment on column cpo_a_china_buy_plan_size.utc_create is '创建时间';
comment on column cpo_a_china_buy_plan_size.utc_update is '修改时间';
comment on column cpo_a_china_buy_plan_size.status is '状态';
comment on column cpo_a_china_buy_plan_size.create_by is '创建人';
comment on column cpo_a_china_buy_plan_size.update_by is '变更人';
comment on column cpo_a_china_buy_plan_size.note is '备注';
-- end --

-- begin--cpo_a_china_buy_plan--
drop table cpo_a_china_buy_plan;
create table cpo_a_china_buy_plan (
	a_china_buy_plan_id bigint not null,
	document_id bigint,
	season Varchar(10),
	assigned_factory Varchar(10),
	develop_sourcing varchar(255),
	season_of_tm varchar(255),
	ib_po_no varchar(255),
	sap_order_no varchar(255),
	working_no varchar(30),
	model_no varchar(30),
	article_no varchar(30),
	model_name varchar(255),
	division varchar(30),
	gender varchar(10),
	local_drop varchar(10),
	category varchar(50),
	themes varchar(50),
	priority_tracking varchar(30),
	owr_launch_date varchar(30),
	crd_in_system varchar(30),
	sourcing_channel varchar(30),
	sourcing_group varchar(30),
	sourcing_origin varchar(30),
	manufactory varchar(255),
	int_l_vendor_code varchar(30),
	lo varchar(100),
	ds_fty_code varchar(30),
	lead_time varchar(10),
	shipping_mode varchar(30),
	buy_ready_cut_off varchar(30),
	actual_cut_off varchar(30),
	brand_ii varchar(128),
	ils_fc_qty varchar(10),
	consolidation_qty varchar(10),
	po_qty varchar(10),
	size_pattern varchar(30),
	size_run varchar(30),
	priority varchar(30),
	crd_in_month datetime,
	ds_lo varchar(30),
	utc_create datetime,
	utc_update datetime,
	a_chian_buy_plan_status varchar(1),
	create_by bigint,
	update_by bigint,
	note varchar(1024)
);
alter table cpo_a_china_buy_plan add constraint cpo_a_china_buy_plan_pk PRIMARY KEY(a_china_buy_plan_id);
drop sequence seq_cpo_a_china_buy_plan_id;
create sequence seq_cpo_a_china_buy_plan_id minvalue 1 maxvalue 999999999999999999999999999 start with 1 increment by 1 nocache;
-- Add comments to the columns
comment on column cpo_a_china_buy_plan.a_china_buy_plan_id is '记录id';
comment on column cpo_a_china_buy_plan.document_id is 'document id';
comment on column cpo_a_china_buy_plan.season is 'Season';
comment on column cpo_a_china_buy_plan.assigned_factory is 'Assigned_factory';
comment on column cpo_a_china_buy_plan.develop_sourcing is 'DEVELOP SOURCING';
comment on column cpo_a_china_buy_plan.season_of_tm is 'SEASON OF TM';
comment on column cpo_a_china_buy_plan.ib_po_no is 'IB PO NO';
comment on column cpo_a_china_buy_plan.sap_order_no is 'SAP ORDER NO';
comment on column cpo_a_china_buy_plan.working_no is 'WORKING NO';
comment on column cpo_a_china_buy_plan.model_no is 'MODEL NO';
comment on column cpo_a_china_buy_plan.article_no is 'ARTICLE NO';
comment on column cpo_a_china_buy_plan.model_name is 'MODEL NAME';
comment on column cpo_a_china_buy_plan.division is 'DIVISION';
comment on column cpo_a_china_buy_plan.gender is 'GENDER';
comment on column cpo_a_china_buy_plan.local_drop is 'LOCAL DROP';
comment on column cpo_a_china_buy_plan.category is 'CATEGORY';
comment on column cpo_a_china_buy_plan.themes is 'THEMES';
comment on column cpo_a_china_buy_plan.priority_tracking is 'PRIORITY TRACKING';
comment on column cpo_a_china_buy_plan.owr_launch_date is 'OWR LAUNCH DATE';
comment on column cpo_a_china_buy_plan.crd_in_system is 'CRD IN SYSTEM';
comment on column cpo_a_china_buy_plan.sourcing_channel is 'SOURCING CHANNEL';
comment on column cpo_a_china_buy_plan.sourcing_group is 'SOURCING GROUP';
comment on column cpo_a_china_buy_plan.sourcing_origin is 'SOURCING ORIGIN';
comment on column cpo_a_china_buy_plan.manufactory is 'MANUFACTORY';
comment on column cpo_a_china_buy_plan.int_l_vendor_code is 'INT'L VENDOR CODE';
comment on column cpo_a_china_buy_plan.lo is 'LO';
comment on column cpo_a_china_buy_plan.ds_fty_code is 'DS fty code';
comment on column cpo_a_china_buy_plan.lead_time is 'LEAD TIME';
comment on column cpo_a_china_buy_plan.shipping_mode is 'SHIPPING MODE';
comment on column cpo_a_china_buy_plan.buy_ready_cut_off is 'BUY-READY CUT-OFF';
comment on column cpo_a_china_buy_plan.actual_cut_off is 'ACTUAL CUT OFF';
comment on column cpo_a_china_buy_plan.brand_ii is 'BRAND II';
comment on column cpo_a_china_buy_plan.ils_fc_qty is 'ILS FC QTY';
comment on column cpo_a_china_buy_plan.consolidation_qty is 'CONSOLIDATION  QTY';
comment on column cpo_a_china_buy_plan.po_qty is 'PO QTY';
comment on column cpo_a_china_buy_plan.size_pattern is 'SIZE PATTERN';
comment on column cpo_a_china_buy_plan.size_run is 'SIZE RUN';
comment on column cpo_a_china_buy_plan.priority is 'Priority';
comment on column cpo_a_china_buy_plan.crd_in_month is 'crd_in_month';
comment on column cpo_a_china_buy_plan.ds_lo is 'ds_lo';
comment on column cpo_a_china_buy_plan.utc_create is '创建时间';
comment on column cpo_a_china_buy_plan.utc_update is '修改时间';
comment on column cpo_a_china_buy_plan.a_chian_buy_plan_status is '状态';
comment on column cpo_a_china_buy_plan.create_by is '创建人';
comment on column cpo_a_china_buy_plan.update_by is '变更人';
comment on column cpo_a_china_buy_plan.note is '备注';
-- end --

-- begin--cpo_season_data_range_setting--
drop table cpo_season_data_range_setting;
create table cpo_season_data_range_setting (
	season_data_range_setting_id bigint not null,
	season varchar(10),
	document_type varchar(5),
	from_date datetime,
	to_date datetime,
	utc_create datetime,
	utc_update datetime,
	status varchar(1),
	create_by varchar(30),
	update_by varchar(30),
	note varchar(1024)
);
alter table cpo_season_data_range_setting add constraint cpo_season_data_range_setting_pk PRIMARY KEY(season_data_range_setting_id);
drop sequence seq_cpo_season_data_range_setting_id;
create sequence seq_cpo_season_data_range_setting_id minvalue 1 maxvalue 999999999999999999999999999 start with 1 increment by 1 nocache;
-- Add comments to the columns
comment on column cpo_season_data_range_setting.season_data_range_setting_id is '记录id';
comment on column cpo_season_data_range_setting.season is 'Season';
comment on column cpo_season_data_range_setting.document_type is 'document type';
comment on column cpo_season_data_range_setting.from_date is 'from date';
comment on column cpo_season_data_range_setting.to_date is 'to date';
comment on column cpo_season_data_range_setting.utc_create is '创建时间';
comment on column cpo_season_data_range_setting.utc_update is '修改时间';
comment on column cpo_season_data_range_setting.status is '状态';
comment on column cpo_season_data_range_setting.create_by is '创建人';
comment on column cpo_season_data_range_setting.update_by is '变更人';
comment on column cpo_season_data_range_setting.note is '备注';
-- end --

-- begin--cpo_season_date_range_setting--
drop table cpo_season_date_range_setting;
create table cpo_season_date_range_setting (
	season_date_range_setting_id bigint not null,
	season varchar(10),
	document_type varchar(5),
	from_date datetime,
	document_type_name Varchar(30),
	to_date datetime,
	validation_date datetime,
	invalidation_date datetime,
	utc_create datetime,
	utc_update datetime,
	status varchar(1),
	create_by varchar(30),
	update_by varchar(30),
	note varchar(1024)
);
alter table cpo_season_date_range_setting add constraint cpo_season_date_range_setting_pk PRIMARY KEY(season_date_range_setting_id);
drop sequence seq_cpo_season_date_range_setting_id;
create sequence seq_cpo_season_date_range_setting_id minvalue 1 maxvalue 999999999999999999999999999 start with 1 increment by 1 nocache;
-- Add comments to the columns
comment on column cpo_season_date_range_setting.season_date_range_setting_id is '记录id';
comment on column cpo_season_date_range_setting.season is 'Season';
comment on column cpo_season_date_range_setting.document_type is 'document type';
comment on column cpo_season_date_range_setting.from_date is 'from date';
comment on column cpo_season_date_range_setting.document_type_name is 'Document_type_name';
comment on column cpo_season_date_range_setting.to_date is 'to date';
comment on column cpo_season_date_range_setting.validation_date is 'validation date';
comment on column cpo_season_date_range_setting.invalidation_date is 'invalidation date';
comment on column cpo_season_date_range_setting.utc_create is '创建时间';
comment on column cpo_season_date_range_setting.utc_update is '修改时间';
comment on column cpo_season_date_range_setting.status is '状态';
comment on column cpo_season_date_range_setting.create_by is '创建人';
comment on column cpo_season_date_range_setting.update_by is '变更人';
comment on column cpo_season_date_range_setting.note is '备注';
-- end --

-- begin--cpo_bno_batch--
drop table cpo_bno_batch;
create table cpo_bno_batch (
	bno_batch_id bigint not null,
	b_no varchar(50),
	batch_no int
);
alter table cpo_bno_batch add constraint cpo_bno_batch_pk PRIMARY KEY(bno_batch_id);
drop sequence seq_cpo_bno_batch_id;
create sequence seq_cpo_bno_batch_id minvalue 1 maxvalue 999999999999999999999999999 start with 1 increment by 1 nocache;
-- Add comments to the columns
comment on column cpo_bno_batch.bno_batch_id is '记录id';
comment on column cpo_bno_batch.b_no is 'b_no';
comment on column cpo_bno_batch.batch_no is 'batch_no';
-- end --

-- begin--cpo_worktable_edi_order_batch--
drop table cpo_worktable_edi_order_batch;
create table cpo_worktable_edi_order_batch (
	worktable_edi_order_batch_id bigint not null,
	order_master_id bigint,
	b_no varchar(50),
	batch_no varchar(5)
);
alter table cpo_worktable_edi_order_batch add constraint cpo_worktable_edi_order_batch_pk PRIMARY KEY(worktable_edi_order_batch_id);
drop sequence seq_cpo_worktable_edi_order_batch_id;
create sequence seq_cpo_worktable_edi_order_batch_id minvalue 1 maxvalue 999999999999999999999999999 start with 1 increment by 1 nocache;
-- Add comments to the columns
comment on column cpo_worktable_edi_order_batch.worktable_edi_order_batch_id is '记录id';
comment on column cpo_worktable_edi_order_batch.order_master_id is 'order_master_id';
comment on column cpo_worktable_edi_order_batch.b_no is 'b_no';
comment on column cpo_worktable_edi_order_batch.batch_no is 'batch_no';
-- end --

-- begin--cpo_edi_order_batch--
drop table cpo_edi_order_batch;
create table cpo_edi_order_batch (
	worktable_edi_order_batch_id bigint not null,
	order_master_id bigint,
	b_no varchar(50),
	batch_no varchar(5),
	no_168 Varchar(20)
);
alter table cpo_edi_order_batch add constraint cpo_edi_order_batch_pk PRIMARY KEY(worktable_edi_order_batch_id);
drop sequence seq_cpo_edi_order_batch_id;
create sequence seq_cpo_edi_order_batch_id minvalue 1 maxvalue 999999999999999999999999999 start with 1 increment by 1 nocache;
-- Add comments to the columns
comment on column cpo_edi_order_batch.worktable_edi_order_batch_id is '记录id';
comment on column cpo_edi_order_batch.order_master_id is 'order_master_id';
comment on column cpo_edi_order_batch.b_no is 'b_no';
comment on column cpo_edi_order_batch.batch_no is 'batch_no';
comment on column cpo_edi_order_batch.no_168 is '168#';
-- end --

-- begin--cpo_working_no_factory_history--
drop table cpo_working_no_factory_history;
create table cpo_working_no_factory_history (
	working_no_factory_history_id bigint not null,
	working_no varchar(50),
	factory varchar(30),
	document_type varchar(10),
	times int
);
alter table cpo_working_no_factory_history add constraint cpo_working_no_factory_history_pk PRIMARY KEY(working_no_factory_history_id);
drop sequence seq_cpo_working_no_factory_history_id;
create sequence seq_cpo_working_no_factory_history_id minvalue 1 maxvalue 999999999999999999999999999 start with 1 increment by 1 nocache;
-- Add comments to the columns
comment on column cpo_working_no_factory_history.working_no_factory_history_id is '记录id';
comment on column cpo_working_no_factory_history.working_no is 'working_no';
comment on column cpo_working_no_factory_history.factory is 'Factory';
comment on column cpo_working_no_factory_history.document_type is 'document_type';
comment on column cpo_working_no_factory_history.times is 'times';
-- end --

-- begin--worktable_edi_order_data_history--
drop table worktable_edi_order_data_history;
create table worktable_edi_order_data_history (
	edi_order_data_history_id bigint not null,
	po Varchar(30),
	mtfc_number varchar(30),
	order_data varchar(8000),
	order_actual_type varchar(30),
	utc_create datetime,
	status varchar(1),
	create_by bigint,
	note varchar(1024)
);
alter table worktable_edi_order_data_history add constraint worktable_edi_order_data_history_pk PRIMARY KEY(edi_order_data_history_id);
drop sequence seq_worktable_edi_order_data_history_id;
create sequence seq_worktable_edi_order_data_history_id minvalue 1 maxvalue 999999999999999999999999999 start with 1 increment by 1 nocache;
-- Add comments to the columns
comment on column worktable_edi_order_data_history.edi_order_data_history_id is '记录id';
comment on column worktable_edi_order_data_history.po is 'po';
comment on column worktable_edi_order_data_history.mtfc_number is 'Mtfc_number';
comment on column worktable_edi_order_data_history.order_data is 'Order_data';
comment on column worktable_edi_order_data_history.order_actual_type is 'Order_actual_type';
comment on column worktable_edi_order_data_history.utc_create is '创建时间';
comment on column worktable_edi_order_data_history.status is '状态';
comment on column worktable_edi_order_data_history.create_by is '创建人';
comment on column worktable_edi_order_data_history.note is '备注';
-- end --

-- begin--cpo_bno_factory_history--
drop table cpo_bno_factory_history;
create table cpo_bno_factory_history (
	b_no_factory_history_id bigint not null,
	b_no varchar(50),
	factory varchar(30),
	times int
);
alter table cpo_bno_factory_history add constraint cpo_bno_factory_history_pk PRIMARY KEY(b_no_factory_history_id);
drop sequence seq_cpo_bno_factory_history_id;
create sequence seq_cpo_bno_factory_history_id minvalue 1 maxvalue 999999999999999999999999999 start with 1 increment by 1 nocache;
-- Add comments to the columns
comment on column cpo_bno_factory_history.b_no_factory_history_id is '记录id';
comment on column cpo_bno_factory_history.b_no is 'b_no';
comment on column cpo_bno_factory_history.factory is 'Factory';
comment on column cpo_bno_factory_history.times is 'times';
-- end --

-- begin--cpo_mi_b_number--
drop table cpo_mi_b_number;
create table cpo_mi_b_number (
	mi_b_number_id bigint not null,
	stripes varchar(50),
	logo varchar(50),
	sublimation_printing varchar(50),
	n_and_n varchar(50),
	hem_insert varchar(100),
	working_no varchar(50),
	article_no varchar(30),
	b_number varchar(50),
	size_type varchar(20),
	size_group varchar(50)
);
alter table cpo_mi_b_number add constraint cpo_mi_b_number_pk PRIMARY KEY(mi_b_number_id);
drop sequence seq_cpo_mi_b_number_id;
create sequence seq_cpo_mi_b_number_id minvalue 1 maxvalue 999999999999999999999999999 start with 1 increment by 1 nocache;
-- Add comments to the columns
comment on column cpo_mi_b_number.mi_b_number_id is '记录id';
comment on column cpo_mi_b_number.stripes is 'stripes';
comment on column cpo_mi_b_number.logo is 'logo';
comment on column cpo_mi_b_number.sublimation_printing is 'sublimation printing';
comment on column cpo_mi_b_number.n_and_n is 'n and n';
comment on column cpo_mi_b_number.hem_insert is 'hem insert';
comment on column cpo_mi_b_number.working_no is 'working no';
comment on column cpo_mi_b_number.article_no is 'article no';
comment on column cpo_mi_b_number.b_number is 'b number';
comment on column cpo_mi_b_number.size_type is 'size_type';
comment on column cpo_mi_b_number.size_group is 'size_group';
-- end --

-- begin--worktable_edi_order_change--
drop table worktable_edi_order_change;
create table worktable_edi_order_change (
	order_change_id bigint not null,
	change_value varchar(256),
	change_type varchar(50),
	change_remark varchar(256),
	status varchar(5),
	utc_create datetime,
	utc_update datetime,
	update_by bigint,
	update_by_name varchar(128),
	create_by_name varchar(128),
	note varchar(1024),
	original_po varchar(30),
	order_actual_type Varchar(30),
	flag_fr Varchar(1),
	flag_ax Varchar(1),
	transit_fr_remark varchar(128),
	transit_ax_remark varchar(128)
);
alter table worktable_edi_order_change add constraint worktable_edi_order_change_pk PRIMARY KEY(order_change_id);
drop sequence seq_worktable_edi_order_change_id;
create sequence seq_worktable_edi_order_change_id minvalue 1 maxvalue 999999999999999999999999999 start with 1 increment by 1 nocache;
-- Add comments to the columns
comment on column worktable_edi_order_change.order_change_id is '记录id';
comment on column worktable_edi_order_change.change_value is 'change_value';
comment on column worktable_edi_order_change.change_type is 'change_type';
comment on column worktable_edi_order_change.change_remark is 'change_remark';
comment on column worktable_edi_order_change.status is 'status';
comment on column worktable_edi_order_change.utc_create is 'utc_create';
comment on column worktable_edi_order_change.utc_update is 'utc_update';
comment on column worktable_edi_order_change.update_by is 'update_by';
comment on column worktable_edi_order_change.update_by_name is 'update_by_name';
comment on column worktable_edi_order_change.create_by_name is 'create_by_name';
comment on column worktable_edi_order_change.note is 'note';
comment on column worktable_edi_order_change.original_po is 'original_po';
comment on column worktable_edi_order_change.order_actual_type is 'order_actual_type';
comment on column worktable_edi_order_change.flag_fr is 'Flag_fr';
comment on column worktable_edi_order_change.flag_ax is 'Flag_Ax';
comment on column worktable_edi_order_change.transit_fr_remark is 'transit_fr_remark';
comment on column worktable_edi_order_change.transit_ax_remark is 'transit_ax_remark';
-- end --

-- begin--worktable_edi_order_approval--
drop table worktable_edi_order_approval;
create table worktable_edi_order_approval (
	edi_order_approval_id bigint not null,
	assign_result_id bigint,
	order_master_id bigint,
	original_po varchar(30),
	status varchar(5),
	create_by varchar(128),
	utc_create datetime,
	update_by varchar(128),
	utc_update datetime,
	from_factory varchar(30),
	to_factory Varchar(30),
	note Varchar(1024),
	flag_fr Varchar(1),
	flag_ax Varchar(1),
	transit_fr_remark varchar(128),
	transit_ax_remark varchar(128)
);
alter table worktable_edi_order_approval add constraint worktable_edi_order_approval_pk PRIMARY KEY(edi_order_approval_id);
drop sequence seq_worktable_edi_order_approval_id;
create sequence seq_worktable_edi_order_approval_id minvalue 1 maxvalue 999999999999999999999999999 start with 1 increment by 1 nocache;
-- Add comments to the columns
comment on column worktable_edi_order_approval.edi_order_approval_id is '记录id';
comment on column worktable_edi_order_approval.assign_result_id is 'assign_result_id';
comment on column worktable_edi_order_approval.order_master_id is 'order_master_id';
comment on column worktable_edi_order_approval.original_po is 'original_po';
comment on column worktable_edi_order_approval.status is 'status';
comment on column worktable_edi_order_approval.create_by is 'create_by';
comment on column worktable_edi_order_approval.utc_create is 'utc_create';
comment on column worktable_edi_order_approval.update_by is 'update_by';
comment on column worktable_edi_order_approval.utc_update is 'utc_update';
comment on column worktable_edi_order_approval.from_factory is 'from_factory';
comment on column worktable_edi_order_approval.to_factory is 'to_factory';
comment on column worktable_edi_order_approval.note is 'note';
comment on column worktable_edi_order_approval.flag_fr is 'Flag_fr';
comment on column worktable_edi_order_approval.flag_ax is 'Flag_Ax';
comment on column worktable_edi_order_approval.transit_fr_remark is 'transit_fr_remark';
comment on column worktable_edi_order_approval.transit_ax_remark is 'transit_ax_remark';
-- end --

-- begin--worktable_edi_order_cancel--
drop table worktable_edi_order_cancel;
create table worktable_edi_order_cancel (
	edi_order_cancel_id bigint not null,
	code varchar(100),
	assign_result_id bigint,
	to_be_status varchar(5),
	status varchar(5),
	utc_create Datetime,
	utc_update Datetime,
	note varchar(1024)
);
alter table worktable_edi_order_cancel add constraint worktable_edi_order_cancel_pk PRIMARY KEY(edi_order_cancel_id);
drop sequence seq_worktable_edi_order_cancel_id;
create sequence seq_worktable_edi_order_cancel_id minvalue 1 maxvalue 999999999999999999999999999 start with 1 increment by 1 nocache;
-- Add comments to the columns
comment on column worktable_edi_order_cancel.edi_order_cancel_id is '记录id';
comment on column worktable_edi_order_cancel.code is 'code';
comment on column worktable_edi_order_cancel.assign_result_id is 'assign_result_id';
comment on column worktable_edi_order_cancel.to_be_status is 'to_be_status';
comment on column worktable_edi_order_cancel.status is 'status';
comment on column worktable_edi_order_cancel.utc_create is 'utc_create';
comment on column worktable_edi_order_cancel.utc_update is 'utc_update';
comment on column worktable_edi_order_cancel.note is 'note';
-- end --

-- begin--cpo_fr_order_schedule--
drop table cpo_fr_order_schedule;
create table cpo_fr_order_schedule (
	fr_order_schedule_id bigint not null,
	code varchar(100),
	assign_result_id bigint,
	to_be_status varchar(5),
	status varchar(5),
	utc_create Datetime,
	utc_update Datetime,
	note varchar(1024),
	type Varchar(50),
	retry_times int
);
alter table cpo_fr_order_schedule add constraint cpo_fr_order_schedule_pk PRIMARY KEY(fr_order_schedule_id);
drop sequence seq_cpo_fr_order_schedule_id;
create sequence seq_cpo_fr_order_schedule_id minvalue 1 maxvalue 999999999999999999999999999 start with 1 increment by 1 nocache;
-- Add comments to the columns
comment on column cpo_fr_order_schedule.fr_order_schedule_id is '记录id';
comment on column cpo_fr_order_schedule.code is 'code';
comment on column cpo_fr_order_schedule.assign_result_id is 'assign_result_id';
comment on column cpo_fr_order_schedule.to_be_status is 'to_be_status';
comment on column cpo_fr_order_schedule.status is 'status';
comment on column cpo_fr_order_schedule.utc_create is 'utc_create';
comment on column cpo_fr_order_schedule.utc_update is 'utc_update';
comment on column cpo_fr_order_schedule.note is 'note';
comment on column cpo_fr_order_schedule.type is 'type';
comment on column cpo_fr_order_schedule.retry_times is 'retry times';
-- end --

