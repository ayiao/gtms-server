drop table if exists cpo_process_criteria;
create table cpo_process_criteria (
	process_criteria_id bigint not null auto_increment ,
	process_type varchar(50) comment '工序类型',
	process_id bigint comment '工序id',
	factory_id bigint comment '工厂id',
	criteria_version_id bigint comment '标准版本id',
	mandatory varchar(1) comment '强制性',
	process_score int comment '分数',
	criteria_status varchar(2) comment '状态',
	start_date datetime comment '生效时间',
	end_date datetime comment '失效时间',
	utc_create datetime comment '创建时间',
	utc_update datetime comment '修改时间',
	create_by bigint comment '创建人',
	update_by bigint comment '变更人',
	note varchar(1024) comment '备注',
	primary key (process_criteria_id)
);-- begin--cpo_criteria_version--
drop table if exists cpo_criteria_version;
create table cpo_criteria_version (
	criteria_version_id bigint not null auto_increment ,
	version_name varchar(512) comment '版本名',
	user_id bigint comment '用户id',
	default_version varchar(2) comment '默认版本',
	criteria_status varchar(2) comment '状态',
	start_date datetime comment '开始时间',
	end_date datetime comment '截止时间',
	utc_create datetime comment '创建时间',
	utc_update datetime comment '修改时间',
	create_by bigint comment '创建人',
	update_by bigint comment '变更人',
	note varchar(1024) comment '备注',
	primary key (criteria_version_id)
);-- end --

-- begin--cpo_factory_criteria--
drop table if exists cpo_factory_criteria;
create table cpo_factory_criteria (
	factory_criteria_id bigint not null auto_increment ,
	criteria_code varchar(50) comment '标准参数代号',
	criteria_object varchar(50) comment '标准参数对象',
	factory_id varchar(50) comment '工厂id',
	order_type varchar(10) comment 'order_type',
	mandatory varchar(1) comment '强制性',
	criteria_type  varchar(2) comment '标准类型',
	criteria_version_id bigint comment '标准版本id',
	original_source_id bigint comment 'original_source_id',
	criteria_status varchar(2) comment '状态',
	start_date datetime comment '生效时间',
	end_date datetime comment '失效时间',
	utc_create datetime comment '创建时间',
	utc_update datetime comment '修改时间',
	create_by bigint comment '创建人',
	update_by bigint comment '变更人',
	note varchar(1024) comment '备注',
	primary key (factory_criteria_id)
);-- end --

-- begin--cpo_criteria_condition--
drop table if exists cpo_criteria_condition;
create table cpo_criteria_condition (
	crit_condi_id bigint not null auto_increment ,
	factory_criteria_id bigint comment '标准id',
	factory_ids varchar(255) comment '工厂ids',
	application_working_no varchar(8000) comment '作用款',
	crit_condition varchar(2) comment '条件 ',
	value_type varchar(1) comment '条件值类型',
	condition_value_1 varchar(50) comment '条件值1',
	condition_value_2 varchar(50) comment '条件值2',
	criteria_value decimal comment '值',
	start_date datetime comment '开始时间',
	end_date datetime comment '失效时间',
	utc_create datetime comment '创建时间',
	utc_update datetime comment '修改时间',
	create_by bigint comment '创建人',
	update_by bigint comment '变更人',
	note varchar(1024) comment '备注',
	primary key (crit_condi_id)
);-- end --

-- begin--cpo_document--
drop table if exists cpo_document;
create table cpo_document (
	document_id bigint not null auto_increment ,
	document_old_name varchar(255) comment '文档曾用名',
	document_name varchar(255) comment '文档名',
	document_url varchar(500) comment '文档路径',
	document_type varchar(2) comment '文档类型',
	source varchar(50) comment '文档来源',
	season varchar(5) comment '季度',
	month int comment '月份',
	fr_flag varchar(1) comment 'Fr_flag',
	ax_flag varchar(1) comment 'Ax_flag',
	document_status varchar(2) comment '状态',
	order_date datetime comment 'Order_date',
	utc_create datetime comment '创建时间',
	utc_update datetime comment '修改时间',
	create_by bigint comment '创建人',
	update_by bigint comment '变更人',
	note varchar(1024) comment '备注',
	primary key (document_id)
);-- end --

-- begin--cpo_customer_po_record--
drop table if exists cpo_customer_po_record;
create table cpo_customer_po_record (
	customer_po_id bigint not null auto_increment ,
	document_id bigint comment 'document id',
	working_no varchar(255) comment 'Working Number',
	gps_factory varchar(30) comment 'GPS Factory',
	assigned_factory varchar(30) comment 'Assigned Factory',
	po_number varchar(255) comment 'PO Number',
	po_type varchar(20) comment 'POType',
	customer_no varchar(255) comment 'Customer Number',
	article_no varchar(255) comment 'Article Number',
	article_description varchar(512) comment 'Article Description',
	class_code varchar(255) comment 'Class Code',
	order_group varchar(255) comment 'Order Group',
	brand varchar(255) comment 'Brand ',
	total_qty varchar(10) comment 'Total Qty',
	price_per_unit decimal(16,2) comment 'Price Per Unit',
	cust_size_run varchar(10) comment 'Customer Size Run',
	tech_notation varchar(10) comment 'Technical Notation',
	customer_size varchar(10) comment 'Customer Size',
	tech_size varchar(10) comment 'Technical Size',
	order_qty varchar(10) comment 'Ordered Qty',
	shipped_qty varchar(10) comment 'Shipped Qty',
	division varchar(10) comment 'Division',
	classification varchar(255) comment 'Classification ',
	warehouse varchar(255) comment 'Warehouse',
	season varchar(10) comment 'season',
	cust_req_date datetime comment 'Customer Request Date',
	plan_date datetime comment 'Plan Date',
	po_batch_date datetime comment 'PO Batch Date',
	first_prod_date datetime comment 'First Production Date',
	last_prod_date datetime comment 'Last Production Date',
	ship_instruction varchar(255) comment 'Shipping Instruction',
	remark varchar(512) comment 'Remark',
	tech_concept varchar(255) comment 'Technology Concept',
	tech_concept_desc varchar(512) comment 'Technology Concept Description',
	tech_comp_desc varchar(512) comment 'Technology Component Description',
	prior_indication varchar(64) comment 'Priority Indicator',
	subs_ship_to_no varchar(255) comment 'Subsidiary Ship-To Number',
	vas_shas_code_non_us varchar(255) comment 'VAS/SHAS Code Non-US',
	for_account_of varchar(255) comment 'For Account Of',
	seller varchar(255) comment 'Seller',
	ship_mode varchar(50) comment 'Ship Mode',
	cust_order_no varchar(255) comment 'Customer Order Number',
	order_type varchar(50) comment 'Order Type',
	release_status varchar(255) comment 'Release Status',
	shipped_status int comment 'ShippedStatus',
	mtfc_number varchar(255) comment 'MTFC Number',
	client_number varchar(50) comment 'Client Number',
	purc_group_code varchar(255) comment 'Purchasing Group Code',
	contract_number varchar(255) comment 'Contract Number',
	types varchar(255) comment 'Types',
	last_update_date datetime comment 'Last Update Date',
	model_number varchar(50) comment 'Model Number',
	model_name varchar(255) comment 'Model Name',
	gender varchar(1) comment 'Gender',
	busi_model_attr varchar(255) comment 'Business Model Attribute',
	psdd datetime comment 'PSDD',
	podd datetime comment 'PODD',
	comfirm_delay int comment 'Confirmation Delay',
	delivery_delay int comment 'Delivery Delay',
	mark_for_addr varchar(512) comment 'Mark for Address',
	total_mechan_amount decimal(16,2) comment 'Total Mechandise Amount',
	total_tax_amount decimal(16,2) comment 'Total Tax Amount',
	total_adjustsment decimal(16,2) comment 'Total Adjustments',
	total_doc_amount decimal(16,2) comment 'Total Document Amount',
	pre_ord_id varchar(20) comment 'pre_ord_id',
	order_country varchar(20) comment 'order_country',
	order_status varchar(5) comment 'Order Status',
	order_actual_type varchar(30) comment '订单实际类型',
	utc_create datetime comment '创建时间',
	utc_update datetime comment '修改时间',
	status int comment '状态',
	create_by bigint comment '创建人',
	update_by bigint comment '变更人',
	note varchar(1024) comment '备注',
	primary key (customer_po_id)
);-- end --

-- begin--cpo_customer_info--
drop table if exists cpo_customer_info;
create table cpo_customer_info (
	cust_info_id bigint not null auto_increment ,
	customer_no varchar(30) comment 'Cust.No.',
	cust_no_type varchar(10) comment 'Cust.No type',
	cust_type varchar(2) comment 'Cust_type',
	country varchar(64) comment 'country',
	country_code varchar(10) comment 'Country code',
	organise_type varchar(20) comment 'organise type',
	region varchar(30) comment 'Region',
	utc_create datetime comment '创建时间',
	utc_update datetime comment '修改时间',
	cust_info_status varchar(1) comment '状态',
	create_by bigint comment '创建人',
	update_by bigint comment '变更人',
	note varchar(1024) comment '备注',
	primary key (cust_info_id)
);-- end --

-- begin--cpo_factory_assignment--
drop table if exists cpo_factory_assignment;
create table cpo_factory_assignment (
	fact_assign_id bigint not null auto_increment ,
	assign_source_id bigint comment 'source id',
	po varchar(50) comment 'PO',
	customer_no varchar(50) comment 'customer No',
	plan_month varchar(30) comment 'plan_month',
	assign_source varchar(2) comment 'source',
	size_group varchar(30) comment 'Size group',
	contract_no varchar(30) comment 'contract_no',
	order_type varchar(2) comment 'order Type',
	document_id bigint comment 'document id',
	pre_ord_id varchar(255) comment 'pre_ord_id',
	working_no varchar(255) comment 'working no',
	gps_factory varchar(30) comment 'GPS Factory',
	pv_quantity decimal comment 'pv_quantity',
	assigned_factory varchar(30) comment 'Assigned Factory',
	a_source varchar(30) comment 'A source',
	last_prod_fact varchar(50) comment 'Last Production Factory',
	organise_type varchar(20) comment 'EU/NON EU',
	order_country varchar(255) comment 'Order Country',
	coo varchar(50) comment 'COO',
	leftover decimal comment 'leftover',
	leftover_fty varchar(10) comment 'leftover_fty',
	pullforward decimal comment 'pullforward',
	pullforward_fty varchar(10) comment 'pullforward_fty',
	corrected_source varchar(50) comment 'corrected source',
	base_style varchar(50) comment 'base style',
	class_code varchar(255) comment 'Class Code',
	order_group varchar(255) comment 'Order Group',
	brand varchar(255) comment 'Brand ',
	article_no varchar(255) comment 'Article Number',
	fabric_type varchar(50) comment 'fabricType',
	product_type varchar(50) comment 'Product Type',
	art_lead_time varchar(10) comment 'Article Lead time',
	supply_chain_track varchar(10) comment 'supply chain track',
	working_no_range varchar(50) comment 'workingNo range',
	request_date datetime comment 'Request Date',
	season varchar(255) comment 'season',
	season_remark varchar(50) comment 'season remark',
	total_qty varchar(255) comment 'Total Qty',
	eu_rate decimal comment 'eu_rate',
	eu_quantity decimal comment 'eu_quantity',
	china_rate decimal comment 'china_rate',
	china_quantity decimal comment 'china_quantity',
	sum_quantity decimal comment 'sum_quantity',
	forecast_qty varchar(20) comment 'Forecast Qty',
	open_forecast_qty varchar(20) comment 'open_forecast_qty',
	order_actual_type varchar(30) comment '订单实际类型',
	pre_doc_qty varchar(20) comment 'pre_doc_qty',
	plan_date datetime comment 'Plan Date',
	po_batch_date datetime comment 'PO Batch Date',
	first_prod_date datetime comment 'First Production Date',
	last_prod_date datetime comment 'Last Production Date',
	psdd datetime comment 'PSDD',
	podd datetime comment 'PODD',
	order_quantity_by_plan_date varchar(255) comment 'Order Quantity by Plan Date',
	mkt_assigned_result varchar(1024) comment 'mkt_assigned_result',
	half_month_period varchar(10) comment 'half_month_period',
	utc_create datetime comment '创建时间',
	utc_update datetime comment '修改时间',
	assign_result_status varchar(1) comment '状态',
	create_by bigint comment '创建人',
	update_by bigint comment '变更人',
	note varchar(1024) comment '备注',
	primary key (fact_assign_id)
);-- end --

-- begin--cpo_process--
drop table if exists cpo_process;
create table cpo_process (
	process_id bigint not null auto_increment ,
	process_category_id bigint comment 'process category id',
	process_code varchar(30) comment '工序代号',
	process_name varchar(255) comment '工序名称',
	process_type varchar(50) comment '工序类型',
	fr_external_id varchar(10) comment 'FR External ID',
	utc_create datetime comment '创建时间',
	utc_update datetime comment '修改时间',
	process_status varchar(1) comment '状态',
	create_by bigint comment '创建人',
	update_by bigint comment '变更人',
	note varchar(1024) comment '备注',
	primary key (process_id)
);-- end --

-- begin--cpo_factory--
drop table if exists cpo_factory;
create table cpo_factory (
	factory_id bigint not null auto_increment ,
	factory_code varchar(60) comment '工厂代号',
	factory_simple_code varchar(60) comment '工厂代号',
	fact_simp_name varchar(20) comment '工厂简称',
	factory_name varchar(255) comment '工厂名称',
	factory_address varchar(255) comment '工厂地址',
	factory_phone_num varchar(30) comment '工厂电话',
	fr_factory_id varchar(10) comment 'fr工厂代码',
	ax_factory_id varchar(10) comment 'AX工厂代码',
	factory_type varchar(1) comment '类型',
	factory_status varchar(1) comment '状态',
	order_type varchar(5) comment 'Order type',
	utc_create datetime comment '创建时间',
	utc_update datetime comment '修改时间',
	create_by bigint comment '创建人',
	update_by bigint comment '变更人',
	note varchar(1024) comment '备注',
	primary key (factory_id)
);-- end --

-- begin--cpo_factory_process--
drop table if exists cpo_factory_process;
create table cpo_factory_process (
	factory_process_id bigint not null auto_increment ,
	factory_id varchar(30) comment '工厂id',
	process_id bigint comment '工序id',
	factory_process_type varchar(1) comment '工序类型',
	utc_create datetime comment '创建时间',
	utc_update datetime comment '修改时间',
	create_by bigint comment '创建人',
	update_by bigint comment '变更人',
	note varchar(1024) comment '备注',
	primary key (factory_process_id)
);-- end --

-- begin--cpo_working_no--
drop table if exists cpo_working_no;
create table cpo_working_no (
	working_no_id bigint not null auto_increment ,
	working_no varchar(50) comment 'working no',
	adidas_a_source varchar(30) comment 'Adidas A Source',
	bowker_a_source varchar(30) comment 'Bowker A Source',
	garment_producting_day decimal comment 'Garment Producting Day',
	working_no_range varchar(255) comment 'Range',
	main_fabric varchar(255) comment '主身布种',
	t2_name varchar(255) comment 'T2 name',
	product_lead_time int comment 'ProductLeadTime',
	unit varchar(255) comment 'unit',
	b_source varchar(10) comment 'B source',
	c_source varchar(10) comment 'C source',
	d_source varchar(10) comment 'D source',
	product_name varchar(128) comment 'Product Name',
	pad_print_style varchar(50) comment 'pad print style',
	pad_print_item varchar(50) comment 'pad print item',
	mainfabric_desc varchar(100) comment 'mainFabric desc',
	t2_coo varchar(20) comment 'T2 COO',
	model_id varchar(50) comment 'model ID',
	model_desc varchar(255) comment 'model_desc',
	smv decimal comment 'smv',
	mother_style varchar(255) comment 'mother style',
	inner_smv decimal comment 'inner smv',
	top_smv decimal comment 'top smv',
	bottom_smv decimal comment 'bottom smv',
	gsp varchar(5) comment 'Gsp',
	wc_style varchar(20) comment 'Wc_style',
	ei_set_up varchar(50) comment 'EI Set-up',
	special_process_remark varchar(500) comment '特殊工序备注',
	gender varchar(10) comment 'Gender',
	lo_merch varchar(30) comment 'LO Merch',
	base_fob decimal comment 'Base FOB',
	costing_curr varchar(10) comment 'Costing Curr.',
	product_mgr varchar(30) comment 'product mgr',
	tier_1_merch varchar(30) comment 'tier 1 merch',
	developer varchar(30) comment 'developer',
	develop_type varchar(30) comment 'develop type',
	dd_style varchar(30) comment 'dd_style',
	sports_code varchar(255) comment 'Sports code',
	utc_create datetime comment '创建时间',
	utc_update datetime comment '修改时间',
	work_no_status varchar(2) comment '状态',
	create_by bigint comment '创建人',
	update_by bigint comment '变更人',
	note varchar(1024) comment '备注',
	primary key (working_no_id)
);-- end --

-- begin--cpo_working_no_attributes--
drop table if exists cpo_working_no_attributes;
create table cpo_working_no_attributes (
	work_no_attr_id bigint not null auto_increment ,
	working_no_id bigint comment 'working no id',
	working_no varchar(50) comment 'working_no',
	category_code varchar(255) comment '目录编号',
	category_value varchar(255) comment '目录值',
	attribute_code varchar(255) comment '属性编号',
	attribute_value varchar(255) comment '属性值',
	weight decimal comment '权重',
	utc_create datetime comment '创建时间',
	utc_update datetime comment '修改时间',
	attr_status varchar(2) comment '状态',
	create_by bigint comment '创建人',
	update_by bigint comment '变更人',
	note varchar(1024) comment '备注',
	primary key (work_no_attr_id)
);-- end --

-- begin--cpo_factory_assignment_result--
drop table if exists cpo_factory_assignment_result;
create table cpo_factory_assignment_result (
	assign_result_id bigint not null auto_increment ,
	fact_assign_id bigint comment 'fact_assign_id',
	cpo_no varchar(255) comment 'CPO No',
	mo varchar(255) comment 'MO',
	working_no varchar(255) comment 'working_no',
	sugg_factory varchar(50) comment 'suggest factory',
	a_source varchar(50) comment 'a source',
	corrected_source varchar(50) comment 'corrected_source',
	last_prod_factory varchar(50) comment 'last production factory',
	confirm_factory varchar(50) comment 'confirm factory',
	new_factory varchar(50) comment 'new_factory',
	old_factory varchar(50) comment 'old_factory',
	factory_score_detial varchar(8000) comment 'factory score_detial',
	special_order varchar(100) comment '订单特殊要求',
	transfer_order_info varchar(200) comment '订单更改资料',
	pf_order varchar(20) comment 'PF ORDER',
	gsp varchar(30) comment 'GSP',
	service_identify varchar(20) comment 'Serviceidentify',
	customization_status varchar(10) comment 'Customization Status',
	test varchar(50) comment 'Test',
	asian_size varchar(20) comment '亚洲款',
	japan_size varchar(20) comment '日本款',
	dd_style varchar(20) comment 'DD款',
	new_ftyname varchar(50) comment 'New Ftyname',
	mix_size varchar(50) comment '大混码',
	athlete varchar(50) comment 'Athlete',
	ppc_status varchar(5) comment 'Ppc status',
	flag_fr varchar(1) comment 'Flag_fr',
	flag_ax varchar(1) comment 'Flag_Ax',
	transit_fr_remark varchar(128) comment 'transit_fr_remark',
	transit_ax_remark varchar(128) comment 'transit_ax_remark',
	mdp_fail_reason varchar(128) comment 'MDPfailreason',
	pdp_fail_reason varchar(128) comment 'PDPfailreason',
	psdd_factory datetime comment 'psddfactory',
	fpd_factory datetime comment 'fpdfactory',
	transfer_reason varchar(255) comment '转厂原因',
	transfer_remark varchar(255) comment '转厂备注',
	updated_information varchar(128) comment 'Updated Information',
	latest_fabric_pi_eta datetime comment 'Latest Fabric PI ETA',
	latest_trim_pi_eta datetime comment 'latest_trim_pi_eta',
	main_mpo varchar(30) comment 'Main MPO#',
	t2_name_1st varchar(30) comment '1st T2 Name',
	fabric_rms_1st varchar(30) comment '1st Fabric RMS#',
	fabric_po_1st varchar(30) comment '1st Fabric PO#',
	fabric_pi_date datetime comment '1st Fabric PI Date',
	no_168 varchar(20) comment '168#',
	timetable varchar(30) comment 'timetable',
	utc_create datetime comment '创建时间',
	utc_update datetime comment '修改时间',
	assign_result_status varchar(1) comment '状态',
	create_by bigint comment '创建人',
	update_by bigint comment '变更人',
	note varchar(1024) comment '备注',
	primary key (assign_result_id)
);-- end --

-- begin--cpo_assign_score--
drop table if exists cpo_assign_score;
create table cpo_assign_score (
	assign_score_id bigint not null auto_increment ,
	customer_po_id bigint comment 'customer po id',
	factory_score_detial varchar(8000) comment 'factory score_detial',
	factory_sum_score varchar(512) comment 'factory_sum_score',
	utc_create datetime comment '创建时间',
	utc_update datetime comment '修改时间',
	assign_score_status varchar(1) comment '状态',
	create_by bigint comment '创建人',
	update_by bigint comment '变更人',
	note varchar(1024) comment '备注',
	primary key (assign_score_id)
);-- end --

-- begin--cpo_admin_dict--
drop table if exists cpo_admin_dict;
create table cpo_admin_dict (
	dictid bigint not null auto_increment ,
	code varchar(32) comment '参数代码',
	value varchar(16) comment '值',
	label varchar(255) comment '名  称',
	data varchar(800) comment '数  据',
	fmt varchar(255) comment '格  式',
	sort int comment '排  序',
	scode varchar(16) comment '父参数',
	lang varchar(255) comment '语言',
	primary key (dictid)
);-- end --

-- begin--cpo_admin_script--
drop table if exists cpo_admin_script;
create table cpo_admin_script (
	code varchar(50) not null  ,
	scripts varchar(1000) comment '脚本',
	label varchar(50) comment '名称',
	kind char(1) comment '类型',
	title varchar(50) comment '标题',
	header varchar(200) comment '头部',
	fmt varchar(100) comment '格式',
	primary key (code)
);-- end --

-- begin--cpo_marketing_forecast--
drop table if exists cpo_marketing_forecast;
create table cpo_marketing_forecast (
	marketing_forecast_id bigint not null auto_increment ,
	document_id bigint comment 'document id',
	rccp_division varchar(255) comment 'RCCP Division',
	projected_reference varchar(255) comment 'Projected Reference',
	lo varchar(255) comment 'LO',
	factory_id varchar(255) comment 'Factory ID',
	factory_desc varchar(255) comment 'Factory DESC',
	development_factory varchar(255) comment 'Development Factory',
	creation_center varchar(255) comment 'Creation Center',
	business_segment varchar(255) comment 'Business Segment',
	capability_name varchar(255) comment 'Capability Capability Name',
	otp_reference varchar(255) comment 'OTP Reference',
	rccp_season varchar(255) comment 'RCCP Season',
	demand_type varchar(255) comment 'Demand Type',
	model_no varchar(255) comment 'Model No',
	new_style_count_seasonal varchar(255) comment 'New Style Count Seasonal',
	likely_vol_adj varchar(255) comment 'Likely Volume adjusted',
	likely_vol_1 varchar(255) comment 'Likely Volume 1',
	likely_vol_2 varchar(255) comment 'Likely Volume 2',
	likely_vol_3 varchar(255) comment 'Likely Volume 3',
	likely_vol_4 varchar(255) comment 'Likely Volume 4',
	likely_vol_5 varchar(255) comment 'Likely Volume 5',
	likely_vol_6 varchar(255) comment 'Likely Volume 6',
	down_vol_tol varchar(255) comment 'Downside Volume Total',
	down_vol_adj varchar(255) comment 'Downside Volume adjusted',
	up_vol_tol varchar(255) comment 'Upside Volume Total',
	up_vol_adj varchar(255) comment 'Upside Volume adjusted',
	developer varchar(255) comment 'Developer',
	product_mgr varchar(255) comment 'Product Mgr',
	working_no varchar(255) comment 'Working#',
	quarter varchar(255) comment 'Quarter',
	sports_category varchar(255) comment 'Sports Category',
	alloc_cat varchar(255) comment 'Alloc Cat',
	cat_mkt_line varchar(255) comment 'Cat Mkt Line',
	corp_mkt_line varchar(255) comment 'Corp Mkt Line',
	sales_line varchar(255) comment 'Sales Line',
	age_group varchar(255) comment 'Age Group',
	gender varchar(255) comment 'Gender',
	product_speciality varchar(255) comment 'Product Speciality',
	timeline varchar(255) comment 'Timeline',
	retail_intro varchar(255) comment 'Retail Intro',
	retail_exit varchar(255) comment 'Retail Exit',
	first_xfty_date varchar(255) comment 'First_xfty_Date',
	last_xfty_date varchar(255) comment 'Last_xfty_Date',
	product_type varchar(255) comment 'Product Type',
	product_group varchar(255) comment 'Product Group',
	unit_of_measure varchar(255) comment 'Unit Of Measure',
	sales_unit varchar(255) comment 'Sales Unit',
	carry_over varchar(255) comment 'Carry Over',
	dev_type varchar(255) comment 'Dev Type',
	corrected_source varchar(255) comment 'Corrected Source - ',
	fty_id varchar(255) comment 'Fty id',
	fty_status varchar(255) comment 'Fty Status',
	fty_group varchar(255) comment 'Fty group',
	fty_group_name varchar(255) comment 'Fty group name',
	segmentation varchar(255) comment 'Segmentation',
	lo2 varchar(255) comment 'LO2',
	coo varchar(255) comment 'COO',
	coo_or_region varchar(255) comment 'COO/Region',
	targ_tech varchar(255) comment 'Targ. Tech.',
	targ_mat varchar(255) comment 'Target Mat.',
	flex_source varchar(255) comment 'Flex Source',
	priority varchar(255) comment 'Priority',
	adj_p_grp varchar(255) comment 'Adj P Grp',
	adj_tech varchar(255) comment 'Adj Tech',
	adj_mat varchar(255) comment 'Adj Mat',
	total_pt varchar(255) comment 'Total PT',
	adj_bu varchar(255) comment 'Adj BU',
	status_milestones varchar(255) comment 'Status/ Milestones',
	offered_capacity varchar(255) comment 'Offered Capacity',
	development_capacity varchar(255) comment 'Development Capacity',
	pre_order_assigned_result varchar(8000) comment 'pre_order_assigned_result',
	pre_order_quantity varchar(20) comment 'pre_order_quantity',
	flex_check varchar(255) comment 'Flex check',
	utc_update datetime comment '修改时间',
	status int comment '状态',
	create_by bigint comment '创建人',
	update_by bigint comment '变更人',
	note varchar(1024) comment '备注',
	primary key (marketing_forecast_id)
);-- end --

-- begin--cpo_process_category--
drop table if exists cpo_process_category;
create table cpo_process_category (
	process_category_id bigint not null auto_increment ,
	category_code varchar(30) comment '栏目代号',
	category_name varchar(255) comment '栏目名称',
	category_type varchar(50) comment '栏目类型',
	utc_create datetime comment '创建时间',
	utc_update datetime comment '修改时间',
	category_status varchar(1) comment '状态',
	create_by bigint comment '创建人',
	update_by bigint comment '变更人',
	note varchar(1024) comment '备注',
	primary key (process_category_id)
);-- end --

-- begin--cpo_customer_forecast--
drop table if exists cpo_customer_forecast;
create table cpo_customer_forecast (
	customer_forecast_id bigint not null auto_increment ,
	document_id bigint comment 'document id',
	lo varchar(50) comment 'lo',
	season varchar(10) comment 'Season',
	brand varchar(255) comment 'Brand',
	factory_group varchar(20) comment 'Factory Group',
	factory_id varchar(255) comment 'Factory ID',
	factory_name varchar(255) comment 'Factory Name',
	coo varchar(255) comment 'COO',
	working_no varchar(255) comment 'Working No',
	model_id varchar(255) comment 'Model ID',
	model_desc varchar(255) comment 'Model DESC',
	article varchar(255) comment 'Article',
	business_segment varchar(255) comment 'Business Segment',
	sports_code varchar(255) comment 'Sports Code',
	product_type varchar(255) comment 'Product Type',
	sales_line varchar(255) comment 'Sales Line',
	category_marketing_line varchar(255) comment 'Category Marketing Line',
	corporate_marketing_line varchar(255) comment 'Corporate Marketing Line',
	gps_customer_customer varchar(255) comment 'customer_no',
	gps_customer_desc varchar(255) comment 'GPS Customer DESC',
	article_lead_time varchar(255) comment 'Article Lead time',
	supply_chain_track varchar(255) comment 'Supply Chain Track',
	period varchar(255) comment 'Period',
	planning_volume_quantity varchar(255) comment 'Planning Volume Quantity',
	forecast_quantity varchar(255) comment 'Forecast Quantity',
	open_forecast varchar(255) comment 'OPEN FC (all SCT)',
	order_quantity_by_crd varchar(255) comment 'Order Quantity by CRD',
	order_quantity_by_plan_date varchar(255) comment 'Order Quantity by Plan Date',
	pre_order_assigned_result varchar(1024) comment 'pre_order_assigned_result',
	mkt_fc_assigned_result varchar(1024) comment 'mkt_fc_assigned_result',
	mkt_fc_quantity varchar(20) comment 'mkt_fc_quantity',
	order_country varchar(20) comment 'order_country',
	eu_rate decimal comment 'eu_rate',
	eu_quantity decimal comment 'eu_quantity',
	china_rate decimal comment 'china_rate',
	china_quantity decimal comment 'china_quantity',
	total_quantity decimal comment 'total_quantity',
	utc_update datetime comment '修改时间',
	status int comment '状态',
	create_by bigint comment '创建人',
	update_by bigint comment '变更人',
	note varchar(1024) comment '备注',
	primary key (customer_forecast_id)
);-- end --

-- begin--cpo_edi_order_master--
drop table if exists cpo_edi_order_master;
create table cpo_edi_order_master (
	order_master_id bigint not null auto_increment ,
	document_id bigint comment 'document id',
	po varchar(255) comment 'PO',
	quantity varchar(255) comment 'Quantity',
	price varchar(255) comment 'Price',
	orderuid varchar(255) comment 'ORDERUID',
	customerordernumber varchar(255) comment 'CustomerOrderNumber',
	pobatchdate datetime comment 'PoBatchDate',
	salesgroup varchar(255) comment 'SalesGroup',
	subsidiaryid varchar(255) comment 'SubsidiaryId',
	distributionchannel varchar(255) comment 'DistributionChannel',
	clientnumber varchar(255) comment 'ClientNumber',
	customernumber varchar(255) comment 'CustomerNumber',
	factorynumber varchar(255) comment 'FactoryNumber',
	purchasinggroupcode varchar(255) comment 'PurchasingGroupCode',
	releasestatus varchar(255) comment 'ReleaseStatus',
	purchasingorganization varchar(255) comment 'PurchasingOrganization',
	originalfactory varchar(255) comment 'OriginalFactory',
	productionleadtime varchar(255) comment 'ProductionLeadTime',
	plandate datetime comment 'PlanDate',
	classcode varchar(255) comment 'ClassCode',
	customerrequestdate datetime comment 'CustomerRequestDate',
	customcountryfortax varchar(255) comment 'CustomCountryForTax',
	vatnumber varchar(255) comment 'VatNumber',
	erpordernumber varchar(255) comment 'ErpOrderNumber',
	potype varchar(255) comment 'POType',
	hidehts varchar(255) comment 'HideHTS',
	htseligibility varchar(255) comment 'HTSEligibility',
	origineligibility varchar(255) comment 'OriginEligibility',
	htsformtype varchar(255) comment 'HTSFormType',
	htsformcurrency varchar(255) comment 'HTSFormCurrency',
	inscopeindicator varchar(255) comment 'InScopeIndicator',
	ismtfc varchar(255) comment 'isMTFC',
	liasonsofficecode varchar(255) comment 'LiasonsOfficeCode',
	idrevisionnumber varchar(255) comment 'idRevisionNumber',
	shasorder varchar(255) comment 'ShasOrder',
	shasready varchar(255) comment 'ShasReady',
	customertype varchar(255) comment 'CustomerType',
	shascustomer varchar(255) comment 'ShasCustomer',
	ordertypedescription varchar(255) comment 'OrderTypeDescription',
	adidasshipmode varchar(255) comment 'AdidasShipMode',
	workflow varchar(255) comment 'Workflow',
	allowmixedpopacking varchar(255) comment 'AllowMixedPoPacking',
	labelid varchar(255) comment 'LabelID',
	portofloading varchar(255) comment 'PortOfLoading',
	accountnumber varchar(255) comment 'AccountNumber',
	lspadidascode varchar(255) comment 'LspAdidasCode',
	integrated3pl varchar(255) comment 'Integrated3pl',
	multiplecontainers varchar(255) comment 'MultipleContainers',
	usepodustable varchar(255) comment 'UsePodUsTable',
	portofdischarge varchar(255) comment 'PortOfDischarge',
	currency varchar(255) comment 'Currency',
	orderstatus; varchar(255) comment 'OrderStatus;',
	ordertype varchar(255) comment 'OrderType',
	releasenumber varchar(255) comment 'ReleaseNumber',
	orderdate datetime comment 'OrderDate',
	contractnumber varchar(255) comment 'ContractNumber',
	partialshipment varchar(255) comment 'PartialShipment',
	transitshipment varchar(255) comment 'TransitShipment',
	workingnumber varchar(255) comment 'WorkingNumber',
	articlenumber varchar(255) comment 'ArticleNumber',
	articlename varchar(255) comment 'ArticleName',
	customerno varchar(255) comment 'CustomerNo',
	firstproductiondate datetime comment 'FirstProductionDate',
	lastproductiondate datetime comment 'LastProductionDate',
	postatisticaldeliverydate datetime comment 'PoStatisticalDeliveryDate',
	podd datetime comment 'Podd',
	sportsdescription varchar(255) comment 'SportsDescription',
	brand varchar(255) comment 'Brand',
	branddescription varchar(255) comment 'BrandDescription',
	modelnumber varchar(255) comment 'ModelNumber',
	modelname varchar(255) comment 'ModelName',
	ordergroup varchar(255) comment 'OrderGroup',
	podelupdatedelay datetime comment 'PoDelUpdateDelay',
	customersizerun varchar(255) comment 'CustomerSizeRun',
	gender varchar(255) comment 'Gender',
	deliverydelay datetime comment 'DeliveryDelay',
	division varchar(255) comment 'Division',
	materialcolordescription varchar(255) comment 'MaterialColorDescription',
	businessmodelattribute varchar(255) comment 'BusinessModelAttribute',
	gpsitemlinenumber varchar(255) comment 'GpsItemLineNumber',
	category varchar(255) comment 'Category',
	classification varchar(255) comment 'Classification',
	confirmationdelay datetime comment 'ConfirmationDelay',
	barcodetype varchar(255) comment 'BarcodeType',
	customeridentifier varchar(255) comment 'CustomerIdentifier',
	poextendeddatastatusindicator varchar(255) comment 'PoExtendedDataStatusIndicator',
	vascutoffdate datetime comment 'VASCutoffDate',
	shippinginstruction varchar(255) comment 'ShippingInstruction',
	technicalnotation varchar(255) comment 'TechnicalNotation',
	caselottext varchar(255) comment 'CaseLotText',
	caselot2text varchar(255) comment 'CaseLot2Text',
	caselot2qty varchar(255) comment 'CaseLot2Qty',
	caselot2ratio varchar(255) comment 'CaseLot2Ratio',
	caselot3text varchar(255) comment 'CaseLot3Text',
	caselot3qty varchar(255) comment 'CaseLot3Qty',
	caselot3ratio varchar(255) comment 'CaseLot3Ratio',
	caselot4text varchar(255) comment 'CaseLot4Text',
	caselot4qty varchar(255) comment 'CaseLot4Qty',
	caselot4ratio varchar(255) comment 'CaseLot4Ratio',
	caselot5text varchar(255) comment 'CaseLot5Text',
	caselot5qty varchar(255) comment 'CaseLot5Qty',
	caselot5ratio varchar(255) comment 'CaseLot5Ratio',
	technologyconcept varchar(255) comment 'TechnologyConcept',
	technologyconceptdescription varchar(255) comment 'TechnologyConceptDescription',
	technologycomponent varchar(255) comment 'TechnologyComponent',
	confirmationdelaypd varchar(255) comment 'ConfirmationDelayPd',
	deliverydelaypd varchar(255) comment 'DeliveryDelayPd',
	destinationcountry varchar(255) comment 'DestinationCountry',
	htscodechangeflag varchar(255) comment 'HTSCodeChangeFlag',
	htsflagupdatedtimestamp varchar(255) comment 'HTSFlagUpdatedTimestamp',
	markforaddress varchar(255) comment 'MarkForAddress',
	marketdeliverydate datetime comment 'MarketDeliveryDate',
	numberofcartons varchar(255) comment 'NumberOfCartons',
	numberofunits varchar(255) comment 'NumberOfUnits',
	priorityindicator varchar(255) comment 'PriorityIndicator',
	shascodenonus varchar(255) comment 'ShasCodeNonUs',
	totalcartonpieces varchar(255) comment 'TotalCartonPieces',
	zzcust_cntry varchar(255) comment 'ZZCUST_CNTRY',
	mtfcnumber varchar(255) comment 'mtfcNumber',
	primary key (order_master_id)
);-- end --

-- begin--worktable_edi_order_master--
drop table if exists worktable_edi_order_master;
create table worktable_edi_order_master (
	order_master_id bigint not null auto_increment ,
	document_id bigint comment 'document id',
	pre_ord_id bigint comment 'pre_ord_id',
	season varchar(10) comment 'season',
	season_remark varchar(50) comment 'season remark',
	order_actual_type varchar(30) comment '订单实际类型',
	po varchar(30) comment 'PO',
	original_po varchar(30) comment 'original_po',
	transferred_po varchar(30) comment 'transferred_po',
	batch_no varchar(5) comment 'Batch no',
	assigned_factory varchar(10) comment 'Assigned_factory',
	quantity varchar(10) comment 'Quantity',
	price varchar(10) comment 'Price',
	orderuid varchar(255) comment 'ORDERUID',
	customerordernumber varchar(255) comment 'CustomerOrderNumber',
	pobatchdate datetime comment 'PoBatchDate',
	salesgroup varchar(255) comment 'SalesGroup',
	subsidiaryid varchar(255) comment 'SubsidiaryId',
	distributionchannel varchar(255) comment 'DistributionChannel',
	clientnumber varchar(50) comment 'ClientNumber',
	customernumber varchar(50) comment 'CustomerNumber',
	lastupdatedate datetime comment 'LastUpdateDate',
	factorynumber varchar(50) comment 'FactoryNumber',
	purchasinggroupcode varchar(255) comment 'PurchasingGroupCode',
	releasestatus varchar(255) comment 'ReleaseStatus',
	purchasingorganization varchar(255) comment 'PurchasingOrganization',
	originalfactory varchar(255) comment 'OriginalFactory',
	productionleadtime varchar(10) comment 'ProductionLeadTime',
	plandate datetime comment 'PlanDate',
	classcode varchar(50) comment 'ClassCode',
	customerrequestdate datetime comment 'CustomerRequestDate',
	customcountryfortax varchar(255) comment 'CustomCountryForTax',
	vatnumber varchar(255) comment 'VatNumber',
	erpordernumber varchar(255) comment 'ErpOrderNumber',
	potype varchar(20) comment 'POType',
	hidehts varchar(255) comment 'HideHTS',
	htseligibility varchar(255) comment 'HTSEligibility',
	origineligibility varchar(255) comment 'OriginEligibility',
	htsformtype varchar(10) comment 'HTSFormType',
	htsformcurrency varchar(50) comment 'HTSFormCurrency',
	inscopeindicator varchar(255) comment 'InScopeIndicator',
	ismtfc varchar(255) comment 'isMTFC',
	liasonsofficecode varchar(255) comment 'LiasonsOfficeCode',
	idrevisionnumber varchar(50) comment 'idRevisionNumber',
	shasorder varchar(255) comment 'ShasOrder',
	shasready varchar(255) comment 'ShasReady',
	customertype varchar(50) comment 'CustomerType',
	shascustomer varchar(255) comment 'ShasCustomer',
	ordertypedescription varchar(255) comment 'OrderTypeDescription',
	adidasshipmode varchar(10) comment 'AdidasShipMode',
	workflow varchar(50) comment 'Workflow',
	allowmixedpopacking varchar(255) comment 'AllowMixedPoPacking',
	labelid varchar(255) comment 'LabelID',
	portofloading varchar(255) comment 'PortOfLoading',
	accountnumber varchar(255) comment 'AccountNumber',
	lspadidascode varchar(255) comment 'LspAdidasCode',
	integrated3pl varchar(255) comment 'Integrated3pl',
	multiplecontainers varchar(255) comment 'MultipleContainers',
	usepodustable varchar(50) comment 'UsePodUsTable',
	portofdischarge varchar(255) comment 'PortOfDischarge',
	currency varchar(50) comment 'Currency',
	orderstatus varchar(10) comment 'OrderStatus;',
	ordertype varchar(50) comment 'OrderType',
	releasenumber varchar(100) comment 'ReleaseNumber',
	orderdate datetime comment 'OrderDate',
	contractnumber varchar(150) comment 'ContractNumber',
	partialshipment varchar(255) comment 'PartialShipment',
	transitshipment varchar(255) comment 'TransitShipment',
	workingnumber varchar(100) comment 'WorkingNumber',
	articlenumber varchar(50) comment 'ArticleNumber',
	articlename varchar(255) comment 'ArticleName',
	firstproductiondate datetime comment 'FirstProductionDate',
	lastproductiondate datetime comment 'LastProductionDate',
	postatisticaldeliverydate datetime comment 'PoStatisticalDeliveryDate',
	podd datetime comment 'Podd',
	sportsdescription varchar(255) comment 'SportsDescription',
	brand varchar(50) comment 'Brand',
	branddescription varchar(255) comment 'BrandDescription',
	modelnumber varchar(50) comment 'ModelNumber',
	modelname varchar(255) comment 'ModelName',
	ordergroup varchar(50) comment 'OrderGroup',
	podelupdatedelay datetime comment 'PoDelUpdateDelay',
	customersizerun varchar(10) comment 'CustomerSizeRun',
	gender varchar(3) comment 'Gender',
	deliverydelay datetime comment 'DeliveryDelay',
	division varchar(50) comment 'Division',
	materialcolordescription varchar(255) comment 'MaterialColorDescription',
	businessmodelattribute varchar(255) comment 'BusinessModelAttribute',
	gpsitemlinenumber varchar(255) comment 'GpsItemLineNumber',
	category varchar(50) comment 'Category',
	classification varchar(50) comment 'Classification',
	confirmationdelay datetime comment 'ConfirmationDelay',
	barcodetype varchar(50) comment 'BarcodeType',
	customeridentifier varchar(255) comment 'CustomerIdentifier',
	poextendeddatastatusindicator varchar(255) comment 'PoExtendedDataStatusIndicator',
	vascutoffdate datetime comment 'VASCutoffDate',
	shippinginstruction varchar(50) comment 'ShippingInstruction',
	technicalnotation varchar(255) comment 'TechnicalNotation',
	caselottext varchar(255) comment 'CaseLotText',
	caselot2text varchar(255) comment 'CaseLot2Text',
	caselot2qty varchar(10) comment 'CaseLot2Qty',
	caselot2ratio varchar(50) comment 'CaseLot2Ratio',
	caselot3text varchar(255) comment 'CaseLot3Text',
	caselot3qty varchar(10) comment 'CaseLot3Qty',
	caselot3ratio varchar(50) comment 'CaseLot3Ratio',
	caselot4text varchar(255) comment 'CaseLot4Text',
	caselot4qty varchar(10) comment 'CaseLot4Qty',
	caselot4ratio varchar(50) comment 'CaseLot4Ratio',
	caselot5text varchar(255) comment 'CaseLot5Text',
	caselot5qty varchar(10) comment 'CaseLot5Qty',
	caselot5ratio varchar(50) comment 'CaseLot5Ratio',
	technologyconcept varchar(255) comment 'TechnologyConcept',
	technologyconceptdescription varchar(255) comment 'TechnologyConceptDescription',
	technologycomponent varchar(255) comment 'TechnologyComponent',
	confirmationdelaypd varchar(50) comment 'ConfirmationDelayPd',
	deliverydelaypd varchar(50) comment 'DeliveryDelayPd',
	destinationcountry varchar(50) comment 'DestinationCountry',
	htscodechangeflag varchar(50) comment 'HTSCodeChangeFlag',
	htsflagupdatedtimestamp varchar(50) comment 'HTSFlagUpdatedTimestamp',
	markforaddress varchar(255) comment 'MarkForAddress',
	warehouselocationcode varchar(10) comment 'warehouselocationcode',
	retailercurrencylineitem varchar(10) comment 'RetailerCurrencyLineItem',
	marketdeliverydate datetime comment 'MarketDeliveryDate',
	numberofcartons varchar(10) comment 'NumberOfCartons',
	numberofunits varchar(10) comment 'NumberOfUnits',
	priorityindicator varchar(255) comment 'PriorityIndicator',
	shascodenonus varchar(50) comment 'ShasCodeNonUs',
	totalcartonpieces varchar(10) comment 'TotalCartonPieces',
	zzcust_cntry varchar(255) comment 'ZZCUST_CNTRY',
	mtfcnumber varchar(50) comment 'mtfcNumber',
	newcustomerrequestdate datetime comment 'newCustomerRequestDate',
	newplandate datetime comment 'newPlanDate',
	newfirstproductiondate datetime comment 'newFirstProductionDate',
	newlastproductiondate datetime comment 'new lastProductionDate',
	newpodd datetime comment 'newPodd',
	newpsdd datetime comment 'newPsdd',
	factory_fpd datetime comment 'Factory FPD',
	factory_psdd datetime comment 'Factory PSDD',
	balance decimal comment 'balance',
	assignment_remark varchar(128) comment 'Assignment_remark',
	change_remark varchar(500) comment 'Change_remark',
	original_lc0190_date datetime comment 'originalLc0190Date',
	ppc_order_status varchar(10) comment 'ppc_order_status',
	special_order varchar(10) comment '特殊单',
	date_remark varchar(50) comment 'Date Remark',
	order_remark varchar(256) comment 'order_remark',
	mi_hem_insert varchar(100) comment 'mi_hem_insert',
	mi_logo varchar(50) comment 'mi_logo',
	mi_n_n varchar(50) comment 'mi_n_n',
	mi_print varchar(50) comment 'mi_print',
	mi_stripes varchar(50) comment 'mi_stripes',
	size_type varchar(20) comment 'size_type',
	remark varchar(50) comment 'remark',
	athletic varchar(50) comment 'athletic',
	utc_create datetime comment '创建时间',
	utc_update datetime comment '修改时间',
	order_master_status varchar(1) comment '状态',
	create_by bigint comment '创建人',
	update_by bigint comment '变更人',
	note varchar(1024) comment '备注',
	primary key (order_master_id)
);-- end --

-- begin--worktable_edi_order_size--
drop table if exists worktable_edi_order_size;
create table worktable_edi_order_size (
	edi_order_size_id bigint not null auto_increment ,
	order_master_id bigint comment '订单id',
	size_name varchar(20) comment 'size Name',
	manufacturing_size varchar(20) comment 'manufacturing Size',
	size_quantity varchar(20) comment '数量',
	unit_price varchar(20) comment 'unit Price',
	upc_code varchar(255) comment 'UPCCode',
	buyer_size_code varchar(255) comment 'buyer Size Code',
	utc_create datetime comment '创建时间',
	utc_update datetime comment '修改时间',
	order_size_status varchar(1) comment '状态',
	create_by bigint comment '创建人',
	update_by bigint comment '变更人',
	note varchar(1024) comment '备注',
	primary key (edi_order_size_id)
);-- end --

-- begin--worktable_edi_order_charge--
drop table if exists worktable_edi_order_charge;
create table worktable_edi_order_charge (
	edi_order_charge_id bigint not null auto_increment ,
	order_master_id bigint comment '订单id',
	charge_code varchar(255) comment 'charge Code',
	amount varchar(20) comment '数量',
	charge_type varchar(20) comment 'charge_type',
	rate varchar(20) comment 'rate',
	utc_create datetime comment '创建时间',
	utc_update datetime comment '修改时间',
	order_charge_status varchar(1) comment '状态',
	create_by bigint comment '创建人',
	update_by bigint comment '变更人',
	note varchar(1024) comment '备注',
	primary key (edi_order_charge_id)
);-- end --

-- begin--worktable_edi_order_fob--
drop table if exists worktable_edi_order_fob;
create table worktable_edi_order_fob (
	edi_order_fob_id bigint not null auto_increment ,
	order_master_id bigint comment '订单id',
	united_nationlocation_code varchar(255) comment 'UnitedNationLocationCode',
	incoterm varchar(255) comment 'Incoterm',
	fob_status varchar(20) comment 'FOBStatus',
	utc_create datetime comment '创建时间',
	utc_update datetime comment '修改时间',
	order_fob_status varchar(1) comment '状态',
	create_by bigint comment '创建人',
	update_by bigint comment '变更人',
	note varchar(1024) comment '备注',
	primary key (edi_order_fob_id)
);-- end --

-- begin--worktable_edi_order_carrier--
drop table if exists worktable_edi_order_carrier;
create table worktable_edi_order_carrier (
	edi_order_fob_id bigint not null auto_increment ,
	order_master_id bigint comment '订单id',
	carrier_detail varchar(255) comment 'CarrierDetail',
	utc_create datetime comment '创建时间',
	utc_update datetime comment '修改时间',
	order_carrier_status varchar(1) comment '状态',
	create_by bigint comment '创建人',
	update_by bigint comment '变更人',
	note varchar(1024) comment '备注',
	primary key (edi_order_fob_id)
);-- end --

-- begin--worktable_edi_order_parties--
drop table if exists worktable_edi_order_parties;
create table worktable_edi_order_parties (
	edi_order_parties_id bigint not null auto_increment ,
	order_master_id bigint comment '订单id',
	type varchar(10) comment 'type',
	party_name varchar(255) comment 'party name',
	additional_name_information varchar(255) comment 'Additional Name Information',
	address_infomation varchar(128) comment 'Address Information ',
	geographic_location varchar(255) comment 'Geographic Location',
	reference_information varchar(255) comment 'Reference Information',
	department_number varchar(50) comment 'department number',
	primary_contact varchar(10) comment 'Primary Contact',
	tel varchar(255) comment 'tel',
	utc_create datetime comment '创建时间',
	utc_update datetime comment '修改时间',
	order_carrier_status varchar(1) comment '状态',
	create_by bigint comment '创建人',
	update_by bigint comment '变更人',
	note varchar(1024) comment '备注',
	primary key (edi_order_parties_id)
);-- end --

-- begin--worktable_factory_assignment--
drop table if exists worktable_factory_assignment;
create table worktable_factory_assignment (
	fact_assign_id bigint not null auto_increment ,
	assign_source_id bigint comment 'source id',
	assign_source varchar(2) comment 'source',
	order_type varchar(2) comment 'order Type',
	document_id bigint comment 'document id',
	working_no varchar(255) comment 'working no',
	gps_factory varchar(30) comment 'GPS Factory',
	assigned_factory varchar(30) comment 'Assigned Factory',
	last_prod_fact varchar(50) comment 'Last Production Factory',
	organise_type varchar(20) comment 'EU/NON EU',
	order_country varchar(255) comment 'Order Country',
	coo varchar(50) comment 'COO',
	corrected_source varchar(50) comment 'corrected source',
	base_style varchar(50) comment 'base style',
	class_code varchar(255) comment 'Class Code',
	order_group varchar(255) comment 'Order Group',
	brand varchar(255) comment 'Brand ',
	article_no varchar(255) comment 'Article Number',
	product_type varchar(50) comment 'Product Type',
	art_lead_time int comment 'Article Lead time',
	request_date datetime comment 'Request Date',
	season varchar(255) comment 'season',
	total_qty varchar(255) comment 'Total Qty',
	utc_create datetime comment '创建时间',
	utc_update datetime comment '修改时间',
	assign_result_status varchar(1) comment '状态',
	create_by bigint comment '创建人',
	update_by bigint comment '变更人',
	note varchar(1024) comment '备注',
	primary key (fact_assign_id)
);-- end --

-- begin--factory_factory--
drop table if exists factory_factory;
create table factory_factory (
	factory_id bigint not null auto_increment ,
	factory_code varchar(30) comment '工厂代号',
	fact_simp_name varchar(20) comment '工厂简称',
	factory_name varchar(255) comment '工厂名称',
	factory_address varchar(255) comment '工厂地址',
	factory_phone_num varchar(30) comment '工厂电话',
	ax_factory_id varchar(10) comment 'AX工厂代码',
	factory_type varchar(1) comment '类型',
	factory_status varchar(1) comment '状态',
	utc_create datetime comment '创建时间',
	utc_update datetime comment '修改时间',
	create_by bigint comment '创建人',
	update_by bigint comment '变更人',
	note varchar(1024) comment '备注',
	primary key (factory_id)
);-- end --

-- begin--process_process--
drop table if exists process_process;
create table process_process (
	process_id bigint not null auto_increment ,
	process_category_id bigint comment 'process category id',
	process_code varchar(30) comment '工序代号',
	process_name varchar(255) comment '工序名称',
	process_type varchar(50) comment '工序类型',
	fr_external_id varchar(10) comment 'FR External ID',
	utc_create datetime comment '创建时间',
	utc_update datetime comment '修改时间',
	process_status varchar(1) comment '状态',
	create_by bigint comment '创建人',
	update_by bigint comment '变更人',
	note varchar(1024) comment '备注',
	primary key (process_id)
);-- end --

-- begin--factory_factory_process--
drop table if exists factory_factory_process;
create table factory_factory_process (
	factory_process_id bigint not null auto_increment ,
	factory_id varchar(30) comment '工厂id',
	process_id bigint comment '工序id',
	process_code varchar(30) comment '工序Code',
	factory_process_type varchar(1) comment '工序类型',
	utc_create datetime comment '创建时间',
	utc_update datetime comment '修改时间',
	create_by bigint comment '创建人',
	update_by bigint comment '变更人',
	note varchar(1024) comment '备注',
	primary key (factory_process_id)
);-- end --

-- begin--factory_factory_loading--
drop table if exists factory_factory_loading;
create table factory_factory_loading (
	factory_loading_id bigint not null auto_increment ,
	factory_id bigint comment '工厂id',
	woven_knit varchar(20) comment 'woven/knit',
	product_type varchar(50) comment 'product Type',
	loading decimal comment 'Loading',
	capacity decimal comment 'Capacity',
	fact_load_type varchar(1) comment 'factory loading type',
	year int comment '年',
	month int comment '月',
	utc_update datetime comment '修改时间',
	create_by bigint comment '创建人',
	update_by bigint comment '变更人',
	note varchar(1024) comment '备注',
	primary key (factory_loading_id)
);-- end --

-- begin--factory_factory_process_loading--
drop table if exists factory_factory_process_loading;
create table factory_factory_process_loading (
	fact_pro_load_id bigint not null auto_increment ,
	factory_id bigint comment '工厂id',
	factory_code varchar(30) comment '工厂code',
	process_id bigint comment '工序id',
	process_code varchar(30) comment 'process code',
	loading decimal comment 'Loading',
	capacity decimal comment 'Capacity',
	year int comment '年',
	month int comment '月',
	utc_update datetime comment '修改时间',
	create_by bigint comment '创建人',
	update_by bigint comment '变更人',
	note varchar(1024) comment '备注',
	primary key (fact_pro_load_id)
);-- end --

-- begin--factory_process_loading--
drop table if exists factory_process_loading;
create table factory_process_loading (
	fact_pro_load_id bigint not null auto_increment ,
	factory_id bigint comment '工厂id',
	factory_code varchar(30) comment '工厂code',
	process_id bigint comment '工序id',
	process_code varchar(30) comment 'process code',
	loading decimal comment 'Loading',
	capacity decimal comment 'Capacity',
	year int comment '年',
	month int comment '月',
	utc_update datetime comment '修改时间',
	create_by bigint comment '创建人',
	update_by bigint comment '变更人',
	note varchar(1024) comment '备注',
	primary key (fact_pro_load_id)
);-- end --

-- begin--factory_loading--
drop table if exists factory_loading;
create table factory_loading (
	factory_loading_id bigint not null auto_increment ,
	factory_id bigint comment '工厂id',
	woven_knit varchar(20) comment 'woven/knit',
	product_type varchar(50) comment 'product Type',
	loading decimal comment 'Loading',
	capacity decimal comment 'Capacity',
	fact_load_type varchar(1) comment 'factory loading type',
	year int comment '年',
	month int comment '月',
	utc_update datetime comment '修改时间',
	create_by bigint comment '创建人',
	update_by bigint comment '变更人',
	note varchar(1024) comment '备注',
	primary key (factory_loading_id)
);-- end --

-- begin--cpo_factory_loading--
drop table if exists cpo_factory_loading;
create table cpo_factory_loading (
	factory_loading_id bigint not null auto_increment ,
	factory_id bigint comment '工厂id',
	woven_knit varchar(20) comment 'woven/knit',
	product_type varchar(50) comment 'product Type',
	cur_doc_loading decimal comment 'cur_doc_loading',
	mkt_fc_loading decimal comment 'mkt fc loading',
	mkt_fc_cur_loading decimal comment 'mkt fc cur loading',
	cus_fc_cur_loading decimal comment 'cus fc cur loading',
	fr_mkt_fc_loading decimal comment 'fr_mkt_fc_loading',
	fr_cus_fc_loading decimal comment 'fr_cus_fc_loading',
	cus_fc_loading decimal comment 'cus fc loading',
	fr_loading decimal comment 'Fast React Loading',
	loading decimal comment 'Loading',
	capacity decimal comment 'Capacity',
	fact_load_type varchar(1) comment 'factory loading type',
	ap_group varchar(255) comment 'ap_group',
	averge_smv decimal comment 'averge smv',
	actual_order_loading_by_qty decimal comment 'actual_order_loading_by_qty',
	cf_order_loading_by_qty decimal comment 'cf_order_loading_by_qty',
	mf_order_loading_by_qty decimal comment 'mf_order_loading_by_qty',
	actual_order_cur_loading_by_qty decimal comment 'actual_order_cur_loading_by_qty',
	cf_order_cur_loading_by_qty decimal comment 'cf_order_cur_loading_by_qty',
	mf_order_cur_loading_by_qty decimal comment 'mf_order_cur_loading_by_qty',
	cus_fc_sub_loading decimal comment 'cus_fc_sub_loading',
	cus_fc_sub_loading_by_qty decimal comment 'cus_fc_sub_loading_by_qty',
	year int comment '年',
	month int comment '月',
	utc_update datetime comment '修改时间',
	create_by bigint comment '创建人',
	update_by bigint comment '变更人',
	note varchar(1024) comment '备注',
	primary key (factory_loading_id)
);-- end --

-- begin--cpo_factory_process_loading--
drop table if exists cpo_factory_process_loading;
create table cpo_factory_process_loading (
	fact_pro_load_id bigint not null auto_increment ,
	factory_id bigint comment '工厂id',
	factory_code varchar(30) comment '工厂code',
	process_id bigint comment '工序id',
	process_code varchar(30) comment 'process code',
	loading decimal comment 'Loading',
	mkt_fc_loading decimal comment 'mkt fc loading',
	cus_fc_loading decimal comment 'cus fc loading',
	mkt_fc_cur_loading decimal comment 'mkt fc cur loading',
	cus_fc_cur_loading decimal comment 'cus fc cur loading',
	cur_loading decimal comment 'cur loading',
	capacity decimal comment 'Capacity',
	fr_order_loading decimal comment 'fr_order_loading',
	fr_cf_loading decimal comment 'fr_cf_loading',
	fr_mf_loading decimal comment 'fr_mf_loading',
	cus_fc_sub_loading decimal comment 'cus_fc_sub_loading',
	year int comment '年',
	month int comment '月',
	utc_update datetime comment '修改时间',
	create_by bigint comment '创建人',
	update_by bigint comment '变更人',
	note varchar(1024) comment '备注',
	primary key (fact_pro_load_id)
);-- end --

-- begin--cpo_worktable_factory_assignment--
drop table if exists cpo_worktable_factory_assignment;
create table cpo_worktable_factory_assignment (
	fact_assign_id bigint not null auto_increment ,
	assign_source_id bigint comment 'source id',
	assign_source varchar(2) comment 'source',
	order_type varchar(2) comment 'order Type',
	document_id bigint comment 'document id',
	working_no varchar(255) comment 'working no',
	gps_factory varchar(30) comment 'GPS Factory',
	assigned_factory varchar(30) comment 'Assigned Factory',
	last_prod_fact varchar(50) comment 'Last Production Factory',
	organise_type varchar(20) comment 'EU/NON EU',
	order_country varchar(255) comment 'Order Country',
	coo varchar(50) comment 'COO',
	corrected_source varchar(50) comment 'corrected source',
	base_style varchar(50) comment 'base style',
	class_code varchar(255) comment 'Class Code',
	order_group varchar(255) comment 'Order Group',
	brand varchar(255) comment 'Brand ',
	article_no varchar(255) comment 'Article Number',
	product_type varchar(50) comment 'Product Type',
	art_lead_time int comment 'Article Lead time',
	request_date datetime comment 'Request Date',
	season varchar(255) comment 'season',
	total_qty varchar(255) comment 'Total Qty',
	utc_create datetime comment '创建时间',
	utc_update datetime comment '修改时间',
	assign_result_status varchar(1) comment '状态',
	create_by bigint comment '创建人',
	update_by bigint comment '变更人',
	note varchar(1024) comment '备注',
	primary key (fact_assign_id)
);-- end --

-- begin--cpo_sms_pre_order--
drop table if exists cpo_sms_pre_order;
create table cpo_sms_pre_order (
	sms_pre_order_id bigint not null auto_increment ,
	document_id bigint comment 'document id',
	customer_no varchar(50) comment 'customer_no',
	product_factory varchar(30) comment 'product_factory',
	article_number varchar(30) comment 'article_number',
	quantity varchar(20) comment 'quantity',
	working_no varchar(50) comment 'working_no',
	lo_no varchar(10) comment 'lo_no',
	model_no varchar(30) comment 'model_no',
	model_name varchar(255) comment 'model_name',
	assigned_factory varchar(10) comment 'assigned_factory',
	pre_ord_id varchar(20) comment 'pre_ord_id',
	season varchar(5) comment 'Season',
	utc_create datetime comment '创建时间',
	utc_update datetime comment '修改时间',
	work_no_status varchar(2) comment '状态',
	create_by bigint comment '创建人',
	update_by bigint comment '变更人',
	note varchar(1024) comment '备注',
	primary key (sms_pre_order_id)
);-- end --

-- begin--cpo_mi_order_record--
drop table if exists cpo_mi_order_record;
create table cpo_mi_order_record (
	mi_order_id bigint not null auto_increment ,
	document_id bigint comment 'document id',
	working_no varchar(255) comment 'Working Number',
	gps_factory varchar(30) comment 'GPS Factory',
	assigned_factory varchar(30) comment 'Assigned Factory',
	po_number varchar(255) comment 'PO Number',
	customer_no varchar(255) comment 'Customer Number',
	article_no varchar(255) comment 'Article Number',
	article_description varchar(512) comment 'Article Description',
	class_code varchar(255) comment 'Class Code',
	order_group varchar(255) comment 'Order Group',
	brand varchar(255) comment 'Brand ',
	total_qty varchar(255) comment 'Total Qty',
	price_per_unit varchar(255) comment 'Price Per Unit',
	cust_size_run varchar(10) comment 'Customer Size Run',
	tech_notation varchar(10) comment 'Technical Notation',
	customer_size varchar(10) comment 'Customer Size',
	tech_size varchar(10) comment 'Technical Size',
	order_qty varchar(255) comment 'Ordered Qty',
	shipped_qty varchar(10) comment 'Shipped Qty',
	division varchar(10) comment 'Division',
	classification varchar(255) comment 'Classification ',
	warehourse varchar(255) comment 'Warehouse',
	cust_req_date varchar(255) comment 'Customer Request Date',
	plan_date varchar(255) comment 'Plan Date',
	po_batch_date varchar(255) comment 'PO Batch Date',
	first_prod_date varchar(255) comment 'First Production Date',
	last_prod_date varchar(255) comment 'Last Production Date',
	ship_instruction varchar(255) comment 'Shipping Instruction',
	remark varchar(512) comment 'Remark',
	tech_concept varchar(255) comment 'Technology Concept',
	tech_concept_desc varchar(512) comment 'Technology Concept Description',
	tech_comp_desc varchar(512) comment 'Technology Component Description',
	prior_indication varchar(64) comment 'Priority Indicator',
	subs_ship_to_no varchar(255) comment 'Subsidiary Ship-To Number',
	vas_shas_code_non_us varchar(255) comment 'VAS/SHAS Code Non-US',
	for_account_of varchar(255) comment 'For Account Of',
	seller varchar(255) comment 'Seller',
	ship_mode varchar(255) comment 'Ship Mode',
	cust_order_no varchar(255) comment 'Customer Order Number',
	order_type varchar(255) comment 'Order Type',
	release_status varchar(255) comment 'Release Status',
	shipped_status varchar(255) comment 'ShippedStatus',
	mtfc_number varchar(255) comment 'MTFC Number',
	client_number varchar(255) comment 'Client Number',
	purc_group_code varchar(255) comment 'Purchasing Group Code',
	contract_number varchar(255) comment 'Contract Number',
	types varchar(255) comment 'Types',
	last_update_date varchar(255) comment 'Last Update Date',
	model_number varchar(255) comment 'Model Number',
	model_name varchar(255) comment 'Model Name',
	gender varchar(255) comment 'Gender',
	busi_model_attr varchar(255) comment 'Business Model Attribute',
	psdd varchar(255) comment 'PSDD',
	podd varchar(255) comment 'PODD',
	comfirm_delay varchar(255) comment 'Confirmation Delay',
	delivery_delay varchar(255) comment 'Delivery Delay',
	mark_for_addr varchar(512) comment 'Mark for Address',
	total_mechan_amount varchar(255) comment 'Total Mechandise Amount',
	total_tax_amount varchar(255) comment 'Total Tax Amount',
	total_adjustsment varchar(255) comment 'Total Adjustments',
	total_doc_amount varchar(255) comment 'Total Document Amount',
	utc_create datetime comment '创建时间',
	utc_update datetime comment '修改时间',
	status int comment '状态',
	create_by bigint comment '创建人',
	update_by bigint comment '变更人',
	note varchar(1024) comment '备注',
	primary key (mi_order_id)
);-- end --

-- begin--cpo_factory_group--
drop table if exists cpo_factory_group;
create table cpo_factory_group (
	factory_group_id bigint not null auto_increment ,
	ap_group_code varchar(128) comment 'ap group code',
	fact_simp_name varchar(20) comment '工厂简称',
	knit_woven varchar(50) comment '针织梭织',
	product_type varchar(128) comment '产品类型',
	ap_group varchar(128) comment 'AP group',
	plan_group varchar(128) comment 'plan_group',
	utc_create datetime comment '创建时间',
	utc_update datetime comment '修改时间',
	create_by bigint comment '创建人',
	update_by bigint comment '变更人',
	note varchar(1024) comment '备注',
	primary key (factory_group_id)
);-- end --

-- begin--cpo_high_level_plan--
drop table if exists cpo_high_level_plan;
create table cpo_high_level_plan (
	high_level_plan_id bigint not null auto_increment ,
	mo varchar(255) comment 'MO',
	plan_start_date datetime comment 'PLAN START DATE',
	plan_end_date datetime comment 'PLAN END DATE',
	create_time datetime comment 'CREATETIME',
	plan_group varchar(255) comment 'PLAN GROUP',
	utc_create datetime comment '创建时间',
	utc_update datetime comment '修改时间',
	high_level_plan_status varchar(1) comment '状态',
	create_by bigint comment '创建人',
	update_by bigint comment '变更人',
	note varchar(1024) comment '备注',
	primary key (high_level_plan_id)
);-- end --

-- begin--cpo_process_criteria--
drop table if exists cpo_process_criteria;
create table cpo_process_criteria (
	process_criteria_id bigint not null auto_increment ,
	process_type varchar(50) comment '工序类型',
	process_id bigint comment '工序id',
	factory_id varchar(255) comment '工厂id',
	criteria_version_id bigint comment '标准版本id',
	mandatory varchar(1) comment '强制性',
	process_score int comment '分数',
	criteria_status varchar(2) comment '状态',
	start_date datetime comment '生效时间',
	end_date datetime comment '失效时间',
	utc_create datetime comment '创建时间',
	utc_update datetime comment '修改时间',
	create_by bigint comment '创建人',
	update_by bigint comment '变更人',
	note varchar(1024) comment '备注',
	primary key (process_criteria_id)
);-- end --

-- begin--cpo_fr_master_data--
drop table if exists cpo_fr_master_data;
create table cpo_fr_master_data (
	fr_master_data_id bigint not null auto_increment ,
	document_id bigint comment 'document_id',
	fact_assign_id bigint comment 'Factory assignment id',
	assign_result_id bigint comment 'assign_result_id',
	b_number varchar(50) comment 'B_number',
	size_group varchar(50) comment 'size group',
	code varchar(30) comment 'A unique planning order reference(MO)',
	prod varchar(30) comment 'The product/style for this order',
	cust varchar(15) comment 'The customer for this order',
	dd datetime comment 'The required delivery date for the order',
	dq int comment 'The required delivery quantiy for the order',
	ex_status varchar(30) comment 'The order extend status',
	order_set varchar(20) comment 'The order set that order belong to order',
	ud_sport_code varchar(50) comment 'ud_sport_code',
	product_type varchar(30) comment 'product_type',
	ud_client_code varchar(20) comment 'ud_client_code',
	fabric_type varchar(20) comment 'fabric type',
	size_name_1 varchar(25) comment 'Size name 1',
	size_ratio_1 int comment 'size ratio 1',
	size_name_2 varchar(25) comment 'Size name 2',
	size_ratio_2 int comment 'size ratio 2',
	size_name_3 varchar(25) comment 'Size name 3',
	size_ratio_3 int comment 'size ratio 3',
	size_name_4 varchar(25) comment 'Size name 4',
	size_ratio_4 int comment 'size ratio 4',
	size_name_5 varchar(25) comment 'Size name 5',
	size_ratio_5 int comment 'size ratio 5',
	size_name_6 varchar(25) comment 'Size name 6',
	size_ratio_6 int comment 'size ratio 6',
	size_name_7 varchar(25) comment 'Size name 7',
	size_ratio_7 int comment 'size ratio 7',
	size_name_8 varchar(25) comment 'Size name 8',
	size_ratio_8 int comment 'size ratio 8',
	size_name_9 varchar(25) comment 'Size name 9',
	size_ratio_9 int comment 'size ratio 9',
	size_name_10 varchar(25) comment 'Size name 10',
	size_ratio_10 int comment 'size ratio 10',
	size_name_11 varchar(25) comment 'Size name 11',
	size_ratio_11 int comment 'size ratio 11',
	size_name_12 varchar(25) comment 'Size name 12',
	size_ratio_12 int comment 'size ratio 12',
	size_name_13 varchar(25) comment 'Size name 13',
	size_ratio_13 int comment 'size ratio 13',
	size_name_14 varchar(25) comment 'Size name 14',
	size_ratio_14 int comment 'size ratio 14',
	size_name_15 varchar(25) comment 'Size name 15',
	size_ratio_15 int comment 'size ratio 15',
	size_name_16 varchar(25) comment 'Size name 16',
	size_ratio_16 int comment 'size ratio 16',
	size_name_17 varchar(25) comment 'Size name 17',
	size_ratio_17 int comment 'size ratio 17',
	size_name_18 varchar(25) comment 'Size name 18',
	size_ratio_18 int comment 'size ratio 18',
	size_name_19 varchar(25) comment 'Size name 19',
	size_ratio_19 int comment 'size ratio 19',
	size_name_20 varchar(25) comment 'Size name 20',
	size_ratio_20 int comment 'size ratio 20',
	size_name_21 varchar(25) comment 'Size name 21',
	size_ratio_21 int comment 'size ratio 21',
	size_name_22 varchar(25) comment 'Size name 22',
	size_ratio_22 int comment 'size ratio 22',
	size_name_23 varchar(25) comment 'Size name 23',
	size_ratio_23 int comment 'size ratio 23',
	size_name_24 varchar(25) comment 'Size name 24',
	size_ratio_24 int comment 'size ratio 24',
	size_name_25 varchar(25) comment 'Size name 25',
	size_ratio_25 int comment 'size ratio 25',
	size_name_26 varchar(25) comment 'Size name 26',
	size_ratio_26 int comment 'size ratio 26',
	size_name_27 varchar(25) comment 'Size name 27',
	size_ratio_27 int comment 'size ratio 27',
	size_name_28 varchar(25) comment 'Size name 28',
	size_ratio_28 int comment 'size ratio 28',
	size_name_29 varchar(25) comment 'Size name 29',
	size_ratio_29 int comment 'size ratio 29',
	size_name_30 varchar(25) comment 'Size name 30',
	size_ratio_30 int comment 'size ratio 30',
	size_name_31 varchar(25) comment 'Size name 31',
	size_ratio_31 int comment 'size ratio 31',
	size_name_32 varchar(25) comment 'Size name 32',
	size_ratio_32 int comment 'size ratio 32',
	size_name_33 varchar(25) comment 'Size name 33',
	size_ratio_33 int comment 'size ratio 33',
	size_name_34 varchar(25) comment 'Size name 34',
	size_ratio_34 int comment 'size ratio 34',
	size_name_35 varchar(25) comment 'Size name 35',
	size_ratio_35 int comment 'size ratio 35',
	ud_batch_date varchar(15) comment 'A order user defined field',
	status varchar(15) comment '状态',
	descrip varchar(50) comment 'A order description',
	time varchar(15) comment 'A timetable name of the order',
	ap_group varchar(15) comment 'A valid FastReact planning group',
	ud_fty_id varchar(15) comment '工厂code',
	ud_model varchar(15) comment '',
	ud_article varchar(15) comment 'A article No. for the order',
	ud_customer_no varchar(15) comment 'A order s cust No.',
	ud_country varchar(15) comment 'The country name of the order',
	ud_fty_name varchar(15) comment 'The Fty name',
	ud_classic_code varchar(15) comment 'The Classic code of the order',
	ud_special_wmsp varchar(15) comment '特殊工序',
	ud_eu_non_eu varchar(15) comment '是否欧盟',
	ud_shipment_fty varchar(15) comment 'Shipment Fty name',
	ud_count_fty varchar(15) comment '计数工厂',
	ud_168_no varchar(30) comment '168 No. for the order',
	dd_style varchar(20) comment 'dd_style',
	ud_tc_psdd datetime comment 'ud_tc_psdd',
	ud_category varchar(15) comment '类型',
	ud_gb16_request_date datetime comment '',
	lc0190_date varchar(15) comment 'LC0190下单日期',
	ud_ord_no varchar(15) comment '订单号',
	ud_plan_date datetime comment '计划日期',
	ud_plan_group varchar(30) comment '计划组',
	ud_plan_month varchar(15) comment '计划月份',
	ud_po varchar(30) comment 'pucharse order',
	ud_podd datetime comment '',
	ud_psdd_date datetime comment '走货日期',
	ud_season varchar(15) comment '季度',
	ud_60_day_project varchar(15) comment '',
	ud_loading_port varchar(15) comment '停货港口',
	ud_lpd datetime comment 'EDI.LastProductionDate',
	ud_new_crd datetime comment 'CRD',
	ud_new_pd datetime comment 'PD',
	ud_add_total_date datetime comment '',
	batch_no varchar(10) comment 'batch no',
	smv decimal comment 'smv',
	customer_status varchar(30) comment 'Customer Status',
	ship_mode varchar(10) comment 'Ship Mode',
	ud_service_identify varchar(50) comment 'ud_service_identify',
	special_order_remark varchar(30) comment 'special order remark',
	main_mpo varchar(30) comment 'main mpo',
	last_fabric_pi_eta datetime comment 'last fabric pi eta',
	order_change_date datetime comment 'order_change_date',
	ud_remarks varchar(256) comment 'ud_remarks',
	athlete varchar(50) comment 'athlete',
	utc_create datetime comment '创建时间',
	utc_update datetime comment '修改时间',
	high_level_plan_status varchar(1) comment '状态',
	create_by bigint comment '创建人',
	update_by bigint comment '变更人',
	transfer_status varchar(2) comment '状态',
	note varchar(1024) comment '备注',
	primary key (fr_master_data_id)
);-- end --

-- begin--linkgoo_uploadfile_config--
drop table if exists linkgoo_uploadfile_config;
create table linkgoo_uploadfile_config (
	id bigint not null auto_increment ,
	file_url varchar(255) comment '上传路径',
	file_type_filter varchar(128) comment '文件过滤',
	info_language varchar(30) comment '信息默认语言',
	del_after_day int comment '文件保留天数',
	result_file_url varchar(255) comment '处理结果路径',
	create_by bigint comment '创建者',
	create_time datetime comment '创建时间',
	update_by bigint comment '上次更新者',
	update_time datetime comment '上次更新时间',
	primary key (id)
);-- end --

-- begin--linkgoo_method_config--
drop table if exists linkgoo_method_config;
create table linkgoo_method_config (
	id bigint not null auto_increment ,
	method varchar(128) comment '处理方法',
	method_name varchar(128) comment '处理方法名',
	create_by bigint comment '创建者',
	create_time datetime comment '创建时间',
	update_by bigint comment '上次更新者',
	update_time datetime comment '上次更新时间',
	primary key (id)
);-- end --

-- begin--linkgoo_task--
drop table if exists linkgoo_task;
create table linkgoo_task (
	id bigint not null auto_increment ,
	original_file_url varchar(255) comment '文件路径',
	name varchar(255) comment '文件名',
	original_name varchar(255) comment '原文件名',
	processing_schedule int comment '处理进度',
	method varchar(128) comment '处理方法',
	status int comment '状态',
	begin_time datetime comment '处理开始时间',
	finish_time datetime comment '处理结束时间',
	del_after_day int comment '文件保留天数',
	summary_language varchar(30) comment '概述默认语言',
	result_summary varchar(255) comment '处理结果汇总',
	result_file_url varchar(255) comment '处理结果路径',
	result_name varchar(255) comment '处理结果文件名',
	create_by bigint comment '创建者',
	create_time datetime comment '创建时间',
	update_by bigint comment '上次更新者',
	update_time datetime comment '上次更新时间',
	primary key (id)
);-- end --

-- begin--linkgoo_import_table_rule--
drop table if exists linkgoo_import_table_rule;
create table linkgoo_import_table_rule (
	id bigint not null auto_increment ,
	method varchar(128) comment '处理方法',
	next_method_class varchar(255) comment '下一步骤Class',
	next_method varchar(128) comment '下一步骤',
	next_method_parameter varchar(8000) comment '下一步骤参数',
	end_sign varchar(30) comment '结束标识',
	header_index int comment '标题行索引',
	data_index int comment '数据行索引',
	table_name varchar(255) comment '表名称',
	delete_repeat int comment '是否删除重复行',
	insert_no int comment '每次导入记录数',
	is_valid int comment '是否有效',
	sort int comment '顺序',
	f1 varchar(255) comment '扩展字段1',
	f2 varchar(255) comment '扩展字段2',
	f3 varchar(255) comment '扩展字段3',
	f4 varchar(255) comment '扩展字段4',
	f5 varchar(255) comment '扩展字段5',
	create_by bigint comment '创建者',
	create_time datetime comment '创建时间',
	update_by bigint comment '上次更新者',
	update_time datetime comment '上次更新时间',
	primary key (id)
);-- end --

-- begin--linkgoo_import_column_rule--
drop table if exists linkgoo_import_column_rule;
create table linkgoo_import_column_rule (
	id bigint not null auto_increment ,
	upa_import_table_rule_id bigint comment '导入表规则ID',
	table_name varchar(255) comment '表名',
	field_name varchar(255) comment '表字段名',
	is_pk int comment '是否是主键',
	is_unique int comment '是否唯一 ',
	column_name varchar(255) comment '列名称',
	header_name varchar(255) comment '对应excel列头',
	required int comment '是否必须填入',
	data_type varchar(50) comment '数据类型',
	max_length int comment '允许最大存储长度 ',
	produce_method int comment '生成方法',
	produce_method_value varchar(8000) comment '生成方法值 ',
	is_dictionary int comment '是否属于字典',
	dic_table_name varchar(255) comment '字典表名称',
	dic_type_column varchar(255) comment '字典类型字段名',
	dic_type_value varchar(50) comment '字典类型',
	dic_required_column varchar(255) comment '字典获取值列的名称',
	dic_reference_column varchar(255) comment '字典表参考列的名称',
	is_valid int comment '是否有效',
	f1 varchar(255) comment '扩展字段1',
	f2 varchar(255) comment '扩展字段2',
	f3 varchar(255) comment '扩展字段3',
	f4 varchar(255) comment '扩展字段4',
	f5 varchar(255) comment '扩展字段5',
	create_by bigint comment '创建者',
	create_time datetime comment '创建时间',
	update_by bigint comment '上次更新者',
	update_time datetime comment '上次更新时间',
	primary key (id)
);-- end --

-- begin--linkgoo_import_value_rule--
drop table if exists linkgoo_import_value_rule;
create table linkgoo_import_value_rule (
	id bigint not null auto_increment ,
	produce_method_value varchar(255) comment '生成方法值 ',
	rule_content varchar(8000) comment '内容',
	is_valid int comment '是否有效',
	f1 varchar(255) comment '扩展字段1',
	f2 varchar(255) comment '扩展字段2',
	f3 varchar(255) comment '扩展字段3',
	f4 varchar(255) comment '扩展字段4',
	f5 varchar(255) comment '扩展字段5',
	create_by bigint comment '创建者',
	create_time datetime comment '创建时间',
	update_by bigint comment '上次更新者',
	update_time datetime comment '上次更新时间',
	primary key (id)
);-- end --

-- begin--linkgoo_export_column_rule--
drop table if exists linkgoo_export_column_rule;
create table linkgoo_export_column_rule (
	id bigint not null auto_increment ,
	entry_code varchar(128) comment '实体code',
	field_name varchar(255) comment '实体属性名',
	export_column_name varchar(255) comment 'excel表头',
	sort int comment '顺序',
	tips varchar(255) comment 'tips',
	combos varchar(512) comment '下来内容',
	f1 varchar(255) comment '扩展字段1',
	f2 varchar(255) comment '扩展字段2',
	f3 varchar(255) comment '扩展字段3',
	f4 varchar(255) comment '扩展字段4',
	f5 varchar(255) comment '扩展字段5',
	create_by bigint comment '创建者',
	create_time datetime comment '创建时间',
	update_by bigint comment '上次更新者',
	update_time datetime comment '上次更新时间',
	primary key (id)
);-- end --

-- begin--worktable_edi_order_log--
drop table if exists worktable_edi_order_log;
create table worktable_edi_order_log (
	edi_order_log_id bigint not null auto_increment ,
	edi_order varchar(8000) comment 'ediorder',
	log_message varchar(8000) comment 'log_message',
	start_time datetime comment '开始时间',
	end_time datetime comment '结束时间',
	utc_create datetime comment '创建时间',
	utc_update datetime comment '修改时间',
	order_log_status varchar(5) comment '状态',
	create_by bigint comment '创建人',
	update_by bigint comment '变更人',
	note varchar(1024) comment '备注',
	primary key (edi_order_log_id)
);-- end --

-- begin--cpo_mi_forecast--
drop table if exists cpo_mi_forecast;
create table cpo_mi_forecast (
	mi_forecast_id bigint not null auto_increment ,
	document_id bigint comment 'document id',
	mi_div varchar(50) comment 'mi_Div',
	factory varchar(255) comment 'factory',
	customer varchar(255) comment 'customer',
	model_name varchar(255) comment 'model name',
	last_update varchar(255) comment 'last update',
	january varchar(10) comment 'January',
	february varchar(10) comment 'February',
	march varchar(10) comment 'March',
	april varchar(10) comment 'April',
	may varchar(10) comment 'May',
	june varchar(10) comment 'June',
	july varchar(10) comment 'July',
	august varchar(10) comment 'August',
	september varchar(10) comment 'September',
	october varchar(10) comment 'October',
	november varchar(10) comment 'November',
	december varchar(10) comment 'December',
	utc_create datetime comment '创建时间',
	utc_update datetime comment '修改时间',
	status int comment '状态',
	create_by bigint comment '创建人',
	update_by bigint comment '变更人',
	note varchar(1024) comment '备注',
	primary key (mi_forecast_id)
);-- end --

-- begin--cpo_document_log--
drop table if exists cpo_document_log;
create table cpo_document_log (
	document_log_id bigint not null auto_increment ,
	document_id bigint comment '文档信息id',
	document_name varchar(255) comment '文档名',
	document_url varchar(500) comment '文档路径',
	document_type varchar(2) comment '文档类型',
	source varchar(50) comment '文档来源',
	start_time datetime comment '开始时间',
	end_time datetime comment '结束时间',
	utc_create datetime comment '创建时间',
	create_by bigint comment '创建人',
	note varchar(1024) comment '备注',
	primary key (document_log_id)
);-- end --

-- begin--cpo_a_chian_buy_plan--
drop table if exists cpo_a_chian_buy_plan;
create table cpo_a_chian_buy_plan (
	a_china_buy_plan_id bigint not null auto_increment ,
	document_id bigint comment 'document id',
	season varchar(10) comment 'Season',
	assigned_factory varchar(10) comment 'Assigned_factory',
	develop_sourcing varchar(255) comment 'DEVELOP SOURCING',
	season_of_tm varchar(255) comment 'SEASON OF TM',
	ib_po_no varchar(255) comment 'IB PO NO',
	sap_order_no varchar(255) comment 'SAP ORDER NO',
	working_no varchar(30) comment 'WORKING NO',
	model_no varchar(30) comment 'MODEL NO',
	article_no varchar(30) comment 'ARTICLE NO',
	model_name varchar(255) comment 'MODEL NAME',
	division varchar(30) comment 'DIVISION',
	gender varchar(10) comment 'GENDER',
	local_drop varchar(10) comment 'LOCAL DROP',
	category varchar(50) comment 'CATEGORY',
	themes varchar(50) comment 'THEMES',
	priority_tracking varchar(30) comment 'PRIORITY TRACKING',
	owr_launch_date varchar(30) comment 'OWR LAUNCH DATE',
	crd_in_system varchar(30) comment 'CRD IN SYSTEM',
	sourcing_channel varchar(30) comment 'SOURCING CHANNEL',
	sourcing_group varchar(30) comment 'SOURCING GROUP',
	sourcing_origin varchar(30) comment 'SOURCING ORIGIN',
	manufactory varchar(255) comment 'MANUFACTORY',
	int_l_vendor_code varchar(30) comment 'INT'L VENDOR CODE',
	lo varchar(100) comment 'LO',
	ds_fty_code varchar(30) comment 'DS fty code',
	lead_time varchar(10) comment 'LEAD TIME',
	shipping_mode varchar(30) comment 'SHIPPING MODE',
	buy_ready_cut_off varchar(30) comment 'BUY-READY CUT-OFF',
	actual_cut_off varchar(30) comment 'ACTUAL CUT OFF',
	brand_ii varchar(128) comment 'BRAND II',
	ils_fc_qty varchar(10) comment 'ILS FC QTY',
	size_name1 varchar(10) comment 'size_name1',
	size_quantity1 int comment 'size_quantity1',
	size_name2 varchar(10) comment 'size_name2',
	size_quantity2 int comment 'size_quantity2',
	size_name3 varchar(10) comment 'size_name3',
	size_quantity3 int comment 'size_quantity3',
	size_name4 varchar(10) comment 'size_name4',
	size_quantity4 int comment 'size_quantity4',
	size_name5 varchar(10) comment 'size_name5',
	size_quantity5 int comment 'size_quantity5',
	size_name6 varchar(10) comment 'size_name6',
	size_quantity6 int comment 'size_quantity6',
	size_name7 varchar(10) comment 'size_name7',
	size_quantity7 int comment 'size_quantity7',
	size_name8 varchar(10) comment 'size_name8',
	size_quantity8 int comment 'size_quantity8',
	size_name9 varchar(10) comment 'size_name9',
	size_quantity9 int comment 'size_quantity9',
	size_name10 varchar(10) comment 'size_name10',
	size_quantity10 int comment 'size_quantity10',
	size_name11 varchar(10) comment 'size_name11',
	size_quantity11 int comment 'size_quantity11',
	size_name12 varchar(10) comment 'size_name12',
	size_quantity12 int comment 'size_quantity12',
	size_name13 varchar(10) comment 'size_name13',
	size_quantity13 int comment 'size_quantity13',
	size_name14 varchar(10) comment 'size_name14',
	size_quantity14 int comment 'size_quantity14',
	size_name15 varchar(10) comment 'size_name15',
	size_quantity15 int comment 'size_quantity15',
	size_name16 varchar(10) comment 'size_name16',
	size_quantity16 int comment 'size_quantity16',
	size_name17 varchar(10) comment 'size_name17',
	size_quantity17 int comment 'size_quantity17',
	size_name18 varchar(10) comment 'size_name18',
	size_quantity18 int comment 'size_quantity18',
	size_name19 varchar(10) comment 'size_name19',
	size_quantity19 int comment 'size_quantity19',
	size_name20 varchar(10) comment 'size_name20',
	size_quantity20 int comment 'size_quantity20',
	size_name21 varchar(10) comment 'size_name21',
	size_quantity21 int comment 'size_quantity21',
	size_name22 varchar(10) comment 'size_name22',
	size_quantity22 int comment 'size_quantity22',
	size_name23 varchar(10) comment 'size_name23',
	size_quantity23 int comment 'size_quantity23',
	size_name24 varchar(10) comment 'size_name24',
	size_quantity24 int comment 'size_quantity24',
	size_name25 varchar(10) comment 'size_name25',
	size_quantity25 int comment 'size_quantity25',
	size_name26 varchar(10) comment 'size_name26',
	size_quantity26 int comment 'size_quantity26',
	size_name27 varchar(10) comment 'size_name27',
	size_quantity27 int comment 'size_quantity27',
	size_name28 varchar(10) comment 'size_name28',
	size_quantity28 int comment 'size_quantity28',
	size_name29 varchar(10) comment 'size_name29',
	size_quantity29 int comment 'size_quantity29',
	size_name30 varchar(10) comment 'size_name30',
	size_quantity30 int comment 'size_quantity30',
	consolidation_qty varchar(10) comment 'CONSOLIDATION  QTY',
	po_qty varchar(10) comment 'PO QTY',
	size_pattern varchar(30) comment 'SIZE PATTERN',
	size_run varchar(30) comment 'SIZE RUN',
	priority varchar(30) comment 'Priority',
	utc_create datetime comment '创建时间',
	utc_update datetime comment '修改时间',
	a_chian_buy_plan_status varchar(1) comment '状态',
	create_by bigint comment '创建人',
	update_by bigint comment '变更人',
	note varchar(1024) comment '备注',
	primary key (a_china_buy_plan_id)
);-- end --

-- begin--cpo_fr_export_data_dict--
drop table if exists cpo_fr_export_data_dict;
create table cpo_fr_export_data_dict (
	fr_export_dict_id bigint not null auto_increment ,
	entry_code varchar(50) comment '实体code',
	entry_field_name varchar(50) comment '实体字段名',
	export_field_name varchar(50) comment '输出字段名',
	f1 varchar(50) comment '动态字段1',
	f2 varchar(50) comment '动态字段2',
	f3 varchar(50) comment '动态字段3',
	f4 varchar(50) comment '动态字段4',
	f5 varchar(50) comment '动态字段5',
	f6 varchar(50) comment '动态字段6',
	f7 varchar(50) comment '动态字段7',
	f8 varchar(50) comment '动态字段8',
	utc_create datetime comment '创建时间',
	utc_update datetime comment '修改时间',
	fr_export_dict_status varchar(1) comment '状态',
	create_by bigint comment '创建人',
	update_by bigint comment '变更人',
	note varchar(1024) comment '备注',
	primary key (fr_export_dict_id)
);-- end --

-- begin--cpo_fr_high_level_plan--
drop table if exists cpo_fr_high_level_plan;
create table cpo_fr_high_level_plan (
	high_level_plan_id bigint not null auto_increment ,
	mo varchar(255) comment 'MO',
	plan_start_date datetime comment 'PLAN START DATE',
	plan_end_date datetime comment 'PLAN END DATE',
	create_time datetime comment 'CREATETIME',
	plan_group varchar(255) comment 'PLAN GROUP',
	utc_create datetime comment '创建时间',
	utc_update datetime comment '修改时间',
	high_level_plan_status varchar(1) comment '状态',
	create_by bigint comment '创建人',
	update_by bigint comment '变更人',
	note varchar(1024) comment '备注',
	primary key (high_level_plan_id)
);-- end --

-- begin--cpo_fr_low_level_plan--
drop table if exists cpo_fr_low_level_plan;
create table cpo_fr_low_level_plan (
	low_level_plan_id bigint not null auto_increment ,
	factory_code varchar(255) comment 'factoryCode',
	factory varchar(255) comment 'factory',
	ap_group varchar(255) comment 'GROUP',
	product_line varchar(255) comment 'LINE',
	mo varchar(255) comment 'ORDER',
	product varchar(255) comment 'PRODUCT',
	customer varchar(255) comment 'CUSTOMER',
	plan_qty varchar(255) comment 'PLAN QTY',
	production_start_date varchar(255) comment 'PRODUCTION START DATE',
	production_end_date varchar(255) comment 'PRODUCTION END DATE',
	plan_per_day varchar(255) comment 'PLAN PER DAY',
	utc_create datetime comment '创建时间',
	utc_update datetime comment '修改时间',
	low_level_plan_status varchar(1) comment '状态',
	create_by bigint comment '创建人',
	update_by bigint comment '变更人',
	note varchar(1024) comment '备注',
	primary key (low_level_plan_id)
);-- end --

-- begin--cpo_slt_forecast--
drop table if exists cpo_slt_forecast;
create table cpo_slt_forecast (
	slt_forecast_id bigint not null auto_increment ,
	document_id bigint comment 'document id',
	division varchar(10) comment 'division',
	brand varchar(50) comment 'Brand',
	supply_chain_track varchar(10) comment 'Supply Chain Track',
	season varchar(10) comment 'Season',
	period varchar(10) comment 'Period',
	working_no varchar(50) comment 'Working No',
	tooling_number varchar(10) comment 'Tooling Number',
	sport_code varchar(255) comment 'Sports Code',
	business_segment varchar(255) comment 'Business Segment',
	model varchar(10) comment 'Model',
	article_code varchar(10) comment 'ArticleCode',
	article varchar(255) comment 'Article',
	lot_size varchar(10) comment 'Lot Size',
	gps_customer_customer varchar(10) comment 'customer_no',
	pre_order_assigned_result varchar(10) comment 'pre_order_assigned_result',
	gps_customer_desc varchar(255) comment 'GPS Customer DESC',
	lo varchar(255) comment 'LO',
	factory_code varchar(10) comment 'Factory Group',
	factory_id varchar(10) comment 'Factory ID',
	factory_name_short varchar(255) comment 'Factory Factory Name Short',
	half_month_period varchar(50) comment 'Half Month Period',
	vpn_ind varchar(255) comment 'VPH Ind',
	lead_time varchar(10) comment 'Lead Time',
	forecast_quantity varchar(15) comment 'Forecast Quantity',
	open_forecast_quantity varchar(15) comment 'Open Forecast Quantity',
	order_quantity varchar(15) comment 'Order Qty',
	pv_quantity varchar(15) comment 'PV Qty',
	eu_rate decimal comment 'eu_rate',
	eu_quantity decimal comment 'eu_quantity',
	china_rate decimal comment 'china_rate',
	china_quantity decimal comment 'china_quantity',
	total_quantity decimal comment 'total_quantity',
	utc_update datetime comment '修改时间',
	status varchar(2) comment '状态',
	create_by bigint comment '创建人',
	update_by bigint comment '变更人',
	note varchar(1024) comment '备注',
	primary key (slt_forecast_id)
);-- end --

-- begin--cpo_working_no_season_attributes--
drop table if exists cpo_working_no_season_attributes;
create table cpo_working_no_season_attributes (
	work_no_seasonly_attr_id bigint not null auto_increment ,
	working_no_id bigint comment 'working no id',
	working_no varchar(50) comment 'working_no',
	season varchar(10) comment 'season',
	speed_order varchar(50) comment '急单',
	wc_style varchar(20) comment '世界杯款',
	slt_factory_name varchar(10) comment 'Slt厂名',
	pr_factory_name varchar(10) comment 'Pr厂名',
	special_order varchar(10) comment '特殊单',
	new_factroy_name varchar(10) comment '新厂名',
	transfer_reason varchar(255) comment '转厂原因',
	transfer_remark varchar(255) comment '转厂备注',
	ei_set_up varchar(50) comment 'EI Set-up',
	by_ready datetime comment 'byready',
	style_status varchar(10) comment 'Style Status',
	develop_type varchar(30) comment 'develop type',
	garment_producting_day decimal comment 'Garment Producting Day',
	presell_fty varchar(10) comment 'presell fty',
	sms_fty varchar(10) comment 'sms fty',
	bulk_order_factory varchar(10) comment '大货单厂名',
	mkt_forecast_factory varchar(10) comment '市场预测单厂名',
	cus_forecast_factory varchar(10) comment '客户预测单厂名',
	cus_forecast_factory_eu varchar(10) comment '客户预测单厂名-eu',
	cus_forecast_factory_noneu varchar(10) comment '客户预测单厂名-noneu',
	cus_forecast_factory_china varchar(10) comment '客户预测单厂名-china',
	a_source varchar(10) comment 'A source',
	b_source varchar(10) comment 'B source',
	c_source varchar(10) comment 'C source',
	d_source varchar(10) comment 'D source',
	pad_print varchar(10) comment '墨水打印',
	pad_item varchar(10) comment 'pad_item',
	special_process_schedule varchar(10) comment '特殊工序排期',
	special_process_remark varchar(500) comment '特殊工序备注',
	mtf_fty_name varchar(15) comment 'mtf_fty_name',
	china_buy_plan_fty varchar(15) comment 'china_buy_plan_fty',
	ipf_fty_name varchar(15) comment 'ipf_fty_name',
	gsp varchar(2) comment 'Gsp',
	test varchar(128) comment 'test',
	utc_create datetime comment '创建时间',
	utc_update datetime comment '修改时间',
	attr_status varchar(2) comment '状态',
	create_by bigint comment '创建人',
	update_by bigint comment '变更人',
	note varchar(1024) comment '备注',
	primary key (work_no_seasonly_attr_id)
);-- end --

-- begin--cpo_working_no_process--
drop table if exists cpo_working_no_process;
create table cpo_working_no_process (
	work_no_process_id bigint not null auto_increment ,
	working_no_id bigint comment 'working no id',
	working_no varchar(50) comment 'working_no',
	process_category varchar(50) comment '工序类型',
	process_id bigint comment '工序ID',
	process_code varchar(30) comment '工序代码',
	process_name varchar(255) comment '工序名',
	process_content_type varchar(10) comment '工序内容类型',
	process_content_value decimal comment '工序内容值',
	type varchar(2) comment 'Type',
	utc_create datetime comment '创建时间',
	utc_update datetime comment '修改时间',
	attr_status varchar(2) comment '状态',
	create_by bigint comment '创建人',
	update_by bigint comment '变更人',
	note varchar(1024) comment '备注',
	primary key (work_no_process_id)
);-- end --

-- begin--cpo_ax_interface_log--
drop table if exists cpo_ax_interface_log;
create table cpo_ax_interface_log (
	ax_interface_log_id bigint not null auto_increment ,
	ax_data varchar(8000) comment 'ax_data',
	log_message varchar(8000) comment 'log_message',
	interfacename varchar(500) comment 'interfaceName',
	request_data varchar(500) comment 'request data',
	start_time datetime comment '开始时间',
	end_time datetime comment '结束时间',
	utc_create datetime comment '创建时间',
	utc_update datetime comment '修改时间',
	ax_interface_status varchar(5) comment '状态',
	create_by bigint comment '创建人',
	update_by bigint comment '变更人',
	note varchar(1024) comment '备注',
	primary key (ax_interface_log_id)
);-- end --

-- begin--cpo_slt_style--
drop table if exists cpo_slt_style;
create table cpo_slt_style (
	slt_style_id bigint not null auto_increment ,
	document_id bigint comment 'document id',
	working_no varchar(30) comment 'Working No',
	season varchar(10) comment 'season',
	confirm_factory varchar(10) comment 'Confirm_factory',
	cus_in_fty varchar(10) comment 'cus_in_fty',
	cus_cr_fty varchar(10) comment 'cus_cr_fty',
	cus_fr_fty varchar(10) comment 'cus_fr_fty',
	cus_fx_fty varchar(10) comment 'cus_fx_fty',
	utc_update datetime comment '修改时间',
	status bigint comment '状态',
	create_by bigint comment '创建人',
	update_by bigint comment '变更人',
	note varchar(1024) comment '备注',
	primary key (slt_style_id)
);-- end --

-- begin--cpo_fr_interface_log--
drop table if exists cpo_fr_interface_log;
create table cpo_fr_interface_log (
	fr_interface_log_id bigint not null auto_increment ,
	interface_name varchar(255) comment 'interfaceName',
	request_data varchar(8000) comment 'requestData',
	response_data varchar(8000) comment 'responseData',
	log_message varchar(8000) comment 'log_message',
	start_time datetime comment 'start_time',
	end_time datetime comment 'end_time',
	f1 varchar(50) comment '动态字段1',
	f2 varchar(50) comment '动态字段2',
	f3 varchar(50) comment '动态字段3',
	f4 varchar(50) comment '动态字段4',
	utc_create datetime comment '创建时间',
	utc_update datetime comment '修改时间',
	fr_interface_log_status varchar(10) comment '状态',
	create_by bigint comment '创建人',
	update_by bigint comment '变更人',
	note varchar(1024) comment '备注',
	primary key (fr_interface_log_id)
);-- end --

-- begin--cpo_fr_capacity--
drop table if exists cpo_fr_capacity;
create table cpo_fr_capacity (
	fr_capacity_id bigint not null auto_increment ,
	factory varchar(10) comment 'FACTORY',
	plan_group varchar(50) comment 'PLAN GROUP',
	capacity_smv decimal comment 'CAPACITY(SMV)',
	actual_order_loading_smv decimal comment 'ACTUAL ORDER LOADING(SMV)',
	cf_loading_smv decimal comment 'CF LOADING(SMV)',
	mf_loading_smv decimal comment 'MF LOADING(SMV)',
	month varchar(10) comment 'MONTH',
	process_id varchar(10) comment 'Process id',
	process_name varchar(30) comment 'Process_name',
	weighted_avg_smv decimal comment 'weighted_avg_smv',
	utc_create datetime comment '创建时间',
	utc_update datetime comment '修改时间',
	high_level_plan_status varchar(1) comment '状态',
	create_by bigint comment '创建人',
	update_by bigint comment '变更人',
	note varchar(1024) comment '备注',
	primary key (fr_capacity_id)
);-- end --

-- begin--cpo_working_no_product_type--
drop table if exists cpo_working_no_product_type;
create table cpo_working_no_product_type (
	working_no_product_type_id bigint not null auto_increment ,
	working_no_id bigint comment 'working no id',
	working_no varchar(50) comment 'working_no',
	product_type_fr varchar(30) comment 'product_type_fr',
	product_type_ax varchar(100) comment 'product_type_ax',
	fabric_type varchar(100) comment '针织/梭织',
	unit varchar(30) comment '配套',
	utc_create datetime comment '创建时间',
	utc_update datetime comment '修改时间',
	status varchar(2) comment '状态',
	create_by bigint comment '创建人',
	update_by bigint comment '变更人',
	note varchar(1024) comment '备注',
	primary key (working_no_product_type_id)
);-- end --

-- begin--cpo_article_development--
drop table if exists cpo_article_development;
create table cpo_article_development (
	cpo_article_development_id bigint not null auto_increment ,
	article_no varchar(30) comment 'article no',
	article_name varchar(255) comment 'article name',
	develop_season varchar(5) comment 'develop season',
	by_ready_date datetime comment 'by ready date',
	carry_status varchar(10) comment 'carry status',
	from_date datetime comment 'fromdate',
	to_date datetime comment 'todate',
	utc_create datetime comment '创建时间',
	utc_update datetime comment '修改时间',
	create_by bigint comment '创建人',
	update_by bigint comment '变更人',
	note varchar(1024) comment '备注',
	primary key (cpo_article_development_id)
);-- end --

-- begin--cpo_working_no_size_group--
drop table if exists cpo_working_no_size_group;
create table cpo_working_no_size_group (
	working_no_size_group_id bigint not null auto_increment ,
	working_no_id bigint comment 'working no id',
	working_no varchar(50) comment 'working_no',
	season varchar(10) comment 'season',
	b_no varchar(50) comment 'b_no',
	size varchar(256) comment 'size',
	size_group varchar(50) comment 'size_group',
	product_no varchar(50) comment 'product_no',
	product_name varchar(128) comment 'product_name',
	is_garment_set varchar(30) comment 'is_garment_set',
	athletic varchar(50) comment 'athletic',
	utc_create datetime comment '创建时间',
	utc_update datetime comment '修改时间',
	status varchar(2) comment '状态',
	create_by bigint comment '创建人',
	update_by bigint comment '变更人',
	note varchar(1024) comment '备注',
	primary key (working_no_size_group_id)
);-- end --

-- begin--cpo_customer_forecast_tuning--
drop table if exists cpo_customer_forecast_tuning;
create table cpo_customer_forecast_tuning (
	customer_forecast_tuning_id bigint not null auto_increment ,
	working_no varchar(30) comment 'working_no',
	factory varchar(10) comment 'factory',
	customer_no varchar(10) comment 'customer_no',
	supply_chain_track varchar(10) comment 'supply_chain_track',
	pv_month datetime comment 'pv_month',
	to_pv_month datetime comment 'to_pv_month',
	article varchar(10) comment 'article',
	order_country varchar(10) comment 'order_country',
	season varchar(5) comment 'season',
	country_code varchar(10) comment 'country code',
	utc_create datetime comment '创建时间',
	utc_update datetime comment '修改时间',
	status int comment '状态',
	create_by varchar(30) comment '创建人',
	update_by varchar(30) comment '变更人',
	note varchar(1024) comment '备注',
	primary key (customer_forecast_tuning_id)
);-- end --

-- begin--cpo_interface_process--
drop table if exists cpo_interface_process;
create table cpo_interface_process (
	interface_process_id bigint not null auto_increment ,
	platform varchar(10) comment 'platform',
	interface_type varchar(10) comment 'Interface_type',
	status varchar(2) comment 'status',
	process_id varchar(256) comment 'process_id',
	utc_create datetime comment '创建时间',
	utc_update datetime comment '修改时间',
	primary key (interface_process_id)
);-- end --

-- begin--cpo_non_trade_card--
drop table if exists cpo_non_trade_card;
create table cpo_non_trade_card (
	non_trade_card_id bigint not null auto_increment ,
	document_id bigint comment 'document id',
	cpo_168_no varchar(50) comment '168 No',
	b_no varchar(50) comment 'B No',
	batch_no varchar(50) comment 'Batch No',
	factory_name varchar(50) comment 'factory name',
	assigned_factory varchar(10) comment 'assigned_factory',
	ipmt_no varchar(50) comment 'IPMT_NO',
	woven_knit varchar(10) comment 'woven_knit',
	product_type varchar(30) comment 'product_type',
	quantity varchar(30) comment 'quantity',
	unit varchar(30) comment 'unit',
	article varchar(30) comment 'article',
	product_name varchar(30) comment 'product_name',
	season varchar(10) comment 'season',
	country varchar(10) comment 'country',
	customer_no varchar(10) comment 'customer no',
	gps_po_no varchar(30) comment 'gps po no',
	tc_po_no varchar(30) comment 'tc po no',
	classic_code varchar(30) comment 'classic code',
	order_no varchar(30) comment 'order no',
	customer_request_date datetime comment 'Customer request date',
	plan_date datetime comment 'plan_date',
	psdd datetime comment 'psdd ',
	fpd datetime comment 'fpd',
	price varchar(30) comment 'price',
	main_po_no varchar(30) comment 'MainPONo',
	fabric_pi_date datetime comment 'fabric pi date',
	ts_1 varchar(10) comment 'ts_1',
	qty_1 varchar(10) comment 'qty_1',
	ts_2 varchar(10) comment 'ts_2',
	qty_2 varchar(10) comment 'qty_2',
	ts_3 varchar(10) comment 'ts_3',
	qty_3 varchar(10) comment 'qty_3',
	ts_4 varchar(10) comment 'ts_4',
	qty_4 varchar(10) comment 'qty_4',
	ts_5 varchar(10) comment 'ts_5',
	qty_5 varchar(10) comment 'qty_5',
	ts_6 varchar(10) comment 'ts_6',
	qty_6 varchar(10) comment 'qty_6',
	ts_7 varchar(10) comment 'ts_7',
	qty_7 varchar(10) comment 'qty_7',
	ts_8 varchar(10) comment 'ts_8',
	qty_8 varchar(10) comment 'qty_8',
	ts_9 varchar(10) comment 'ts_9',
	qty_9 varchar(10) comment 'qty_9',
	ts_10 varchar(10) comment 'ts_10',
	qty_10 varchar(10) comment 'qty_10',
	utc_create datetime comment '创建时间',
	utc_update datetime comment '修改时间',
	assign_result_status varchar(1) comment '状态',
	create_by bigint comment '创建人',
	update_by bigint comment '变更人',
	note varchar(1024) comment '备注',
	primary key (non_trade_card_id)
);-- end --

-- begin--cpo_ax_po_entity--
drop table if exists cpo_ax_po_entity;
create table cpo_ax_po_entity (
	ax_po_entity_id bigint not null auto_increment ,
	forecast_id varchar(30) comment 'ForecastId',
	po_id varchar(30) comment 'POId',
	document_id varchar(30) comment 'document_id',
	document_type varchar(5) comment 'Document_type',
	assign_result_id bigint comment 'assign_result_id',
	tex_sales_doc_type_id varchar(30) comment 'TEX_SalesDocTypeId',
	account_num varchar(30) comment 'AccountNum',
	delivery_date datetime comment 'DeliveryDate',
	inconterm varchar(30) comment 'Inconterm',
	site_id varchar(30) comment 'SiteId',
	factory_id varchar(30) comment 'FactoryId',
	order_status varchar(20) comment 'order_status',
	change_date varchar(5) comment 'change date',
	change_qty varchar(5) comment 'change qty',
	change_price varchar(5) comment 'change price',
	change_site varchar(5) comment 'change site',
	coo varchar(30) comment 'COO',
	period varchar(30) comment 'Period',
	brand varchar(30) comment 'Brand',
	tex_bas_season_code varchar(30) comment 'TEX_BAS_SeasonCode',
	item_id varchar(30) comment 'ItemId',
	product_model varchar(30) comment 'ProductModel',
	product_no varchar(30) comment 'ProductNo',
	name varchar(30) comment 'Name',
	color varchar(30) comment 'Color',
	color_name varchar(30) comment 'ColorName',
	gar_1stsize varchar(30) comment 'GAR_1stSize',
	gar_2ndsize varchar(30) comment 'GAR_2ndSize',
	size_group_id varchar(30) comment 'SizeGroupId',
	qty decimal comment 'Qty',
	price decimal comment 'Price',
	address varchar(30) comment 'Address',
	first_prod_date datetime comment 'FirstProdDate',
	last_prod_date datetime comment 'LastProdDate',
	cust_num varchar(30) comment 'CustNum',
	service_identifier varchar(30) comment 'ServiceIdentifier',
	country varchar(30) comment 'Country',
	delivery_reason varchar(30) comment 'DeliveryReason',
	domestic_order int comment 'DomesticOrder',
	order_type varchar(30) comment 'OrderType',
	shipment_address varchar(30) comment 'ShipmentAddress',
	classic_code varchar(30) comment 'ClassicCode',
	customer_order_number varchar(30) comment 'CustomerOrderNumber',
	model_number varchar(30) comment 'ModelNumber',
	customer_status varchar(30) comment 'CustomerStatus',
	mdp_fail_reason varchar(30) comment 'MDPFailReason',
	sdp_fail_reason varchar(30) comment 'SDPFailReason',
	payment_team varchar(30) comment 'PaymentTeam',
	charges varchar(30) comment 'Charges',
	plan_date datetime comment 'PlanDate',
	psdd datetime comment 'PSDD',
	podd datetime comment 'PODD',
	garment_lead_time varchar(30) comment 'GarmentLeadTime',
	fr_order_no varchar(30) comment 'frOrderNo',
	supply_chain_track varchar(255) comment 'Supply Chain Track',
	customer_request_date datetime comment 'CustomerRequestDate',
	region varchar(30) comment 'Region',
	b_number varchar(10) comment 'BNumber',
	size_run varchar(100) comment 'SizeRun',
	technical_notation varchar(100) comment 'TechnicalNotation',
	client_code varchar(20) comment 'ClientCode',
	ship_mode varchar(10) comment 'ShipMode',
	test varchar(100) comment 'Test',
	gsp varchar(100) comment 'GSP',
	mtf_ppc_order_num varchar(20) comment 'MTFPPCOrderNum',
	crd_confirm_status varchar(10) comment 'CRDConfirmStatus',
	pd_confirm_status varchar(10) comment 'PDConfirmStatus',
	order_special_requirement varchar(100) comment 'OrderSpecialRequirement',
	customization_status varchar(10) comment 'CustomizationStatus',
	expected_material_date datetime comment 'ExpectedMaterialDate',
	last_fabric_pi_eta_date datetime comment 'LastFabricPIETADate',
	last_trim_pi_eta_date datetime comment 'LastTrimPIETADate',
	mi_hem_insert varchar(100) comment 'mi_hem_insert',
	mi_logo varchar(50) comment 'mi_logo',
	mi_n_n varchar(50) comment 'mi_n_n',
	mi_print varchar(50) comment 'mi_print',
	mi_stripes varchar(50) comment 'mi_stripes',
	po_batch_date datetime comment 'po_batch_date',
	issue_date datetime comment 'issue_date',
	utc_create datetime comment '创建时间',
	utc_update datetime comment '修改时间',
	ax_po_status varchar(1) comment '状态',
	create_by bigint comment '创建人',
	update_by bigint comment '变更人',
	transfer_status varchar(2) comment '状态',
	note varchar(1024) comment '备注',
	primary key (ax_po_entity_id)
);-- end --

-- begin--cpo_working_no_pull_forward--
drop table if exists cpo_working_no_pull_forward;
create table cpo_working_no_pull_forward (
	working_no_pull_forward_id bigint not null auto_increment ,
	working_no varchar(50) comment 'working_no',
	season varchar(10) comment 'season',
	factory varchar(5) comment 'Factory',
	quantity decimal comment 'quantity',
	utc_create datetime comment '创建时间',
	utc_update datetime comment '修改时间',
	status varchar(2) comment '状态',
	create_by bigint comment '创建人',
	update_by bigint comment '变更人',
	note varchar(1024) comment '备注',
	primary key (working_no_pull_forward_id)
);-- end --

-- begin--cpo_admin_country--
drop table if exists cpo_admin_country;
create table cpo_admin_country (
	country_id bigint not null auto_increment ,
	code varchar(5) comment '编码',
	name varchar(50) comment '名称',
	primary key (country_id)
);-- end --

-- begin--cpo_factory_transfer_result--
drop table if exists cpo_factory_transfer_result;
create table cpo_factory_transfer_result (
	transfer_result_id bigint not null auto_increment ,
	fact_assign_id bigint comment 'fact_assign_id',
	assign_result_id bigint comment 'assign_result_id',
	working_no varchar(30) comment 'Working No',
	document_type varchar(30) comment 'document_type',
	season varchar(10) comment 'Season',
	transfer_reason varchar(500) comment '转厂原因',
	pad_print varchar(30) comment 'Pad print',
	speed_style varchar(50) comment 'Speed style',
	bulk_order_assigned_factory varchar(100) comment '大貨做過工廠',
	china_buy_plan_fty varchar(10) comment 'China buy plan FTY',
	slt_fty varchar(10) comment 'SLT FTY',
	ipf_fty_name varchar(10) comment 'IPF fty name',
	mtf_fty_name varchar(10) comment 'MTF fty name',
	eu_factory varchar(10) comment 'EU Factory',
	china_factory varchar(10) comment 'China Factory',
	non_eu_factory varchar(10) comment 'Non EU Factory',
	ei_set_up varchar(10) comment 'EI set up',
	special_process varchar(128) comment '特殊做工排期',
	old_fty varchar(10) comment 'Old fty',
	new_fty_name varchar(10) comment 'NEW FTY NAME',
	transfer_remark varchar(500) comment '转厂备注',
	a_source varchar(10) comment 'A Source',
	b_source varchar(10) comment 'B Source',
	c_source varchar(10) comment 'C Source',
	d_source varchar(10) comment 'D Source',
	to_do_style_transfer varchar(2) comment 'To do styles transfer',
	to_source varchar(10) comment 'TO Source',
	remark_date datetime comment 'RemarkDate',
	working_no_range varchar(50) comment 'working no range',
	quantity decimal comment 'quantity',
	brand varchar(20) comment 'brand',
	transfer_source varchar(10) comment 'transfer_source',
	utc_create datetime comment '创建时间',
	utc_update datetime comment '修改时间',
	assign_result_status varchar(1) comment '状态',
	create_by varchar(30) comment '创建人',
	update_by varchar(30) comment '变更人',
	note varchar(1024) comment '备注',
	primary key (transfer_result_id)
);-- end --

-- begin--cpo_po_transfer--
drop table if exists cpo_po_transfer;
create table cpo_po_transfer (
	po_transfer_id bigint not null auto_increment ,
	working_no varchar(30) comment 'working No',
	working_no_range varchar(30) comment 'working No Range',
	brand varchar(30) comment 'brand',
	factory_code varchar(10) comment 'factory code',
	plan_date datetime comment 'plan date',
	customer_request_date datetime comment 'customer request date',
	psdd datetime comment 'PSDD',
	fpd datetime comment 'FPD',
	po varchar(30) comment 'po',
	tc_po varchar(10) comment 't/c po',
	updated_po_number varchar(30) comment 'updated po number',
	class_code varchar(10) comment 'class code',
	cpo_no varchar(50) comment 'cpoNo',
	customer_no varchar(10) comment 'customer code',
	order_country varchar(30) comment 'order_country',
	assigned_factory varchar(10) comment 'assigned_factory',
	po_qty decimal comment 'po_qty',
	from_factory varchar(10) comment 'from_factory',
	to_factory varchar(10) comment 'to_factory',
	quota_approved varchar(50) comment 'quota_approved',
	reason varchar(500) comment 'reason',
	order_release_date datetime comment 'order_release_date',
	b_source_needed varchar(50) comment 'b_source_needed',
	lo_contract varchar(50) comment 'lo_contract',
	gps_contract varchar(50) comment 'gps_contract',
	transfer_contract varchar(50) comment 'transfer_contract',
	completed_date datetime comment 'completed_date',
	tc_client_number varchar(30) comment 'tc_client_number',
	release_date datetime comment 'release date',
	document_type varchar(5) comment 'Document_type',
	lc0190_date datetime comment 'LC0190 Date',
	utc_create datetime comment '创建时间',
	utc_update datetime comment '修改时间',
	status varchar(5) comment '状态',
	create_by varchar(30) comment '创建人',
	update_by varchar(30) comment '变更人',
	note varchar(1024) comment '备注',
	primary key (po_transfer_id)
);-- end --

-- begin--cpo_style_transfer--
drop table if exists cpo_style_transfer;
create table cpo_style_transfer (
	style_transfer_id bigint not null auto_increment ,
	working_no varchar(30) comment 'working No',
	if_got_lc0 varchar(5) comment 'if_got_lc0',
	division varchar(10) comment 'division',
	allocation_type varchar(30) comment 'allocation_type',
	sourcing_type varchar(30) comment 'sourcing_type',
	transfer_reason varchar(500) comment 'transfer_reason',
	season varchar(10) comment 'season',
	a_source varchar(10) comment 'a_source',
	b_source varchar(10) comment 'b_source',
	c_source varchar(10) comment 'c_source',
	d_source varchar(10) comment 'd_source',
	fty_code varchar(20) comment 'Fty_code',
	giving_factory varchar(10) comment 'giving_factory',
	receiving_factory varchar(10) comment 'receiving_factory',
	receiving_factory_lead_time int comment 'receiving_factory_lead_time',
	transfer_volume decimal comment 'transfer_volume',
	request_transfer_month_from datetime comment 'request_transfer_month_from',
	request_transfer_month_to datetime comment 'request_transfer_month_to',
	change_a_source varchar(10) comment 'change_a_source',
	giving_factory_fob decimal comment 'giving_factory_fob',
	receiving_factory_fob decimal comment 'receiving_factory_fob',
	diff_of_fob_data decimal comment 'diff_of_fob_data',
	diff_of_fob_percent decimal comment 'diff_of_fob_percent',
	reason_for_price_variance varchar(500) comment 'reason_for_price_variancr',
	working_no_range varchar(30) comment 'working_no_range',
	lo_merch varchar(128) comment 'lo_merch',
	tier_merch varchar(128) comment 'tier_merch',
	remarks varchar(1024) comment 'remarks',
	field_name varchar(20) comment 'Field name',
	giving_factory_price_landed decimal comment 'Giving Factory price Landed',
	receiving_factory_price_landed decimal comment 'Receiving Factory price Landed',
	ei_set_up_needed varchar(10) comment 'EI set up needed',
	selling_region_percentage_eu decimal comment 'selling region percentage - EU',
	selling_region_percentage_asia decimal comment 'selling region percentage - Asia',
	selling_region_percentage_nam decimal comment 'selling region percentage - NAM',
	selling_region_percentage_lam decimal comment 'selling region percentage - LAM',
	selling_region_percentage_cis decimal comment 'selling region percentage - CIS',
	selling_region_percentage_china decimal comment 'selling region percentage - China',
	landed_price_per_selling_region_giving_factory_eu decimal comment 'landed price per selling region - Giving Factory - EU',
	landed_price_per_selling_region_giving_factory_asia decimal comment 'landed price per selling region - Giving Factory - Asia',
	landed_price_per_selling_region_giving_factory_nam decimal comment 'landed price per selling region - Giving Factory - NAM',
	landed_price_per_selling_region_giving_factory_lam decimal comment 'landed price per selling region - Giving Factory - LAM',
	landed_price_per_selling_region_giving_factory_cis decimal comment 'landed price per selling region - Giving Factory - CIS',
	landed_price_per_selling_region_giving_factory_china decimal comment 'landed price per selling region - Giving Factory - China',
	skip_techpack varchar(30) comment 'Skip techpack',
	document_type varchar(30) comment 'document type',
	confirm_factory varchar(30) comment 'confirm_factory',
	source_remark varchar(50) comment 'source_remark',
	utc_create datetime comment '创建时间',
	utc_update datetime comment '修改时间',
	status varchar(5) comment '状态',
	create_by varchar(30) comment '创建人',
	update_by varchar(30) comment '变更人',
	note varchar(1024) comment '备注',
	primary key (style_transfer_id)
);-- end --

-- begin--cpo_vendorkpi_shipping_manual--
drop table if exists cpo_vendorkpi_shipping_manual;
create table cpo_vendorkpi_shipping_manual (
	vendorkpi_shipping_manual_id bigint not null auto_increment ,
	forwarder varchar(50) comment 'forwarder',
	origin_region varchar(50) comment 'origin_region',
	destination_region varchar(50) comment 'destination_region',
	orgin_country varchar(50) comment 'orgin_country',
	destination_country varchar(50) comment 'destination_country',
	customer_number varchar(50) comment 'customer_number',
	base_date varchar(30) comment 'base_date',
	type_of_days varchar(20) comment 'type_of_days',
	no_of_days int comment 'no_of_days',
	upload_date datetime comment 'upload_date',
	upload_user int comment 'upload_user',
	primary key (vendorkpi_shipping_manual_id)
);-- end --

-- begin--cpo_shipping_order--
drop table if exists cpo_shipping_order;
create table cpo_shipping_order (
	vendorkpi_shipping_order_id bigint not null auto_increment ,
	forwarder varchar(50) comment 'forwarder',
	shipping_order varchar(50) comment 'shipping_order',
	pl3_shipping_order_reference varchar(50) comment 'pl3_shipping_order_reference',
	po_number varchar(50) comment 'po_number',
	customer_number varchar(50) comment 'customer_number',
	ship_mode varchar(50) comment 'ship_mode',
	shipper varchar(50) comment 'shipper',
	book_date datetime comment 'book_date',
	intended_delivery datetime comment 'intended_delivery',
	fgr varchar(50) comment 'fgr',
	loadport varchar(50) comment 'loadport',
	loadtype varchar(50) comment 'loadtype',
	factory_code varchar(50) comment 'factory_code',
	origin varchar(50) comment 'origin',
	origin_country varchar(50) comment 'origin_country',
	destination varchar(50) comment 'destination',
	destination_country varchar(50) comment 'destination_country',
	creation_date datetime comment 'creation_date',
	creation_user int comment 'creation_user',
	primary key (vendorkpi_shipping_order_id)
);-- end --

-- begin--cpo_shipping_manual--
drop table if exists cpo_shipping_manual;
create table cpo_shipping_manual (
	vendorkpi_shipping_manual_id bigint not null auto_increment ,
	forwarder varchar(50) comment 'forwarder',
	origin_region varchar(50) comment 'origin_region',
	destination_region varchar(50) comment 'destination_region',
	orgin_country varchar(50) comment 'orgin_country',
	destination_country varchar(50) comment 'destination_country',
	customer_number varchar(50) comment 'customer_number',
	base_date datetime comment 'base_date',
	type_of_days int comment 'type_of_days',
	no_of_days int comment 'no_of_days',
	upload_date datetime comment 'upload_date',
	upload_user int comment 'upload_user',
	primary key (vendorkpi_shipping_manual_id)
);-- end --

-- begin--cpo_shipping_invoice--
drop table if exists cpo_shipping_invoice;
create table cpo_shipping_invoice (
	vendorkpi_shipping_invoice_id bigint not null auto_increment ,
	shipping_order varchar(50) comment 'shipping_order',
	invoice_nubmer varchar(50) comment 'invoice_nubmer',
	creation_date datetime comment 'creation_date',
	creation_user int comment 'creation_user',
	primary key (vendorkpi_shipping_invoice_id)
);-- end --

-- begin--cpo_document_date--
drop table if exists cpo_document_date;
create table cpo_document_date (
	vendorkpi_document_date_id bigint not null auto_increment ,
	shipping_order varchar(50) comment 'shipping_order',
	invoice_nubmer varchar(50) comment 'invoice_nubmer',
	documen_treceipt_date datetime comment 'documen_treceipt_date',
	etd varchar(50) comment 'etd',
	upload_date datetime comment 'upload_date',
	upload_user int comment 'upload_user',
	primary key (vendorkpi_document_date_id)
);-- end --

-- begin--cpo_public_holiday--
drop table if exists cpo_public_holiday;
create table cpo_public_holiday (
	vendorkpi_public_holiday_id bigint not null auto_increment ,
	country varchar(50) comment 'country',
	holiday_date datetime comment 'holiday_date',
	description varchar(50) comment 'description',
	upload_date datetime comment 'upload_date',
	upload_user int comment 'upload_user',
	primary key (vendorkpi_public_holiday_id)
);-- end --

-- begin--cpo_vendorkpi_public_holiday--
drop table if exists cpo_vendorkpi_public_holiday;
create table cpo_vendorkpi_public_holiday (
	vendorkpi_public_holiday_id bigint not null auto_increment ,
	country varchar(50) comment 'country',
	holiday_date datetime comment 'holiday_date',
	description varchar(50) comment 'description',
	upload_date datetime comment 'upload_date',
	upload_user int comment 'upload_user',
	primary key (vendorkpi_public_holiday_id)
);-- end --

-- begin--cpo_vendorkpi_document_date--
drop table if exists cpo_vendorkpi_document_date;
create table cpo_vendorkpi_document_date (
	vendorkpi_document_date_id bigint not null auto_increment ,
	shipping_order varchar(50) comment 'shipping_order',
	invoice_nubmer varchar(50) comment 'invoice_nubmer',
	documen_treceipt_date datetime comment 'documen_treceipt_date',
	etd datetime comment 'etd',
	upload_date datetime comment 'upload_date',
	upload_user int comment 'upload_user',
	primary key (vendorkpi_document_date_id)
);-- end --

-- begin--cpo_vendorkpi_shipping_invoice--
drop table if exists cpo_vendorkpi_shipping_invoice;
create table cpo_vendorkpi_shipping_invoice (
	vendorkpi_shipping_invoice_id bigint not null auto_increment ,
	shipping_order varchar(50) comment 'shipping_order',
	invoice_nubmer varchar(50) comment 'invoice_nubmer',
	creation_date datetime comment 'creation_date',
	creation_user int comment 'creation_user',
	primary key (vendorkpi_shipping_invoice_id)
);-- end --

-- begin--cpo_vendorkpi_shipping_order--
drop table if exists cpo_vendorkpi_shipping_order;
create table cpo_vendorkpi_shipping_order (
	vendorkpi_shipping_order_id bigint not null auto_increment ,
	forwarder varchar(50) comment 'forwarder',
	shipping_order varchar(50) comment 'shipping_order',
	pl3_shipping_order_reference varchar(50) comment 'pl3_shipping_order_reference',
	po_number varchar(50) comment 'po_number',
	customer_number varchar(50) comment 'customer_number',
	ship_mode varchar(50) comment 'ship_mode',
	shipper varchar(50) comment 'shipper',
	book_date datetime comment 'book_date',
	intended_delivery datetime comment 'intended_delivery',
	fgr datetime comment 'fgr',
	loadport varchar(50) comment 'loadport',
	loadtype varchar(50) comment 'loadtype',
	factory_code varchar(50) comment 'factory_code',
	origin varchar(50) comment 'origin',
	origin_country varchar(50) comment 'origin_country',
	destination varchar(50) comment 'destination',
	destination_country varchar(50) comment 'destination_country',
	creation_date datetime comment 'creation_date',
	creation_user int comment 'creation_user',
	shipping_order_status varchar(50) comment 'shipping_order_status',
	primary key (vendorkpi_shipping_order_id)
);-- end --

-- begin--cpo_working_no_factory_smv--
drop table if exists cpo_working_no_factory_smv;
create table cpo_working_no_factory_smv (
	working_no_factory_smv_id bigint not null auto_increment ,
	working_no varchar(50) comment 'working_no',
	factory_id bigint comment 'factory_id',
	factory_name varchar(30) comment 'Factory_name',
	smv decimal comment 'smv',
	unit varchar(5) comment 'unit',
	smv_type varchar(1) comment 'smv_type',
	product_type varchar(30) comment 'product_type',
	primary key (working_no_factory_smv_id)
);-- end --

-- begin--cpo_a_chian_buy_plan_size--
drop table if exists cpo_a_chian_buy_plan_size;
create table cpo_a_chian_buy_plan_size (
	a_china_buy_plan_size_id bigint not null auto_increment ,
	a_china_buy_plan_id bigint comment 'aChinaBuyPlanId',
	sizename varchar(10) comment 'sizeName',
	sizequantity int comment 'sizeQuantity',
	utc_create datetime comment '创建时间',
	utc_update datetime comment '修改时间',
	status varchar(1) comment '状态',
	create_by bigint comment '创建人',
	update_by bigint comment '变更人',
	note varchar(1024) comment '备注',
	primary key (a_china_buy_plan_size_id)
);-- end --

-- begin--cpo_a_china_buy_plan_size--
drop table if exists cpo_a_china_buy_plan_size;
create table cpo_a_china_buy_plan_size (
	a_china_buy_plan_size_id bigint not null auto_increment ,
	a_china_buy_plan_id bigint comment 'aChinaBuyPlanId',
	sizename varchar(10) comment 'sizeName',
	sizequantity int comment 'sizeQuantity',
	utc_create datetime comment '创建时间',
	utc_update datetime comment '修改时间',
	status varchar(1) comment '状态',
	create_by bigint comment '创建人',
	update_by bigint comment '变更人',
	note varchar(1024) comment '备注',
	primary key (a_china_buy_plan_size_id)
);-- end --

-- begin--cpo_a_china_buy_plan--
drop table if exists cpo_a_china_buy_plan;
create table cpo_a_china_buy_plan (
	a_china_buy_plan_id bigint not null auto_increment ,
	document_id bigint comment 'document id',
	season varchar(10) comment 'Season',
	assigned_factory varchar(10) comment 'Assigned_factory',
	develop_sourcing varchar(255) comment 'DEVELOP SOURCING',
	season_of_tm varchar(255) comment 'SEASON OF TM',
	ib_po_no varchar(255) comment 'IB PO NO',
	sap_order_no varchar(255) comment 'SAP ORDER NO',
	working_no varchar(30) comment 'WORKING NO',
	model_no varchar(30) comment 'MODEL NO',
	article_no varchar(30) comment 'ARTICLE NO',
	model_name varchar(255) comment 'MODEL NAME',
	division varchar(30) comment 'DIVISION',
	gender varchar(10) comment 'GENDER',
	local_drop varchar(10) comment 'LOCAL DROP',
	category varchar(50) comment 'CATEGORY',
	themes varchar(50) comment 'THEMES',
	priority_tracking varchar(30) comment 'PRIORITY TRACKING',
	owr_launch_date varchar(30) comment 'OWR LAUNCH DATE',
	crd_in_system varchar(30) comment 'CRD IN SYSTEM',
	sourcing_channel varchar(30) comment 'SOURCING CHANNEL',
	sourcing_group varchar(30) comment 'SOURCING GROUP',
	sourcing_origin varchar(30) comment 'SOURCING ORIGIN',
	manufactory varchar(255) comment 'MANUFACTORY',
	int_l_vendor_code varchar(30) comment 'INT'L VENDOR CODE',
	lo varchar(100) comment 'LO',
	ds_fty_code varchar(30) comment 'DS fty code',
	lead_time varchar(10) comment 'LEAD TIME',
	shipping_mode varchar(30) comment 'SHIPPING MODE',
	buy_ready_cut_off varchar(30) comment 'BUY-READY CUT-OFF',
	actual_cut_off varchar(30) comment 'ACTUAL CUT OFF',
	brand_ii varchar(128) comment 'BRAND II',
	ils_fc_qty varchar(10) comment 'ILS FC QTY',
	consolidation_qty varchar(10) comment 'CONSOLIDATION  QTY',
	po_qty varchar(10) comment 'PO QTY',
	size_pattern varchar(30) comment 'SIZE PATTERN',
	size_run varchar(30) comment 'SIZE RUN',
	priority varchar(30) comment 'Priority',
	crd_in_month datetime comment 'crd_in_month',
	ds_lo varchar(30) comment 'ds_lo',
	utc_create datetime comment '创建时间',
	utc_update datetime comment '修改时间',
	a_chian_buy_plan_status varchar(1) comment '状态',
	create_by bigint comment '创建人',
	update_by bigint comment '变更人',
	note varchar(1024) comment '备注',
	primary key (a_china_buy_plan_id)
);-- end --

-- begin--cpo_season_data_range_setting--
drop table if exists cpo_season_data_range_setting;
create table cpo_season_data_range_setting (
	season_data_range_setting_id bigint not null auto_increment ,
	season varchar(10) comment 'Season',
	document_type varchar(5) comment 'document type',
	from_date datetime comment 'from date',
	to_date datetime comment 'to date',
	utc_create datetime comment '创建时间',
	utc_update datetime comment '修改时间',
	status varchar(1) comment '状态',
	create_by varchar(30) comment '创建人',
	update_by varchar(30) comment '变更人',
	note varchar(1024) comment '备注',
	primary key (season_data_range_setting_id)
);-- end --

-- begin--cpo_season_date_range_setting--
drop table if exists cpo_season_date_range_setting;
create table cpo_season_date_range_setting (
	season_date_range_setting_id bigint not null auto_increment ,
	season varchar(10) comment 'Season',
	document_type varchar(5) comment 'document type',
	from_date datetime comment 'from date',
	document_type_name varchar(30) comment 'Document_type_name',
	to_date datetime comment 'to date',
	validation_date datetime comment 'validation date',
	invalidation_date datetime comment 'invalidation date',
	utc_create datetime comment '创建时间',
	utc_update datetime comment '修改时间',
	status varchar(1) comment '状态',
	create_by varchar(30) comment '创建人',
	update_by varchar(30) comment '变更人',
	note varchar(1024) comment '备注',
	primary key (season_date_range_setting_id)
);-- end --

-- begin--cpo_bno_batch--
drop table if exists cpo_bno_batch;
create table cpo_bno_batch (
	bno_batch_id bigint not null auto_increment ,
	b_no varchar(50) comment 'b_no',
	batch_no int comment 'batch_no',
	primary key (bno_batch_id)
);-- end --

-- begin--cpo_worktable_edi_order_batch--
drop table if exists cpo_worktable_edi_order_batch;
create table cpo_worktable_edi_order_batch (
	worktable_edi_order_batch_id bigint not null auto_increment ,
	order_master_id bigint comment 'order_master_id',
	b_no varchar(50) comment 'b_no',
	batch_no varchar(5) comment 'batch_no',
	primary key (worktable_edi_order_batch_id)
);-- end --

-- begin--cpo_edi_order_batch--
drop table if exists cpo_edi_order_batch;
create table cpo_edi_order_batch (
	worktable_edi_order_batch_id bigint not null auto_increment ,
	order_master_id bigint comment 'order_master_id',
	b_no varchar(50) comment 'b_no',
	batch_no varchar(5) comment 'batch_no',
	no_168 varchar(20) comment '168#',
	primary key (worktable_edi_order_batch_id)
);-- end --

-- begin--cpo_working_no_factory_history--
drop table if exists cpo_working_no_factory_history;
create table cpo_working_no_factory_history (
	working_no_factory_history_id bigint not null auto_increment ,
	working_no varchar(50) comment 'working_no',
	factory varchar(30) comment 'Factory',
	document_type varchar(10) comment 'document_type',
	times int comment 'times',
	primary key (working_no_factory_history_id)
);-- end --

-- begin--worktable_edi_order_data_history--
drop table if exists worktable_edi_order_data_history;
create table worktable_edi_order_data_history (
	edi_order_data_history_id bigint not null auto_increment ,
	po varchar(30) comment 'po',
	mtfc_number varchar(30) comment 'Mtfc_number',
	order_data varchar(8000) comment 'Order_data',
	order_actual_type varchar(30) comment 'Order_actual_type',
	utc_create datetime comment '创建时间',
	status varchar(1) comment '状态',
	create_by bigint comment '创建人',
	note varchar(1024) comment '备注',
	primary key (edi_order_data_history_id)
);-- end --

-- begin--cpo_bno_factory_history--
drop table if exists cpo_bno_factory_history;
create table cpo_bno_factory_history (
	b_no_factory_history_id bigint not null auto_increment ,
	b_no varchar(50) comment 'b_no',
	factory varchar(30) comment 'Factory',
	times int comment 'times',
	primary key (b_no_factory_history_id)
);-- end --

-- begin--cpo_mi_b_number--
drop table if exists cpo_mi_b_number;
create table cpo_mi_b_number (
	mi_b_number_id bigint not null auto_increment ,
	stripes varchar(50) comment 'stripes',
	logo varchar(50) comment 'logo',
	sublimation_printing varchar(50) comment 'sublimation printing',
	n_and_n varchar(50) comment 'n and n',
	hem_insert varchar(100) comment 'hem insert',
	working_no varchar(50) comment 'working no',
	article_no varchar(30) comment 'article no',
	b_number varchar(50) comment 'b number',
	size_type varchar(20) comment 'size_type',
	size_group varchar(50) comment 'size_group',
	primary key (mi_b_number_id)
);-- end --

-- begin--worktable_edi_order_change--
drop table if exists worktable_edi_order_change;
create table worktable_edi_order_change (
	order_change_id bigint not null auto_increment ,
	change_value varchar(256) comment 'change_value',
	change_type varchar(50) comment 'change_type',
	change_remark varchar(256) comment 'change_remark',
	status varchar(5) comment 'status',
	utc_create datetime comment 'utc_create',
	utc_update datetime comment 'utc_update',
	update_by bigint comment 'update_by',
	update_by_name varchar(128) comment 'update_by_name',
	create_by_name varchar(128) comment 'create_by_name',
	note varchar(1024) comment 'note',
	original_po varchar(30) comment 'original_po',
	order_actual_type varchar(30) comment 'order_actual_type',
	flag_fr varchar(1) comment 'Flag_fr',
	flag_ax varchar(1) comment 'Flag_Ax',
	transit_fr_remark varchar(128) comment 'transit_fr_remark',
	transit_ax_remark varchar(128) comment 'transit_ax_remark',
	primary key (order_change_id)
);-- end --

-- begin--worktable_edi_order_approval--
drop table if exists worktable_edi_order_approval;
create table worktable_edi_order_approval (
	edi_order_approval_id bigint not null auto_increment ,
	assign_result_id bigint comment 'assign_result_id',
	order_master_id bigint comment 'order_master_id',
	original_po varchar(30) comment 'original_po',
	status varchar(5) comment 'status',
	create_by varchar(128) comment 'create_by',
	utc_create datetime comment 'utc_create',
	update_by varchar(128) comment 'update_by',
	utc_update datetime comment 'utc_update',
	from_factory varchar(30) comment 'from_factory',
	to_factory varchar(30) comment 'to_factory',
	note varchar(1024) comment 'note',
	flag_fr varchar(1) comment 'Flag_fr',
	flag_ax varchar(1) comment 'Flag_Ax',
	transit_fr_remark varchar(128) comment 'transit_fr_remark',
	transit_ax_remark varchar(128) comment 'transit_ax_remark',
	primary key (edi_order_approval_id)
);-- end --

-- begin--worktable_edi_order_cancel--
drop table if exists worktable_edi_order_cancel;
create table worktable_edi_order_cancel (
	edi_order_cancel_id bigint not null auto_increment ,
	code varchar(100) comment 'code',
	assign_result_id bigint comment 'assign_result_id',
	to_be_status varchar(5) comment 'to_be_status',
	status varchar(5) comment 'status',
	utc_create datetime comment 'utc_create',
	utc_update datetime comment 'utc_update',
	note varchar(1024) comment 'note',
	primary key (edi_order_cancel_id)
);-- end --

-- begin--cpo_fr_order_schedule--
drop table if exists cpo_fr_order_schedule;
create table cpo_fr_order_schedule (
	fr_order_schedule_id bigint not null auto_increment ,
	code varchar(100) comment 'code',
	assign_result_id bigint comment 'assign_result_id',
	to_be_status varchar(5) comment 'to_be_status',
	status varchar(5) comment 'status',
	utc_create datetime comment 'utc_create',
	utc_update datetime comment 'utc_update',
	note varchar(1024) comment 'note',
	type varchar(50) comment 'type',
	retry_times int comment 'retry times',
	primary key (fr_order_schedule_id)
);-- end --

