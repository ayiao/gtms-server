if exists (select 1   
            from  sysobjects   
           where  id = object_id('cpo_processcriteria')   
            and   type = 'U')   
   drop table cpo_process_criteria   
go
create table cpo_process_criteria (
	process_criteria_id bigint not null IDENTITY(1,1)  ,
	process_type   varchar(50) ,
	process_id   bigint ,
	factory_id   bigint ,
	criteria_version_id   bigint ,
	mandatory   varchar(1) ,
	process_score   int ,
	criteria_status   varchar(2) ,
	start_date  datetime  ,
	end_date  datetime  ,
	utc_create  datetime  ,
	utc_update  datetime  ,
	create_by   bigint ,
	update_by   bigint ,
	note   varchar(1024) ,
	primary key (process_criteria_id) 
);

-- Add comments to the columns
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'记录id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_processcriteria', @level2type=N'COLUMN',@level2name=N'process_criteria_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工序类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_processcriteria', @level2type=N'COLUMN',@level2name=N'process_type';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工序id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_processcriteria', @level2type=N'COLUMN',@level2name=N'process_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工厂id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_processcriteria', @level2type=N'COLUMN',@level2name=N'factory_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标准版本id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_processcriteria', @level2type=N'COLUMN',@level2name=N'criteria_version_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'强制性' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_processcriteria', @level2type=N'COLUMN',@level2name=N'mandatory';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'分数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_processcriteria', @level2type=N'COLUMN',@level2name=N'process_score';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_processcriteria', @level2type=N'COLUMN',@level2name=N'criteria_status';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'生效时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_processcriteria', @level2type=N'COLUMN',@level2name=N'start_date';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'失效时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_processcriteria', @level2type=N'COLUMN',@level2name=N'end_date';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_processcriteria', @level2type=N'COLUMN',@level2name=N'utc_create';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_processcriteria', @level2type=N'COLUMN',@level2name=N'utc_update';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_processcriteria', @level2type=N'COLUMN',@level2name=N'create_by';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'变更人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_processcriteria', @level2type=N'COLUMN',@level2name=N'update_by';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_processcriteria', @level2type=N'COLUMN',@level2name=N'note';
-- begin--cpo_criteria_version--
if exists (select 1   
            from  sysobjects   
           where  id = object_id('cpo_criteriaversion')   
            and   type = 'U')   
   drop table cpo_criteria_version   
go
create table cpo_criteria_version (
	criteria_version_id bigint not null IDENTITY(1,1)  ,
	version_name   varchar(512) ,
	user_id   bigint ,
	default_version   varchar(2) ,
	criteria_status   varchar(2) ,
	start_date  datetime  ,
	end_date  datetime  ,
	utc_create  datetime  ,
	utc_update  datetime  ,
	create_by   bigint ,
	update_by   bigint ,
	note   varchar(1024) ,
	primary key (criteria_version_id) 
);

-- Add comments to the columns
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'记录id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_criteriaversion', @level2type=N'COLUMN',@level2name=N'criteria_version_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'版本名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_criteriaversion', @level2type=N'COLUMN',@level2name=N'version_name';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_criteriaversion', @level2type=N'COLUMN',@level2name=N'user_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'默认版本' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_criteriaversion', @level2type=N'COLUMN',@level2name=N'default_version';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_criteriaversion', @level2type=N'COLUMN',@level2name=N'criteria_status';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'开始时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_criteriaversion', @level2type=N'COLUMN',@level2name=N'start_date';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'截止时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_criteriaversion', @level2type=N'COLUMN',@level2name=N'end_date';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_criteriaversion', @level2type=N'COLUMN',@level2name=N'utc_create';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_criteriaversion', @level2type=N'COLUMN',@level2name=N'utc_update';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_criteriaversion', @level2type=N'COLUMN',@level2name=N'create_by';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'变更人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_criteriaversion', @level2type=N'COLUMN',@level2name=N'update_by';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_criteriaversion', @level2type=N'COLUMN',@level2name=N'note';
-- end --

-- begin--cpo_factory_criteria--
if exists (select 1   
            from  sysobjects   
           where  id = object_id('cpo_factorycriteria')   
            and   type = 'U')   
   drop table cpo_factory_criteria   
go
create table cpo_factory_criteria (
	factory_criteria_id bigint not null IDENTITY(1,1)  ,
	criteria_code   varchar(50) ,
	criteria_object   varchar(50) ,
	factory_id   varchar(50) ,
	order_type   varchar(10) ,
	mandatory   varchar(1) ,
	criteria_type    varchar(2) ,
	criteria_version_id   bigint ,
	original_source_id   bigint ,
	criteria_status   varchar(2) ,
	start_date  datetime  ,
	end_date  datetime  ,
	utc_create  datetime  ,
	utc_update  datetime  ,
	create_by   bigint ,
	update_by   bigint ,
	note   varchar(1024) ,
	primary key (factory_criteria_id) 
);

-- Add comments to the columns
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'记录id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factorycriteria', @level2type=N'COLUMN',@level2name=N'factory_criteria_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标准参数代号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factorycriteria', @level2type=N'COLUMN',@level2name=N'criteria_code';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标准参数对象' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factorycriteria', @level2type=N'COLUMN',@level2name=N'criteria_object';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工厂id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factorycriteria', @level2type=N'COLUMN',@level2name=N'factory_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'order_type' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factorycriteria', @level2type=N'COLUMN',@level2name=N'order_type';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'强制性' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factorycriteria', @level2type=N'COLUMN',@level2name=N'mandatory';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标准类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factorycriteria', @level2type=N'COLUMN',@level2name=N'criteria_type ';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标准版本id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factorycriteria', @level2type=N'COLUMN',@level2name=N'criteria_version_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'original_source_id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factorycriteria', @level2type=N'COLUMN',@level2name=N'original_source_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factorycriteria', @level2type=N'COLUMN',@level2name=N'criteria_status';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'生效时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factorycriteria', @level2type=N'COLUMN',@level2name=N'start_date';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'失效时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factorycriteria', @level2type=N'COLUMN',@level2name=N'end_date';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factorycriteria', @level2type=N'COLUMN',@level2name=N'utc_create';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factorycriteria', @level2type=N'COLUMN',@level2name=N'utc_update';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factorycriteria', @level2type=N'COLUMN',@level2name=N'create_by';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'变更人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factorycriteria', @level2type=N'COLUMN',@level2name=N'update_by';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factorycriteria', @level2type=N'COLUMN',@level2name=N'note';
-- end --

-- begin--cpo_criteria_condition--
if exists (select 1   
            from  sysobjects   
           where  id = object_id('cpo_criteriacondition')   
            and   type = 'U')   
   drop table cpo_criteria_condition   
go
create table cpo_criteria_condition (
	crit_condi_id bigint not null IDENTITY(1,1)  ,
	factory_criteria_id   bigint ,
	factory_ids   varchar(255) ,
	application_working_no   varchar(8000) ,
	crit_condition   varchar(2) ,
	value_type   varchar(1) ,
	condition_value_1   varchar(50) ,
	condition_value_2   varchar(50) ,
	criteria_value   float ,
	start_date  datetime  ,
	end_date  datetime  ,
	utc_create  datetime  ,
	utc_update  datetime  ,
	create_by   bigint ,
	update_by   bigint ,
	note   varchar(1024) ,
	primary key (crit_condi_id) 
);

-- Add comments to the columns
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'记录id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_criteriacondition', @level2type=N'COLUMN',@level2name=N'crit_condi_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标准id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_criteriacondition', @level2type=N'COLUMN',@level2name=N'factory_criteria_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工厂ids' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_criteriacondition', @level2type=N'COLUMN',@level2name=N'factory_ids';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'作用款' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_criteriacondition', @level2type=N'COLUMN',@level2name=N'application_working_no';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'条件 ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_criteriacondition', @level2type=N'COLUMN',@level2name=N'crit_condition';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'条件值类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_criteriacondition', @level2type=N'COLUMN',@level2name=N'value_type';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'条件值1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_criteriacondition', @level2type=N'COLUMN',@level2name=N'condition_value_1';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'条件值2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_criteriacondition', @level2type=N'COLUMN',@level2name=N'condition_value_2';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_criteriacondition', @level2type=N'COLUMN',@level2name=N'criteria_value';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'开始时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_criteriacondition', @level2type=N'COLUMN',@level2name=N'start_date';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'失效时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_criteriacondition', @level2type=N'COLUMN',@level2name=N'end_date';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_criteriacondition', @level2type=N'COLUMN',@level2name=N'utc_create';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_criteriacondition', @level2type=N'COLUMN',@level2name=N'utc_update';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_criteriacondition', @level2type=N'COLUMN',@level2name=N'create_by';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'变更人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_criteriacondition', @level2type=N'COLUMN',@level2name=N'update_by';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_criteriacondition', @level2type=N'COLUMN',@level2name=N'note';
-- end --

-- begin--cpo_document--
if exists (select 1   
            from  sysobjects   
           where  id = object_id('cpo_document')   
            and   type = 'U')   
   drop table cpo_document   
go
create table cpo_document (
	document_id bigint not null IDENTITY(1,1)  ,
	document_old_name   varchar(255) ,
	document_name   varchar(255) ,
	document_url   varchar(500) ,
	document_type   varchar(2) ,
	source   varchar(50) ,
	season   varchar(5) ,
	month   int ,
	fr_flag   varchar(1) ,
	ax_flag   varchar(1) ,
	document_status   varchar(2) ,
	order_date  datetime  ,
	utc_create  datetime  ,
	utc_update  datetime  ,
	create_by   bigint ,
	update_by   bigint ,
	note   varchar(1024) ,
	primary key (document_id) 
);

-- Add comments to the columns
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'记录id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_document', @level2type=N'COLUMN',@level2name=N'document_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文档曾用名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_document', @level2type=N'COLUMN',@level2name=N'document_old_name';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文档名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_document', @level2type=N'COLUMN',@level2name=N'document_name';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文档路径' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_document', @level2type=N'COLUMN',@level2name=N'document_url';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文档类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_document', @level2type=N'COLUMN',@level2name=N'document_type';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文档来源' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_document', @level2type=N'COLUMN',@level2name=N'source';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'季度' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_document', @level2type=N'COLUMN',@level2name=N'season';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'月份' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_document', @level2type=N'COLUMN',@level2name=N'month';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fr_flag' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_document', @level2type=N'COLUMN',@level2name=N'fr_flag';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ax_flag' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_document', @level2type=N'COLUMN',@level2name=N'ax_flag';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_document', @level2type=N'COLUMN',@level2name=N'document_status';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Order_date' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_document', @level2type=N'COLUMN',@level2name=N'order_date';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_document', @level2type=N'COLUMN',@level2name=N'utc_create';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_document', @level2type=N'COLUMN',@level2name=N'utc_update';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_document', @level2type=N'COLUMN',@level2name=N'create_by';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'变更人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_document', @level2type=N'COLUMN',@level2name=N'update_by';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_document', @level2type=N'COLUMN',@level2name=N'note';
-- end --

-- begin--cpo_customer_po_record--
if exists (select 1   
            from  sysobjects   
           where  id = object_id('cpo_customerporecord')   
            and   type = 'U')   
   drop table cpo_customer_po_record   
go
create table cpo_customer_po_record (
	customer_po_id bigint not null IDENTITY(1,1)  ,
	document_id   bigint ,
	working_no   varchar(255) ,
	gps_factory   varchar(30) ,
	assigned_factory   varchar(30) ,
	po_number   varchar(255) ,
	po_type   varchar(20) ,
	customer_no   varchar(255) ,
	article_no   varchar(255) ,
	article_description   varchar(512) ,
	class_code   varchar(255) ,
	order_group   varchar(255) ,
	brand   varchar(255) ,
	total_qty   varchar(10) ,
	price_per_unit   float(16,2) ,
	cust_size_run   varchar(10) ,
	tech_notation   varchar(10) ,
	customer_size   varchar(10) ,
	tech_size   varchar(10) ,
	order_qty   varchar(10) ,
	shipped_qty   varchar(10) ,
	division   varchar(10) ,
	classification   varchar(255) ,
	warehouse   varchar(255) ,
	season   varchar(10) ,
	cust_req_date  datetime  ,
	plan_date  datetime  ,
	po_batch_date  datetime  ,
	first_prod_date  datetime  ,
	last_prod_date  datetime  ,
	ship_instruction   varchar(255) ,
	remark   varchar(512) ,
	tech_concept   varchar(255) ,
	tech_concept_desc   varchar(512) ,
	tech_comp_desc   varchar(512) ,
	prior_indication   varchar(64) ,
	subs_ship_to_no   varchar(255) ,
	vas_shas_code_non_us   varchar(255) ,
	for_account_of   varchar(255) ,
	seller   varchar(255) ,
	ship_mode   varchar(50) ,
	cust_order_no   varchar(255) ,
	order_type   varchar(50) ,
	release_status   varchar(255) ,
	shipped_status   int ,
	mtfc_number   varchar(255) ,
	client_number   varchar(50) ,
	purc_group_code   varchar(255) ,
	contract_number   varchar(255) ,
	types   varchar(255) ,
	last_update_date  datetime  ,
	model_number   varchar(50) ,
	model_name   varchar(255) ,
	gender   varchar(1) ,
	busi_model_attr   varchar(255) ,
	psdd  datetime  ,
	podd  datetime  ,
	comfirm_delay   int ,
	delivery_delay   int ,
	mark_for_addr   varchar(512) ,
	total_mechan_amount   float(16,2) ,
	total_tax_amount   float(16,2) ,
	total_adjustsment   float(16,2) ,
	total_doc_amount   float(16,2) ,
	pre_ord_id   varchar(20) ,
	order_country   varchar(20) ,
	order_status   varchar(5) ,
	order_actual_type   varchar(30) ,
	utc_create  datetime  ,
	utc_update  datetime  ,
	status   int ,
	create_by   bigint ,
	update_by   bigint ,
	note   varchar(1024) ,
	primary key (customer_po_id) 
);

-- Add comments to the columns
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'customer_po' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_customerporecord', @level2type=N'COLUMN',@level2name=N'customer_po_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'document id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_customerporecord', @level2type=N'COLUMN',@level2name=N'document_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Working Number' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_customerporecord', @level2type=N'COLUMN',@level2name=N'working_no';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'GPS Factory' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_customerporecord', @level2type=N'COLUMN',@level2name=N'gps_factory';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Assigned Factory' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_customerporecord', @level2type=N'COLUMN',@level2name=N'assigned_factory';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PO Number' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_customerporecord', @level2type=N'COLUMN',@level2name=N'po_number';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'POType' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_customerporecord', @level2type=N'COLUMN',@level2name=N'po_type';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Customer Number' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_customerporecord', @level2type=N'COLUMN',@level2name=N'customer_no';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Article Number' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_customerporecord', @level2type=N'COLUMN',@level2name=N'article_no';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Article Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_customerporecord', @level2type=N'COLUMN',@level2name=N'article_description';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Class Code' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_customerporecord', @level2type=N'COLUMN',@level2name=N'class_code';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Order Group' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_customerporecord', @level2type=N'COLUMN',@level2name=N'order_group';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Brand ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_customerporecord', @level2type=N'COLUMN',@level2name=N'brand';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Total Qty' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_customerporecord', @level2type=N'COLUMN',@level2name=N'total_qty';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Price Per Unit' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_customerporecord', @level2type=N'COLUMN',@level2name=N'price_per_unit';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Customer Size Run' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_customerporecord', @level2type=N'COLUMN',@level2name=N'cust_size_run';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Technical Notation' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_customerporecord', @level2type=N'COLUMN',@level2name=N'tech_notation';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Customer Size' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_customerporecord', @level2type=N'COLUMN',@level2name=N'customer_size';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Technical Size' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_customerporecord', @level2type=N'COLUMN',@level2name=N'tech_size';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ordered Qty' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_customerporecord', @level2type=N'COLUMN',@level2name=N'order_qty';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Shipped Qty' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_customerporecord', @level2type=N'COLUMN',@level2name=N'shipped_qty';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Division' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_customerporecord', @level2type=N'COLUMN',@level2name=N'division';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Classification ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_customerporecord', @level2type=N'COLUMN',@level2name=N'classification';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Warehouse' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_customerporecord', @level2type=N'COLUMN',@level2name=N'warehouse';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'season' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_customerporecord', @level2type=N'COLUMN',@level2name=N'season';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Customer Request Date' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_customerporecord', @level2type=N'COLUMN',@level2name=N'cust_req_date';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Plan Date' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_customerporecord', @level2type=N'COLUMN',@level2name=N'plan_date';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PO Batch Date' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_customerporecord', @level2type=N'COLUMN',@level2name=N'po_batch_date';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'First Production Date' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_customerporecord', @level2type=N'COLUMN',@level2name=N'first_prod_date';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Last Production Date' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_customerporecord', @level2type=N'COLUMN',@level2name=N'last_prod_date';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Shipping Instruction' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_customerporecord', @level2type=N'COLUMN',@level2name=N'ship_instruction';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Remark' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_customerporecord', @level2type=N'COLUMN',@level2name=N'remark';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Technology Concept' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_customerporecord', @level2type=N'COLUMN',@level2name=N'tech_concept';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Technology Concept Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_customerporecord', @level2type=N'COLUMN',@level2name=N'tech_concept_desc';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Technology Component Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_customerporecord', @level2type=N'COLUMN',@level2name=N'tech_comp_desc';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Priority Indicator' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_customerporecord', @level2type=N'COLUMN',@level2name=N'prior_indication';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Subsidiary Ship-To Number' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_customerporecord', @level2type=N'COLUMN',@level2name=N'subs_ship_to_no';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'VAS/SHAS Code Non-US' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_customerporecord', @level2type=N'COLUMN',@level2name=N'vas_shas_code_non_us';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'For Account Of' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_customerporecord', @level2type=N'COLUMN',@level2name=N'for_account_of';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Seller' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_customerporecord', @level2type=N'COLUMN',@level2name=N'seller';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ship Mode' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_customerporecord', @level2type=N'COLUMN',@level2name=N'ship_mode';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Customer Order Number' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_customerporecord', @level2type=N'COLUMN',@level2name=N'cust_order_no';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Order Type' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_customerporecord', @level2type=N'COLUMN',@level2name=N'order_type';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Release Status' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_customerporecord', @level2type=N'COLUMN',@level2name=N'release_status';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ShippedStatus' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_customerporecord', @level2type=N'COLUMN',@level2name=N'shipped_status';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'MTFC Number' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_customerporecord', @level2type=N'COLUMN',@level2name=N'mtfc_number';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Client Number' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_customerporecord', @level2type=N'COLUMN',@level2name=N'client_number';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Purchasing Group Code' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_customerporecord', @level2type=N'COLUMN',@level2name=N'purc_group_code';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Contract Number' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_customerporecord', @level2type=N'COLUMN',@level2name=N'contract_number';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Types' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_customerporecord', @level2type=N'COLUMN',@level2name=N'types';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Last Update Date' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_customerporecord', @level2type=N'COLUMN',@level2name=N'last_update_date';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Model Number' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_customerporecord', @level2type=N'COLUMN',@level2name=N'model_number';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Model Name' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_customerporecord', @level2type=N'COLUMN',@level2name=N'model_name';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Gender' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_customerporecord', @level2type=N'COLUMN',@level2name=N'gender';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Business Model Attribute' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_customerporecord', @level2type=N'COLUMN',@level2name=N'busi_model_attr';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PSDD' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_customerporecord', @level2type=N'COLUMN',@level2name=N'psdd';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PODD' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_customerporecord', @level2type=N'COLUMN',@level2name=N'podd';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Confirmation Delay' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_customerporecord', @level2type=N'COLUMN',@level2name=N'comfirm_delay';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Delivery Delay' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_customerporecord', @level2type=N'COLUMN',@level2name=N'delivery_delay';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mark for Address' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_customerporecord', @level2type=N'COLUMN',@level2name=N'mark_for_addr';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Total Mechandise Amount' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_customerporecord', @level2type=N'COLUMN',@level2name=N'total_mechan_amount';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Total Tax Amount' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_customerporecord', @level2type=N'COLUMN',@level2name=N'total_tax_amount';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Total Adjustments' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_customerporecord', @level2type=N'COLUMN',@level2name=N'total_adjustsment';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Total Document Amount' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_customerporecord', @level2type=N'COLUMN',@level2name=N'total_doc_amount';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'pre_ord_id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_customerporecord', @level2type=N'COLUMN',@level2name=N'pre_ord_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'order_country' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_customerporecord', @level2type=N'COLUMN',@level2name=N'order_country';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Order Status' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_customerporecord', @level2type=N'COLUMN',@level2name=N'order_status';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'订单实际类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_customerporecord', @level2type=N'COLUMN',@level2name=N'order_actual_type';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_customerporecord', @level2type=N'COLUMN',@level2name=N'utc_create';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_customerporecord', @level2type=N'COLUMN',@level2name=N'utc_update';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_customerporecord', @level2type=N'COLUMN',@level2name=N'status';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_customerporecord', @level2type=N'COLUMN',@level2name=N'create_by';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'变更人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_customerporecord', @level2type=N'COLUMN',@level2name=N'update_by';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_customerporecord', @level2type=N'COLUMN',@level2name=N'note';
-- end --

-- begin--cpo_customer_info--
if exists (select 1   
            from  sysobjects   
           where  id = object_id('cpo_customerinfo')   
            and   type = 'U')   
   drop table cpo_customer_info   
go
create table cpo_customer_info (
	cust_info_id bigint not null IDENTITY(1,1)  ,
	customer_no   varchar(30) ,
	cust_no_type   varchar(10) ,
	cust_type   varchar(2) ,
	country   varchar(64) ,
	country_code   varchar(10) ,
	organise_type   varchar(20) ,
	region   varchar(30) ,
	utc_create  datetime  ,
	utc_update  datetime  ,
	cust_info_status   varchar(1) ,
	create_by   bigint ,
	update_by   bigint ,
	note   varchar(1024) ,
	primary key (cust_info_id) 
);

-- Add comments to the columns
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'记录id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_customerinfo', @level2type=N'COLUMN',@level2name=N'cust_info_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Cust.No.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_customerinfo', @level2type=N'COLUMN',@level2name=N'customer_no';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Cust.No type' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_customerinfo', @level2type=N'COLUMN',@level2name=N'cust_no_type';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Cust_type' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_customerinfo', @level2type=N'COLUMN',@level2name=N'cust_type';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'country' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_customerinfo', @level2type=N'COLUMN',@level2name=N'country';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Country code' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_customerinfo', @level2type=N'COLUMN',@level2name=N'country_code';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'organise type' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_customerinfo', @level2type=N'COLUMN',@level2name=N'organise_type';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Region' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_customerinfo', @level2type=N'COLUMN',@level2name=N'region';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_customerinfo', @level2type=N'COLUMN',@level2name=N'utc_create';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_customerinfo', @level2type=N'COLUMN',@level2name=N'utc_update';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_customerinfo', @level2type=N'COLUMN',@level2name=N'cust_info_status';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_customerinfo', @level2type=N'COLUMN',@level2name=N'create_by';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'变更人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_customerinfo', @level2type=N'COLUMN',@level2name=N'update_by';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_customerinfo', @level2type=N'COLUMN',@level2name=N'note';
-- end --

-- begin--cpo_factory_assignment--
if exists (select 1   
            from  sysobjects   
           where  id = object_id('cpo_factoryassignment')   
            and   type = 'U')   
   drop table cpo_factory_assignment   
go
create table cpo_factory_assignment (
	fact_assign_id bigint not null IDENTITY(1,1)  ,
	assign_source_id   bigint ,
	po   varchar(50) ,
	customer_no   varchar(50) ,
	plan_month   varchar(30) ,
	assign_source   varchar(2) ,
	size_group   varchar(30) ,
	contract_no   varchar(30) ,
	order_type   varchar(2) ,
	document_id   bigint ,
	pre_ord_id   varchar(255) ,
	working_no   varchar(255) ,
	gps_factory   varchar(30) ,
	pv_quantity   float ,
	assigned_factory   varchar(30) ,
	a_source   varchar(30) ,
	last_prod_fact   varchar(50) ,
	organise_type   varchar(20) ,
	order_country   varchar(255) ,
	coo   varchar(50) ,
	leftover   float ,
	leftover_fty   varchar(10) ,
	pullforward   float ,
	pullforward_fty   varchar(10) ,
	corrected_source   varchar(50) ,
	base_style   varchar(50) ,
	class_code   varchar(255) ,
	order_group   varchar(255) ,
	brand   varchar(255) ,
	article_no   varchar(255) ,
	fabric_type   varchar(50) ,
	product_type   varchar(50) ,
	art_lead_time   varchar(10) ,
	supply_chain_track   varchar(10) ,
	working_no_range   varchar(50) ,
	request_date  datetime  ,
	season   varchar(255) ,
	season_remark   varchar(50) ,
	total_qty   varchar(255) ,
	eu_rate   float ,
	eu_quantity   float ,
	china_rate   float ,
	china_quantity   float ,
	sum_quantity   float ,
	forecast_qty   varchar(20) ,
	open_forecast_qty   varchar(20) ,
	order_actual_type   varchar(30) ,
	pre_doc_qty   varchar(20) ,
	plan_date  datetime  ,
	po_batch_date  datetime  ,
	first_prod_date  datetime  ,
	last_prod_date  datetime  ,
	psdd  datetime  ,
	podd  datetime  ,
	order_quantity_by_plan_date   varchar(255) ,
	mkt_assigned_result   varchar(1024) ,
	half_month_period   varchar(10) ,
	utc_create  datetime  ,
	utc_update  datetime  ,
	assign_result_status   varchar(1) ,
	create_by   bigint ,
	update_by   bigint ,
	note   varchar(1024) ,
	primary key (fact_assign_id) 
);

-- Add comments to the columns
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'记录id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factoryassignment', @level2type=N'COLUMN',@level2name=N'fact_assign_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'source id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factoryassignment', @level2type=N'COLUMN',@level2name=N'assign_source_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PO' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factoryassignment', @level2type=N'COLUMN',@level2name=N'po';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'customer No' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factoryassignment', @level2type=N'COLUMN',@level2name=N'customer_no';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'plan_month' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factoryassignment', @level2type=N'COLUMN',@level2name=N'plan_month';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'source' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factoryassignment', @level2type=N'COLUMN',@level2name=N'assign_source';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Size group' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factoryassignment', @level2type=N'COLUMN',@level2name=N'size_group';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'contract_no' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factoryassignment', @level2type=N'COLUMN',@level2name=N'contract_no';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'order Type' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factoryassignment', @level2type=N'COLUMN',@level2name=N'order_type';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'document id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factoryassignment', @level2type=N'COLUMN',@level2name=N'document_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'pre_ord_id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factoryassignment', @level2type=N'COLUMN',@level2name=N'pre_ord_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'working no' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factoryassignment', @level2type=N'COLUMN',@level2name=N'working_no';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'GPS Factory' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factoryassignment', @level2type=N'COLUMN',@level2name=N'gps_factory';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'pv_quantity' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factoryassignment', @level2type=N'COLUMN',@level2name=N'pv_quantity';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Assigned Factory' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factoryassignment', @level2type=N'COLUMN',@level2name=N'assigned_factory';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A source' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factoryassignment', @level2type=N'COLUMN',@level2name=N'a_source';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Last Production Factory' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factoryassignment', @level2type=N'COLUMN',@level2name=N'last_prod_fact';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'EU/NON EU' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factoryassignment', @level2type=N'COLUMN',@level2name=N'organise_type';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Order Country' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factoryassignment', @level2type=N'COLUMN',@level2name=N'order_country';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'COO' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factoryassignment', @level2type=N'COLUMN',@level2name=N'coo';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'leftover' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factoryassignment', @level2type=N'COLUMN',@level2name=N'leftover';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'leftover_fty' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factoryassignment', @level2type=N'COLUMN',@level2name=N'leftover_fty';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'pullforward' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factoryassignment', @level2type=N'COLUMN',@level2name=N'pullforward';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'pullforward_fty' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factoryassignment', @level2type=N'COLUMN',@level2name=N'pullforward_fty';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'corrected source' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factoryassignment', @level2type=N'COLUMN',@level2name=N'corrected_source';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'base style' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factoryassignment', @level2type=N'COLUMN',@level2name=N'base_style';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Class Code' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factoryassignment', @level2type=N'COLUMN',@level2name=N'class_code';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Order Group' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factoryassignment', @level2type=N'COLUMN',@level2name=N'order_group';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Brand ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factoryassignment', @level2type=N'COLUMN',@level2name=N'brand';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Article Number' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factoryassignment', @level2type=N'COLUMN',@level2name=N'article_no';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'fabricType' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factoryassignment', @level2type=N'COLUMN',@level2name=N'fabric_type';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Product Type' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factoryassignment', @level2type=N'COLUMN',@level2name=N'product_type';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Article Lead time' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factoryassignment', @level2type=N'COLUMN',@level2name=N'art_lead_time';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'supply chain track' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factoryassignment', @level2type=N'COLUMN',@level2name=N'supply_chain_track';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'workingNo range' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factoryassignment', @level2type=N'COLUMN',@level2name=N'working_no_range';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Request Date' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factoryassignment', @level2type=N'COLUMN',@level2name=N'request_date';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'season' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factoryassignment', @level2type=N'COLUMN',@level2name=N'season';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'season remark' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factoryassignment', @level2type=N'COLUMN',@level2name=N'season_remark';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Total Qty' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factoryassignment', @level2type=N'COLUMN',@level2name=N'total_qty';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'eu_rate' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factoryassignment', @level2type=N'COLUMN',@level2name=N'eu_rate';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'eu_quantity' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factoryassignment', @level2type=N'COLUMN',@level2name=N'eu_quantity';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'china_rate' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factoryassignment', @level2type=N'COLUMN',@level2name=N'china_rate';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'china_quantity' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factoryassignment', @level2type=N'COLUMN',@level2name=N'china_quantity';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'sum_quantity' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factoryassignment', @level2type=N'COLUMN',@level2name=N'sum_quantity';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Forecast Qty' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factoryassignment', @level2type=N'COLUMN',@level2name=N'forecast_qty';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'open_forecast_qty' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factoryassignment', @level2type=N'COLUMN',@level2name=N'open_forecast_qty';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'订单实际类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factoryassignment', @level2type=N'COLUMN',@level2name=N'order_actual_type';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'pre_doc_qty' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factoryassignment', @level2type=N'COLUMN',@level2name=N'pre_doc_qty';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Plan Date' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factoryassignment', @level2type=N'COLUMN',@level2name=N'plan_date';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PO Batch Date' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factoryassignment', @level2type=N'COLUMN',@level2name=N'po_batch_date';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'First Production Date' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factoryassignment', @level2type=N'COLUMN',@level2name=N'first_prod_date';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Last Production Date' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factoryassignment', @level2type=N'COLUMN',@level2name=N'last_prod_date';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PSDD' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factoryassignment', @level2type=N'COLUMN',@level2name=N'psdd';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PODD' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factoryassignment', @level2type=N'COLUMN',@level2name=N'podd';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Order Quantity by Plan Date' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factoryassignment', @level2type=N'COLUMN',@level2name=N'order_quantity_by_plan_date';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'mkt_assigned_result' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factoryassignment', @level2type=N'COLUMN',@level2name=N'mkt_assigned_result';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'half_month_period' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factoryassignment', @level2type=N'COLUMN',@level2name=N'half_month_period';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factoryassignment', @level2type=N'COLUMN',@level2name=N'utc_create';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factoryassignment', @level2type=N'COLUMN',@level2name=N'utc_update';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factoryassignment', @level2type=N'COLUMN',@level2name=N'assign_result_status';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factoryassignment', @level2type=N'COLUMN',@level2name=N'create_by';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'变更人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factoryassignment', @level2type=N'COLUMN',@level2name=N'update_by';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factoryassignment', @level2type=N'COLUMN',@level2name=N'note';
-- end --

-- begin--cpo_process--
if exists (select 1   
            from  sysobjects   
           where  id = object_id('cpo_process')   
            and   type = 'U')   
   drop table cpo_process   
go
create table cpo_process (
	process_id bigint not null IDENTITY(1,1)  ,
	process_category_id   bigint ,
	process_code   varchar(30) ,
	process_name   varchar(255) ,
	process_type   varchar(50) ,
	fr_external_id   varchar(10) ,
	utc_create  datetime  ,
	utc_update  datetime  ,
	process_status   varchar(1) ,
	create_by   bigint ,
	update_by   bigint ,
	note   varchar(1024) ,
	primary key (process_id) 
);

-- Add comments to the columns
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'记录id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_process', @level2type=N'COLUMN',@level2name=N'process_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'process category id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_process', @level2type=N'COLUMN',@level2name=N'process_category_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工序代号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_process', @level2type=N'COLUMN',@level2name=N'process_code';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工序名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_process', @level2type=N'COLUMN',@level2name=N'process_name';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工序类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_process', @level2type=N'COLUMN',@level2name=N'process_type';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'FR External ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_process', @level2type=N'COLUMN',@level2name=N'fr_external_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_process', @level2type=N'COLUMN',@level2name=N'utc_create';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_process', @level2type=N'COLUMN',@level2name=N'utc_update';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_process', @level2type=N'COLUMN',@level2name=N'process_status';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_process', @level2type=N'COLUMN',@level2name=N'create_by';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'变更人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_process', @level2type=N'COLUMN',@level2name=N'update_by';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_process', @level2type=N'COLUMN',@level2name=N'note';
-- end --

-- begin--cpo_factory--
if exists (select 1   
            from  sysobjects   
           where  id = object_id('cpo_factory')   
            and   type = 'U')   
   drop table cpo_factory   
go
create table cpo_factory (
	factory_id bigint not null IDENTITY(1,1)  ,
	factory_code   varchar(60) ,
	factory_simple_code   varchar(60) ,
	fact_simp_name   varchar(20) ,
	factory_name   varchar(255) ,
	factory_address   varchar(255) ,
	factory_phone_num   varchar(30) ,
	fr_factory_id   varchar(10) ,
	ax_factory_id   varchar(10) ,
	factory_type   varchar(1) ,
	factory_status   varchar(1) ,
	order_type   varchar(5) ,
	utc_create  datetime  ,
	utc_update  datetime  ,
	create_by   bigint ,
	update_by   bigint ,
	note   varchar(1024) ,
	primary key (factory_id) 
);

-- Add comments to the columns
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'记录id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factory', @level2type=N'COLUMN',@level2name=N'factory_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工厂代号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factory', @level2type=N'COLUMN',@level2name=N'factory_code';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工厂代号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factory', @level2type=N'COLUMN',@level2name=N'factory_simple_code';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工厂简称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factory', @level2type=N'COLUMN',@level2name=N'fact_simp_name';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工厂名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factory', @level2type=N'COLUMN',@level2name=N'factory_name';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工厂地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factory', @level2type=N'COLUMN',@level2name=N'factory_address';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工厂电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factory', @level2type=N'COLUMN',@level2name=N'factory_phone_num';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'fr工厂代码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factory', @level2type=N'COLUMN',@level2name=N'fr_factory_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'AX工厂代码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factory', @level2type=N'COLUMN',@level2name=N'ax_factory_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factory', @level2type=N'COLUMN',@level2name=N'factory_type';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factory', @level2type=N'COLUMN',@level2name=N'factory_status';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Order type' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factory', @level2type=N'COLUMN',@level2name=N'order_type';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factory', @level2type=N'COLUMN',@level2name=N'utc_create';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factory', @level2type=N'COLUMN',@level2name=N'utc_update';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factory', @level2type=N'COLUMN',@level2name=N'create_by';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'变更人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factory', @level2type=N'COLUMN',@level2name=N'update_by';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factory', @level2type=N'COLUMN',@level2name=N'note';
-- end --

-- begin--cpo_factory_process--
if exists (select 1   
            from  sysobjects   
           where  id = object_id('cpo_factoryprocess')   
            and   type = 'U')   
   drop table cpo_factory_process   
go
create table cpo_factory_process (
	factory_process_id bigint not null IDENTITY(1,1)  ,
	factory_id   varchar(30) ,
	process_id   bigint ,
	factory_process_type   varchar(1) ,
	utc_create  datetime  ,
	utc_update  datetime  ,
	create_by   bigint ,
	update_by   bigint ,
	note   varchar(1024) ,
	primary key (factory_process_id) 
);

-- Add comments to the columns
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'记录id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factoryprocess', @level2type=N'COLUMN',@level2name=N'factory_process_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工厂id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factoryprocess', @level2type=N'COLUMN',@level2name=N'factory_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工序id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factoryprocess', @level2type=N'COLUMN',@level2name=N'process_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工序类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factoryprocess', @level2type=N'COLUMN',@level2name=N'factory_process_type';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factoryprocess', @level2type=N'COLUMN',@level2name=N'utc_create';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factoryprocess', @level2type=N'COLUMN',@level2name=N'utc_update';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factoryprocess', @level2type=N'COLUMN',@level2name=N'create_by';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'变更人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factoryprocess', @level2type=N'COLUMN',@level2name=N'update_by';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factoryprocess', @level2type=N'COLUMN',@level2name=N'note';
-- end --

-- begin--cpo_working_no--
if exists (select 1   
            from  sysobjects   
           where  id = object_id('cpo_workingno')   
            and   type = 'U')   
   drop table cpo_working_no   
go
create table cpo_working_no (
	working_no_id bigint not null IDENTITY(1,1)  ,
	working_no   varchar(50) ,
	adidas_a_source   varchar(30) ,
	bowker_a_source   varchar(30) ,
	garment_producting_day   float ,
	working_no_range   varchar(255) ,
	main_fabric   varchar(255) ,
	t2_name   varchar(255) ,
	product_lead_time   int ,
	unit   varchar(255) ,
	b_source   varchar(10) ,
	c_source   varchar(10) ,
	d_source   varchar(10) ,
	product_name   varchar(128) ,
	pad_print_style   varchar(50) ,
	pad_print_item   varchar(50) ,
	mainfabric_desc   varchar(100) ,
	t2_coo   varchar(20) ,
	model_id   varchar(50) ,
	model_desc   varchar(255) ,
	smv   float ,
	mother_style   varchar(255) ,
	inner_smv   float ,
	top_smv   float ,
	bottom_smv   float ,
	gsp   varchar(5) ,
	wc_style   varchar(20) ,
	ei_set_up   varchar(50) ,
	special_process_remark   varchar(500) ,
	gender   varchar(10) ,
	lo_merch   varchar(30) ,
	base_fob   float ,
	costing_curr   varchar(10) ,
	product_mgr   varchar(30) ,
	tier_1_merch   varchar(30) ,
	developer   varchar(30) ,
	develop_type   varchar(30) ,
	dd_style   varchar(30) ,
	sports_code   varchar(255) ,
	utc_create  datetime  ,
	utc_update  datetime  ,
	work_no_status   varchar(2) ,
	create_by   bigint ,
	update_by   bigint ,
	note   varchar(1024) ,
	primary key (working_no_id) 
);

-- Add comments to the columns
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'记录id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_workingno', @level2type=N'COLUMN',@level2name=N'working_no_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'working no' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_workingno', @level2type=N'COLUMN',@level2name=N'working_no';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Adidas A Source' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_workingno', @level2type=N'COLUMN',@level2name=N'adidas_a_source';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Bowker A Source' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_workingno', @level2type=N'COLUMN',@level2name=N'bowker_a_source';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Garment Producting Day' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_workingno', @level2type=N'COLUMN',@level2name=N'garment_producting_day';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Range' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_workingno', @level2type=N'COLUMN',@level2name=N'working_no_range';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主身布种' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_workingno', @level2type=N'COLUMN',@level2name=N'main_fabric';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'T2 name' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_workingno', @level2type=N'COLUMN',@level2name=N't2_name';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ProductLeadTime' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_workingno', @level2type=N'COLUMN',@level2name=N'product_lead_time';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'unit' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_workingno', @level2type=N'COLUMN',@level2name=N'unit';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'B source' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_workingno', @level2type=N'COLUMN',@level2name=N'b_source';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'C source' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_workingno', @level2type=N'COLUMN',@level2name=N'c_source';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'D source' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_workingno', @level2type=N'COLUMN',@level2name=N'd_source';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Product Name' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_workingno', @level2type=N'COLUMN',@level2name=N'product_name';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'pad print style' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_workingno', @level2type=N'COLUMN',@level2name=N'pad_print_style';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'pad print item' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_workingno', @level2type=N'COLUMN',@level2name=N'pad_print_item';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'mainFabric desc' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_workingno', @level2type=N'COLUMN',@level2name=N'mainfabric_desc';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'T2 COO' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_workingno', @level2type=N'COLUMN',@level2name=N't2_coo';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'model ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_workingno', @level2type=N'COLUMN',@level2name=N'model_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'model_desc' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_workingno', @level2type=N'COLUMN',@level2name=N'model_desc';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'smv' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_workingno', @level2type=N'COLUMN',@level2name=N'smv';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'mother style' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_workingno', @level2type=N'COLUMN',@level2name=N'mother_style';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'inner smv' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_workingno', @level2type=N'COLUMN',@level2name=N'inner_smv';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'top smv' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_workingno', @level2type=N'COLUMN',@level2name=N'top_smv';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'bottom smv' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_workingno', @level2type=N'COLUMN',@level2name=N'bottom_smv';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Gsp' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_workingno', @level2type=N'COLUMN',@level2name=N'gsp';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Wc_style' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_workingno', @level2type=N'COLUMN',@level2name=N'wc_style';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'EI Set-up' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_workingno', @level2type=N'COLUMN',@level2name=N'ei_set_up';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'特殊工序备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_workingno', @level2type=N'COLUMN',@level2name=N'special_process_remark';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Gender' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_workingno', @level2type=N'COLUMN',@level2name=N'gender';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'LO Merch' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_workingno', @level2type=N'COLUMN',@level2name=N'lo_merch';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Base FOB' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_workingno', @level2type=N'COLUMN',@level2name=N'base_fob';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Costing Curr.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_workingno', @level2type=N'COLUMN',@level2name=N'costing_curr';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'product mgr' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_workingno', @level2type=N'COLUMN',@level2name=N'product_mgr';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'tier 1 merch' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_workingno', @level2type=N'COLUMN',@level2name=N'tier_1_merch';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'developer' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_workingno', @level2type=N'COLUMN',@level2name=N'developer';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'develop type' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_workingno', @level2type=N'COLUMN',@level2name=N'develop_type';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'dd_style' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_workingno', @level2type=N'COLUMN',@level2name=N'dd_style';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Sports code' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_workingno', @level2type=N'COLUMN',@level2name=N'sports_code';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_workingno', @level2type=N'COLUMN',@level2name=N'utc_create';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_workingno', @level2type=N'COLUMN',@level2name=N'utc_update';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_workingno', @level2type=N'COLUMN',@level2name=N'work_no_status';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_workingno', @level2type=N'COLUMN',@level2name=N'create_by';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'变更人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_workingno', @level2type=N'COLUMN',@level2name=N'update_by';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_workingno', @level2type=N'COLUMN',@level2name=N'note';
-- end --

-- begin--cpo_working_no_attributes--
if exists (select 1   
            from  sysobjects   
           where  id = object_id('cpo_workingnoattributes')   
            and   type = 'U')   
   drop table cpo_working_no_attributes   
go
create table cpo_working_no_attributes (
	work_no_attr_id bigint not null IDENTITY(1,1)  ,
	working_no_id   bigint ,
	working_no   varchar(50) ,
	category_code   varchar(255) ,
	category_value   varchar(255) ,
	attribute_code   varchar(255) ,
	attribute_value   varchar(255) ,
	weight   float ,
	utc_create  datetime  ,
	utc_update  datetime  ,
	attr_status   varchar(2) ,
	create_by   bigint ,
	update_by   bigint ,
	note   varchar(1024) ,
	primary key (work_no_attr_id) 
);

-- Add comments to the columns
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'记录id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_workingnoattributes', @level2type=N'COLUMN',@level2name=N'work_no_attr_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'working no id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_workingnoattributes', @level2type=N'COLUMN',@level2name=N'working_no_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'working_no' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_workingnoattributes', @level2type=N'COLUMN',@level2name=N'working_no';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'目录编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_workingnoattributes', @level2type=N'COLUMN',@level2name=N'category_code';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'目录值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_workingnoattributes', @level2type=N'COLUMN',@level2name=N'category_value';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'属性编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_workingnoattributes', @level2type=N'COLUMN',@level2name=N'attribute_code';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'属性值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_workingnoattributes', @level2type=N'COLUMN',@level2name=N'attribute_value';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'权重' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_workingnoattributes', @level2type=N'COLUMN',@level2name=N'weight';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_workingnoattributes', @level2type=N'COLUMN',@level2name=N'utc_create';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_workingnoattributes', @level2type=N'COLUMN',@level2name=N'utc_update';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_workingnoattributes', @level2type=N'COLUMN',@level2name=N'attr_status';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_workingnoattributes', @level2type=N'COLUMN',@level2name=N'create_by';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'变更人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_workingnoattributes', @level2type=N'COLUMN',@level2name=N'update_by';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_workingnoattributes', @level2type=N'COLUMN',@level2name=N'note';
-- end --

-- begin--cpo_factory_assignment_result--
if exists (select 1   
            from  sysobjects   
           where  id = object_id('cpo_factoryassignmentresult')   
            and   type = 'U')   
   drop table cpo_factory_assignment_result   
go
create table cpo_factory_assignment_result (
	assign_result_id bigint not null IDENTITY(1,1)  ,
	fact_assign_id   bigint ,
	cpo_no   varchar(255) ,
	mo   varchar(255) ,
	working_no   varchar(255) ,
	sugg_factory   varchar(50) ,
	a_source   varchar(50) ,
	corrected_source   varchar(50) ,
	last_prod_factory   varchar(50) ,
	confirm_factory   varchar(50) ,
	new_factory   varchar(50) ,
	old_factory   varchar(50) ,
	factory_score_detial   varchar(8000) ,
	special_order   varchar(100) ,
	transfer_order_info   varchar(200) ,
	pf_order   varchar(20) ,
	gsp   varchar(30) ,
	service_identify   varchar(20) ,
	customization_status   varchar(10) ,
	test   varchar(50) ,
	asian_size   varchar(20) ,
	japan_size   varchar(20) ,
	dd_style   varchar(20) ,
	new_ftyname   varchar(50) ,
	mix_size   varchar(50) ,
	athlete   varchar(50) ,
	ppc_status   varchar(5) ,
	flag_fr   varchar(1) ,
	flag_ax   varchar(1) ,
	transit_fr_remark   varchar(128) ,
	transit_ax_remark   varchar(128) ,
	mdp_fail_reason   varchar(128) ,
	pdp_fail_reason   varchar(128) ,
	psdd_factory  datetime  ,
	fpd_factory  datetime  ,
	transfer_reason   varchar(255) ,
	transfer_remark   varchar(255) ,
	updated_information   varchar(128) ,
	latest_fabric_pi_eta  datetime  ,
	latest_trim_pi_eta  datetime  ,
	main_mpo   varchar(30) ,
	t2_name_1st   varchar(30) ,
	fabric_rms_1st   varchar(30) ,
	fabric_po_1st   varchar(30) ,
	fabric_pi_date  datetime  ,
	no_168   varchar(20) ,
	timetable   varchar(30) ,
	utc_create  datetime  ,
	utc_update  datetime  ,
	assign_result_status   varchar(1) ,
	create_by   bigint ,
	update_by   bigint ,
	note   varchar(1024) ,
	primary key (assign_result_id) 
);

-- Add comments to the columns
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'记录id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factoryassignmentresult', @level2type=N'COLUMN',@level2name=N'assign_result_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'fact_assign_id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factoryassignmentresult', @level2type=N'COLUMN',@level2name=N'fact_assign_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'CPO No' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factoryassignmentresult', @level2type=N'COLUMN',@level2name=N'cpo_no';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'MO' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factoryassignmentresult', @level2type=N'COLUMN',@level2name=N'mo';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'working_no' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factoryassignmentresult', @level2type=N'COLUMN',@level2name=N'working_no';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'suggest factory' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factoryassignmentresult', @level2type=N'COLUMN',@level2name=N'sugg_factory';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'a source' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factoryassignmentresult', @level2type=N'COLUMN',@level2name=N'a_source';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'corrected_source' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factoryassignmentresult', @level2type=N'COLUMN',@level2name=N'corrected_source';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'last production factory' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factoryassignmentresult', @level2type=N'COLUMN',@level2name=N'last_prod_factory';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'confirm factory' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factoryassignmentresult', @level2type=N'COLUMN',@level2name=N'confirm_factory';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'new_factory' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factoryassignmentresult', @level2type=N'COLUMN',@level2name=N'new_factory';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'old_factory' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factoryassignmentresult', @level2type=N'COLUMN',@level2name=N'old_factory';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'factory score_detial' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factoryassignmentresult', @level2type=N'COLUMN',@level2name=N'factory_score_detial';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'订单特殊要求' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factoryassignmentresult', @level2type=N'COLUMN',@level2name=N'special_order';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'订单更改资料' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factoryassignmentresult', @level2type=N'COLUMN',@level2name=N'transfer_order_info';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PF ORDER' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factoryassignmentresult', @level2type=N'COLUMN',@level2name=N'pf_order';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'GSP' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factoryassignmentresult', @level2type=N'COLUMN',@level2name=N'gsp';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Serviceidentify' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factoryassignmentresult', @level2type=N'COLUMN',@level2name=N'service_identify';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Customization Status' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factoryassignmentresult', @level2type=N'COLUMN',@level2name=N'customization_status';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Test' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factoryassignmentresult', @level2type=N'COLUMN',@level2name=N'test';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'亚洲款' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factoryassignmentresult', @level2type=N'COLUMN',@level2name=N'asian_size';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'日本款' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factoryassignmentresult', @level2type=N'COLUMN',@level2name=N'japan_size';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'DD款' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factoryassignmentresult', @level2type=N'COLUMN',@level2name=N'dd_style';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'New Ftyname' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factoryassignmentresult', @level2type=N'COLUMN',@level2name=N'new_ftyname';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'大混码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factoryassignmentresult', @level2type=N'COLUMN',@level2name=N'mix_size';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Athlete' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factoryassignmentresult', @level2type=N'COLUMN',@level2name=N'athlete';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ppc status' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factoryassignmentresult', @level2type=N'COLUMN',@level2name=N'ppc_status';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Flag_fr' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factoryassignmentresult', @level2type=N'COLUMN',@level2name=N'flag_fr';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Flag_Ax' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factoryassignmentresult', @level2type=N'COLUMN',@level2name=N'flag_ax';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'transit_fr_remark' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factoryassignmentresult', @level2type=N'COLUMN',@level2name=N'transit_fr_remark';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'transit_ax_remark' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factoryassignmentresult', @level2type=N'COLUMN',@level2name=N'transit_ax_remark';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'MDPfailreason' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factoryassignmentresult', @level2type=N'COLUMN',@level2name=N'mdp_fail_reason';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PDPfailreason' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factoryassignmentresult', @level2type=N'COLUMN',@level2name=N'pdp_fail_reason';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'psddfactory' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factoryassignmentresult', @level2type=N'COLUMN',@level2name=N'psdd_factory';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'fpdfactory' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factoryassignmentresult', @level2type=N'COLUMN',@level2name=N'fpd_factory';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'转厂原因' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factoryassignmentresult', @level2type=N'COLUMN',@level2name=N'transfer_reason';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'转厂备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factoryassignmentresult', @level2type=N'COLUMN',@level2name=N'transfer_remark';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Updated Information' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factoryassignmentresult', @level2type=N'COLUMN',@level2name=N'updated_information';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Latest Fabric PI ETA' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factoryassignmentresult', @level2type=N'COLUMN',@level2name=N'latest_fabric_pi_eta';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'latest_trim_pi_eta' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factoryassignmentresult', @level2type=N'COLUMN',@level2name=N'latest_trim_pi_eta';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Main MPO#' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factoryassignmentresult', @level2type=N'COLUMN',@level2name=N'main_mpo';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'1st T2 Name' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factoryassignmentresult', @level2type=N'COLUMN',@level2name=N't2_name_1st';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'1st Fabric RMS#' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factoryassignmentresult', @level2type=N'COLUMN',@level2name=N'fabric_rms_1st';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'1st Fabric PO#' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factoryassignmentresult', @level2type=N'COLUMN',@level2name=N'fabric_po_1st';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'1st Fabric PI Date' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factoryassignmentresult', @level2type=N'COLUMN',@level2name=N'fabric_pi_date';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'168#' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factoryassignmentresult', @level2type=N'COLUMN',@level2name=N'no_168';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'timetable' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factoryassignmentresult', @level2type=N'COLUMN',@level2name=N'timetable';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factoryassignmentresult', @level2type=N'COLUMN',@level2name=N'utc_create';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factoryassignmentresult', @level2type=N'COLUMN',@level2name=N'utc_update';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factoryassignmentresult', @level2type=N'COLUMN',@level2name=N'assign_result_status';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factoryassignmentresult', @level2type=N'COLUMN',@level2name=N'create_by';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'变更人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factoryassignmentresult', @level2type=N'COLUMN',@level2name=N'update_by';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factoryassignmentresult', @level2type=N'COLUMN',@level2name=N'note';
-- end --

-- begin--cpo_assign_score--
if exists (select 1   
            from  sysobjects   
           where  id = object_id('cpo_assignscore')   
            and   type = 'U')   
   drop table cpo_assign_score   
go
create table cpo_assign_score (
	assign_score_id bigint not null IDENTITY(1,1)  ,
	customer_po_id   bigint ,
	factory_score_detial   varchar(8000) ,
	factory_sum_score   varchar(512) ,
	utc_create  datetime  ,
	utc_update  datetime  ,
	assign_score_status   varchar(1) ,
	create_by   bigint ,
	update_by   bigint ,
	note   varchar(1024) ,
	primary key (assign_score_id) 
);

-- Add comments to the columns
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'记录id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_assignscore', @level2type=N'COLUMN',@level2name=N'assign_score_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'customer po id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_assignscore', @level2type=N'COLUMN',@level2name=N'customer_po_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'factory score_detial' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_assignscore', @level2type=N'COLUMN',@level2name=N'factory_score_detial';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'factory_sum_score' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_assignscore', @level2type=N'COLUMN',@level2name=N'factory_sum_score';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_assignscore', @level2type=N'COLUMN',@level2name=N'utc_create';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_assignscore', @level2type=N'COLUMN',@level2name=N'utc_update';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_assignscore', @level2type=N'COLUMN',@level2name=N'assign_score_status';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_assignscore', @level2type=N'COLUMN',@level2name=N'create_by';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'变更人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_assignscore', @level2type=N'COLUMN',@level2name=N'update_by';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_assignscore', @level2type=N'COLUMN',@level2name=N'note';
-- end --

-- begin--cpo_admin_dict--
if exists (select 1   
            from  sysobjects   
           where  id = object_id('cpo_admindict')   
            and   type = 'U')   
   drop table cpo_admin_dict   
go
create table cpo_admin_dict (
	dictid bigint not null IDENTITY(1,1)  ,
	code   varchar(32) ,
	value   varchar(16) ,
	label   varchar(255) ,
	data   varchar(800) ,
	fmt   varchar(255) ,
	sort   int ,
	scode   varchar(16) ,
	lang   varchar(255) ,
	primary key (dictid) 
);

-- Add comments to the columns
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'序号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_admindict', @level2type=N'COLUMN',@level2name=N'dictid';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'参数代码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_admindict', @level2type=N'COLUMN',@level2name=N'code';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_admindict', @level2type=N'COLUMN',@level2name=N'value';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'名  称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_admindict', @level2type=N'COLUMN',@level2name=N'label';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数  据' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_admindict', @level2type=N'COLUMN',@level2name=N'data';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'格  式' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_admindict', @level2type=N'COLUMN',@level2name=N'fmt';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排  序' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_admindict', @level2type=N'COLUMN',@level2name=N'sort';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父参数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_admindict', @level2type=N'COLUMN',@level2name=N'scode';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'语言' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_admindict', @level2type=N'COLUMN',@level2name=N'lang';
-- end --

-- begin--cpo_admin_script--
if exists (select 1   
            from  sysobjects   
           where  id = object_id('cpo_adminscript')   
            and   type = 'U')   
   drop table cpo_admin_script   
go
create table cpo_admin_script (
	code varchar(50) not null   ,
	scripts   varchar(1000) ,
	label   varchar(50) ,
	kind   char(1) ,
	title   varchar(50) ,
	header   varchar(200) ,
	fmt   varchar(100) ,
	primary key (code) 
);

-- Add comments to the columns
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_adminscript', @level2type=N'COLUMN',@level2name=N'code';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'脚本' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_adminscript', @level2type=N'COLUMN',@level2name=N'scripts';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_adminscript', @level2type=N'COLUMN',@level2name=N'label';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_adminscript', @level2type=N'COLUMN',@level2name=N'kind';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_adminscript', @level2type=N'COLUMN',@level2name=N'title';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'头部' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_adminscript', @level2type=N'COLUMN',@level2name=N'header';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'格式' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_adminscript', @level2type=N'COLUMN',@level2name=N'fmt';
-- end --

-- begin--cpo_marketing_forecast--
if exists (select 1   
            from  sysobjects   
           where  id = object_id('cpo_marketingforecast')   
            and   type = 'U')   
   drop table cpo_marketing_forecast   
go
create table cpo_marketing_forecast (
	marketing_forecast_id bigint not null IDENTITY(1,1)  ,
	document_id   bigint ,
	rccp_division   varchar(255) ,
	projected_reference   varchar(255) ,
	lo   varchar(255) ,
	factory_id   varchar(255) ,
	factory_desc   varchar(255) ,
	development_factory   varchar(255) ,
	creation_center   varchar(255) ,
	business_segment   varchar(255) ,
	capability_name   varchar(255) ,
	otp_reference   varchar(255) ,
	rccp_season   varchar(255) ,
	demand_type   varchar(255) ,
	model_no   varchar(255) ,
	new_style_count_seasonal   varchar(255) ,
	likely_vol_adj   varchar(255) ,
	likely_vol_1   varchar(255) ,
	likely_vol_2   varchar(255) ,
	likely_vol_3   varchar(255) ,
	likely_vol_4   varchar(255) ,
	likely_vol_5   varchar(255) ,
	likely_vol_6   varchar(255) ,
	down_vol_tol   varchar(255) ,
	down_vol_adj   varchar(255) ,
	up_vol_tol   varchar(255) ,
	up_vol_adj   varchar(255) ,
	developer   varchar(255) ,
	product_mgr   varchar(255) ,
	working_no   varchar(255) ,
	quarter   varchar(255) ,
	sports_category   varchar(255) ,
	alloc_cat   varchar(255) ,
	cat_mkt_line   varchar(255) ,
	corp_mkt_line   varchar(255) ,
	sales_line   varchar(255) ,
	age_group   varchar(255) ,
	gender   varchar(255) ,
	product_speciality   varchar(255) ,
	timeline   varchar(255) ,
	retail_intro   varchar(255) ,
	retail_exit   varchar(255) ,
	first_xfty_date   varchar(255) ,
	last_xfty_date   varchar(255) ,
	product_type   varchar(255) ,
	product_group   varchar(255) ,
	unit_of_measure   varchar(255) ,
	sales_unit   varchar(255) ,
	carry_over   varchar(255) ,
	dev_type   varchar(255) ,
	corrected_source   varchar(255) ,
	fty_id   varchar(255) ,
	fty_status   varchar(255) ,
	fty_group   varchar(255) ,
	fty_group_name   varchar(255) ,
	segmentation   varchar(255) ,
	lo2   varchar(255) ,
	coo   varchar(255) ,
	coo_or_region   varchar(255) ,
	targ_tech   varchar(255) ,
	targ_mat   varchar(255) ,
	flex_source   varchar(255) ,
	priority   varchar(255) ,
	adj_p_grp   varchar(255) ,
	adj_tech   varchar(255) ,
	adj_mat   varchar(255) ,
	total_pt   varchar(255) ,
	adj_bu   varchar(255) ,
	status_milestones   varchar(255) ,
	offered_capacity   varchar(255) ,
	development_capacity   varchar(255) ,
	pre_order_assigned_result   varchar(8000) ,
	pre_order_quantity   varchar(20) ,
	flex_check   varchar(255) ,
	utc_update  datetime  ,
	status   int ,
	create_by   bigint ,
	update_by   bigint ,
	note   varchar(1024) ,
	primary key (marketing_forecast_id) 
);

-- Add comments to the columns
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'marketing_forecast' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_marketingforecast', @level2type=N'COLUMN',@level2name=N'marketing_forecast_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'document id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_marketingforecast', @level2type=N'COLUMN',@level2name=N'document_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'RCCP Division' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_marketingforecast', @level2type=N'COLUMN',@level2name=N'rccp_division';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Projected Reference' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_marketingforecast', @level2type=N'COLUMN',@level2name=N'projected_reference';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'LO' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_marketingforecast', @level2type=N'COLUMN',@level2name=N'lo';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Factory ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_marketingforecast', @level2type=N'COLUMN',@level2name=N'factory_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Factory DESC' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_marketingforecast', @level2type=N'COLUMN',@level2name=N'factory_desc';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Development Factory' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_marketingforecast', @level2type=N'COLUMN',@level2name=N'development_factory';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Creation Center' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_marketingforecast', @level2type=N'COLUMN',@level2name=N'creation_center';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Business Segment' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_marketingforecast', @level2type=N'COLUMN',@level2name=N'business_segment';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Capability Capability Name' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_marketingforecast', @level2type=N'COLUMN',@level2name=N'capability_name';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'OTP Reference' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_marketingforecast', @level2type=N'COLUMN',@level2name=N'otp_reference';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'RCCP Season' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_marketingforecast', @level2type=N'COLUMN',@level2name=N'rccp_season';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Demand Type' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_marketingforecast', @level2type=N'COLUMN',@level2name=N'demand_type';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Model No' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_marketingforecast', @level2type=N'COLUMN',@level2name=N'model_no';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'New Style Count Seasonal' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_marketingforecast', @level2type=N'COLUMN',@level2name=N'new_style_count_seasonal';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Likely Volume adjusted' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_marketingforecast', @level2type=N'COLUMN',@level2name=N'likely_vol_adj';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Likely Volume 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_marketingforecast', @level2type=N'COLUMN',@level2name=N'likely_vol_1';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Likely Volume 2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_marketingforecast', @level2type=N'COLUMN',@level2name=N'likely_vol_2';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Likely Volume 3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_marketingforecast', @level2type=N'COLUMN',@level2name=N'likely_vol_3';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Likely Volume 4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_marketingforecast', @level2type=N'COLUMN',@level2name=N'likely_vol_4';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Likely Volume 5' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_marketingforecast', @level2type=N'COLUMN',@level2name=N'likely_vol_5';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Likely Volume 6' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_marketingforecast', @level2type=N'COLUMN',@level2name=N'likely_vol_6';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Downside Volume Total' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_marketingforecast', @level2type=N'COLUMN',@level2name=N'down_vol_tol';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Downside Volume adjusted' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_marketingforecast', @level2type=N'COLUMN',@level2name=N'down_vol_adj';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Upside Volume Total' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_marketingforecast', @level2type=N'COLUMN',@level2name=N'up_vol_tol';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Upside Volume adjusted' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_marketingforecast', @level2type=N'COLUMN',@level2name=N'up_vol_adj';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Developer' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_marketingforecast', @level2type=N'COLUMN',@level2name=N'developer';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Product Mgr' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_marketingforecast', @level2type=N'COLUMN',@level2name=N'product_mgr';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Working#' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_marketingforecast', @level2type=N'COLUMN',@level2name=N'working_no';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Quarter' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_marketingforecast', @level2type=N'COLUMN',@level2name=N'quarter';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Sports Category' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_marketingforecast', @level2type=N'COLUMN',@level2name=N'sports_category';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Alloc Cat' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_marketingforecast', @level2type=N'COLUMN',@level2name=N'alloc_cat';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Cat Mkt Line' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_marketingforecast', @level2type=N'COLUMN',@level2name=N'cat_mkt_line';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Corp Mkt Line' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_marketingforecast', @level2type=N'COLUMN',@level2name=N'corp_mkt_line';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Sales Line' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_marketingforecast', @level2type=N'COLUMN',@level2name=N'sales_line';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Age Group' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_marketingforecast', @level2type=N'COLUMN',@level2name=N'age_group';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Gender' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_marketingforecast', @level2type=N'COLUMN',@level2name=N'gender';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Product Speciality' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_marketingforecast', @level2type=N'COLUMN',@level2name=N'product_speciality';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Timeline' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_marketingforecast', @level2type=N'COLUMN',@level2name=N'timeline';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Retail Intro' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_marketingforecast', @level2type=N'COLUMN',@level2name=N'retail_intro';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Retail Exit' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_marketingforecast', @level2type=N'COLUMN',@level2name=N'retail_exit';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'First_xfty_Date' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_marketingforecast', @level2type=N'COLUMN',@level2name=N'first_xfty_date';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Last_xfty_Date' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_marketingforecast', @level2type=N'COLUMN',@level2name=N'last_xfty_date';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Product Type' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_marketingforecast', @level2type=N'COLUMN',@level2name=N'product_type';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Product Group' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_marketingforecast', @level2type=N'COLUMN',@level2name=N'product_group';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Unit Of Measure' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_marketingforecast', @level2type=N'COLUMN',@level2name=N'unit_of_measure';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Sales Unit' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_marketingforecast', @level2type=N'COLUMN',@level2name=N'sales_unit';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Carry Over' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_marketingforecast', @level2type=N'COLUMN',@level2name=N'carry_over';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Dev Type' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_marketingforecast', @level2type=N'COLUMN',@level2name=N'dev_type';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Corrected Source - ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_marketingforecast', @level2type=N'COLUMN',@level2name=N'corrected_source';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fty id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_marketingforecast', @level2type=N'COLUMN',@level2name=N'fty_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fty Status' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_marketingforecast', @level2type=N'COLUMN',@level2name=N'fty_status';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fty group' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_marketingforecast', @level2type=N'COLUMN',@level2name=N'fty_group';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fty group name' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_marketingforecast', @level2type=N'COLUMN',@level2name=N'fty_group_name';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Segmentation' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_marketingforecast', @level2type=N'COLUMN',@level2name=N'segmentation';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'LO2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_marketingforecast', @level2type=N'COLUMN',@level2name=N'lo2';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'COO' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_marketingforecast', @level2type=N'COLUMN',@level2name=N'coo';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'COO/Region' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_marketingforecast', @level2type=N'COLUMN',@level2name=N'coo_or_region';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Targ. Tech.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_marketingforecast', @level2type=N'COLUMN',@level2name=N'targ_tech';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Target Mat.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_marketingforecast', @level2type=N'COLUMN',@level2name=N'targ_mat';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Flex Source' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_marketingforecast', @level2type=N'COLUMN',@level2name=N'flex_source';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Priority' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_marketingforecast', @level2type=N'COLUMN',@level2name=N'priority';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Adj P Grp' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_marketingforecast', @level2type=N'COLUMN',@level2name=N'adj_p_grp';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Adj Tech' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_marketingforecast', @level2type=N'COLUMN',@level2name=N'adj_tech';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Adj Mat' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_marketingforecast', @level2type=N'COLUMN',@level2name=N'adj_mat';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Total PT' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_marketingforecast', @level2type=N'COLUMN',@level2name=N'total_pt';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Adj BU' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_marketingforecast', @level2type=N'COLUMN',@level2name=N'adj_bu';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Status/ Milestones' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_marketingforecast', @level2type=N'COLUMN',@level2name=N'status_milestones';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Offered Capacity' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_marketingforecast', @level2type=N'COLUMN',@level2name=N'offered_capacity';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Development Capacity' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_marketingforecast', @level2type=N'COLUMN',@level2name=N'development_capacity';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'pre_order_assigned_result' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_marketingforecast', @level2type=N'COLUMN',@level2name=N'pre_order_assigned_result';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'pre_order_quantity' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_marketingforecast', @level2type=N'COLUMN',@level2name=N'pre_order_quantity';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Flex check' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_marketingforecast', @level2type=N'COLUMN',@level2name=N'flex_check';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_marketingforecast', @level2type=N'COLUMN',@level2name=N'utc_update';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_marketingforecast', @level2type=N'COLUMN',@level2name=N'status';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_marketingforecast', @level2type=N'COLUMN',@level2name=N'create_by';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'变更人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_marketingforecast', @level2type=N'COLUMN',@level2name=N'update_by';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_marketingforecast', @level2type=N'COLUMN',@level2name=N'note';
-- end --

-- begin--cpo_process_category--
if exists (select 1   
            from  sysobjects   
           where  id = object_id('cpo_processcategory')   
            and   type = 'U')   
   drop table cpo_process_category   
go
create table cpo_process_category (
	process_category_id bigint not null IDENTITY(1,1)  ,
	category_code   varchar(30) ,
	category_name   varchar(255) ,
	category_type   varchar(50) ,
	utc_create  datetime  ,
	utc_update  datetime  ,
	category_status   varchar(1) ,
	create_by   bigint ,
	update_by   bigint ,
	note   varchar(1024) ,
	primary key (process_category_id) 
);

-- Add comments to the columns
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'记录id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_processcategory', @level2type=N'COLUMN',@level2name=N'process_category_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'栏目代号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_processcategory', @level2type=N'COLUMN',@level2name=N'category_code';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'栏目名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_processcategory', @level2type=N'COLUMN',@level2name=N'category_name';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'栏目类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_processcategory', @level2type=N'COLUMN',@level2name=N'category_type';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_processcategory', @level2type=N'COLUMN',@level2name=N'utc_create';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_processcategory', @level2type=N'COLUMN',@level2name=N'utc_update';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_processcategory', @level2type=N'COLUMN',@level2name=N'category_status';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_processcategory', @level2type=N'COLUMN',@level2name=N'create_by';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'变更人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_processcategory', @level2type=N'COLUMN',@level2name=N'update_by';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_processcategory', @level2type=N'COLUMN',@level2name=N'note';
-- end --

-- begin--cpo_customer_forecast--
if exists (select 1   
            from  sysobjects   
           where  id = object_id('cpo_customerforecast')   
            and   type = 'U')   
   drop table cpo_customer_forecast   
go
create table cpo_customer_forecast (
	customer_forecast_id bigint not null IDENTITY(1,1)  ,
	document_id   bigint ,
	lo   varchar(50) ,
	season   varchar(10) ,
	brand   varchar(255) ,
	factory_group   varchar(20) ,
	factory_id   varchar(255) ,
	factory_name   varchar(255) ,
	coo   varchar(255) ,
	working_no   varchar(255) ,
	model_id   varchar(255) ,
	model_desc   varchar(255) ,
	article   varchar(255) ,
	business_segment   varchar(255) ,
	sports_code   varchar(255) ,
	product_type   varchar(255) ,
	sales_line   varchar(255) ,
	category_marketing_line   varchar(255) ,
	corporate_marketing_line   varchar(255) ,
	gps_customer_customer   varchar(255) ,
	gps_customer_desc   varchar(255) ,
	article_lead_time   varchar(255) ,
	supply_chain_track   varchar(255) ,
	period   varchar(255) ,
	planning_volume_quantity   varchar(255) ,
	forecast_quantity   varchar(255) ,
	open_forecast   varchar(255) ,
	order_quantity_by_crd   varchar(255) ,
	order_quantity_by_plan_date   varchar(255) ,
	pre_order_assigned_result   varchar(1024) ,
	mkt_fc_assigned_result   varchar(1024) ,
	mkt_fc_quantity   varchar(20) ,
	order_country   varchar(20) ,
	eu_rate   float ,
	eu_quantity   float ,
	china_rate   float ,
	china_quantity   float ,
	total_quantity   float ,
	utc_update  datetime  ,
	status   int ,
	create_by   bigint ,
	update_by   bigint ,
	note   varchar(1024) ,
	primary key (customer_forecast_id) 
);

-- Add comments to the columns
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'customer_forecast' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_customerforecast', @level2type=N'COLUMN',@level2name=N'customer_forecast_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'document id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_customerforecast', @level2type=N'COLUMN',@level2name=N'document_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'lo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_customerforecast', @level2type=N'COLUMN',@level2name=N'lo';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Season' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_customerforecast', @level2type=N'COLUMN',@level2name=N'season';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Brand' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_customerforecast', @level2type=N'COLUMN',@level2name=N'brand';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Factory Group' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_customerforecast', @level2type=N'COLUMN',@level2name=N'factory_group';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Factory ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_customerforecast', @level2type=N'COLUMN',@level2name=N'factory_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Factory Name' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_customerforecast', @level2type=N'COLUMN',@level2name=N'factory_name';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'COO' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_customerforecast', @level2type=N'COLUMN',@level2name=N'coo';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Working No' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_customerforecast', @level2type=N'COLUMN',@level2name=N'working_no';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Model ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_customerforecast', @level2type=N'COLUMN',@level2name=N'model_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Model DESC' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_customerforecast', @level2type=N'COLUMN',@level2name=N'model_desc';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Article' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_customerforecast', @level2type=N'COLUMN',@level2name=N'article';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Business Segment' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_customerforecast', @level2type=N'COLUMN',@level2name=N'business_segment';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Sports Code' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_customerforecast', @level2type=N'COLUMN',@level2name=N'sports_code';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Product Type' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_customerforecast', @level2type=N'COLUMN',@level2name=N'product_type';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Sales Line' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_customerforecast', @level2type=N'COLUMN',@level2name=N'sales_line';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Category Marketing Line' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_customerforecast', @level2type=N'COLUMN',@level2name=N'category_marketing_line';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Corporate Marketing Line' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_customerforecast', @level2type=N'COLUMN',@level2name=N'corporate_marketing_line';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'customer_no' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_customerforecast', @level2type=N'COLUMN',@level2name=N'gps_customer_customer';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'GPS Customer DESC' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_customerforecast', @level2type=N'COLUMN',@level2name=N'gps_customer_desc';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Article Lead time' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_customerforecast', @level2type=N'COLUMN',@level2name=N'article_lead_time';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Supply Chain Track' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_customerforecast', @level2type=N'COLUMN',@level2name=N'supply_chain_track';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Period' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_customerforecast', @level2type=N'COLUMN',@level2name=N'period';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Planning Volume Quantity' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_customerforecast', @level2type=N'COLUMN',@level2name=N'planning_volume_quantity';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Forecast Quantity' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_customerforecast', @level2type=N'COLUMN',@level2name=N'forecast_quantity';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'OPEN FC (all SCT)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_customerforecast', @level2type=N'COLUMN',@level2name=N'open_forecast';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Order Quantity by CRD' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_customerforecast', @level2type=N'COLUMN',@level2name=N'order_quantity_by_crd';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Order Quantity by Plan Date' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_customerforecast', @level2type=N'COLUMN',@level2name=N'order_quantity_by_plan_date';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'pre_order_assigned_result' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_customerforecast', @level2type=N'COLUMN',@level2name=N'pre_order_assigned_result';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'mkt_fc_assigned_result' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_customerforecast', @level2type=N'COLUMN',@level2name=N'mkt_fc_assigned_result';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'mkt_fc_quantity' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_customerforecast', @level2type=N'COLUMN',@level2name=N'mkt_fc_quantity';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'order_country' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_customerforecast', @level2type=N'COLUMN',@level2name=N'order_country';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'eu_rate' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_customerforecast', @level2type=N'COLUMN',@level2name=N'eu_rate';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'eu_quantity' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_customerforecast', @level2type=N'COLUMN',@level2name=N'eu_quantity';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'china_rate' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_customerforecast', @level2type=N'COLUMN',@level2name=N'china_rate';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'china_quantity' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_customerforecast', @level2type=N'COLUMN',@level2name=N'china_quantity';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'total_quantity' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_customerforecast', @level2type=N'COLUMN',@level2name=N'total_quantity';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_customerforecast', @level2type=N'COLUMN',@level2name=N'utc_update';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_customerforecast', @level2type=N'COLUMN',@level2name=N'status';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_customerforecast', @level2type=N'COLUMN',@level2name=N'create_by';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'变更人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_customerforecast', @level2type=N'COLUMN',@level2name=N'update_by';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_customerforecast', @level2type=N'COLUMN',@level2name=N'note';
-- end --

-- begin--cpo_edi_order_master--
if exists (select 1   
            from  sysobjects   
           where  id = object_id('cpo_ediordermaster')   
            and   type = 'U')   
   drop table cpo_edi_order_master   
go
create table cpo_edi_order_master (
	order_master_id bigint not null IDENTITY(1,1)  ,
	document_id   bigint ,
	po   varchar(255) ,
	quantity   varchar(255) ,
	price   varchar(255) ,
	orderuid   varchar(255) ,
	customerordernumber   varchar(255) ,
	pobatchdate  datetime  ,
	salesgroup   varchar(255) ,
	subsidiaryid   varchar(255) ,
	distributionchannel   varchar(255) ,
	clientnumber   varchar(255) ,
	customernumber   varchar(255) ,
	factorynumber   varchar(255) ,
	purchasinggroupcode   varchar(255) ,
	releasestatus   varchar(255) ,
	purchasingorganization   varchar(255) ,
	originalfactory   varchar(255) ,
	productionleadtime   varchar(255) ,
	plandate  datetime  ,
	classcode   varchar(255) ,
	customerrequestdate  datetime  ,
	customcountryfortax   varchar(255) ,
	vatnumber   varchar(255) ,
	erpordernumber   varchar(255) ,
	potype   varchar(255) ,
	hidehts   varchar(255) ,
	htseligibility   varchar(255) ,
	origineligibility   varchar(255) ,
	htsformtype   varchar(255) ,
	htsformcurrency   varchar(255) ,
	inscopeindicator   varchar(255) ,
	ismtfc   varchar(255) ,
	liasonsofficecode   varchar(255) ,
	idrevisionnumber   varchar(255) ,
	shasorder   varchar(255) ,
	shasready   varchar(255) ,
	customertype   varchar(255) ,
	shascustomer   varchar(255) ,
	ordertypedescription   varchar(255) ,
	adidasshipmode   varchar(255) ,
	workflow   varchar(255) ,
	allowmixedpopacking   varchar(255) ,
	labelid   varchar(255) ,
	portofloading   varchar(255) ,
	accountnumber   varchar(255) ,
	lspadidascode   varchar(255) ,
	integrated3pl   varchar(255) ,
	multiplecontainers   varchar(255) ,
	usepodustable   varchar(255) ,
	portofdischarge   varchar(255) ,
	currency   varchar(255) ,
	orderstatus;   varchar(255) ,
	ordertype   varchar(255) ,
	releasenumber   varchar(255) ,
	orderdate  datetime  ,
	contractnumber   varchar(255) ,
	partialshipment   varchar(255) ,
	transitshipment   varchar(255) ,
	workingnumber   varchar(255) ,
	articlenumber   varchar(255) ,
	articlename   varchar(255) ,
	customerno   varchar(255) ,
	firstproductiondate  datetime  ,
	lastproductiondate  datetime  ,
	postatisticaldeliverydate  datetime  ,
	podd  datetime  ,
	sportsdescription   varchar(255) ,
	brand   varchar(255) ,
	branddescription   varchar(255) ,
	modelnumber   varchar(255) ,
	modelname   varchar(255) ,
	ordergroup   varchar(255) ,
	podelupdatedelay  datetime  ,
	customersizerun   varchar(255) ,
	gender   varchar(255) ,
	deliverydelay  datetime  ,
	division   varchar(255) ,
	materialcolordescription   varchar(255) ,
	businessmodelattribute   varchar(255) ,
	gpsitemlinenumber   varchar(255) ,
	category   varchar(255) ,
	classification   varchar(255) ,
	confirmationdelay  datetime  ,
	barcodetype   varchar(255) ,
	customeridentifier   varchar(255) ,
	poextendeddatastatusindicator   varchar(255) ,
	vascutoffdate  datetime  ,
	shippinginstruction   varchar(255) ,
	technicalnotation   varchar(255) ,
	caselottext   varchar(255) ,
	caselot2text   varchar(255) ,
	caselot2qty   varchar(255) ,
	caselot2ratio   varchar(255) ,
	caselot3text   varchar(255) ,
	caselot3qty   varchar(255) ,
	caselot3ratio   varchar(255) ,
	caselot4text   varchar(255) ,
	caselot4qty   varchar(255) ,
	caselot4ratio   varchar(255) ,
	caselot5text   varchar(255) ,
	caselot5qty   varchar(255) ,
	caselot5ratio   varchar(255) ,
	technologyconcept   varchar(255) ,
	technologyconceptdescription   varchar(255) ,
	technologycomponent   varchar(255) ,
	confirmationdelaypd   varchar(255) ,
	deliverydelaypd   varchar(255) ,
	destinationcountry   varchar(255) ,
	htscodechangeflag   varchar(255) ,
	htsflagupdatedtimestamp   varchar(255) ,
	markforaddress   varchar(255) ,
	marketdeliverydate  datetime  ,
	numberofcartons   varchar(255) ,
	numberofunits   varchar(255) ,
	priorityindicator   varchar(255) ,
	shascodenonus   varchar(255) ,
	totalcartonpieces   varchar(255) ,
	zzcust_cntry   varchar(255) ,
	mtfcnumber   varchar(255) ,
	primary key (order_master_id) 
);

-- Add comments to the columns
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'记录id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_ediordermaster', @level2type=N'COLUMN',@level2name=N'order_master_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'document id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_ediordermaster', @level2type=N'COLUMN',@level2name=N'document_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PO' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_ediordermaster', @level2type=N'COLUMN',@level2name=N'po';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Quantity' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_ediordermaster', @level2type=N'COLUMN',@level2name=N'quantity';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Price' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_ediordermaster', @level2type=N'COLUMN',@level2name=N'price';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ORDERUID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_ediordermaster', @level2type=N'COLUMN',@level2name=N'orderuid';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'CustomerOrderNumber' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_ediordermaster', @level2type=N'COLUMN',@level2name=N'customerordernumber';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PoBatchDate' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_ediordermaster', @level2type=N'COLUMN',@level2name=N'pobatchdate';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'SalesGroup' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_ediordermaster', @level2type=N'COLUMN',@level2name=N'salesgroup';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'SubsidiaryId' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_ediordermaster', @level2type=N'COLUMN',@level2name=N'subsidiaryid';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'DistributionChannel' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_ediordermaster', @level2type=N'COLUMN',@level2name=N'distributionchannel';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ClientNumber' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_ediordermaster', @level2type=N'COLUMN',@level2name=N'clientnumber';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'CustomerNumber' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_ediordermaster', @level2type=N'COLUMN',@level2name=N'customernumber';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'FactoryNumber' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_ediordermaster', @level2type=N'COLUMN',@level2name=N'factorynumber';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PurchasingGroupCode' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_ediordermaster', @level2type=N'COLUMN',@level2name=N'purchasinggroupcode';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ReleaseStatus' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_ediordermaster', @level2type=N'COLUMN',@level2name=N'releasestatus';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PurchasingOrganization' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_ediordermaster', @level2type=N'COLUMN',@level2name=N'purchasingorganization';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'OriginalFactory' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_ediordermaster', @level2type=N'COLUMN',@level2name=N'originalfactory';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ProductionLeadTime' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_ediordermaster', @level2type=N'COLUMN',@level2name=N'productionleadtime';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PlanDate' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_ediordermaster', @level2type=N'COLUMN',@level2name=N'plandate';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ClassCode' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_ediordermaster', @level2type=N'COLUMN',@level2name=N'classcode';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'CustomerRequestDate' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_ediordermaster', @level2type=N'COLUMN',@level2name=N'customerrequestdate';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'CustomCountryForTax' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_ediordermaster', @level2type=N'COLUMN',@level2name=N'customcountryfortax';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'VatNumber' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_ediordermaster', @level2type=N'COLUMN',@level2name=N'vatnumber';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ErpOrderNumber' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_ediordermaster', @level2type=N'COLUMN',@level2name=N'erpordernumber';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'POType' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_ediordermaster', @level2type=N'COLUMN',@level2name=N'potype';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'HideHTS' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_ediordermaster', @level2type=N'COLUMN',@level2name=N'hidehts';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'HTSEligibility' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_ediordermaster', @level2type=N'COLUMN',@level2name=N'htseligibility';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'OriginEligibility' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_ediordermaster', @level2type=N'COLUMN',@level2name=N'origineligibility';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'HTSFormType' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_ediordermaster', @level2type=N'COLUMN',@level2name=N'htsformtype';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'HTSFormCurrency' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_ediordermaster', @level2type=N'COLUMN',@level2name=N'htsformcurrency';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'InScopeIndicator' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_ediordermaster', @level2type=N'COLUMN',@level2name=N'inscopeindicator';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'isMTFC' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_ediordermaster', @level2type=N'COLUMN',@level2name=N'ismtfc';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'LiasonsOfficeCode' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_ediordermaster', @level2type=N'COLUMN',@level2name=N'liasonsofficecode';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'idRevisionNumber' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_ediordermaster', @level2type=N'COLUMN',@level2name=N'idrevisionnumber';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ShasOrder' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_ediordermaster', @level2type=N'COLUMN',@level2name=N'shasorder';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ShasReady' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_ediordermaster', @level2type=N'COLUMN',@level2name=N'shasready';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'CustomerType' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_ediordermaster', @level2type=N'COLUMN',@level2name=N'customertype';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ShasCustomer' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_ediordermaster', @level2type=N'COLUMN',@level2name=N'shascustomer';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'OrderTypeDescription' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_ediordermaster', @level2type=N'COLUMN',@level2name=N'ordertypedescription';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'AdidasShipMode' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_ediordermaster', @level2type=N'COLUMN',@level2name=N'adidasshipmode';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Workflow' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_ediordermaster', @level2type=N'COLUMN',@level2name=N'workflow';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'AllowMixedPoPacking' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_ediordermaster', @level2type=N'COLUMN',@level2name=N'allowmixedpopacking';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'LabelID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_ediordermaster', @level2type=N'COLUMN',@level2name=N'labelid';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PortOfLoading' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_ediordermaster', @level2type=N'COLUMN',@level2name=N'portofloading';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'AccountNumber' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_ediordermaster', @level2type=N'COLUMN',@level2name=N'accountnumber';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'LspAdidasCode' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_ediordermaster', @level2type=N'COLUMN',@level2name=N'lspadidascode';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Integrated3pl' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_ediordermaster', @level2type=N'COLUMN',@level2name=N'integrated3pl';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'MultipleContainers' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_ediordermaster', @level2type=N'COLUMN',@level2name=N'multiplecontainers';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'UsePodUsTable' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_ediordermaster', @level2type=N'COLUMN',@level2name=N'usepodustable';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PortOfDischarge' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_ediordermaster', @level2type=N'COLUMN',@level2name=N'portofdischarge';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Currency' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_ediordermaster', @level2type=N'COLUMN',@level2name=N'currency';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'OrderStatus;' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_ediordermaster', @level2type=N'COLUMN',@level2name=N'orderstatus;';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'OrderType' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_ediordermaster', @level2type=N'COLUMN',@level2name=N'ordertype';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ReleaseNumber' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_ediordermaster', @level2type=N'COLUMN',@level2name=N'releasenumber';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'OrderDate' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_ediordermaster', @level2type=N'COLUMN',@level2name=N'orderdate';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ContractNumber' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_ediordermaster', @level2type=N'COLUMN',@level2name=N'contractnumber';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PartialShipment' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_ediordermaster', @level2type=N'COLUMN',@level2name=N'partialshipment';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TransitShipment' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_ediordermaster', @level2type=N'COLUMN',@level2name=N'transitshipment';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'WorkingNumber' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_ediordermaster', @level2type=N'COLUMN',@level2name=N'workingnumber';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ArticleNumber' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_ediordermaster', @level2type=N'COLUMN',@level2name=N'articlenumber';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ArticleName' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_ediordermaster', @level2type=N'COLUMN',@level2name=N'articlename';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'CustomerNo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_ediordermaster', @level2type=N'COLUMN',@level2name=N'customerno';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'FirstProductionDate' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_ediordermaster', @level2type=N'COLUMN',@level2name=N'firstproductiondate';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'LastProductionDate' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_ediordermaster', @level2type=N'COLUMN',@level2name=N'lastproductiondate';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PoStatisticalDeliveryDate' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_ediordermaster', @level2type=N'COLUMN',@level2name=N'postatisticaldeliverydate';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Podd' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_ediordermaster', @level2type=N'COLUMN',@level2name=N'podd';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'SportsDescription' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_ediordermaster', @level2type=N'COLUMN',@level2name=N'sportsdescription';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Brand' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_ediordermaster', @level2type=N'COLUMN',@level2name=N'brand';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'BrandDescription' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_ediordermaster', @level2type=N'COLUMN',@level2name=N'branddescription';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ModelNumber' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_ediordermaster', @level2type=N'COLUMN',@level2name=N'modelnumber';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ModelName' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_ediordermaster', @level2type=N'COLUMN',@level2name=N'modelname';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'OrderGroup' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_ediordermaster', @level2type=N'COLUMN',@level2name=N'ordergroup';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PoDelUpdateDelay' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_ediordermaster', @level2type=N'COLUMN',@level2name=N'podelupdatedelay';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'CustomerSizeRun' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_ediordermaster', @level2type=N'COLUMN',@level2name=N'customersizerun';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Gender' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_ediordermaster', @level2type=N'COLUMN',@level2name=N'gender';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'DeliveryDelay' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_ediordermaster', @level2type=N'COLUMN',@level2name=N'deliverydelay';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Division' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_ediordermaster', @level2type=N'COLUMN',@level2name=N'division';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'MaterialColorDescription' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_ediordermaster', @level2type=N'COLUMN',@level2name=N'materialcolordescription';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'BusinessModelAttribute' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_ediordermaster', @level2type=N'COLUMN',@level2name=N'businessmodelattribute';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'GpsItemLineNumber' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_ediordermaster', @level2type=N'COLUMN',@level2name=N'gpsitemlinenumber';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Category' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_ediordermaster', @level2type=N'COLUMN',@level2name=N'category';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Classification' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_ediordermaster', @level2type=N'COLUMN',@level2name=N'classification';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ConfirmationDelay' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_ediordermaster', @level2type=N'COLUMN',@level2name=N'confirmationdelay';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'BarcodeType' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_ediordermaster', @level2type=N'COLUMN',@level2name=N'barcodetype';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'CustomerIdentifier' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_ediordermaster', @level2type=N'COLUMN',@level2name=N'customeridentifier';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PoExtendedDataStatusIndicator' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_ediordermaster', @level2type=N'COLUMN',@level2name=N'poextendeddatastatusindicator';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'VASCutoffDate' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_ediordermaster', @level2type=N'COLUMN',@level2name=N'vascutoffdate';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ShippingInstruction' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_ediordermaster', @level2type=N'COLUMN',@level2name=N'shippinginstruction';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TechnicalNotation' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_ediordermaster', @level2type=N'COLUMN',@level2name=N'technicalnotation';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'CaseLotText' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_ediordermaster', @level2type=N'COLUMN',@level2name=N'caselottext';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'CaseLot2Text' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_ediordermaster', @level2type=N'COLUMN',@level2name=N'caselot2text';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'CaseLot2Qty' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_ediordermaster', @level2type=N'COLUMN',@level2name=N'caselot2qty';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'CaseLot2Ratio' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_ediordermaster', @level2type=N'COLUMN',@level2name=N'caselot2ratio';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'CaseLot3Text' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_ediordermaster', @level2type=N'COLUMN',@level2name=N'caselot3text';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'CaseLot3Qty' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_ediordermaster', @level2type=N'COLUMN',@level2name=N'caselot3qty';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'CaseLot3Ratio' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_ediordermaster', @level2type=N'COLUMN',@level2name=N'caselot3ratio';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'CaseLot4Text' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_ediordermaster', @level2type=N'COLUMN',@level2name=N'caselot4text';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'CaseLot4Qty' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_ediordermaster', @level2type=N'COLUMN',@level2name=N'caselot4qty';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'CaseLot4Ratio' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_ediordermaster', @level2type=N'COLUMN',@level2name=N'caselot4ratio';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'CaseLot5Text' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_ediordermaster', @level2type=N'COLUMN',@level2name=N'caselot5text';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'CaseLot5Qty' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_ediordermaster', @level2type=N'COLUMN',@level2name=N'caselot5qty';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'CaseLot5Ratio' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_ediordermaster', @level2type=N'COLUMN',@level2name=N'caselot5ratio';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TechnologyConcept' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_ediordermaster', @level2type=N'COLUMN',@level2name=N'technologyconcept';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TechnologyConceptDescription' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_ediordermaster', @level2type=N'COLUMN',@level2name=N'technologyconceptdescription';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TechnologyComponent' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_ediordermaster', @level2type=N'COLUMN',@level2name=N'technologycomponent';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ConfirmationDelayPd' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_ediordermaster', @level2type=N'COLUMN',@level2name=N'confirmationdelaypd';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'DeliveryDelayPd' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_ediordermaster', @level2type=N'COLUMN',@level2name=N'deliverydelaypd';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'DestinationCountry' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_ediordermaster', @level2type=N'COLUMN',@level2name=N'destinationcountry';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'HTSCodeChangeFlag' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_ediordermaster', @level2type=N'COLUMN',@level2name=N'htscodechangeflag';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'HTSFlagUpdatedTimestamp' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_ediordermaster', @level2type=N'COLUMN',@level2name=N'htsflagupdatedtimestamp';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'MarkForAddress' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_ediordermaster', @level2type=N'COLUMN',@level2name=N'markforaddress';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'MarketDeliveryDate' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_ediordermaster', @level2type=N'COLUMN',@level2name=N'marketdeliverydate';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'NumberOfCartons' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_ediordermaster', @level2type=N'COLUMN',@level2name=N'numberofcartons';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'NumberOfUnits' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_ediordermaster', @level2type=N'COLUMN',@level2name=N'numberofunits';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PriorityIndicator' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_ediordermaster', @level2type=N'COLUMN',@level2name=N'priorityindicator';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ShasCodeNonUs' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_ediordermaster', @level2type=N'COLUMN',@level2name=N'shascodenonus';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TotalCartonPieces' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_ediordermaster', @level2type=N'COLUMN',@level2name=N'totalcartonpieces';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ZZCUST_CNTRY' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_ediordermaster', @level2type=N'COLUMN',@level2name=N'zzcust_cntry';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'mtfcNumber' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_ediordermaster', @level2type=N'COLUMN',@level2name=N'mtfcnumber';
-- end --

-- begin--worktable_edi_order_master--
if exists (select 1   
            from  sysobjects   
           where  id = object_id('worktable_ediordermaster')   
            and   type = 'U')   
   drop table worktable_edi_order_master   
go
create table worktable_edi_order_master (
	order_master_id bigint not null IDENTITY(1,1)  ,
	document_id   bigint ,
	pre_ord_id   bigint ,
	season   varchar(10) ,
	season_remark   varchar(50) ,
	order_actual_type   varchar(30) ,
	po   varchar(30) ,
	original_po   varchar(30) ,
	transferred_po   varchar(30) ,
	batch_no   varchar(5) ,
	assigned_factory   varchar(10) ,
	quantity   varchar(10) ,
	price   varchar(10) ,
	orderuid   varchar(255) ,
	customerordernumber   varchar(255) ,
	pobatchdate  datetime  ,
	salesgroup   varchar(255) ,
	subsidiaryid   varchar(255) ,
	distributionchannel   varchar(255) ,
	clientnumber   varchar(50) ,
	customernumber   varchar(50) ,
	lastupdatedate  datetime  ,
	factorynumber   varchar(50) ,
	purchasinggroupcode   varchar(255) ,
	releasestatus   varchar(255) ,
	purchasingorganization   varchar(255) ,
	originalfactory   varchar(255) ,
	productionleadtime   varchar(10) ,
	plandate  datetime  ,
	classcode   varchar(50) ,
	customerrequestdate  datetime  ,
	customcountryfortax   varchar(255) ,
	vatnumber   varchar(255) ,
	erpordernumber   varchar(255) ,
	potype   varchar(20) ,
	hidehts   varchar(255) ,
	htseligibility   varchar(255) ,
	origineligibility   varchar(255) ,
	htsformtype   varchar(10) ,
	htsformcurrency   varchar(50) ,
	inscopeindicator   varchar(255) ,
	ismtfc   varchar(255) ,
	liasonsofficecode   varchar(255) ,
	idrevisionnumber   varchar(50) ,
	shasorder   varchar(255) ,
	shasready   varchar(255) ,
	customertype   varchar(50) ,
	shascustomer   varchar(255) ,
	ordertypedescription   varchar(255) ,
	adidasshipmode   varchar(10) ,
	workflow   varchar(50) ,
	allowmixedpopacking   varchar(255) ,
	labelid   varchar(255) ,
	portofloading   varchar(255) ,
	accountnumber   varchar(255) ,
	lspadidascode   varchar(255) ,
	integrated3pl   varchar(255) ,
	multiplecontainers   varchar(255) ,
	usepodustable   varchar(50) ,
	portofdischarge   varchar(255) ,
	currency   varchar(50) ,
	orderstatus   varchar(10) ,
	ordertype   varchar(50) ,
	releasenumber   varchar(100) ,
	orderdate  datetime  ,
	contractnumber   varchar(150) ,
	partialshipment   varchar(255) ,
	transitshipment   varchar(255) ,
	workingnumber   varchar(100) ,
	articlenumber   varchar(50) ,
	articlename   varchar(255) ,
	firstproductiondate  datetime  ,
	lastproductiondate  datetime  ,
	postatisticaldeliverydate  datetime  ,
	podd  datetime  ,
	sportsdescription   varchar(255) ,
	brand   varchar(50) ,
	branddescription   varchar(255) ,
	modelnumber   varchar(50) ,
	modelname   varchar(255) ,
	ordergroup   varchar(50) ,
	podelupdatedelay  datetime  ,
	customersizerun   varchar(10) ,
	gender   varchar(3) ,
	deliverydelay  datetime  ,
	division   varchar(50) ,
	materialcolordescription   varchar(255) ,
	businessmodelattribute   varchar(255) ,
	gpsitemlinenumber   varchar(255) ,
	category   varchar(50) ,
	classification   varchar(50) ,
	confirmationdelay  datetime  ,
	barcodetype   varchar(50) ,
	customeridentifier   varchar(255) ,
	poextendeddatastatusindicator   varchar(255) ,
	vascutoffdate  datetime  ,
	shippinginstruction   varchar(50) ,
	technicalnotation   varchar(255) ,
	caselottext   varchar(255) ,
	caselot2text   varchar(255) ,
	caselot2qty   varchar(10) ,
	caselot2ratio   varchar(50) ,
	caselot3text   varchar(255) ,
	caselot3qty   varchar(10) ,
	caselot3ratio   varchar(50) ,
	caselot4text   varchar(255) ,
	caselot4qty   varchar(10) ,
	caselot4ratio   varchar(50) ,
	caselot5text   varchar(255) ,
	caselot5qty   varchar(10) ,
	caselot5ratio   varchar(50) ,
	technologyconcept   varchar(255) ,
	technologyconceptdescription   varchar(255) ,
	technologycomponent   varchar(255) ,
	confirmationdelaypd   varchar(50) ,
	deliverydelaypd   varchar(50) ,
	destinationcountry   varchar(50) ,
	htscodechangeflag   varchar(50) ,
	htsflagupdatedtimestamp   varchar(50) ,
	markforaddress   varchar(255) ,
	warehouselocationcode   varchar(10) ,
	retailercurrencylineitem   varchar(10) ,
	marketdeliverydate  datetime  ,
	numberofcartons   varchar(10) ,
	numberofunits   varchar(10) ,
	priorityindicator   varchar(255) ,
	shascodenonus   varchar(50) ,
	totalcartonpieces   varchar(10) ,
	zzcust_cntry   varchar(255) ,
	mtfcnumber   varchar(50) ,
	newcustomerrequestdate  datetime  ,
	newplandate  datetime  ,
	newfirstproductiondate  datetime  ,
	newlastproductiondate  datetime  ,
	newpodd  datetime  ,
	newpsdd  datetime  ,
	factory_fpd  datetime  ,
	factory_psdd  datetime  ,
	balance   float ,
	assignment_remark   varchar(128) ,
	change_remark   varchar(500) ,
	original_lc0190_date  datetime  ,
	ppc_order_status   varchar(10) ,
	special_order   varchar(10) ,
	date_remark   varchar(50) ,
	order_remark   varchar(256) ,
	mi_hem_insert   varchar(100) ,
	mi_logo   varchar(50) ,
	mi_n_n   varchar(50) ,
	mi_print   varchar(50) ,
	mi_stripes   varchar(50) ,
	size_type   varchar(20) ,
	remark   varchar(50) ,
	athletic   varchar(50) ,
	utc_create  datetime  ,
	utc_update  datetime  ,
	order_master_status   varchar(1) ,
	create_by   bigint ,
	update_by   bigint ,
	note   varchar(1024) ,
	primary key (order_master_id) 
);

-- Add comments to the columns
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'记录id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordermaster', @level2type=N'COLUMN',@level2name=N'order_master_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'document id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordermaster', @level2type=N'COLUMN',@level2name=N'document_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'pre_ord_id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordermaster', @level2type=N'COLUMN',@level2name=N'pre_ord_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'season' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordermaster', @level2type=N'COLUMN',@level2name=N'season';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'season remark' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordermaster', @level2type=N'COLUMN',@level2name=N'season_remark';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'订单实际类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordermaster', @level2type=N'COLUMN',@level2name=N'order_actual_type';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PO' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordermaster', @level2type=N'COLUMN',@level2name=N'po';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'original_po' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordermaster', @level2type=N'COLUMN',@level2name=N'original_po';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'transferred_po' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordermaster', @level2type=N'COLUMN',@level2name=N'transferred_po';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Batch no' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordermaster', @level2type=N'COLUMN',@level2name=N'batch_no';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Assigned_factory' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordermaster', @level2type=N'COLUMN',@level2name=N'assigned_factory';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Quantity' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordermaster', @level2type=N'COLUMN',@level2name=N'quantity';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Price' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordermaster', @level2type=N'COLUMN',@level2name=N'price';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ORDERUID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordermaster', @level2type=N'COLUMN',@level2name=N'orderuid';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'CustomerOrderNumber' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordermaster', @level2type=N'COLUMN',@level2name=N'customerordernumber';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PoBatchDate' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordermaster', @level2type=N'COLUMN',@level2name=N'pobatchdate';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'SalesGroup' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordermaster', @level2type=N'COLUMN',@level2name=N'salesgroup';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'SubsidiaryId' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordermaster', @level2type=N'COLUMN',@level2name=N'subsidiaryid';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'DistributionChannel' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordermaster', @level2type=N'COLUMN',@level2name=N'distributionchannel';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ClientNumber' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordermaster', @level2type=N'COLUMN',@level2name=N'clientnumber';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'CustomerNumber' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordermaster', @level2type=N'COLUMN',@level2name=N'customernumber';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'LastUpdateDate' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordermaster', @level2type=N'COLUMN',@level2name=N'lastupdatedate';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'FactoryNumber' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordermaster', @level2type=N'COLUMN',@level2name=N'factorynumber';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PurchasingGroupCode' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordermaster', @level2type=N'COLUMN',@level2name=N'purchasinggroupcode';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ReleaseStatus' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordermaster', @level2type=N'COLUMN',@level2name=N'releasestatus';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PurchasingOrganization' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordermaster', @level2type=N'COLUMN',@level2name=N'purchasingorganization';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'OriginalFactory' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordermaster', @level2type=N'COLUMN',@level2name=N'originalfactory';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ProductionLeadTime' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordermaster', @level2type=N'COLUMN',@level2name=N'productionleadtime';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PlanDate' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordermaster', @level2type=N'COLUMN',@level2name=N'plandate';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ClassCode' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordermaster', @level2type=N'COLUMN',@level2name=N'classcode';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'CustomerRequestDate' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordermaster', @level2type=N'COLUMN',@level2name=N'customerrequestdate';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'CustomCountryForTax' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordermaster', @level2type=N'COLUMN',@level2name=N'customcountryfortax';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'VatNumber' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordermaster', @level2type=N'COLUMN',@level2name=N'vatnumber';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ErpOrderNumber' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordermaster', @level2type=N'COLUMN',@level2name=N'erpordernumber';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'POType' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordermaster', @level2type=N'COLUMN',@level2name=N'potype';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'HideHTS' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordermaster', @level2type=N'COLUMN',@level2name=N'hidehts';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'HTSEligibility' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordermaster', @level2type=N'COLUMN',@level2name=N'htseligibility';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'OriginEligibility' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordermaster', @level2type=N'COLUMN',@level2name=N'origineligibility';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'HTSFormType' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordermaster', @level2type=N'COLUMN',@level2name=N'htsformtype';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'HTSFormCurrency' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordermaster', @level2type=N'COLUMN',@level2name=N'htsformcurrency';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'InScopeIndicator' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordermaster', @level2type=N'COLUMN',@level2name=N'inscopeindicator';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'isMTFC' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordermaster', @level2type=N'COLUMN',@level2name=N'ismtfc';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'LiasonsOfficeCode' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordermaster', @level2type=N'COLUMN',@level2name=N'liasonsofficecode';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'idRevisionNumber' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordermaster', @level2type=N'COLUMN',@level2name=N'idrevisionnumber';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ShasOrder' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordermaster', @level2type=N'COLUMN',@level2name=N'shasorder';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ShasReady' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordermaster', @level2type=N'COLUMN',@level2name=N'shasready';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'CustomerType' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordermaster', @level2type=N'COLUMN',@level2name=N'customertype';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ShasCustomer' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordermaster', @level2type=N'COLUMN',@level2name=N'shascustomer';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'OrderTypeDescription' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordermaster', @level2type=N'COLUMN',@level2name=N'ordertypedescription';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'AdidasShipMode' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordermaster', @level2type=N'COLUMN',@level2name=N'adidasshipmode';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Workflow' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordermaster', @level2type=N'COLUMN',@level2name=N'workflow';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'AllowMixedPoPacking' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordermaster', @level2type=N'COLUMN',@level2name=N'allowmixedpopacking';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'LabelID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordermaster', @level2type=N'COLUMN',@level2name=N'labelid';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PortOfLoading' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordermaster', @level2type=N'COLUMN',@level2name=N'portofloading';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'AccountNumber' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordermaster', @level2type=N'COLUMN',@level2name=N'accountnumber';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'LspAdidasCode' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordermaster', @level2type=N'COLUMN',@level2name=N'lspadidascode';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Integrated3pl' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordermaster', @level2type=N'COLUMN',@level2name=N'integrated3pl';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'MultipleContainers' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordermaster', @level2type=N'COLUMN',@level2name=N'multiplecontainers';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'UsePodUsTable' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordermaster', @level2type=N'COLUMN',@level2name=N'usepodustable';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PortOfDischarge' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordermaster', @level2type=N'COLUMN',@level2name=N'portofdischarge';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Currency' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordermaster', @level2type=N'COLUMN',@level2name=N'currency';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'OrderStatus;' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordermaster', @level2type=N'COLUMN',@level2name=N'orderstatus';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'OrderType' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordermaster', @level2type=N'COLUMN',@level2name=N'ordertype';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ReleaseNumber' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordermaster', @level2type=N'COLUMN',@level2name=N'releasenumber';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'OrderDate' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordermaster', @level2type=N'COLUMN',@level2name=N'orderdate';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ContractNumber' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordermaster', @level2type=N'COLUMN',@level2name=N'contractnumber';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PartialShipment' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordermaster', @level2type=N'COLUMN',@level2name=N'partialshipment';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TransitShipment' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordermaster', @level2type=N'COLUMN',@level2name=N'transitshipment';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'WorkingNumber' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordermaster', @level2type=N'COLUMN',@level2name=N'workingnumber';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ArticleNumber' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordermaster', @level2type=N'COLUMN',@level2name=N'articlenumber';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ArticleName' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordermaster', @level2type=N'COLUMN',@level2name=N'articlename';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'FirstProductionDate' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordermaster', @level2type=N'COLUMN',@level2name=N'firstproductiondate';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'LastProductionDate' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordermaster', @level2type=N'COLUMN',@level2name=N'lastproductiondate';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PoStatisticalDeliveryDate' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordermaster', @level2type=N'COLUMN',@level2name=N'postatisticaldeliverydate';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Podd' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordermaster', @level2type=N'COLUMN',@level2name=N'podd';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'SportsDescription' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordermaster', @level2type=N'COLUMN',@level2name=N'sportsdescription';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Brand' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordermaster', @level2type=N'COLUMN',@level2name=N'brand';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'BrandDescription' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordermaster', @level2type=N'COLUMN',@level2name=N'branddescription';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ModelNumber' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordermaster', @level2type=N'COLUMN',@level2name=N'modelnumber';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ModelName' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordermaster', @level2type=N'COLUMN',@level2name=N'modelname';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'OrderGroup' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordermaster', @level2type=N'COLUMN',@level2name=N'ordergroup';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PoDelUpdateDelay' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordermaster', @level2type=N'COLUMN',@level2name=N'podelupdatedelay';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'CustomerSizeRun' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordermaster', @level2type=N'COLUMN',@level2name=N'customersizerun';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Gender' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordermaster', @level2type=N'COLUMN',@level2name=N'gender';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'DeliveryDelay' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordermaster', @level2type=N'COLUMN',@level2name=N'deliverydelay';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Division' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordermaster', @level2type=N'COLUMN',@level2name=N'division';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'MaterialColorDescription' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordermaster', @level2type=N'COLUMN',@level2name=N'materialcolordescription';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'BusinessModelAttribute' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordermaster', @level2type=N'COLUMN',@level2name=N'businessmodelattribute';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'GpsItemLineNumber' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordermaster', @level2type=N'COLUMN',@level2name=N'gpsitemlinenumber';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Category' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordermaster', @level2type=N'COLUMN',@level2name=N'category';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Classification' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordermaster', @level2type=N'COLUMN',@level2name=N'classification';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ConfirmationDelay' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordermaster', @level2type=N'COLUMN',@level2name=N'confirmationdelay';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'BarcodeType' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordermaster', @level2type=N'COLUMN',@level2name=N'barcodetype';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'CustomerIdentifier' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordermaster', @level2type=N'COLUMN',@level2name=N'customeridentifier';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PoExtendedDataStatusIndicator' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordermaster', @level2type=N'COLUMN',@level2name=N'poextendeddatastatusindicator';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'VASCutoffDate' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordermaster', @level2type=N'COLUMN',@level2name=N'vascutoffdate';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ShippingInstruction' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordermaster', @level2type=N'COLUMN',@level2name=N'shippinginstruction';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TechnicalNotation' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordermaster', @level2type=N'COLUMN',@level2name=N'technicalnotation';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'CaseLotText' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordermaster', @level2type=N'COLUMN',@level2name=N'caselottext';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'CaseLot2Text' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordermaster', @level2type=N'COLUMN',@level2name=N'caselot2text';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'CaseLot2Qty' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordermaster', @level2type=N'COLUMN',@level2name=N'caselot2qty';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'CaseLot2Ratio' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordermaster', @level2type=N'COLUMN',@level2name=N'caselot2ratio';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'CaseLot3Text' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordermaster', @level2type=N'COLUMN',@level2name=N'caselot3text';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'CaseLot3Qty' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordermaster', @level2type=N'COLUMN',@level2name=N'caselot3qty';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'CaseLot3Ratio' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordermaster', @level2type=N'COLUMN',@level2name=N'caselot3ratio';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'CaseLot4Text' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordermaster', @level2type=N'COLUMN',@level2name=N'caselot4text';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'CaseLot4Qty' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordermaster', @level2type=N'COLUMN',@level2name=N'caselot4qty';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'CaseLot4Ratio' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordermaster', @level2type=N'COLUMN',@level2name=N'caselot4ratio';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'CaseLot5Text' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordermaster', @level2type=N'COLUMN',@level2name=N'caselot5text';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'CaseLot5Qty' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordermaster', @level2type=N'COLUMN',@level2name=N'caselot5qty';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'CaseLot5Ratio' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordermaster', @level2type=N'COLUMN',@level2name=N'caselot5ratio';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TechnologyConcept' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordermaster', @level2type=N'COLUMN',@level2name=N'technologyconcept';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TechnologyConceptDescription' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordermaster', @level2type=N'COLUMN',@level2name=N'technologyconceptdescription';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TechnologyComponent' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordermaster', @level2type=N'COLUMN',@level2name=N'technologycomponent';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ConfirmationDelayPd' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordermaster', @level2type=N'COLUMN',@level2name=N'confirmationdelaypd';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'DeliveryDelayPd' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordermaster', @level2type=N'COLUMN',@level2name=N'deliverydelaypd';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'DestinationCountry' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordermaster', @level2type=N'COLUMN',@level2name=N'destinationcountry';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'HTSCodeChangeFlag' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordermaster', @level2type=N'COLUMN',@level2name=N'htscodechangeflag';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'HTSFlagUpdatedTimestamp' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordermaster', @level2type=N'COLUMN',@level2name=N'htsflagupdatedtimestamp';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'MarkForAddress' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordermaster', @level2type=N'COLUMN',@level2name=N'markforaddress';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'warehouselocationcode' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordermaster', @level2type=N'COLUMN',@level2name=N'warehouselocationcode';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'RetailerCurrencyLineItem' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordermaster', @level2type=N'COLUMN',@level2name=N'retailercurrencylineitem';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'MarketDeliveryDate' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordermaster', @level2type=N'COLUMN',@level2name=N'marketdeliverydate';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'NumberOfCartons' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordermaster', @level2type=N'COLUMN',@level2name=N'numberofcartons';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'NumberOfUnits' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordermaster', @level2type=N'COLUMN',@level2name=N'numberofunits';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PriorityIndicator' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordermaster', @level2type=N'COLUMN',@level2name=N'priorityindicator';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ShasCodeNonUs' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordermaster', @level2type=N'COLUMN',@level2name=N'shascodenonus';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TotalCartonPieces' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordermaster', @level2type=N'COLUMN',@level2name=N'totalcartonpieces';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ZZCUST_CNTRY' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordermaster', @level2type=N'COLUMN',@level2name=N'zzcust_cntry';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'mtfcNumber' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordermaster', @level2type=N'COLUMN',@level2name=N'mtfcnumber';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'newCustomerRequestDate' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordermaster', @level2type=N'COLUMN',@level2name=N'newcustomerrequestdate';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'newPlanDate' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordermaster', @level2type=N'COLUMN',@level2name=N'newplandate';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'newFirstProductionDate' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordermaster', @level2type=N'COLUMN',@level2name=N'newfirstproductiondate';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'new lastProductionDate' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordermaster', @level2type=N'COLUMN',@level2name=N'newlastproductiondate';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'newPodd' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordermaster', @level2type=N'COLUMN',@level2name=N'newpodd';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'newPsdd' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordermaster', @level2type=N'COLUMN',@level2name=N'newpsdd';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Factory FPD' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordermaster', @level2type=N'COLUMN',@level2name=N'factory_fpd';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Factory PSDD' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordermaster', @level2type=N'COLUMN',@level2name=N'factory_psdd';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'balance' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordermaster', @level2type=N'COLUMN',@level2name=N'balance';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Assignment_remark' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordermaster', @level2type=N'COLUMN',@level2name=N'assignment_remark';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Change_remark' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordermaster', @level2type=N'COLUMN',@level2name=N'change_remark';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'originalLc0190Date' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordermaster', @level2type=N'COLUMN',@level2name=N'original_lc0190_date';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ppc_order_status' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordermaster', @level2type=N'COLUMN',@level2name=N'ppc_order_status';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'特殊单' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordermaster', @level2type=N'COLUMN',@level2name=N'special_order';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Date Remark' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordermaster', @level2type=N'COLUMN',@level2name=N'date_remark';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'order_remark' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordermaster', @level2type=N'COLUMN',@level2name=N'order_remark';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'mi_hem_insert' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordermaster', @level2type=N'COLUMN',@level2name=N'mi_hem_insert';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'mi_logo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordermaster', @level2type=N'COLUMN',@level2name=N'mi_logo';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'mi_n_n' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordermaster', @level2type=N'COLUMN',@level2name=N'mi_n_n';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'mi_print' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordermaster', @level2type=N'COLUMN',@level2name=N'mi_print';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'mi_stripes' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordermaster', @level2type=N'COLUMN',@level2name=N'mi_stripes';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'size_type' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordermaster', @level2type=N'COLUMN',@level2name=N'size_type';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'remark' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordermaster', @level2type=N'COLUMN',@level2name=N'remark';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'athletic' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordermaster', @level2type=N'COLUMN',@level2name=N'athletic';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordermaster', @level2type=N'COLUMN',@level2name=N'utc_create';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordermaster', @level2type=N'COLUMN',@level2name=N'utc_update';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordermaster', @level2type=N'COLUMN',@level2name=N'order_master_status';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordermaster', @level2type=N'COLUMN',@level2name=N'create_by';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'变更人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordermaster', @level2type=N'COLUMN',@level2name=N'update_by';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordermaster', @level2type=N'COLUMN',@level2name=N'note';
-- end --

-- begin--worktable_edi_order_size--
if exists (select 1   
            from  sysobjects   
           where  id = object_id('worktable_ediordersize')   
            and   type = 'U')   
   drop table worktable_edi_order_size   
go
create table worktable_edi_order_size (
	edi_order_size_id bigint not null IDENTITY(1,1)  ,
	order_master_id   bigint ,
	size_name   varchar(20) ,
	manufacturing_size   varchar(20) ,
	size_quantity   varchar(20) ,
	unit_price   varchar(20) ,
	upc_code   varchar(255) ,
	buyer_size_code   varchar(255) ,
	utc_create  datetime  ,
	utc_update  datetime  ,
	order_size_status   varchar(1) ,
	create_by   bigint ,
	update_by   bigint ,
	note   varchar(1024) ,
	primary key (edi_order_size_id) 
);

-- Add comments to the columns
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'记录id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordersize', @level2type=N'COLUMN',@level2name=N'edi_order_size_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'订单id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordersize', @level2type=N'COLUMN',@level2name=N'order_master_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'size Name' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordersize', @level2type=N'COLUMN',@level2name=N'size_name';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'manufacturing Size' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordersize', @level2type=N'COLUMN',@level2name=N'manufacturing_size';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordersize', @level2type=N'COLUMN',@level2name=N'size_quantity';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'unit Price' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordersize', @level2type=N'COLUMN',@level2name=N'unit_price';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'UPCCode' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordersize', @level2type=N'COLUMN',@level2name=N'upc_code';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'buyer Size Code' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordersize', @level2type=N'COLUMN',@level2name=N'buyer_size_code';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordersize', @level2type=N'COLUMN',@level2name=N'utc_create';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordersize', @level2type=N'COLUMN',@level2name=N'utc_update';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordersize', @level2type=N'COLUMN',@level2name=N'order_size_status';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordersize', @level2type=N'COLUMN',@level2name=N'create_by';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'变更人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordersize', @level2type=N'COLUMN',@level2name=N'update_by';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordersize', @level2type=N'COLUMN',@level2name=N'note';
-- end --

-- begin--worktable_edi_order_charge--
if exists (select 1   
            from  sysobjects   
           where  id = object_id('worktable_ediordercharge')   
            and   type = 'U')   
   drop table worktable_edi_order_charge   
go
create table worktable_edi_order_charge (
	edi_order_charge_id bigint not null IDENTITY(1,1)  ,
	order_master_id   bigint ,
	charge_code   varchar(255) ,
	amount   varchar(20) ,
	charge_type   varchar(20) ,
	rate   varchar(20) ,
	utc_create  datetime  ,
	utc_update  datetime  ,
	order_charge_status   varchar(1) ,
	create_by   bigint ,
	update_by   bigint ,
	note   varchar(1024) ,
	primary key (edi_order_charge_id) 
);

-- Add comments to the columns
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'记录id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordercharge', @level2type=N'COLUMN',@level2name=N'edi_order_charge_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'订单id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordercharge', @level2type=N'COLUMN',@level2name=N'order_master_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'charge Code' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordercharge', @level2type=N'COLUMN',@level2name=N'charge_code';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordercharge', @level2type=N'COLUMN',@level2name=N'amount';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'charge_type' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordercharge', @level2type=N'COLUMN',@level2name=N'charge_type';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'rate' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordercharge', @level2type=N'COLUMN',@level2name=N'rate';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordercharge', @level2type=N'COLUMN',@level2name=N'utc_create';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordercharge', @level2type=N'COLUMN',@level2name=N'utc_update';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordercharge', @level2type=N'COLUMN',@level2name=N'order_charge_status';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordercharge', @level2type=N'COLUMN',@level2name=N'create_by';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'变更人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordercharge', @level2type=N'COLUMN',@level2name=N'update_by';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordercharge', @level2type=N'COLUMN',@level2name=N'note';
-- end --

-- begin--worktable_edi_order_fob--
if exists (select 1   
            from  sysobjects   
           where  id = object_id('worktable_ediorderfob')   
            and   type = 'U')   
   drop table worktable_edi_order_fob   
go
create table worktable_edi_order_fob (
	edi_order_fob_id bigint not null IDENTITY(1,1)  ,
	order_master_id   bigint ,
	united_nationlocation_code   varchar(255) ,
	incoterm   varchar(255) ,
	fob_status   varchar(20) ,
	utc_create  datetime  ,
	utc_update  datetime  ,
	order_fob_status   varchar(1) ,
	create_by   bigint ,
	update_by   bigint ,
	note   varchar(1024) ,
	primary key (edi_order_fob_id) 
);

-- Add comments to the columns
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'记录id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediorderfob', @level2type=N'COLUMN',@level2name=N'edi_order_fob_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'订单id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediorderfob', @level2type=N'COLUMN',@level2name=N'order_master_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'UnitedNationLocationCode' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediorderfob', @level2type=N'COLUMN',@level2name=N'united_nationlocation_code';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Incoterm' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediorderfob', @level2type=N'COLUMN',@level2name=N'incoterm';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'FOBStatus' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediorderfob', @level2type=N'COLUMN',@level2name=N'fob_status';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediorderfob', @level2type=N'COLUMN',@level2name=N'utc_create';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediorderfob', @level2type=N'COLUMN',@level2name=N'utc_update';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediorderfob', @level2type=N'COLUMN',@level2name=N'order_fob_status';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediorderfob', @level2type=N'COLUMN',@level2name=N'create_by';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'变更人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediorderfob', @level2type=N'COLUMN',@level2name=N'update_by';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediorderfob', @level2type=N'COLUMN',@level2name=N'note';
-- end --

-- begin--worktable_edi_order_carrier--
if exists (select 1   
            from  sysobjects   
           where  id = object_id('worktable_ediordercarrier')   
            and   type = 'U')   
   drop table worktable_edi_order_carrier   
go
create table worktable_edi_order_carrier (
	edi_order_fob_id bigint not null IDENTITY(1,1)  ,
	order_master_id   bigint ,
	carrier_detail   varchar(255) ,
	utc_create  datetime  ,
	utc_update  datetime  ,
	order_carrier_status   varchar(1) ,
	create_by   bigint ,
	update_by   bigint ,
	note   varchar(1024) ,
	primary key (edi_order_fob_id) 
);

-- Add comments to the columns
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'记录id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordercarrier', @level2type=N'COLUMN',@level2name=N'edi_order_fob_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'订单id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordercarrier', @level2type=N'COLUMN',@level2name=N'order_master_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'CarrierDetail' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordercarrier', @level2type=N'COLUMN',@level2name=N'carrier_detail';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordercarrier', @level2type=N'COLUMN',@level2name=N'utc_create';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordercarrier', @level2type=N'COLUMN',@level2name=N'utc_update';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordercarrier', @level2type=N'COLUMN',@level2name=N'order_carrier_status';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordercarrier', @level2type=N'COLUMN',@level2name=N'create_by';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'变更人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordercarrier', @level2type=N'COLUMN',@level2name=N'update_by';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordercarrier', @level2type=N'COLUMN',@level2name=N'note';
-- end --

-- begin--worktable_edi_order_parties--
if exists (select 1   
            from  sysobjects   
           where  id = object_id('worktable_ediorderparties')   
            and   type = 'U')   
   drop table worktable_edi_order_parties   
go
create table worktable_edi_order_parties (
	edi_order_parties_id bigint not null IDENTITY(1,1)  ,
	order_master_id   bigint ,
	type   varchar(10) ,
	party_name   varchar(255) ,
	additional_name_information   varchar(255) ,
	address_infomation   varchar(128) ,
	geographic_location   varchar(255) ,
	reference_information   varchar(255) ,
	department_number   varchar(50) ,
	primary_contact   varchar(10) ,
	tel   varchar(255) ,
	utc_create  datetime  ,
	utc_update  datetime  ,
	order_carrier_status   varchar(1) ,
	create_by   bigint ,
	update_by   bigint ,
	note   varchar(1024) ,
	primary key (edi_order_parties_id) 
);

-- Add comments to the columns
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'记录id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediorderparties', @level2type=N'COLUMN',@level2name=N'edi_order_parties_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'订单id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediorderparties', @level2type=N'COLUMN',@level2name=N'order_master_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'type' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediorderparties', @level2type=N'COLUMN',@level2name=N'type';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'party name' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediorderparties', @level2type=N'COLUMN',@level2name=N'party_name';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Additional Name Information' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediorderparties', @level2type=N'COLUMN',@level2name=N'additional_name_information';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Address Information ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediorderparties', @level2type=N'COLUMN',@level2name=N'address_infomation';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Geographic Location' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediorderparties', @level2type=N'COLUMN',@level2name=N'geographic_location';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Reference Information' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediorderparties', @level2type=N'COLUMN',@level2name=N'reference_information';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'department number' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediorderparties', @level2type=N'COLUMN',@level2name=N'department_number';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Primary Contact' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediorderparties', @level2type=N'COLUMN',@level2name=N'primary_contact';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'tel' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediorderparties', @level2type=N'COLUMN',@level2name=N'tel';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediorderparties', @level2type=N'COLUMN',@level2name=N'utc_create';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediorderparties', @level2type=N'COLUMN',@level2name=N'utc_update';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediorderparties', @level2type=N'COLUMN',@level2name=N'order_carrier_status';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediorderparties', @level2type=N'COLUMN',@level2name=N'create_by';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'变更人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediorderparties', @level2type=N'COLUMN',@level2name=N'update_by';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediorderparties', @level2type=N'COLUMN',@level2name=N'note';
-- end --

-- begin--worktable_factory_assignment--
if exists (select 1   
            from  sysobjects   
           where  id = object_id('worktable_factoryassignment')   
            and   type = 'U')   
   drop table worktable_factory_assignment   
go
create table worktable_factory_assignment (
	fact_assign_id bigint not null IDENTITY(1,1)  ,
	assign_source_id   bigint ,
	assign_source   varchar(2) ,
	order_type   varchar(2) ,
	document_id   bigint ,
	working_no   varchar(255) ,
	gps_factory   varchar(30) ,
	assigned_factory   varchar(30) ,
	last_prod_fact   varchar(50) ,
	organise_type   varchar(20) ,
	order_country   varchar(255) ,
	coo   varchar(50) ,
	corrected_source   varchar(50) ,
	base_style   varchar(50) ,
	class_code   varchar(255) ,
	order_group   varchar(255) ,
	brand   varchar(255) ,
	article_no   varchar(255) ,
	product_type   varchar(50) ,
	art_lead_time   int ,
	request_date  datetime  ,
	season   varchar(255) ,
	total_qty   varchar(255) ,
	utc_create  datetime  ,
	utc_update  datetime  ,
	assign_result_status   varchar(1) ,
	create_by   bigint ,
	update_by   bigint ,
	note   varchar(1024) ,
	primary key (fact_assign_id) 
);

-- Add comments to the columns
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'记录id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_factoryassignment', @level2type=N'COLUMN',@level2name=N'fact_assign_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'source id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_factoryassignment', @level2type=N'COLUMN',@level2name=N'assign_source_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'source' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_factoryassignment', @level2type=N'COLUMN',@level2name=N'assign_source';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'order Type' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_factoryassignment', @level2type=N'COLUMN',@level2name=N'order_type';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'document id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_factoryassignment', @level2type=N'COLUMN',@level2name=N'document_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'working no' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_factoryassignment', @level2type=N'COLUMN',@level2name=N'working_no';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'GPS Factory' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_factoryassignment', @level2type=N'COLUMN',@level2name=N'gps_factory';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Assigned Factory' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_factoryassignment', @level2type=N'COLUMN',@level2name=N'assigned_factory';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Last Production Factory' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_factoryassignment', @level2type=N'COLUMN',@level2name=N'last_prod_fact';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'EU/NON EU' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_factoryassignment', @level2type=N'COLUMN',@level2name=N'organise_type';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Order Country' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_factoryassignment', @level2type=N'COLUMN',@level2name=N'order_country';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'COO' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_factoryassignment', @level2type=N'COLUMN',@level2name=N'coo';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'corrected source' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_factoryassignment', @level2type=N'COLUMN',@level2name=N'corrected_source';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'base style' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_factoryassignment', @level2type=N'COLUMN',@level2name=N'base_style';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Class Code' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_factoryassignment', @level2type=N'COLUMN',@level2name=N'class_code';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Order Group' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_factoryassignment', @level2type=N'COLUMN',@level2name=N'order_group';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Brand ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_factoryassignment', @level2type=N'COLUMN',@level2name=N'brand';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Article Number' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_factoryassignment', @level2type=N'COLUMN',@level2name=N'article_no';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Product Type' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_factoryassignment', @level2type=N'COLUMN',@level2name=N'product_type';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Article Lead time' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_factoryassignment', @level2type=N'COLUMN',@level2name=N'art_lead_time';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Request Date' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_factoryassignment', @level2type=N'COLUMN',@level2name=N'request_date';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'season' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_factoryassignment', @level2type=N'COLUMN',@level2name=N'season';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Total Qty' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_factoryassignment', @level2type=N'COLUMN',@level2name=N'total_qty';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_factoryassignment', @level2type=N'COLUMN',@level2name=N'utc_create';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_factoryassignment', @level2type=N'COLUMN',@level2name=N'utc_update';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_factoryassignment', @level2type=N'COLUMN',@level2name=N'assign_result_status';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_factoryassignment', @level2type=N'COLUMN',@level2name=N'create_by';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'变更人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_factoryassignment', @level2type=N'COLUMN',@level2name=N'update_by';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_factoryassignment', @level2type=N'COLUMN',@level2name=N'note';
-- end --

-- begin--factory_factory--
if exists (select 1   
            from  sysobjects   
           where  id = object_id('factory_factory')   
            and   type = 'U')   
   drop table factory_factory   
go
create table factory_factory (
	factory_id bigint not null IDENTITY(1,1)  ,
	factory_code   varchar(30) ,
	fact_simp_name   varchar(20) ,
	factory_name   varchar(255) ,
	factory_address   varchar(255) ,
	factory_phone_num   varchar(30) ,
	ax_factory_id   varchar(10) ,
	factory_type   varchar(1) ,
	factory_status   varchar(1) ,
	utc_create  datetime  ,
	utc_update  datetime  ,
	create_by   bigint ,
	update_by   bigint ,
	note   varchar(1024) ,
	primary key (factory_id) 
);

-- Add comments to the columns
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'记录id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'factory_factory', @level2type=N'COLUMN',@level2name=N'factory_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工厂代号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'factory_factory', @level2type=N'COLUMN',@level2name=N'factory_code';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工厂简称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'factory_factory', @level2type=N'COLUMN',@level2name=N'fact_simp_name';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工厂名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'factory_factory', @level2type=N'COLUMN',@level2name=N'factory_name';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工厂地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'factory_factory', @level2type=N'COLUMN',@level2name=N'factory_address';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工厂电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'factory_factory', @level2type=N'COLUMN',@level2name=N'factory_phone_num';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'AX工厂代码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'factory_factory', @level2type=N'COLUMN',@level2name=N'ax_factory_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'factory_factory', @level2type=N'COLUMN',@level2name=N'factory_type';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'factory_factory', @level2type=N'COLUMN',@level2name=N'factory_status';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'factory_factory', @level2type=N'COLUMN',@level2name=N'utc_create';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'factory_factory', @level2type=N'COLUMN',@level2name=N'utc_update';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'factory_factory', @level2type=N'COLUMN',@level2name=N'create_by';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'变更人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'factory_factory', @level2type=N'COLUMN',@level2name=N'update_by';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'factory_factory', @level2type=N'COLUMN',@level2name=N'note';
-- end --

-- begin--process_process--
if exists (select 1   
            from  sysobjects   
           where  id = object_id('process_process')   
            and   type = 'U')   
   drop table process_process   
go
create table process_process (
	process_id bigint not null IDENTITY(1,1)  ,
	process_category_id   bigint ,
	process_code   varchar(30) ,
	process_name   varchar(255) ,
	process_type   varchar(50) ,
	fr_external_id   varchar(10) ,
	utc_create  datetime  ,
	utc_update  datetime  ,
	process_status   varchar(1) ,
	create_by   bigint ,
	update_by   bigint ,
	note   varchar(1024) ,
	primary key (process_id) 
);

-- Add comments to the columns
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'记录id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'process_process', @level2type=N'COLUMN',@level2name=N'process_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'process category id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'process_process', @level2type=N'COLUMN',@level2name=N'process_category_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工序代号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'process_process', @level2type=N'COLUMN',@level2name=N'process_code';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工序名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'process_process', @level2type=N'COLUMN',@level2name=N'process_name';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工序类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'process_process', @level2type=N'COLUMN',@level2name=N'process_type';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'FR External ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'process_process', @level2type=N'COLUMN',@level2name=N'fr_external_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'process_process', @level2type=N'COLUMN',@level2name=N'utc_create';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'process_process', @level2type=N'COLUMN',@level2name=N'utc_update';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'process_process', @level2type=N'COLUMN',@level2name=N'process_status';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'process_process', @level2type=N'COLUMN',@level2name=N'create_by';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'变更人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'process_process', @level2type=N'COLUMN',@level2name=N'update_by';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'process_process', @level2type=N'COLUMN',@level2name=N'note';
-- end --

-- begin--factory_factory_process--
if exists (select 1   
            from  sysobjects   
           where  id = object_id('factory_factoryprocess')   
            and   type = 'U')   
   drop table factory_factory_process   
go
create table factory_factory_process (
	factory_process_id bigint not null IDENTITY(1,1)  ,
	factory_id   varchar(30) ,
	process_id   bigint ,
	process_code   varchar(30) ,
	factory_process_type   varchar(1) ,
	utc_create  datetime  ,
	utc_update  datetime  ,
	create_by   bigint ,
	update_by   bigint ,
	note   varchar(1024) ,
	primary key (factory_process_id) 
);

-- Add comments to the columns
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'记录id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'factory_factoryprocess', @level2type=N'COLUMN',@level2name=N'factory_process_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工厂id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'factory_factoryprocess', @level2type=N'COLUMN',@level2name=N'factory_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工序id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'factory_factoryprocess', @level2type=N'COLUMN',@level2name=N'process_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工序Code' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'factory_factoryprocess', @level2type=N'COLUMN',@level2name=N'process_code';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工序类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'factory_factoryprocess', @level2type=N'COLUMN',@level2name=N'factory_process_type';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'factory_factoryprocess', @level2type=N'COLUMN',@level2name=N'utc_create';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'factory_factoryprocess', @level2type=N'COLUMN',@level2name=N'utc_update';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'factory_factoryprocess', @level2type=N'COLUMN',@level2name=N'create_by';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'变更人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'factory_factoryprocess', @level2type=N'COLUMN',@level2name=N'update_by';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'factory_factoryprocess', @level2type=N'COLUMN',@level2name=N'note';
-- end --

-- begin--factory_factory_loading--
if exists (select 1   
            from  sysobjects   
           where  id = object_id('factory_factoryloading')   
            and   type = 'U')   
   drop table factory_factory_loading   
go
create table factory_factory_loading (
	factory_loading_id bigint not null IDENTITY(1,1)  ,
	factory_id   bigint ,
	woven_knit   varchar(20) ,
	product_type   varchar(50) ,
	loading   float ,
	capacity   float ,
	fact_load_type   varchar(1) ,
	year   int ,
	month   int ,
	utc_update  datetime  ,
	create_by   bigint ,
	update_by   bigint ,
	note   varchar(1024) ,
	primary key (factory_loading_id) 
);

-- Add comments to the columns
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'记录id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'factory_factoryloading', @level2type=N'COLUMN',@level2name=N'factory_loading_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工厂id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'factory_factoryloading', @level2type=N'COLUMN',@level2name=N'factory_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'woven/knit' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'factory_factoryloading', @level2type=N'COLUMN',@level2name=N'woven_knit';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'product Type' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'factory_factoryloading', @level2type=N'COLUMN',@level2name=N'product_type';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Loading' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'factory_factoryloading', @level2type=N'COLUMN',@level2name=N'loading';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Capacity' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'factory_factoryloading', @level2type=N'COLUMN',@level2name=N'capacity';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'factory loading type' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'factory_factoryloading', @level2type=N'COLUMN',@level2name=N'fact_load_type';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'年' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'factory_factoryloading', @level2type=N'COLUMN',@level2name=N'year';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'月' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'factory_factoryloading', @level2type=N'COLUMN',@level2name=N'month';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'factory_factoryloading', @level2type=N'COLUMN',@level2name=N'utc_update';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'factory_factoryloading', @level2type=N'COLUMN',@level2name=N'create_by';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'变更人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'factory_factoryloading', @level2type=N'COLUMN',@level2name=N'update_by';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'factory_factoryloading', @level2type=N'COLUMN',@level2name=N'note';
-- end --

-- begin--factory_factory_process_loading--
if exists (select 1   
            from  sysobjects   
           where  id = object_id('factory_factoryprocessloading')   
            and   type = 'U')   
   drop table factory_factory_process_loading   
go
create table factory_factory_process_loading (
	fact_pro_load_id bigint not null IDENTITY(1,1)  ,
	factory_id   bigint ,
	factory_code   varchar(30) ,
	process_id   bigint ,
	process_code   varchar(30) ,
	loading   float ,
	capacity   float ,
	year   int ,
	month   int ,
	utc_update  datetime  ,
	create_by   bigint ,
	update_by   bigint ,
	note   varchar(1024) ,
	primary key (fact_pro_load_id) 
);

-- Add comments to the columns
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'记录id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'factory_factoryprocessloading', @level2type=N'COLUMN',@level2name=N'fact_pro_load_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工厂id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'factory_factoryprocessloading', @level2type=N'COLUMN',@level2name=N'factory_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工厂code' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'factory_factoryprocessloading', @level2type=N'COLUMN',@level2name=N'factory_code';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工序id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'factory_factoryprocessloading', @level2type=N'COLUMN',@level2name=N'process_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'process code' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'factory_factoryprocessloading', @level2type=N'COLUMN',@level2name=N'process_code';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Loading' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'factory_factoryprocessloading', @level2type=N'COLUMN',@level2name=N'loading';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Capacity' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'factory_factoryprocessloading', @level2type=N'COLUMN',@level2name=N'capacity';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'年' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'factory_factoryprocessloading', @level2type=N'COLUMN',@level2name=N'year';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'月' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'factory_factoryprocessloading', @level2type=N'COLUMN',@level2name=N'month';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'factory_factoryprocessloading', @level2type=N'COLUMN',@level2name=N'utc_update';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'factory_factoryprocessloading', @level2type=N'COLUMN',@level2name=N'create_by';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'变更人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'factory_factoryprocessloading', @level2type=N'COLUMN',@level2name=N'update_by';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'factory_factoryprocessloading', @level2type=N'COLUMN',@level2name=N'note';
-- end --

-- begin--factory_process_loading--
if exists (select 1   
            from  sysobjects   
           where  id = object_id('factory_processloading')   
            and   type = 'U')   
   drop table factory_process_loading   
go
create table factory_process_loading (
	fact_pro_load_id bigint not null IDENTITY(1,1)  ,
	factory_id   bigint ,
	factory_code   varchar(30) ,
	process_id   bigint ,
	process_code   varchar(30) ,
	loading   float ,
	capacity   float ,
	year   int ,
	month   int ,
	utc_update  datetime  ,
	create_by   bigint ,
	update_by   bigint ,
	note   varchar(1024) ,
	primary key (fact_pro_load_id) 
);

-- Add comments to the columns
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'记录id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'factory_processloading', @level2type=N'COLUMN',@level2name=N'fact_pro_load_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工厂id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'factory_processloading', @level2type=N'COLUMN',@level2name=N'factory_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工厂code' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'factory_processloading', @level2type=N'COLUMN',@level2name=N'factory_code';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工序id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'factory_processloading', @level2type=N'COLUMN',@level2name=N'process_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'process code' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'factory_processloading', @level2type=N'COLUMN',@level2name=N'process_code';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Loading' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'factory_processloading', @level2type=N'COLUMN',@level2name=N'loading';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Capacity' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'factory_processloading', @level2type=N'COLUMN',@level2name=N'capacity';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'年' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'factory_processloading', @level2type=N'COLUMN',@level2name=N'year';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'月' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'factory_processloading', @level2type=N'COLUMN',@level2name=N'month';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'factory_processloading', @level2type=N'COLUMN',@level2name=N'utc_update';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'factory_processloading', @level2type=N'COLUMN',@level2name=N'create_by';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'变更人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'factory_processloading', @level2type=N'COLUMN',@level2name=N'update_by';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'factory_processloading', @level2type=N'COLUMN',@level2name=N'note';
-- end --

-- begin--factory_loading--
if exists (select 1   
            from  sysobjects   
           where  id = object_id('factory_loading')   
            and   type = 'U')   
   drop table factory_loading   
go
create table factory_loading (
	factory_loading_id bigint not null IDENTITY(1,1)  ,
	factory_id   bigint ,
	woven_knit   varchar(20) ,
	product_type   varchar(50) ,
	loading   float ,
	capacity   float ,
	fact_load_type   varchar(1) ,
	year   int ,
	month   int ,
	utc_update  datetime  ,
	create_by   bigint ,
	update_by   bigint ,
	note   varchar(1024) ,
	primary key (factory_loading_id) 
);

-- Add comments to the columns
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'记录id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'factory_loading', @level2type=N'COLUMN',@level2name=N'factory_loading_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工厂id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'factory_loading', @level2type=N'COLUMN',@level2name=N'factory_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'woven/knit' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'factory_loading', @level2type=N'COLUMN',@level2name=N'woven_knit';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'product Type' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'factory_loading', @level2type=N'COLUMN',@level2name=N'product_type';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Loading' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'factory_loading', @level2type=N'COLUMN',@level2name=N'loading';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Capacity' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'factory_loading', @level2type=N'COLUMN',@level2name=N'capacity';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'factory loading type' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'factory_loading', @level2type=N'COLUMN',@level2name=N'fact_load_type';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'年' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'factory_loading', @level2type=N'COLUMN',@level2name=N'year';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'月' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'factory_loading', @level2type=N'COLUMN',@level2name=N'month';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'factory_loading', @level2type=N'COLUMN',@level2name=N'utc_update';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'factory_loading', @level2type=N'COLUMN',@level2name=N'create_by';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'变更人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'factory_loading', @level2type=N'COLUMN',@level2name=N'update_by';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'factory_loading', @level2type=N'COLUMN',@level2name=N'note';
-- end --

-- begin--cpo_factory_loading--
if exists (select 1   
            from  sysobjects   
           where  id = object_id('cpo_factoryloading')   
            and   type = 'U')   
   drop table cpo_factory_loading   
go
create table cpo_factory_loading (
	factory_loading_id bigint not null IDENTITY(1,1)  ,
	factory_id   bigint ,
	woven_knit   varchar(20) ,
	product_type   varchar(50) ,
	cur_doc_loading   float ,
	mkt_fc_loading   float ,
	mkt_fc_cur_loading   float ,
	cus_fc_cur_loading   float ,
	fr_mkt_fc_loading   float ,
	fr_cus_fc_loading   float ,
	cus_fc_loading   float ,
	fr_loading   float ,
	loading   float ,
	capacity   float ,
	fact_load_type   varchar(1) ,
	ap_group   varchar(255) ,
	averge_smv   float ,
	actual_order_loading_by_qty   float ,
	cf_order_loading_by_qty   float ,
	mf_order_loading_by_qty   float ,
	actual_order_cur_loading_by_qty   float ,
	cf_order_cur_loading_by_qty   float ,
	mf_order_cur_loading_by_qty   float ,
	cus_fc_sub_loading   float ,
	cus_fc_sub_loading_by_qty   float ,
	year   int ,
	month   int ,
	utc_update  datetime  ,
	create_by   bigint ,
	update_by   bigint ,
	note   varchar(1024) ,
	primary key (factory_loading_id) 
);

-- Add comments to the columns
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'记录id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factoryloading', @level2type=N'COLUMN',@level2name=N'factory_loading_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工厂id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factoryloading', @level2type=N'COLUMN',@level2name=N'factory_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'woven/knit' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factoryloading', @level2type=N'COLUMN',@level2name=N'woven_knit';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'product Type' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factoryloading', @level2type=N'COLUMN',@level2name=N'product_type';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'cur_doc_loading' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factoryloading', @level2type=N'COLUMN',@level2name=N'cur_doc_loading';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'mkt fc loading' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factoryloading', @level2type=N'COLUMN',@level2name=N'mkt_fc_loading';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'mkt fc cur loading' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factoryloading', @level2type=N'COLUMN',@level2name=N'mkt_fc_cur_loading';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'cus fc cur loading' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factoryloading', @level2type=N'COLUMN',@level2name=N'cus_fc_cur_loading';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'fr_mkt_fc_loading' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factoryloading', @level2type=N'COLUMN',@level2name=N'fr_mkt_fc_loading';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'fr_cus_fc_loading' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factoryloading', @level2type=N'COLUMN',@level2name=N'fr_cus_fc_loading';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'cus fc loading' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factoryloading', @level2type=N'COLUMN',@level2name=N'cus_fc_loading';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fast React Loading' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factoryloading', @level2type=N'COLUMN',@level2name=N'fr_loading';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Loading' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factoryloading', @level2type=N'COLUMN',@level2name=N'loading';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Capacity' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factoryloading', @level2type=N'COLUMN',@level2name=N'capacity';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'factory loading type' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factoryloading', @level2type=N'COLUMN',@level2name=N'fact_load_type';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ap_group' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factoryloading', @level2type=N'COLUMN',@level2name=N'ap_group';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'averge smv' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factoryloading', @level2type=N'COLUMN',@level2name=N'averge_smv';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'actual_order_loading_by_qty' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factoryloading', @level2type=N'COLUMN',@level2name=N'actual_order_loading_by_qty';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'cf_order_loading_by_qty' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factoryloading', @level2type=N'COLUMN',@level2name=N'cf_order_loading_by_qty';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'mf_order_loading_by_qty' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factoryloading', @level2type=N'COLUMN',@level2name=N'mf_order_loading_by_qty';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'actual_order_cur_loading_by_qty' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factoryloading', @level2type=N'COLUMN',@level2name=N'actual_order_cur_loading_by_qty';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'cf_order_cur_loading_by_qty' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factoryloading', @level2type=N'COLUMN',@level2name=N'cf_order_cur_loading_by_qty';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'mf_order_cur_loading_by_qty' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factoryloading', @level2type=N'COLUMN',@level2name=N'mf_order_cur_loading_by_qty';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'cus_fc_sub_loading' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factoryloading', @level2type=N'COLUMN',@level2name=N'cus_fc_sub_loading';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'cus_fc_sub_loading_by_qty' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factoryloading', @level2type=N'COLUMN',@level2name=N'cus_fc_sub_loading_by_qty';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'年' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factoryloading', @level2type=N'COLUMN',@level2name=N'year';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'月' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factoryloading', @level2type=N'COLUMN',@level2name=N'month';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factoryloading', @level2type=N'COLUMN',@level2name=N'utc_update';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factoryloading', @level2type=N'COLUMN',@level2name=N'create_by';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'变更人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factoryloading', @level2type=N'COLUMN',@level2name=N'update_by';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factoryloading', @level2type=N'COLUMN',@level2name=N'note';
-- end --

-- begin--cpo_factory_process_loading--
if exists (select 1   
            from  sysobjects   
           where  id = object_id('cpo_factoryprocessloading')   
            and   type = 'U')   
   drop table cpo_factory_process_loading   
go
create table cpo_factory_process_loading (
	fact_pro_load_id bigint not null IDENTITY(1,1)  ,
	factory_id   bigint ,
	factory_code   varchar(30) ,
	process_id   bigint ,
	process_code   varchar(30) ,
	loading   float ,
	mkt_fc_loading   float ,
	cus_fc_loading   float ,
	mkt_fc_cur_loading   float ,
	cus_fc_cur_loading   float ,
	cur_loading   float ,
	capacity   float ,
	fr_order_loading   float ,
	fr_cf_loading   float ,
	fr_mf_loading   float ,
	cus_fc_sub_loading   float ,
	year   int ,
	month   int ,
	utc_update  datetime  ,
	create_by   bigint ,
	update_by   bigint ,
	note   varchar(1024) ,
	primary key (fact_pro_load_id) 
);

-- Add comments to the columns
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'记录id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factoryprocessloading', @level2type=N'COLUMN',@level2name=N'fact_pro_load_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工厂id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factoryprocessloading', @level2type=N'COLUMN',@level2name=N'factory_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工厂code' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factoryprocessloading', @level2type=N'COLUMN',@level2name=N'factory_code';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工序id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factoryprocessloading', @level2type=N'COLUMN',@level2name=N'process_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'process code' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factoryprocessloading', @level2type=N'COLUMN',@level2name=N'process_code';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Loading' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factoryprocessloading', @level2type=N'COLUMN',@level2name=N'loading';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'mkt fc loading' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factoryprocessloading', @level2type=N'COLUMN',@level2name=N'mkt_fc_loading';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'cus fc loading' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factoryprocessloading', @level2type=N'COLUMN',@level2name=N'cus_fc_loading';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'mkt fc cur loading' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factoryprocessloading', @level2type=N'COLUMN',@level2name=N'mkt_fc_cur_loading';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'cus fc cur loading' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factoryprocessloading', @level2type=N'COLUMN',@level2name=N'cus_fc_cur_loading';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'cur loading' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factoryprocessloading', @level2type=N'COLUMN',@level2name=N'cur_loading';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Capacity' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factoryprocessloading', @level2type=N'COLUMN',@level2name=N'capacity';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'fr_order_loading' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factoryprocessloading', @level2type=N'COLUMN',@level2name=N'fr_order_loading';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'fr_cf_loading' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factoryprocessloading', @level2type=N'COLUMN',@level2name=N'fr_cf_loading';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'fr_mf_loading' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factoryprocessloading', @level2type=N'COLUMN',@level2name=N'fr_mf_loading';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'cus_fc_sub_loading' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factoryprocessloading', @level2type=N'COLUMN',@level2name=N'cus_fc_sub_loading';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'年' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factoryprocessloading', @level2type=N'COLUMN',@level2name=N'year';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'月' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factoryprocessloading', @level2type=N'COLUMN',@level2name=N'month';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factoryprocessloading', @level2type=N'COLUMN',@level2name=N'utc_update';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factoryprocessloading', @level2type=N'COLUMN',@level2name=N'create_by';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'变更人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factoryprocessloading', @level2type=N'COLUMN',@level2name=N'update_by';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factoryprocessloading', @level2type=N'COLUMN',@level2name=N'note';
-- end --

-- begin--cpo_worktable_factory_assignment--
if exists (select 1   
            from  sysobjects   
           where  id = object_id('cpo_worktablefactoryassignment')   
            and   type = 'U')   
   drop table cpo_worktable_factory_assignment   
go
create table cpo_worktable_factory_assignment (
	fact_assign_id bigint not null IDENTITY(1,1)  ,
	assign_source_id   bigint ,
	assign_source   varchar(2) ,
	order_type   varchar(2) ,
	document_id   bigint ,
	working_no   varchar(255) ,
	gps_factory   varchar(30) ,
	assigned_factory   varchar(30) ,
	last_prod_fact   varchar(50) ,
	organise_type   varchar(20) ,
	order_country   varchar(255) ,
	coo   varchar(50) ,
	corrected_source   varchar(50) ,
	base_style   varchar(50) ,
	class_code   varchar(255) ,
	order_group   varchar(255) ,
	brand   varchar(255) ,
	article_no   varchar(255) ,
	product_type   varchar(50) ,
	art_lead_time   int ,
	request_date  datetime  ,
	season   varchar(255) ,
	total_qty   varchar(255) ,
	utc_create  datetime  ,
	utc_update  datetime  ,
	assign_result_status   varchar(1) ,
	create_by   bigint ,
	update_by   bigint ,
	note   varchar(1024) ,
	primary key (fact_assign_id) 
);

-- Add comments to the columns
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'记录id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_worktablefactoryassignment', @level2type=N'COLUMN',@level2name=N'fact_assign_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'source id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_worktablefactoryassignment', @level2type=N'COLUMN',@level2name=N'assign_source_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'source' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_worktablefactoryassignment', @level2type=N'COLUMN',@level2name=N'assign_source';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'order Type' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_worktablefactoryassignment', @level2type=N'COLUMN',@level2name=N'order_type';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'document id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_worktablefactoryassignment', @level2type=N'COLUMN',@level2name=N'document_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'working no' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_worktablefactoryassignment', @level2type=N'COLUMN',@level2name=N'working_no';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'GPS Factory' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_worktablefactoryassignment', @level2type=N'COLUMN',@level2name=N'gps_factory';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Assigned Factory' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_worktablefactoryassignment', @level2type=N'COLUMN',@level2name=N'assigned_factory';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Last Production Factory' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_worktablefactoryassignment', @level2type=N'COLUMN',@level2name=N'last_prod_fact';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'EU/NON EU' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_worktablefactoryassignment', @level2type=N'COLUMN',@level2name=N'organise_type';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Order Country' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_worktablefactoryassignment', @level2type=N'COLUMN',@level2name=N'order_country';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'COO' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_worktablefactoryassignment', @level2type=N'COLUMN',@level2name=N'coo';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'corrected source' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_worktablefactoryassignment', @level2type=N'COLUMN',@level2name=N'corrected_source';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'base style' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_worktablefactoryassignment', @level2type=N'COLUMN',@level2name=N'base_style';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Class Code' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_worktablefactoryassignment', @level2type=N'COLUMN',@level2name=N'class_code';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Order Group' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_worktablefactoryassignment', @level2type=N'COLUMN',@level2name=N'order_group';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Brand ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_worktablefactoryassignment', @level2type=N'COLUMN',@level2name=N'brand';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Article Number' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_worktablefactoryassignment', @level2type=N'COLUMN',@level2name=N'article_no';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Product Type' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_worktablefactoryassignment', @level2type=N'COLUMN',@level2name=N'product_type';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Article Lead time' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_worktablefactoryassignment', @level2type=N'COLUMN',@level2name=N'art_lead_time';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Request Date' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_worktablefactoryassignment', @level2type=N'COLUMN',@level2name=N'request_date';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'season' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_worktablefactoryassignment', @level2type=N'COLUMN',@level2name=N'season';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Total Qty' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_worktablefactoryassignment', @level2type=N'COLUMN',@level2name=N'total_qty';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_worktablefactoryassignment', @level2type=N'COLUMN',@level2name=N'utc_create';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_worktablefactoryassignment', @level2type=N'COLUMN',@level2name=N'utc_update';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_worktablefactoryassignment', @level2type=N'COLUMN',@level2name=N'assign_result_status';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_worktablefactoryassignment', @level2type=N'COLUMN',@level2name=N'create_by';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'变更人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_worktablefactoryassignment', @level2type=N'COLUMN',@level2name=N'update_by';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_worktablefactoryassignment', @level2type=N'COLUMN',@level2name=N'note';
-- end --

-- begin--cpo_sms_pre_order--
if exists (select 1   
            from  sysobjects   
           where  id = object_id('cpo_smspreorder')   
            and   type = 'U')   
   drop table cpo_sms_pre_order   
go
create table cpo_sms_pre_order (
	sms_pre_order_id bigint not null IDENTITY(1,1)  ,
	document_id   bigint ,
	customer_no   varchar(50) ,
	product_factory   varchar(30) ,
	article_number   varchar(30) ,
	quantity   varchar(20) ,
	working_no   varchar(50) ,
	lo_no   varchar(10) ,
	model_no   varchar(30) ,
	model_name   varchar(255) ,
	assigned_factory   varchar(10) ,
	pre_ord_id   varchar(20) ,
	season   varchar(5) ,
	utc_create  datetime  ,
	utc_update  datetime  ,
	work_no_status   varchar(2) ,
	create_by   bigint ,
	update_by   bigint ,
	note   varchar(1024) ,
	primary key (sms_pre_order_id) 
);

-- Add comments to the columns
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'sms pre order' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_smspreorder', @level2type=N'COLUMN',@level2name=N'sms_pre_order_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'document id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_smspreorder', @level2type=N'COLUMN',@level2name=N'document_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'customer_no' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_smspreorder', @level2type=N'COLUMN',@level2name=N'customer_no';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'product_factory' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_smspreorder', @level2type=N'COLUMN',@level2name=N'product_factory';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'article_number' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_smspreorder', @level2type=N'COLUMN',@level2name=N'article_number';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'quantity' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_smspreorder', @level2type=N'COLUMN',@level2name=N'quantity';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'working_no' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_smspreorder', @level2type=N'COLUMN',@level2name=N'working_no';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'lo_no' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_smspreorder', @level2type=N'COLUMN',@level2name=N'lo_no';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'model_no' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_smspreorder', @level2type=N'COLUMN',@level2name=N'model_no';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'model_name' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_smspreorder', @level2type=N'COLUMN',@level2name=N'model_name';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'assigned_factory' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_smspreorder', @level2type=N'COLUMN',@level2name=N'assigned_factory';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'pre_ord_id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_smspreorder', @level2type=N'COLUMN',@level2name=N'pre_ord_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Season' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_smspreorder', @level2type=N'COLUMN',@level2name=N'season';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_smspreorder', @level2type=N'COLUMN',@level2name=N'utc_create';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_smspreorder', @level2type=N'COLUMN',@level2name=N'utc_update';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_smspreorder', @level2type=N'COLUMN',@level2name=N'work_no_status';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_smspreorder', @level2type=N'COLUMN',@level2name=N'create_by';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'变更人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_smspreorder', @level2type=N'COLUMN',@level2name=N'update_by';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_smspreorder', @level2type=N'COLUMN',@level2name=N'note';
-- end --

-- begin--cpo_mi_order_record--
if exists (select 1   
            from  sysobjects   
           where  id = object_id('cpo_miorderrecord')   
            and   type = 'U')   
   drop table cpo_mi_order_record   
go
create table cpo_mi_order_record (
	mi_order_id bigint not null IDENTITY(1,1)  ,
	document_id   bigint ,
	working_no   varchar(255) ,
	gps_factory   varchar(30) ,
	assigned_factory   varchar(30) ,
	po_number   varchar(255) ,
	customer_no   varchar(255) ,
	article_no   varchar(255) ,
	article_description   varchar(512) ,
	class_code   varchar(255) ,
	order_group   varchar(255) ,
	brand   varchar(255) ,
	total_qty   varchar(255) ,
	price_per_unit   varchar(255) ,
	cust_size_run   varchar(10) ,
	tech_notation   varchar(10) ,
	customer_size   varchar(10) ,
	tech_size   varchar(10) ,
	order_qty   varchar(255) ,
	shipped_qty   varchar(10) ,
	division   varchar(10) ,
	classification   varchar(255) ,
	warehourse   varchar(255) ,
	cust_req_date   varchar(255) ,
	plan_date   varchar(255) ,
	po_batch_date   varchar(255) ,
	first_prod_date   varchar(255) ,
	last_prod_date   varchar(255) ,
	ship_instruction   varchar(255) ,
	remark   varchar(512) ,
	tech_concept   varchar(255) ,
	tech_concept_desc   varchar(512) ,
	tech_comp_desc   varchar(512) ,
	prior_indication   varchar(64) ,
	subs_ship_to_no   varchar(255) ,
	vas_shas_code_non_us   varchar(255) ,
	for_account_of   varchar(255) ,
	seller   varchar(255) ,
	ship_mode   varchar(255) ,
	cust_order_no   varchar(255) ,
	order_type   varchar(255) ,
	release_status   varchar(255) ,
	shipped_status   varchar(255) ,
	mtfc_number   varchar(255) ,
	client_number   varchar(255) ,
	purc_group_code   varchar(255) ,
	contract_number   varchar(255) ,
	types   varchar(255) ,
	last_update_date   varchar(255) ,
	model_number   varchar(255) ,
	model_name   varchar(255) ,
	gender   varchar(255) ,
	busi_model_attr   varchar(255) ,
	psdd   varchar(255) ,
	podd   varchar(255) ,
	comfirm_delay   varchar(255) ,
	delivery_delay   varchar(255) ,
	mark_for_addr   varchar(512) ,
	total_mechan_amount   varchar(255) ,
	total_tax_amount   varchar(255) ,
	total_adjustsment   varchar(255) ,
	total_doc_amount   varchar(255) ,
	utc_create  datetime  ,
	utc_update  datetime  ,
	status   int ,
	create_by   bigint ,
	update_by   bigint ,
	note   varchar(1024) ,
	primary key (mi_order_id) 
);

-- Add comments to the columns
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'mi_order_id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_miorderrecord', @level2type=N'COLUMN',@level2name=N'mi_order_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'document id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_miorderrecord', @level2type=N'COLUMN',@level2name=N'document_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Working Number' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_miorderrecord', @level2type=N'COLUMN',@level2name=N'working_no';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'GPS Factory' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_miorderrecord', @level2type=N'COLUMN',@level2name=N'gps_factory';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Assigned Factory' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_miorderrecord', @level2type=N'COLUMN',@level2name=N'assigned_factory';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PO Number' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_miorderrecord', @level2type=N'COLUMN',@level2name=N'po_number';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Customer Number' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_miorderrecord', @level2type=N'COLUMN',@level2name=N'customer_no';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Article Number' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_miorderrecord', @level2type=N'COLUMN',@level2name=N'article_no';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Article Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_miorderrecord', @level2type=N'COLUMN',@level2name=N'article_description';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Class Code' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_miorderrecord', @level2type=N'COLUMN',@level2name=N'class_code';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Order Group' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_miorderrecord', @level2type=N'COLUMN',@level2name=N'order_group';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Brand ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_miorderrecord', @level2type=N'COLUMN',@level2name=N'brand';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Total Qty' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_miorderrecord', @level2type=N'COLUMN',@level2name=N'total_qty';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Price Per Unit' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_miorderrecord', @level2type=N'COLUMN',@level2name=N'price_per_unit';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Customer Size Run' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_miorderrecord', @level2type=N'COLUMN',@level2name=N'cust_size_run';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Technical Notation' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_miorderrecord', @level2type=N'COLUMN',@level2name=N'tech_notation';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Customer Size' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_miorderrecord', @level2type=N'COLUMN',@level2name=N'customer_size';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Technical Size' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_miorderrecord', @level2type=N'COLUMN',@level2name=N'tech_size';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ordered Qty' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_miorderrecord', @level2type=N'COLUMN',@level2name=N'order_qty';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Shipped Qty' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_miorderrecord', @level2type=N'COLUMN',@level2name=N'shipped_qty';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Division' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_miorderrecord', @level2type=N'COLUMN',@level2name=N'division';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Classification ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_miorderrecord', @level2type=N'COLUMN',@level2name=N'classification';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Warehouse' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_miorderrecord', @level2type=N'COLUMN',@level2name=N'warehourse';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Customer Request Date' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_miorderrecord', @level2type=N'COLUMN',@level2name=N'cust_req_date';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Plan Date' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_miorderrecord', @level2type=N'COLUMN',@level2name=N'plan_date';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PO Batch Date' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_miorderrecord', @level2type=N'COLUMN',@level2name=N'po_batch_date';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'First Production Date' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_miorderrecord', @level2type=N'COLUMN',@level2name=N'first_prod_date';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Last Production Date' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_miorderrecord', @level2type=N'COLUMN',@level2name=N'last_prod_date';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Shipping Instruction' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_miorderrecord', @level2type=N'COLUMN',@level2name=N'ship_instruction';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Remark' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_miorderrecord', @level2type=N'COLUMN',@level2name=N'remark';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Technology Concept' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_miorderrecord', @level2type=N'COLUMN',@level2name=N'tech_concept';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Technology Concept Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_miorderrecord', @level2type=N'COLUMN',@level2name=N'tech_concept_desc';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Technology Component Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_miorderrecord', @level2type=N'COLUMN',@level2name=N'tech_comp_desc';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Priority Indicator' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_miorderrecord', @level2type=N'COLUMN',@level2name=N'prior_indication';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Subsidiary Ship-To Number' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_miorderrecord', @level2type=N'COLUMN',@level2name=N'subs_ship_to_no';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'VAS/SHAS Code Non-US' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_miorderrecord', @level2type=N'COLUMN',@level2name=N'vas_shas_code_non_us';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'For Account Of' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_miorderrecord', @level2type=N'COLUMN',@level2name=N'for_account_of';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Seller' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_miorderrecord', @level2type=N'COLUMN',@level2name=N'seller';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ship Mode' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_miorderrecord', @level2type=N'COLUMN',@level2name=N'ship_mode';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Customer Order Number' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_miorderrecord', @level2type=N'COLUMN',@level2name=N'cust_order_no';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Order Type' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_miorderrecord', @level2type=N'COLUMN',@level2name=N'order_type';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Release Status' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_miorderrecord', @level2type=N'COLUMN',@level2name=N'release_status';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ShippedStatus' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_miorderrecord', @level2type=N'COLUMN',@level2name=N'shipped_status';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'MTFC Number' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_miorderrecord', @level2type=N'COLUMN',@level2name=N'mtfc_number';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Client Number' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_miorderrecord', @level2type=N'COLUMN',@level2name=N'client_number';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Purchasing Group Code' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_miorderrecord', @level2type=N'COLUMN',@level2name=N'purc_group_code';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Contract Number' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_miorderrecord', @level2type=N'COLUMN',@level2name=N'contract_number';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Types' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_miorderrecord', @level2type=N'COLUMN',@level2name=N'types';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Last Update Date' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_miorderrecord', @level2type=N'COLUMN',@level2name=N'last_update_date';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Model Number' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_miorderrecord', @level2type=N'COLUMN',@level2name=N'model_number';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Model Name' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_miorderrecord', @level2type=N'COLUMN',@level2name=N'model_name';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Gender' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_miorderrecord', @level2type=N'COLUMN',@level2name=N'gender';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Business Model Attribute' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_miorderrecord', @level2type=N'COLUMN',@level2name=N'busi_model_attr';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PSDD' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_miorderrecord', @level2type=N'COLUMN',@level2name=N'psdd';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PODD' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_miorderrecord', @level2type=N'COLUMN',@level2name=N'podd';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Confirmation Delay' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_miorderrecord', @level2type=N'COLUMN',@level2name=N'comfirm_delay';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Delivery Delay' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_miorderrecord', @level2type=N'COLUMN',@level2name=N'delivery_delay';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mark for Address' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_miorderrecord', @level2type=N'COLUMN',@level2name=N'mark_for_addr';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Total Mechandise Amount' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_miorderrecord', @level2type=N'COLUMN',@level2name=N'total_mechan_amount';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Total Tax Amount' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_miorderrecord', @level2type=N'COLUMN',@level2name=N'total_tax_amount';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Total Adjustments' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_miorderrecord', @level2type=N'COLUMN',@level2name=N'total_adjustsment';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Total Document Amount' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_miorderrecord', @level2type=N'COLUMN',@level2name=N'total_doc_amount';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_miorderrecord', @level2type=N'COLUMN',@level2name=N'utc_create';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_miorderrecord', @level2type=N'COLUMN',@level2name=N'utc_update';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_miorderrecord', @level2type=N'COLUMN',@level2name=N'status';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_miorderrecord', @level2type=N'COLUMN',@level2name=N'create_by';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'变更人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_miorderrecord', @level2type=N'COLUMN',@level2name=N'update_by';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_miorderrecord', @level2type=N'COLUMN',@level2name=N'note';
-- end --

-- begin--cpo_factory_group--
if exists (select 1   
            from  sysobjects   
           where  id = object_id('cpo_factorygroup')   
            and   type = 'U')   
   drop table cpo_factory_group   
go
create table cpo_factory_group (
	factory_group_id bigint not null IDENTITY(1,1)  ,
	ap_group_code   varchar(128) ,
	fact_simp_name   varchar(20) ,
	knit_woven   varchar(50) ,
	product_type   varchar(128) ,
	ap_group   varchar(128) ,
	plan_group   varchar(128) ,
	utc_create  datetime  ,
	utc_update  datetime  ,
	create_by   bigint ,
	update_by   bigint ,
	note   varchar(1024) ,
	primary key (factory_group_id) 
);

-- Add comments to the columns
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'记录id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factorygroup', @level2type=N'COLUMN',@level2name=N'factory_group_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ap group code' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factorygroup', @level2type=N'COLUMN',@level2name=N'ap_group_code';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工厂简称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factorygroup', @level2type=N'COLUMN',@level2name=N'fact_simp_name';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'针织梭织' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factorygroup', @level2type=N'COLUMN',@level2name=N'knit_woven';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'产品类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factorygroup', @level2type=N'COLUMN',@level2name=N'product_type';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'AP group' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factorygroup', @level2type=N'COLUMN',@level2name=N'ap_group';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'plan_group' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factorygroup', @level2type=N'COLUMN',@level2name=N'plan_group';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factorygroup', @level2type=N'COLUMN',@level2name=N'utc_create';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factorygroup', @level2type=N'COLUMN',@level2name=N'utc_update';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factorygroup', @level2type=N'COLUMN',@level2name=N'create_by';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'变更人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factorygroup', @level2type=N'COLUMN',@level2name=N'update_by';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factorygroup', @level2type=N'COLUMN',@level2name=N'note';
-- end --

-- begin--cpo_high_level_plan--
if exists (select 1   
            from  sysobjects   
           where  id = object_id('cpo_highlevelplan')   
            and   type = 'U')   
   drop table cpo_high_level_plan   
go
create table cpo_high_level_plan (
	high_level_plan_id bigint not null IDENTITY(1,1)  ,
	mo   varchar(255) ,
	plan_start_date  datetime  ,
	plan_end_date  datetime  ,
	create_time  datetime  ,
	plan_group   varchar(255) ,
	utc_create  datetime  ,
	utc_update  datetime  ,
	high_level_plan_status   varchar(1) ,
	create_by   bigint ,
	update_by   bigint ,
	note   varchar(1024) ,
	primary key (high_level_plan_id) 
);

-- Add comments to the columns
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'记录id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_highlevelplan', @level2type=N'COLUMN',@level2name=N'high_level_plan_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'MO' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_highlevelplan', @level2type=N'COLUMN',@level2name=N'mo';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PLAN START DATE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_highlevelplan', @level2type=N'COLUMN',@level2name=N'plan_start_date';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PLAN END DATE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_highlevelplan', @level2type=N'COLUMN',@level2name=N'plan_end_date';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'CREATETIME' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_highlevelplan', @level2type=N'COLUMN',@level2name=N'create_time';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PLAN GROUP' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_highlevelplan', @level2type=N'COLUMN',@level2name=N'plan_group';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_highlevelplan', @level2type=N'COLUMN',@level2name=N'utc_create';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_highlevelplan', @level2type=N'COLUMN',@level2name=N'utc_update';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_highlevelplan', @level2type=N'COLUMN',@level2name=N'high_level_plan_status';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_highlevelplan', @level2type=N'COLUMN',@level2name=N'create_by';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'变更人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_highlevelplan', @level2type=N'COLUMN',@level2name=N'update_by';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_highlevelplan', @level2type=N'COLUMN',@level2name=N'note';
-- end --

-- begin--cpo_process_criteria--
if exists (select 1   
            from  sysobjects   
           where  id = object_id('cpo_processcriteria')   
            and   type = 'U')   
   drop table cpo_process_criteria   
go
create table cpo_process_criteria (
	process_criteria_id bigint not null IDENTITY(1,1)  ,
	process_type   varchar(50) ,
	process_id   bigint ,
	factory_id   varchar(255) ,
	criteria_version_id   bigint ,
	mandatory   varchar(1) ,
	process_score   int ,
	criteria_status   varchar(2) ,
	start_date  datetime  ,
	end_date  datetime  ,
	utc_create  datetime  ,
	utc_update  datetime  ,
	create_by   bigint ,
	update_by   bigint ,
	note   varchar(1024) ,
	primary key (process_criteria_id) 
);

-- Add comments to the columns
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'记录id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_processcriteria', @level2type=N'COLUMN',@level2name=N'process_criteria_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工序类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_processcriteria', @level2type=N'COLUMN',@level2name=N'process_type';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工序id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_processcriteria', @level2type=N'COLUMN',@level2name=N'process_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工厂id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_processcriteria', @level2type=N'COLUMN',@level2name=N'factory_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标准版本id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_processcriteria', @level2type=N'COLUMN',@level2name=N'criteria_version_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'强制性' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_processcriteria', @level2type=N'COLUMN',@level2name=N'mandatory';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'分数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_processcriteria', @level2type=N'COLUMN',@level2name=N'process_score';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_processcriteria', @level2type=N'COLUMN',@level2name=N'criteria_status';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'生效时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_processcriteria', @level2type=N'COLUMN',@level2name=N'start_date';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'失效时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_processcriteria', @level2type=N'COLUMN',@level2name=N'end_date';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_processcriteria', @level2type=N'COLUMN',@level2name=N'utc_create';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_processcriteria', @level2type=N'COLUMN',@level2name=N'utc_update';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_processcriteria', @level2type=N'COLUMN',@level2name=N'create_by';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'变更人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_processcriteria', @level2type=N'COLUMN',@level2name=N'update_by';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_processcriteria', @level2type=N'COLUMN',@level2name=N'note';
-- end --

-- begin--cpo_fr_master_data--
if exists (select 1   
            from  sysobjects   
           where  id = object_id('cpo_frmasterdata')   
            and   type = 'U')   
   drop table cpo_fr_master_data   
go
create table cpo_fr_master_data (
	fr_master_data_id bigint not null IDENTITY(1,1)  ,
	document_id   bigint ,
	fact_assign_id   bigint ,
	assign_result_id   bigint ,
	b_number   varchar(50) ,
	size_group   varchar(50) ,
	code   varchar(30) ,
	prod   varchar(30) ,
	cust   varchar(15) ,
	dd  datetime  ,
	dq   int ,
	ex_status   varchar(30) ,
	order_set   varchar(20) ,
	ud_sport_code   varchar(50) ,
	product_type   varchar(30) ,
	ud_client_code   varchar(20) ,
	fabric_type   varchar(20) ,
	size_name_1   varchar(25) ,
	size_ratio_1   int ,
	size_name_2   varchar(25) ,
	size_ratio_2   int ,
	size_name_3   varchar(25) ,
	size_ratio_3   int ,
	size_name_4   varchar(25) ,
	size_ratio_4   int ,
	size_name_5   varchar(25) ,
	size_ratio_5   int ,
	size_name_6   varchar(25) ,
	size_ratio_6   int ,
	size_name_7   varchar(25) ,
	size_ratio_7   int ,
	size_name_8   varchar(25) ,
	size_ratio_8   int ,
	size_name_9   varchar(25) ,
	size_ratio_9   int ,
	size_name_10   varchar(25) ,
	size_ratio_10   int ,
	size_name_11   varchar(25) ,
	size_ratio_11   int ,
	size_name_12   varchar(25) ,
	size_ratio_12   int ,
	size_name_13   varchar(25) ,
	size_ratio_13   int ,
	size_name_14   varchar(25) ,
	size_ratio_14   int ,
	size_name_15   varchar(25) ,
	size_ratio_15   int ,
	size_name_16   varchar(25) ,
	size_ratio_16   int ,
	size_name_17   varchar(25) ,
	size_ratio_17   int ,
	size_name_18   varchar(25) ,
	size_ratio_18   int ,
	size_name_19   varchar(25) ,
	size_ratio_19   int ,
	size_name_20   varchar(25) ,
	size_ratio_20   int ,
	size_name_21   varchar(25) ,
	size_ratio_21   int ,
	size_name_22   varchar(25) ,
	size_ratio_22   int ,
	size_name_23   varchar(25) ,
	size_ratio_23   int ,
	size_name_24   varchar(25) ,
	size_ratio_24   int ,
	size_name_25   varchar(25) ,
	size_ratio_25   int ,
	size_name_26   varchar(25) ,
	size_ratio_26   int ,
	size_name_27   varchar(25) ,
	size_ratio_27   int ,
	size_name_28   varchar(25) ,
	size_ratio_28   int ,
	size_name_29   varchar(25) ,
	size_ratio_29   int ,
	size_name_30   varchar(25) ,
	size_ratio_30   int ,
	size_name_31   varchar(25) ,
	size_ratio_31   int ,
	size_name_32   varchar(25) ,
	size_ratio_32   int ,
	size_name_33   varchar(25) ,
	size_ratio_33   int ,
	size_name_34   varchar(25) ,
	size_ratio_34   int ,
	size_name_35   varchar(25) ,
	size_ratio_35   int ,
	ud_batch_date   varchar(15) ,
	status   varchar(15) ,
	descrip   varchar(50) ,
	time   varchar(15) ,
	ap_group   varchar(15) ,
	ud_fty_id   varchar(15) ,
	ud_model   varchar(15) ,
	ud_article   varchar(15) ,
	ud_customer_no   varchar(15) ,
	ud_country   varchar(15) ,
	ud_fty_name   varchar(15) ,
	ud_classic_code   varchar(15) ,
	ud_special_wmsp   varchar(15) ,
	ud_eu_non_eu   varchar(15) ,
	ud_shipment_fty   varchar(15) ,
	ud_count_fty   varchar(15) ,
	ud_168_no   varchar(30) ,
	dd_style   varchar(20) ,
	ud_tc_psdd  datetime  ,
	ud_category   varchar(15) ,
	ud_gb16_request_date  datetime  ,
	lc0190_date   varchar(15) ,
	ud_ord_no   varchar(15) ,
	ud_plan_date  datetime  ,
	ud_plan_group   varchar(30) ,
	ud_plan_month   varchar(15) ,
	ud_po   varchar(30) ,
	ud_podd  datetime  ,
	ud_psdd_date  datetime  ,
	ud_season   varchar(15) ,
	ud_60_day_project   varchar(15) ,
	ud_loading_port   varchar(15) ,
	ud_lpd  datetime  ,
	ud_new_crd  datetime  ,
	ud_new_pd  datetime  ,
	ud_add_total_date  datetime  ,
	batch_no   varchar(10) ,
	smv   float ,
	customer_status   varchar(30) ,
	ship_mode   varchar(10) ,
	ud_service_identify   varchar(50) ,
	special_order_remark   varchar(30) ,
	main_mpo   varchar(30) ,
	last_fabric_pi_eta  datetime  ,
	order_change_date  datetime  ,
	ud_remarks   varchar(256) ,
	athlete   varchar(50) ,
	utc_create  datetime  ,
	utc_update  datetime  ,
	high_level_plan_status   varchar(1) ,
	create_by   bigint ,
	update_by   bigint ,
	transfer_status   varchar(2) ,
	note   varchar(1024) ,
	primary key (fr_master_data_id) 
);

-- Add comments to the columns
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'记录id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frmasterdata', @level2type=N'COLUMN',@level2name=N'fr_master_data_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'document_id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frmasterdata', @level2type=N'COLUMN',@level2name=N'document_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Factory assignment id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frmasterdata', @level2type=N'COLUMN',@level2name=N'fact_assign_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'assign_result_id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frmasterdata', @level2type=N'COLUMN',@level2name=N'assign_result_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'B_number' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frmasterdata', @level2type=N'COLUMN',@level2name=N'b_number';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'size group' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frmasterdata', @level2type=N'COLUMN',@level2name=N'size_group';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique planning order reference(MO)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frmasterdata', @level2type=N'COLUMN',@level2name=N'code';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The product/style for this order' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frmasterdata', @level2type=N'COLUMN',@level2name=N'prod';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The customer for this order' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frmasterdata', @level2type=N'COLUMN',@level2name=N'cust';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The required delivery date for the order' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frmasterdata', @level2type=N'COLUMN',@level2name=N'dd';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The required delivery quantiy for the order' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frmasterdata', @level2type=N'COLUMN',@level2name=N'dq';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The order extend status' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frmasterdata', @level2type=N'COLUMN',@level2name=N'ex_status';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The order set that order belong to order' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frmasterdata', @level2type=N'COLUMN',@level2name=N'order_set';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ud_sport_code' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frmasterdata', @level2type=N'COLUMN',@level2name=N'ud_sport_code';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'product_type' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frmasterdata', @level2type=N'COLUMN',@level2name=N'product_type';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ud_client_code' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frmasterdata', @level2type=N'COLUMN',@level2name=N'ud_client_code';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'fabric type' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frmasterdata', @level2type=N'COLUMN',@level2name=N'fabric_type';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Size name 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frmasterdata', @level2type=N'COLUMN',@level2name=N'size_name_1';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'size ratio 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frmasterdata', @level2type=N'COLUMN',@level2name=N'size_ratio_1';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Size name 2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frmasterdata', @level2type=N'COLUMN',@level2name=N'size_name_2';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'size ratio 2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frmasterdata', @level2type=N'COLUMN',@level2name=N'size_ratio_2';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Size name 3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frmasterdata', @level2type=N'COLUMN',@level2name=N'size_name_3';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'size ratio 3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frmasterdata', @level2type=N'COLUMN',@level2name=N'size_ratio_3';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Size name 4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frmasterdata', @level2type=N'COLUMN',@level2name=N'size_name_4';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'size ratio 4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frmasterdata', @level2type=N'COLUMN',@level2name=N'size_ratio_4';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Size name 5' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frmasterdata', @level2type=N'COLUMN',@level2name=N'size_name_5';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'size ratio 5' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frmasterdata', @level2type=N'COLUMN',@level2name=N'size_ratio_5';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Size name 6' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frmasterdata', @level2type=N'COLUMN',@level2name=N'size_name_6';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'size ratio 6' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frmasterdata', @level2type=N'COLUMN',@level2name=N'size_ratio_6';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Size name 7' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frmasterdata', @level2type=N'COLUMN',@level2name=N'size_name_7';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'size ratio 7' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frmasterdata', @level2type=N'COLUMN',@level2name=N'size_ratio_7';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Size name 8' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frmasterdata', @level2type=N'COLUMN',@level2name=N'size_name_8';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'size ratio 8' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frmasterdata', @level2type=N'COLUMN',@level2name=N'size_ratio_8';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Size name 9' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frmasterdata', @level2type=N'COLUMN',@level2name=N'size_name_9';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'size ratio 9' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frmasterdata', @level2type=N'COLUMN',@level2name=N'size_ratio_9';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Size name 10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frmasterdata', @level2type=N'COLUMN',@level2name=N'size_name_10';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'size ratio 10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frmasterdata', @level2type=N'COLUMN',@level2name=N'size_ratio_10';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Size name 11' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frmasterdata', @level2type=N'COLUMN',@level2name=N'size_name_11';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'size ratio 11' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frmasterdata', @level2type=N'COLUMN',@level2name=N'size_ratio_11';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Size name 12' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frmasterdata', @level2type=N'COLUMN',@level2name=N'size_name_12';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'size ratio 12' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frmasterdata', @level2type=N'COLUMN',@level2name=N'size_ratio_12';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Size name 13' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frmasterdata', @level2type=N'COLUMN',@level2name=N'size_name_13';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'size ratio 13' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frmasterdata', @level2type=N'COLUMN',@level2name=N'size_ratio_13';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Size name 14' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frmasterdata', @level2type=N'COLUMN',@level2name=N'size_name_14';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'size ratio 14' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frmasterdata', @level2type=N'COLUMN',@level2name=N'size_ratio_14';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Size name 15' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frmasterdata', @level2type=N'COLUMN',@level2name=N'size_name_15';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'size ratio 15' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frmasterdata', @level2type=N'COLUMN',@level2name=N'size_ratio_15';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Size name 16' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frmasterdata', @level2type=N'COLUMN',@level2name=N'size_name_16';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'size ratio 16' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frmasterdata', @level2type=N'COLUMN',@level2name=N'size_ratio_16';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Size name 17' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frmasterdata', @level2type=N'COLUMN',@level2name=N'size_name_17';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'size ratio 17' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frmasterdata', @level2type=N'COLUMN',@level2name=N'size_ratio_17';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Size name 18' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frmasterdata', @level2type=N'COLUMN',@level2name=N'size_name_18';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'size ratio 18' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frmasterdata', @level2type=N'COLUMN',@level2name=N'size_ratio_18';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Size name 19' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frmasterdata', @level2type=N'COLUMN',@level2name=N'size_name_19';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'size ratio 19' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frmasterdata', @level2type=N'COLUMN',@level2name=N'size_ratio_19';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Size name 20' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frmasterdata', @level2type=N'COLUMN',@level2name=N'size_name_20';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'size ratio 20' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frmasterdata', @level2type=N'COLUMN',@level2name=N'size_ratio_20';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Size name 21' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frmasterdata', @level2type=N'COLUMN',@level2name=N'size_name_21';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'size ratio 21' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frmasterdata', @level2type=N'COLUMN',@level2name=N'size_ratio_21';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Size name 22' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frmasterdata', @level2type=N'COLUMN',@level2name=N'size_name_22';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'size ratio 22' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frmasterdata', @level2type=N'COLUMN',@level2name=N'size_ratio_22';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Size name 23' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frmasterdata', @level2type=N'COLUMN',@level2name=N'size_name_23';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'size ratio 23' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frmasterdata', @level2type=N'COLUMN',@level2name=N'size_ratio_23';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Size name 24' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frmasterdata', @level2type=N'COLUMN',@level2name=N'size_name_24';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'size ratio 24' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frmasterdata', @level2type=N'COLUMN',@level2name=N'size_ratio_24';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Size name 25' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frmasterdata', @level2type=N'COLUMN',@level2name=N'size_name_25';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'size ratio 25' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frmasterdata', @level2type=N'COLUMN',@level2name=N'size_ratio_25';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Size name 26' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frmasterdata', @level2type=N'COLUMN',@level2name=N'size_name_26';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'size ratio 26' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frmasterdata', @level2type=N'COLUMN',@level2name=N'size_ratio_26';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Size name 27' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frmasterdata', @level2type=N'COLUMN',@level2name=N'size_name_27';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'size ratio 27' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frmasterdata', @level2type=N'COLUMN',@level2name=N'size_ratio_27';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Size name 28' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frmasterdata', @level2type=N'COLUMN',@level2name=N'size_name_28';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'size ratio 28' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frmasterdata', @level2type=N'COLUMN',@level2name=N'size_ratio_28';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Size name 29' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frmasterdata', @level2type=N'COLUMN',@level2name=N'size_name_29';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'size ratio 29' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frmasterdata', @level2type=N'COLUMN',@level2name=N'size_ratio_29';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Size name 30' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frmasterdata', @level2type=N'COLUMN',@level2name=N'size_name_30';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'size ratio 30' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frmasterdata', @level2type=N'COLUMN',@level2name=N'size_ratio_30';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Size name 31' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frmasterdata', @level2type=N'COLUMN',@level2name=N'size_name_31';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'size ratio 31' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frmasterdata', @level2type=N'COLUMN',@level2name=N'size_ratio_31';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Size name 32' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frmasterdata', @level2type=N'COLUMN',@level2name=N'size_name_32';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'size ratio 32' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frmasterdata', @level2type=N'COLUMN',@level2name=N'size_ratio_32';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Size name 33' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frmasterdata', @level2type=N'COLUMN',@level2name=N'size_name_33';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'size ratio 33' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frmasterdata', @level2type=N'COLUMN',@level2name=N'size_ratio_33';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Size name 34' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frmasterdata', @level2type=N'COLUMN',@level2name=N'size_name_34';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'size ratio 34' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frmasterdata', @level2type=N'COLUMN',@level2name=N'size_ratio_34';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Size name 35' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frmasterdata', @level2type=N'COLUMN',@level2name=N'size_name_35';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'size ratio 35' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frmasterdata', @level2type=N'COLUMN',@level2name=N'size_ratio_35';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A order user defined field' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frmasterdata', @level2type=N'COLUMN',@level2name=N'ud_batch_date';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frmasterdata', @level2type=N'COLUMN',@level2name=N'status';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A order description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frmasterdata', @level2type=N'COLUMN',@level2name=N'descrip';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A timetable name of the order' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frmasterdata', @level2type=N'COLUMN',@level2name=N'time';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A valid FastReact planning group' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frmasterdata', @level2type=N'COLUMN',@level2name=N'ap_group';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工厂code' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frmasterdata', @level2type=N'COLUMN',@level2name=N'ud_fty_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frmasterdata', @level2type=N'COLUMN',@level2name=N'ud_model';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A article No. for the order' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frmasterdata', @level2type=N'COLUMN',@level2name=N'ud_article';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A order s cust No.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frmasterdata', @level2type=N'COLUMN',@level2name=N'ud_customer_no';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The country name of the order' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frmasterdata', @level2type=N'COLUMN',@level2name=N'ud_country';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Fty name' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frmasterdata', @level2type=N'COLUMN',@level2name=N'ud_fty_name';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Classic code of the order' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frmasterdata', @level2type=N'COLUMN',@level2name=N'ud_classic_code';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'特殊工序' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frmasterdata', @level2type=N'COLUMN',@level2name=N'ud_special_wmsp';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否欧盟' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frmasterdata', @level2type=N'COLUMN',@level2name=N'ud_eu_non_eu';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Shipment Fty name' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frmasterdata', @level2type=N'COLUMN',@level2name=N'ud_shipment_fty';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'计数工厂' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frmasterdata', @level2type=N'COLUMN',@level2name=N'ud_count_fty';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'168 No. for the order' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frmasterdata', @level2type=N'COLUMN',@level2name=N'ud_168_no';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'dd_style' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frmasterdata', @level2type=N'COLUMN',@level2name=N'dd_style';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ud_tc_psdd' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frmasterdata', @level2type=N'COLUMN',@level2name=N'ud_tc_psdd';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frmasterdata', @level2type=N'COLUMN',@level2name=N'ud_category';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frmasterdata', @level2type=N'COLUMN',@level2name=N'ud_gb16_request_date';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'LC0190下单日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frmasterdata', @level2type=N'COLUMN',@level2name=N'lc0190_date';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'订单号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frmasterdata', @level2type=N'COLUMN',@level2name=N'ud_ord_no';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'计划日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frmasterdata', @level2type=N'COLUMN',@level2name=N'ud_plan_date';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'计划组' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frmasterdata', @level2type=N'COLUMN',@level2name=N'ud_plan_group';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'计划月份' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frmasterdata', @level2type=N'COLUMN',@level2name=N'ud_plan_month';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'pucharse order' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frmasterdata', @level2type=N'COLUMN',@level2name=N'ud_po';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frmasterdata', @level2type=N'COLUMN',@level2name=N'ud_podd';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'走货日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frmasterdata', @level2type=N'COLUMN',@level2name=N'ud_psdd_date';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'季度' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frmasterdata', @level2type=N'COLUMN',@level2name=N'ud_season';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frmasterdata', @level2type=N'COLUMN',@level2name=N'ud_60_day_project';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'停货港口' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frmasterdata', @level2type=N'COLUMN',@level2name=N'ud_loading_port';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'EDI.LastProductionDate' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frmasterdata', @level2type=N'COLUMN',@level2name=N'ud_lpd';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'CRD' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frmasterdata', @level2type=N'COLUMN',@level2name=N'ud_new_crd';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PD' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frmasterdata', @level2type=N'COLUMN',@level2name=N'ud_new_pd';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frmasterdata', @level2type=N'COLUMN',@level2name=N'ud_add_total_date';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'batch no' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frmasterdata', @level2type=N'COLUMN',@level2name=N'batch_no';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'smv' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frmasterdata', @level2type=N'COLUMN',@level2name=N'smv';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Customer Status' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frmasterdata', @level2type=N'COLUMN',@level2name=N'customer_status';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ship Mode' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frmasterdata', @level2type=N'COLUMN',@level2name=N'ship_mode';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ud_service_identify' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frmasterdata', @level2type=N'COLUMN',@level2name=N'ud_service_identify';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'special order remark' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frmasterdata', @level2type=N'COLUMN',@level2name=N'special_order_remark';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'main mpo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frmasterdata', @level2type=N'COLUMN',@level2name=N'main_mpo';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'last fabric pi eta' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frmasterdata', @level2type=N'COLUMN',@level2name=N'last_fabric_pi_eta';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'order_change_date' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frmasterdata', @level2type=N'COLUMN',@level2name=N'order_change_date';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ud_remarks' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frmasterdata', @level2type=N'COLUMN',@level2name=N'ud_remarks';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'athlete' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frmasterdata', @level2type=N'COLUMN',@level2name=N'athlete';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frmasterdata', @level2type=N'COLUMN',@level2name=N'utc_create';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frmasterdata', @level2type=N'COLUMN',@level2name=N'utc_update';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frmasterdata', @level2type=N'COLUMN',@level2name=N'high_level_plan_status';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frmasterdata', @level2type=N'COLUMN',@level2name=N'create_by';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'变更人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frmasterdata', @level2type=N'COLUMN',@level2name=N'update_by';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frmasterdata', @level2type=N'COLUMN',@level2name=N'transfer_status';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frmasterdata', @level2type=N'COLUMN',@level2name=N'note';
-- end --

-- begin--linkgoo_uploadfile_config--
if exists (select 1   
            from  sysobjects   
           where  id = object_id('linkgoo_uploadfileconfig')   
            and   type = 'U')   
   drop table linkgoo_uploadfile_config   
go
create table linkgoo_uploadfile_config (
	id bigint not null IDENTITY(1,1)  ,
	file_url   varchar(255) ,
	file_type_filter   varchar(128) ,
	info_language   varchar(30) ,
	del_after_day   int ,
	result_file_url   varchar(255) ,
	create_by   bigint ,
	create_time  datetime  ,
	update_by   bigint ,
	update_time  datetime  ,
	primary key (id) 
);

-- Add comments to the columns
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'linkgoo_uploadfileconfig', @level2type=N'COLUMN',@level2name=N'id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'上传路径' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'linkgoo_uploadfileconfig', @level2type=N'COLUMN',@level2name=N'file_url';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文件过滤' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'linkgoo_uploadfileconfig', @level2type=N'COLUMN',@level2name=N'file_type_filter';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'信息默认语言' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'linkgoo_uploadfileconfig', @level2type=N'COLUMN',@level2name=N'info_language';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文件保留天数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'linkgoo_uploadfileconfig', @level2type=N'COLUMN',@level2name=N'del_after_day';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'处理结果路径' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'linkgoo_uploadfileconfig', @level2type=N'COLUMN',@level2name=N'result_file_url';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建者' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'linkgoo_uploadfileconfig', @level2type=N'COLUMN',@level2name=N'create_by';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'linkgoo_uploadfileconfig', @level2type=N'COLUMN',@level2name=N'create_time';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'上次更新者' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'linkgoo_uploadfileconfig', @level2type=N'COLUMN',@level2name=N'update_by';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'上次更新时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'linkgoo_uploadfileconfig', @level2type=N'COLUMN',@level2name=N'update_time';
-- end --

-- begin--linkgoo_method_config--
if exists (select 1   
            from  sysobjects   
           where  id = object_id('linkgoo_methodconfig')   
            and   type = 'U')   
   drop table linkgoo_method_config   
go
create table linkgoo_method_config (
	id bigint not null IDENTITY(1,1)  ,
	method   varchar(128) ,
	method_name   varchar(128) ,
	create_by   bigint ,
	create_time  datetime  ,
	update_by   bigint ,
	update_time  datetime  ,
	primary key (id) 
);

-- Add comments to the columns
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'linkgoo_methodconfig', @level2type=N'COLUMN',@level2name=N'id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'处理方法' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'linkgoo_methodconfig', @level2type=N'COLUMN',@level2name=N'method';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'处理方法名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'linkgoo_methodconfig', @level2type=N'COLUMN',@level2name=N'method_name';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建者' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'linkgoo_methodconfig', @level2type=N'COLUMN',@level2name=N'create_by';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'linkgoo_methodconfig', @level2type=N'COLUMN',@level2name=N'create_time';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'上次更新者' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'linkgoo_methodconfig', @level2type=N'COLUMN',@level2name=N'update_by';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'上次更新时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'linkgoo_methodconfig', @level2type=N'COLUMN',@level2name=N'update_time';
-- end --

-- begin--linkgoo_task--
if exists (select 1   
            from  sysobjects   
           where  id = object_id('linkgoo_task')   
            and   type = 'U')   
   drop table linkgoo_task   
go
create table linkgoo_task (
	id bigint not null IDENTITY(1,1)  ,
	original_file_url   varchar(255) ,
	name   varchar(255) ,
	original_name   varchar(255) ,
	processing_schedule   int ,
	method   varchar(128) ,
	status   int ,
	begin_time  datetime  ,
	finish_time  datetime  ,
	del_after_day   int ,
	summary_language   varchar(30) ,
	result_summary   varchar(255) ,
	result_file_url   varchar(255) ,
	result_name   varchar(255) ,
	create_by   bigint ,
	create_time  datetime  ,
	update_by   bigint ,
	update_time  datetime  ,
	primary key (id) 
);

-- Add comments to the columns
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'linkgoo_task', @level2type=N'COLUMN',@level2name=N'id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文件路径' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'linkgoo_task', @level2type=N'COLUMN',@level2name=N'original_file_url';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文件名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'linkgoo_task', @level2type=N'COLUMN',@level2name=N'name';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'原文件名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'linkgoo_task', @level2type=N'COLUMN',@level2name=N'original_name';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'处理进度' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'linkgoo_task', @level2type=N'COLUMN',@level2name=N'processing_schedule';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'处理方法' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'linkgoo_task', @level2type=N'COLUMN',@level2name=N'method';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'linkgoo_task', @level2type=N'COLUMN',@level2name=N'status';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'处理开始时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'linkgoo_task', @level2type=N'COLUMN',@level2name=N'begin_time';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'处理结束时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'linkgoo_task', @level2type=N'COLUMN',@level2name=N'finish_time';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文件保留天数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'linkgoo_task', @level2type=N'COLUMN',@level2name=N'del_after_day';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'概述默认语言' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'linkgoo_task', @level2type=N'COLUMN',@level2name=N'summary_language';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'处理结果汇总' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'linkgoo_task', @level2type=N'COLUMN',@level2name=N'result_summary';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'处理结果路径' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'linkgoo_task', @level2type=N'COLUMN',@level2name=N'result_file_url';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'处理结果文件名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'linkgoo_task', @level2type=N'COLUMN',@level2name=N'result_name';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建者' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'linkgoo_task', @level2type=N'COLUMN',@level2name=N'create_by';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'linkgoo_task', @level2type=N'COLUMN',@level2name=N'create_time';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'上次更新者' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'linkgoo_task', @level2type=N'COLUMN',@level2name=N'update_by';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'上次更新时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'linkgoo_task', @level2type=N'COLUMN',@level2name=N'update_time';
-- end --

-- begin--linkgoo_import_table_rule--
if exists (select 1   
            from  sysobjects   
           where  id = object_id('linkgoo_importtablerule')   
            and   type = 'U')   
   drop table linkgoo_import_table_rule   
go
create table linkgoo_import_table_rule (
	id bigint not null IDENTITY(1,1)  ,
	method   varchar(128) ,
	next_method_class   varchar(255) ,
	next_method   varchar(128) ,
	next_method_parameter   varchar(8000) ,
	end_sign   varchar(30) ,
	header_index   int ,
	data_index   int ,
	table_name   varchar(255) ,
	delete_repeat   int ,
	insert_no   int ,
	is_valid   int ,
	sort   int ,
	f1   varchar(255) ,
	f2   varchar(255) ,
	f3   varchar(255) ,
	f4   varchar(255) ,
	f5   varchar(255) ,
	create_by   bigint ,
	create_time  datetime  ,
	update_by   bigint ,
	update_time  datetime  ,
	primary key (id) 
);

-- Add comments to the columns
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'linkgoo_importtablerule', @level2type=N'COLUMN',@level2name=N'id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'处理方法' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'linkgoo_importtablerule', @level2type=N'COLUMN',@level2name=N'method';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'下一步骤Class' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'linkgoo_importtablerule', @level2type=N'COLUMN',@level2name=N'next_method_class';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'下一步骤' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'linkgoo_importtablerule', @level2type=N'COLUMN',@level2name=N'next_method';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'下一步骤参数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'linkgoo_importtablerule', @level2type=N'COLUMN',@level2name=N'next_method_parameter';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'结束标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'linkgoo_importtablerule', @level2type=N'COLUMN',@level2name=N'end_sign';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标题行索引' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'linkgoo_importtablerule', @level2type=N'COLUMN',@level2name=N'header_index';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数据行索引' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'linkgoo_importtablerule', @level2type=N'COLUMN',@level2name=N'data_index';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'表名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'linkgoo_importtablerule', @level2type=N'COLUMN',@level2name=N'table_name';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否删除重复行' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'linkgoo_importtablerule', @level2type=N'COLUMN',@level2name=N'delete_repeat';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'每次导入记录数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'linkgoo_importtablerule', @level2type=N'COLUMN',@level2name=N'insert_no';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否有效' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'linkgoo_importtablerule', @level2type=N'COLUMN',@level2name=N'is_valid';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'顺序' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'linkgoo_importtablerule', @level2type=N'COLUMN',@level2name=N'sort';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'扩展字段1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'linkgoo_importtablerule', @level2type=N'COLUMN',@level2name=N'f1';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'扩展字段2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'linkgoo_importtablerule', @level2type=N'COLUMN',@level2name=N'f2';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'扩展字段3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'linkgoo_importtablerule', @level2type=N'COLUMN',@level2name=N'f3';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'扩展字段4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'linkgoo_importtablerule', @level2type=N'COLUMN',@level2name=N'f4';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'扩展字段5' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'linkgoo_importtablerule', @level2type=N'COLUMN',@level2name=N'f5';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建者' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'linkgoo_importtablerule', @level2type=N'COLUMN',@level2name=N'create_by';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'linkgoo_importtablerule', @level2type=N'COLUMN',@level2name=N'create_time';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'上次更新者' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'linkgoo_importtablerule', @level2type=N'COLUMN',@level2name=N'update_by';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'上次更新时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'linkgoo_importtablerule', @level2type=N'COLUMN',@level2name=N'update_time';
-- end --

-- begin--linkgoo_import_column_rule--
if exists (select 1   
            from  sysobjects   
           where  id = object_id('linkgoo_importcolumnrule')   
            and   type = 'U')   
   drop table linkgoo_import_column_rule   
go
create table linkgoo_import_column_rule (
	id bigint not null IDENTITY(1,1)  ,
	upa_import_table_rule_id   bigint ,
	table_name   varchar(255) ,
	field_name   varchar(255) ,
	is_pk   int ,
	is_unique   int ,
	column_name   varchar(255) ,
	header_name   varchar(255) ,
	required   int ,
	data_type   varchar(50) ,
	max_length   int ,
	produce_method   int ,
	produce_method_value   varchar(8000) ,
	is_dictionary   int ,
	dic_table_name   varchar(255) ,
	dic_type_column   varchar(255) ,
	dic_type_value   varchar(50) ,
	dic_required_column   varchar(255) ,
	dic_reference_column   varchar(255) ,
	is_valid   int ,
	f1   varchar(255) ,
	f2   varchar(255) ,
	f3   varchar(255) ,
	f4   varchar(255) ,
	f5   varchar(255) ,
	create_by   bigint ,
	create_time  datetime  ,
	update_by   bigint ,
	update_time  datetime  ,
	primary key (id) 
);

-- Add comments to the columns
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'linkgoo_importcolumnrule', @level2type=N'COLUMN',@level2name=N'id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'导入表规则ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'linkgoo_importcolumnrule', @level2type=N'COLUMN',@level2name=N'upa_import_table_rule_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'表名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'linkgoo_importcolumnrule', @level2type=N'COLUMN',@level2name=N'table_name';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'表字段名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'linkgoo_importcolumnrule', @level2type=N'COLUMN',@level2name=N'field_name';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否是主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'linkgoo_importcolumnrule', @level2type=N'COLUMN',@level2name=N'is_pk';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否唯一 ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'linkgoo_importcolumnrule', @level2type=N'COLUMN',@level2name=N'is_unique';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'列名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'linkgoo_importcolumnrule', @level2type=N'COLUMN',@level2name=N'column_name';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'对应excel列头' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'linkgoo_importcolumnrule', @level2type=N'COLUMN',@level2name=N'header_name';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否必须填入' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'linkgoo_importcolumnrule', @level2type=N'COLUMN',@level2name=N'required';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数据类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'linkgoo_importcolumnrule', @level2type=N'COLUMN',@level2name=N'data_type';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'允许最大存储长度 ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'linkgoo_importcolumnrule', @level2type=N'COLUMN',@level2name=N'max_length';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'生成方法' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'linkgoo_importcolumnrule', @level2type=N'COLUMN',@level2name=N'produce_method';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'生成方法值 ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'linkgoo_importcolumnrule', @level2type=N'COLUMN',@level2name=N'produce_method_value';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否属于字典' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'linkgoo_importcolumnrule', @level2type=N'COLUMN',@level2name=N'is_dictionary';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'字典表名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'linkgoo_importcolumnrule', @level2type=N'COLUMN',@level2name=N'dic_table_name';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'字典类型字段名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'linkgoo_importcolumnrule', @level2type=N'COLUMN',@level2name=N'dic_type_column';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'字典类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'linkgoo_importcolumnrule', @level2type=N'COLUMN',@level2name=N'dic_type_value';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'字典获取值列的名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'linkgoo_importcolumnrule', @level2type=N'COLUMN',@level2name=N'dic_required_column';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'字典表参考列的名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'linkgoo_importcolumnrule', @level2type=N'COLUMN',@level2name=N'dic_reference_column';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否有效' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'linkgoo_importcolumnrule', @level2type=N'COLUMN',@level2name=N'is_valid';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'扩展字段1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'linkgoo_importcolumnrule', @level2type=N'COLUMN',@level2name=N'f1';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'扩展字段2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'linkgoo_importcolumnrule', @level2type=N'COLUMN',@level2name=N'f2';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'扩展字段3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'linkgoo_importcolumnrule', @level2type=N'COLUMN',@level2name=N'f3';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'扩展字段4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'linkgoo_importcolumnrule', @level2type=N'COLUMN',@level2name=N'f4';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'扩展字段5' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'linkgoo_importcolumnrule', @level2type=N'COLUMN',@level2name=N'f5';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建者' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'linkgoo_importcolumnrule', @level2type=N'COLUMN',@level2name=N'create_by';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'linkgoo_importcolumnrule', @level2type=N'COLUMN',@level2name=N'create_time';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'上次更新者' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'linkgoo_importcolumnrule', @level2type=N'COLUMN',@level2name=N'update_by';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'上次更新时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'linkgoo_importcolumnrule', @level2type=N'COLUMN',@level2name=N'update_time';
-- end --

-- begin--linkgoo_import_value_rule--
if exists (select 1   
            from  sysobjects   
           where  id = object_id('linkgoo_importvaluerule')   
            and   type = 'U')   
   drop table linkgoo_import_value_rule   
go
create table linkgoo_import_value_rule (
	id bigint not null IDENTITY(1,1)  ,
	produce_method_value   varchar(255) ,
	rule_content   varchar(8000) ,
	is_valid   int ,
	f1   varchar(255) ,
	f2   varchar(255) ,
	f3   varchar(255) ,
	f4   varchar(255) ,
	f5   varchar(255) ,
	create_by   bigint ,
	create_time  datetime  ,
	update_by   bigint ,
	update_time  datetime  ,
	primary key (id) 
);

-- Add comments to the columns
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'linkgoo_importvaluerule', @level2type=N'COLUMN',@level2name=N'id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'生成方法值 ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'linkgoo_importvaluerule', @level2type=N'COLUMN',@level2name=N'produce_method_value';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'linkgoo_importvaluerule', @level2type=N'COLUMN',@level2name=N'rule_content';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否有效' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'linkgoo_importvaluerule', @level2type=N'COLUMN',@level2name=N'is_valid';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'扩展字段1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'linkgoo_importvaluerule', @level2type=N'COLUMN',@level2name=N'f1';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'扩展字段2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'linkgoo_importvaluerule', @level2type=N'COLUMN',@level2name=N'f2';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'扩展字段3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'linkgoo_importvaluerule', @level2type=N'COLUMN',@level2name=N'f3';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'扩展字段4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'linkgoo_importvaluerule', @level2type=N'COLUMN',@level2name=N'f4';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'扩展字段5' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'linkgoo_importvaluerule', @level2type=N'COLUMN',@level2name=N'f5';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建者' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'linkgoo_importvaluerule', @level2type=N'COLUMN',@level2name=N'create_by';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'linkgoo_importvaluerule', @level2type=N'COLUMN',@level2name=N'create_time';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'上次更新者' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'linkgoo_importvaluerule', @level2type=N'COLUMN',@level2name=N'update_by';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'上次更新时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'linkgoo_importvaluerule', @level2type=N'COLUMN',@level2name=N'update_time';
-- end --

-- begin--linkgoo_export_column_rule--
if exists (select 1   
            from  sysobjects   
           where  id = object_id('linkgoo_exportcolumnrule')   
            and   type = 'U')   
   drop table linkgoo_export_column_rule   
go
create table linkgoo_export_column_rule (
	id bigint not null IDENTITY(1,1)  ,
	entry_code   varchar(128) ,
	field_name   varchar(255) ,
	export_column_name   varchar(255) ,
	sort   int ,
	tips   varchar(255) ,
	combos   varchar(512) ,
	f1   varchar(255) ,
	f2   varchar(255) ,
	f3   varchar(255) ,
	f4   varchar(255) ,
	f5   varchar(255) ,
	create_by   bigint ,
	create_time  datetime  ,
	update_by   bigint ,
	update_time  datetime  ,
	primary key (id) 
);

-- Add comments to the columns
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'linkgoo_exportcolumnrule', @level2type=N'COLUMN',@level2name=N'id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'实体code' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'linkgoo_exportcolumnrule', @level2type=N'COLUMN',@level2name=N'entry_code';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'实体属性名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'linkgoo_exportcolumnrule', @level2type=N'COLUMN',@level2name=N'field_name';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'excel表头' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'linkgoo_exportcolumnrule', @level2type=N'COLUMN',@level2name=N'export_column_name';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'顺序' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'linkgoo_exportcolumnrule', @level2type=N'COLUMN',@level2name=N'sort';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'tips' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'linkgoo_exportcolumnrule', @level2type=N'COLUMN',@level2name=N'tips';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'下来内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'linkgoo_exportcolumnrule', @level2type=N'COLUMN',@level2name=N'combos';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'扩展字段1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'linkgoo_exportcolumnrule', @level2type=N'COLUMN',@level2name=N'f1';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'扩展字段2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'linkgoo_exportcolumnrule', @level2type=N'COLUMN',@level2name=N'f2';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'扩展字段3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'linkgoo_exportcolumnrule', @level2type=N'COLUMN',@level2name=N'f3';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'扩展字段4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'linkgoo_exportcolumnrule', @level2type=N'COLUMN',@level2name=N'f4';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'扩展字段5' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'linkgoo_exportcolumnrule', @level2type=N'COLUMN',@level2name=N'f5';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建者' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'linkgoo_exportcolumnrule', @level2type=N'COLUMN',@level2name=N'create_by';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'linkgoo_exportcolumnrule', @level2type=N'COLUMN',@level2name=N'create_time';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'上次更新者' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'linkgoo_exportcolumnrule', @level2type=N'COLUMN',@level2name=N'update_by';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'上次更新时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'linkgoo_exportcolumnrule', @level2type=N'COLUMN',@level2name=N'update_time';
-- end --

-- begin--worktable_edi_order_log--
if exists (select 1   
            from  sysobjects   
           where  id = object_id('worktable_ediorderlog')   
            and   type = 'U')   
   drop table worktable_edi_order_log   
go
create table worktable_edi_order_log (
	edi_order_log_id bigint not null IDENTITY(1,1)  ,
	edi_order   varchar(8000) ,
	log_message   varchar(8000) ,
	start_time  datetime  ,
	end_time  datetime  ,
	utc_create  datetime  ,
	utc_update  datetime  ,
	order_log_status   varchar(5) ,
	create_by   bigint ,
	update_by   bigint ,
	note   varchar(1024) ,
	primary key (edi_order_log_id) 
);

-- Add comments to the columns
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'记录id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediorderlog', @level2type=N'COLUMN',@level2name=N'edi_order_log_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ediorder' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediorderlog', @level2type=N'COLUMN',@level2name=N'edi_order';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'log_message' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediorderlog', @level2type=N'COLUMN',@level2name=N'log_message';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'开始时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediorderlog', @level2type=N'COLUMN',@level2name=N'start_time';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'结束时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediorderlog', @level2type=N'COLUMN',@level2name=N'end_time';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediorderlog', @level2type=N'COLUMN',@level2name=N'utc_create';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediorderlog', @level2type=N'COLUMN',@level2name=N'utc_update';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediorderlog', @level2type=N'COLUMN',@level2name=N'order_log_status';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediorderlog', @level2type=N'COLUMN',@level2name=N'create_by';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'变更人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediorderlog', @level2type=N'COLUMN',@level2name=N'update_by';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediorderlog', @level2type=N'COLUMN',@level2name=N'note';
-- end --

-- begin--cpo_mi_forecast--
if exists (select 1   
            from  sysobjects   
           where  id = object_id('cpo_miforecast')   
            and   type = 'U')   
   drop table cpo_mi_forecast   
go
create table cpo_mi_forecast (
	mi_forecast_id bigint not null IDENTITY(1,1)  ,
	document_id   bigint ,
	mi_div   varchar(50) ,
	factory   varchar(255) ,
	customer   varchar(255) ,
	model_name   varchar(255) ,
	last_update   varchar(255) ,
	january   varchar(10) ,
	february   varchar(10) ,
	march   varchar(10) ,
	april   varchar(10) ,
	may   varchar(10) ,
	june   varchar(10) ,
	july   varchar(10) ,
	august   varchar(10) ,
	september   varchar(10) ,
	october   varchar(10) ,
	november   varchar(10) ,
	december   varchar(10) ,
	utc_create  datetime  ,
	utc_update  datetime  ,
	status   int ,
	create_by   bigint ,
	update_by   bigint ,
	note   varchar(1024) ,
	primary key (mi_forecast_id) 
);

-- Add comments to the columns
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'mi forecast' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_miforecast', @level2type=N'COLUMN',@level2name=N'mi_forecast_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'document id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_miforecast', @level2type=N'COLUMN',@level2name=N'document_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'mi_Div' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_miforecast', @level2type=N'COLUMN',@level2name=N'mi_div';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'factory' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_miforecast', @level2type=N'COLUMN',@level2name=N'factory';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'customer' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_miforecast', @level2type=N'COLUMN',@level2name=N'customer';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'model name' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_miforecast', @level2type=N'COLUMN',@level2name=N'model_name';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'last update' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_miforecast', @level2type=N'COLUMN',@level2name=N'last_update';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'January' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_miforecast', @level2type=N'COLUMN',@level2name=N'january';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'February' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_miforecast', @level2type=N'COLUMN',@level2name=N'february';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'March' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_miforecast', @level2type=N'COLUMN',@level2name=N'march';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'April' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_miforecast', @level2type=N'COLUMN',@level2name=N'april';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'May' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_miforecast', @level2type=N'COLUMN',@level2name=N'may';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'June' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_miforecast', @level2type=N'COLUMN',@level2name=N'june';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'July' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_miforecast', @level2type=N'COLUMN',@level2name=N'july';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'August' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_miforecast', @level2type=N'COLUMN',@level2name=N'august';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'September' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_miforecast', @level2type=N'COLUMN',@level2name=N'september';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'October' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_miforecast', @level2type=N'COLUMN',@level2name=N'october';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'November' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_miforecast', @level2type=N'COLUMN',@level2name=N'november';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'December' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_miforecast', @level2type=N'COLUMN',@level2name=N'december';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_miforecast', @level2type=N'COLUMN',@level2name=N'utc_create';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_miforecast', @level2type=N'COLUMN',@level2name=N'utc_update';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_miforecast', @level2type=N'COLUMN',@level2name=N'status';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_miforecast', @level2type=N'COLUMN',@level2name=N'create_by';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'变更人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_miforecast', @level2type=N'COLUMN',@level2name=N'update_by';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_miforecast', @level2type=N'COLUMN',@level2name=N'note';
-- end --

-- begin--cpo_document_log--
if exists (select 1   
            from  sysobjects   
           where  id = object_id('cpo_documentlog')   
            and   type = 'U')   
   drop table cpo_document_log   
go
create table cpo_document_log (
	document_log_id bigint not null IDENTITY(1,1)  ,
	document_id   bigint ,
	document_name   varchar(255) ,
	document_url   varchar(500) ,
	document_type   varchar(2) ,
	source   varchar(50) ,
	start_time  datetime  ,
	end_time  datetime  ,
	utc_create  datetime  ,
	create_by   bigint ,
	note   varchar(1024) ,
	primary key (document_log_id) 
);

-- Add comments to the columns
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'记录id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_documentlog', @level2type=N'COLUMN',@level2name=N'document_log_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文档信息id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_documentlog', @level2type=N'COLUMN',@level2name=N'document_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文档名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_documentlog', @level2type=N'COLUMN',@level2name=N'document_name';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文档路径' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_documentlog', @level2type=N'COLUMN',@level2name=N'document_url';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文档类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_documentlog', @level2type=N'COLUMN',@level2name=N'document_type';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文档来源' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_documentlog', @level2type=N'COLUMN',@level2name=N'source';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'开始时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_documentlog', @level2type=N'COLUMN',@level2name=N'start_time';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'结束时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_documentlog', @level2type=N'COLUMN',@level2name=N'end_time';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_documentlog', @level2type=N'COLUMN',@level2name=N'utc_create';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_documentlog', @level2type=N'COLUMN',@level2name=N'create_by';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_documentlog', @level2type=N'COLUMN',@level2name=N'note';
-- end --

-- begin--cpo_a_chian_buy_plan--
if exists (select 1   
            from  sysobjects   
           where  id = object_id('cpo_achianbuyplan')   
            and   type = 'U')   
   drop table cpo_a_chian_buy_plan   
go
create table cpo_a_chian_buy_plan (
	a_china_buy_plan_id bigint not null IDENTITY(1,1)  ,
	document_id   bigint ,
	season   varchar(10) ,
	assigned_factory   varchar(10) ,
	develop_sourcing   varchar(255) ,
	season_of_tm   varchar(255) ,
	ib_po_no   varchar(255) ,
	sap_order_no   varchar(255) ,
	working_no   varchar(30) ,
	model_no   varchar(30) ,
	article_no   varchar(30) ,
	model_name   varchar(255) ,
	division   varchar(30) ,
	gender   varchar(10) ,
	local_drop   varchar(10) ,
	category   varchar(50) ,
	themes   varchar(50) ,
	priority_tracking   varchar(30) ,
	owr_launch_date   varchar(30) ,
	crd_in_system   varchar(30) ,
	sourcing_channel   varchar(30) ,
	sourcing_group   varchar(30) ,
	sourcing_origin   varchar(30) ,
	manufactory   varchar(255) ,
	int_l_vendor_code   varchar(30) ,
	lo   varchar(100) ,
	ds_fty_code   varchar(30) ,
	lead_time   varchar(10) ,
	shipping_mode   varchar(30) ,
	buy_ready_cut_off   varchar(30) ,
	actual_cut_off   varchar(30) ,
	brand_ii   varchar(128) ,
	ils_fc_qty   varchar(10) ,
	size_name1   varchar(10) ,
	size_quantity1   int ,
	size_name2   varchar(10) ,
	size_quantity2   int ,
	size_name3   varchar(10) ,
	size_quantity3   int ,
	size_name4   varchar(10) ,
	size_quantity4   int ,
	size_name5   varchar(10) ,
	size_quantity5   int ,
	size_name6   varchar(10) ,
	size_quantity6   int ,
	size_name7   varchar(10) ,
	size_quantity7   int ,
	size_name8   varchar(10) ,
	size_quantity8   int ,
	size_name9   varchar(10) ,
	size_quantity9   int ,
	size_name10   varchar(10) ,
	size_quantity10   int ,
	size_name11   varchar(10) ,
	size_quantity11   int ,
	size_name12   varchar(10) ,
	size_quantity12   int ,
	size_name13   varchar(10) ,
	size_quantity13   int ,
	size_name14   varchar(10) ,
	size_quantity14   int ,
	size_name15   varchar(10) ,
	size_quantity15   int ,
	size_name16   varchar(10) ,
	size_quantity16   int ,
	size_name17   varchar(10) ,
	size_quantity17   int ,
	size_name18   varchar(10) ,
	size_quantity18   int ,
	size_name19   varchar(10) ,
	size_quantity19   int ,
	size_name20   varchar(10) ,
	size_quantity20   int ,
	size_name21   varchar(10) ,
	size_quantity21   int ,
	size_name22   varchar(10) ,
	size_quantity22   int ,
	size_name23   varchar(10) ,
	size_quantity23   int ,
	size_name24   varchar(10) ,
	size_quantity24   int ,
	size_name25   varchar(10) ,
	size_quantity25   int ,
	size_name26   varchar(10) ,
	size_quantity26   int ,
	size_name27   varchar(10) ,
	size_quantity27   int ,
	size_name28   varchar(10) ,
	size_quantity28   int ,
	size_name29   varchar(10) ,
	size_quantity29   int ,
	size_name30   varchar(10) ,
	size_quantity30   int ,
	consolidation_qty   varchar(10) ,
	po_qty   varchar(10) ,
	size_pattern   varchar(30) ,
	size_run   varchar(30) ,
	priority   varchar(30) ,
	utc_create  datetime  ,
	utc_update  datetime  ,
	a_chian_buy_plan_status   varchar(1) ,
	create_by   bigint ,
	update_by   bigint ,
	note   varchar(1024) ,
	primary key (a_china_buy_plan_id) 
);

-- Add comments to the columns
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'记录id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_achianbuyplan', @level2type=N'COLUMN',@level2name=N'a_china_buy_plan_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'document id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_achianbuyplan', @level2type=N'COLUMN',@level2name=N'document_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Season' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_achianbuyplan', @level2type=N'COLUMN',@level2name=N'season';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Assigned_factory' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_achianbuyplan', @level2type=N'COLUMN',@level2name=N'assigned_factory';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'DEVELOP SOURCING' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_achianbuyplan', @level2type=N'COLUMN',@level2name=N'develop_sourcing';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'SEASON OF TM' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_achianbuyplan', @level2type=N'COLUMN',@level2name=N'season_of_tm';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'IB PO NO' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_achianbuyplan', @level2type=N'COLUMN',@level2name=N'ib_po_no';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'SAP ORDER NO' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_achianbuyplan', @level2type=N'COLUMN',@level2name=N'sap_order_no';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'WORKING NO' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_achianbuyplan', @level2type=N'COLUMN',@level2name=N'working_no';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'MODEL NO' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_achianbuyplan', @level2type=N'COLUMN',@level2name=N'model_no';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ARTICLE NO' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_achianbuyplan', @level2type=N'COLUMN',@level2name=N'article_no';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'MODEL NAME' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_achianbuyplan', @level2type=N'COLUMN',@level2name=N'model_name';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'DIVISION' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_achianbuyplan', @level2type=N'COLUMN',@level2name=N'division';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'GENDER' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_achianbuyplan', @level2type=N'COLUMN',@level2name=N'gender';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'LOCAL DROP' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_achianbuyplan', @level2type=N'COLUMN',@level2name=N'local_drop';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'CATEGORY' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_achianbuyplan', @level2type=N'COLUMN',@level2name=N'category';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'THEMES' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_achianbuyplan', @level2type=N'COLUMN',@level2name=N'themes';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PRIORITY TRACKING' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_achianbuyplan', @level2type=N'COLUMN',@level2name=N'priority_tracking';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'OWR LAUNCH DATE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_achianbuyplan', @level2type=N'COLUMN',@level2name=N'owr_launch_date';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'CRD IN SYSTEM' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_achianbuyplan', @level2type=N'COLUMN',@level2name=N'crd_in_system';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'SOURCING CHANNEL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_achianbuyplan', @level2type=N'COLUMN',@level2name=N'sourcing_channel';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'SOURCING GROUP' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_achianbuyplan', @level2type=N'COLUMN',@level2name=N'sourcing_group';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'SOURCING ORIGIN' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_achianbuyplan', @level2type=N'COLUMN',@level2name=N'sourcing_origin';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'MANUFACTORY' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_achianbuyplan', @level2type=N'COLUMN',@level2name=N'manufactory';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'INT'L VENDOR CODE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_achianbuyplan', @level2type=N'COLUMN',@level2name=N'int_l_vendor_code';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'LO' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_achianbuyplan', @level2type=N'COLUMN',@level2name=N'lo';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'DS fty code' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_achianbuyplan', @level2type=N'COLUMN',@level2name=N'ds_fty_code';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'LEAD TIME' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_achianbuyplan', @level2type=N'COLUMN',@level2name=N'lead_time';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'SHIPPING MODE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_achianbuyplan', @level2type=N'COLUMN',@level2name=N'shipping_mode';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'BUY-READY CUT-OFF' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_achianbuyplan', @level2type=N'COLUMN',@level2name=N'buy_ready_cut_off';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ACTUAL CUT OFF' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_achianbuyplan', @level2type=N'COLUMN',@level2name=N'actual_cut_off';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'BRAND II' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_achianbuyplan', @level2type=N'COLUMN',@level2name=N'brand_ii';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ILS FC QTY' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_achianbuyplan', @level2type=N'COLUMN',@level2name=N'ils_fc_qty';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'size_name1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_achianbuyplan', @level2type=N'COLUMN',@level2name=N'size_name1';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'size_quantity1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_achianbuyplan', @level2type=N'COLUMN',@level2name=N'size_quantity1';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'size_name2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_achianbuyplan', @level2type=N'COLUMN',@level2name=N'size_name2';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'size_quantity2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_achianbuyplan', @level2type=N'COLUMN',@level2name=N'size_quantity2';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'size_name3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_achianbuyplan', @level2type=N'COLUMN',@level2name=N'size_name3';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'size_quantity3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_achianbuyplan', @level2type=N'COLUMN',@level2name=N'size_quantity3';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'size_name4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_achianbuyplan', @level2type=N'COLUMN',@level2name=N'size_name4';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'size_quantity4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_achianbuyplan', @level2type=N'COLUMN',@level2name=N'size_quantity4';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'size_name5' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_achianbuyplan', @level2type=N'COLUMN',@level2name=N'size_name5';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'size_quantity5' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_achianbuyplan', @level2type=N'COLUMN',@level2name=N'size_quantity5';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'size_name6' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_achianbuyplan', @level2type=N'COLUMN',@level2name=N'size_name6';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'size_quantity6' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_achianbuyplan', @level2type=N'COLUMN',@level2name=N'size_quantity6';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'size_name7' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_achianbuyplan', @level2type=N'COLUMN',@level2name=N'size_name7';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'size_quantity7' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_achianbuyplan', @level2type=N'COLUMN',@level2name=N'size_quantity7';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'size_name8' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_achianbuyplan', @level2type=N'COLUMN',@level2name=N'size_name8';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'size_quantity8' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_achianbuyplan', @level2type=N'COLUMN',@level2name=N'size_quantity8';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'size_name9' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_achianbuyplan', @level2type=N'COLUMN',@level2name=N'size_name9';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'size_quantity9' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_achianbuyplan', @level2type=N'COLUMN',@level2name=N'size_quantity9';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'size_name10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_achianbuyplan', @level2type=N'COLUMN',@level2name=N'size_name10';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'size_quantity10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_achianbuyplan', @level2type=N'COLUMN',@level2name=N'size_quantity10';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'size_name11' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_achianbuyplan', @level2type=N'COLUMN',@level2name=N'size_name11';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'size_quantity11' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_achianbuyplan', @level2type=N'COLUMN',@level2name=N'size_quantity11';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'size_name12' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_achianbuyplan', @level2type=N'COLUMN',@level2name=N'size_name12';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'size_quantity12' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_achianbuyplan', @level2type=N'COLUMN',@level2name=N'size_quantity12';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'size_name13' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_achianbuyplan', @level2type=N'COLUMN',@level2name=N'size_name13';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'size_quantity13' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_achianbuyplan', @level2type=N'COLUMN',@level2name=N'size_quantity13';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'size_name14' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_achianbuyplan', @level2type=N'COLUMN',@level2name=N'size_name14';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'size_quantity14' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_achianbuyplan', @level2type=N'COLUMN',@level2name=N'size_quantity14';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'size_name15' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_achianbuyplan', @level2type=N'COLUMN',@level2name=N'size_name15';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'size_quantity15' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_achianbuyplan', @level2type=N'COLUMN',@level2name=N'size_quantity15';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'size_name16' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_achianbuyplan', @level2type=N'COLUMN',@level2name=N'size_name16';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'size_quantity16' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_achianbuyplan', @level2type=N'COLUMN',@level2name=N'size_quantity16';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'size_name17' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_achianbuyplan', @level2type=N'COLUMN',@level2name=N'size_name17';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'size_quantity17' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_achianbuyplan', @level2type=N'COLUMN',@level2name=N'size_quantity17';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'size_name18' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_achianbuyplan', @level2type=N'COLUMN',@level2name=N'size_name18';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'size_quantity18' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_achianbuyplan', @level2type=N'COLUMN',@level2name=N'size_quantity18';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'size_name19' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_achianbuyplan', @level2type=N'COLUMN',@level2name=N'size_name19';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'size_quantity19' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_achianbuyplan', @level2type=N'COLUMN',@level2name=N'size_quantity19';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'size_name20' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_achianbuyplan', @level2type=N'COLUMN',@level2name=N'size_name20';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'size_quantity20' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_achianbuyplan', @level2type=N'COLUMN',@level2name=N'size_quantity20';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'size_name21' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_achianbuyplan', @level2type=N'COLUMN',@level2name=N'size_name21';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'size_quantity21' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_achianbuyplan', @level2type=N'COLUMN',@level2name=N'size_quantity21';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'size_name22' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_achianbuyplan', @level2type=N'COLUMN',@level2name=N'size_name22';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'size_quantity22' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_achianbuyplan', @level2type=N'COLUMN',@level2name=N'size_quantity22';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'size_name23' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_achianbuyplan', @level2type=N'COLUMN',@level2name=N'size_name23';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'size_quantity23' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_achianbuyplan', @level2type=N'COLUMN',@level2name=N'size_quantity23';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'size_name24' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_achianbuyplan', @level2type=N'COLUMN',@level2name=N'size_name24';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'size_quantity24' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_achianbuyplan', @level2type=N'COLUMN',@level2name=N'size_quantity24';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'size_name25' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_achianbuyplan', @level2type=N'COLUMN',@level2name=N'size_name25';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'size_quantity25' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_achianbuyplan', @level2type=N'COLUMN',@level2name=N'size_quantity25';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'size_name26' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_achianbuyplan', @level2type=N'COLUMN',@level2name=N'size_name26';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'size_quantity26' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_achianbuyplan', @level2type=N'COLUMN',@level2name=N'size_quantity26';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'size_name27' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_achianbuyplan', @level2type=N'COLUMN',@level2name=N'size_name27';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'size_quantity27' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_achianbuyplan', @level2type=N'COLUMN',@level2name=N'size_quantity27';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'size_name28' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_achianbuyplan', @level2type=N'COLUMN',@level2name=N'size_name28';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'size_quantity28' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_achianbuyplan', @level2type=N'COLUMN',@level2name=N'size_quantity28';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'size_name29' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_achianbuyplan', @level2type=N'COLUMN',@level2name=N'size_name29';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'size_quantity29' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_achianbuyplan', @level2type=N'COLUMN',@level2name=N'size_quantity29';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'size_name30' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_achianbuyplan', @level2type=N'COLUMN',@level2name=N'size_name30';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'size_quantity30' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_achianbuyplan', @level2type=N'COLUMN',@level2name=N'size_quantity30';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'CONSOLIDATION  QTY' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_achianbuyplan', @level2type=N'COLUMN',@level2name=N'consolidation_qty';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PO QTY' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_achianbuyplan', @level2type=N'COLUMN',@level2name=N'po_qty';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'SIZE PATTERN' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_achianbuyplan', @level2type=N'COLUMN',@level2name=N'size_pattern';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'SIZE RUN' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_achianbuyplan', @level2type=N'COLUMN',@level2name=N'size_run';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Priority' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_achianbuyplan', @level2type=N'COLUMN',@level2name=N'priority';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_achianbuyplan', @level2type=N'COLUMN',@level2name=N'utc_create';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_achianbuyplan', @level2type=N'COLUMN',@level2name=N'utc_update';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_achianbuyplan', @level2type=N'COLUMN',@level2name=N'a_chian_buy_plan_status';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_achianbuyplan', @level2type=N'COLUMN',@level2name=N'create_by';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'变更人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_achianbuyplan', @level2type=N'COLUMN',@level2name=N'update_by';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_achianbuyplan', @level2type=N'COLUMN',@level2name=N'note';
-- end --

-- begin--cpo_fr_export_data_dict--
if exists (select 1   
            from  sysobjects   
           where  id = object_id('cpo_frexportdatadict')   
            and   type = 'U')   
   drop table cpo_fr_export_data_dict   
go
create table cpo_fr_export_data_dict (
	fr_export_dict_id bigint not null IDENTITY(1,1)  ,
	entry_code   varchar(50) ,
	entry_field_name   varchar(50) ,
	export_field_name   varchar(50) ,
	f1   varchar(50) ,
	f2   varchar(50) ,
	f3   varchar(50) ,
	f4   varchar(50) ,
	f5   varchar(50) ,
	f6   varchar(50) ,
	f7   varchar(50) ,
	f8   varchar(50) ,
	utc_create  datetime  ,
	utc_update  datetime  ,
	fr_export_dict_status   varchar(1) ,
	create_by   bigint ,
	update_by   bigint ,
	note   varchar(1024) ,
	primary key (fr_export_dict_id) 
);

-- Add comments to the columns
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'记录id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frexportdatadict', @level2type=N'COLUMN',@level2name=N'fr_export_dict_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'实体code' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frexportdatadict', @level2type=N'COLUMN',@level2name=N'entry_code';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'实体字段名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frexportdatadict', @level2type=N'COLUMN',@level2name=N'entry_field_name';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'输出字段名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frexportdatadict', @level2type=N'COLUMN',@level2name=N'export_field_name';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'动态字段1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frexportdatadict', @level2type=N'COLUMN',@level2name=N'f1';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'动态字段2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frexportdatadict', @level2type=N'COLUMN',@level2name=N'f2';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'动态字段3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frexportdatadict', @level2type=N'COLUMN',@level2name=N'f3';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'动态字段4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frexportdatadict', @level2type=N'COLUMN',@level2name=N'f4';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'动态字段5' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frexportdatadict', @level2type=N'COLUMN',@level2name=N'f5';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'动态字段6' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frexportdatadict', @level2type=N'COLUMN',@level2name=N'f6';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'动态字段7' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frexportdatadict', @level2type=N'COLUMN',@level2name=N'f7';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'动态字段8' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frexportdatadict', @level2type=N'COLUMN',@level2name=N'f8';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frexportdatadict', @level2type=N'COLUMN',@level2name=N'utc_create';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frexportdatadict', @level2type=N'COLUMN',@level2name=N'utc_update';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frexportdatadict', @level2type=N'COLUMN',@level2name=N'fr_export_dict_status';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frexportdatadict', @level2type=N'COLUMN',@level2name=N'create_by';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'变更人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frexportdatadict', @level2type=N'COLUMN',@level2name=N'update_by';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frexportdatadict', @level2type=N'COLUMN',@level2name=N'note';
-- end --

-- begin--cpo_fr_high_level_plan--
if exists (select 1   
            from  sysobjects   
           where  id = object_id('cpo_frhighlevelplan')   
            and   type = 'U')   
   drop table cpo_fr_high_level_plan   
go
create table cpo_fr_high_level_plan (
	high_level_plan_id bigint not null IDENTITY(1,1)  ,
	mo   varchar(255) ,
	plan_start_date  datetime  ,
	plan_end_date  datetime  ,
	create_time  datetime  ,
	plan_group   varchar(255) ,
	utc_create  datetime  ,
	utc_update  datetime  ,
	high_level_plan_status   varchar(1) ,
	create_by   bigint ,
	update_by   bigint ,
	note   varchar(1024) ,
	primary key (high_level_plan_id) 
);

-- Add comments to the columns
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'记录id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frhighlevelplan', @level2type=N'COLUMN',@level2name=N'high_level_plan_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'MO' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frhighlevelplan', @level2type=N'COLUMN',@level2name=N'mo';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PLAN START DATE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frhighlevelplan', @level2type=N'COLUMN',@level2name=N'plan_start_date';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PLAN END DATE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frhighlevelplan', @level2type=N'COLUMN',@level2name=N'plan_end_date';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'CREATETIME' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frhighlevelplan', @level2type=N'COLUMN',@level2name=N'create_time';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PLAN GROUP' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frhighlevelplan', @level2type=N'COLUMN',@level2name=N'plan_group';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frhighlevelplan', @level2type=N'COLUMN',@level2name=N'utc_create';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frhighlevelplan', @level2type=N'COLUMN',@level2name=N'utc_update';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frhighlevelplan', @level2type=N'COLUMN',@level2name=N'high_level_plan_status';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frhighlevelplan', @level2type=N'COLUMN',@level2name=N'create_by';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'变更人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frhighlevelplan', @level2type=N'COLUMN',@level2name=N'update_by';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frhighlevelplan', @level2type=N'COLUMN',@level2name=N'note';
-- end --

-- begin--cpo_fr_low_level_plan--
if exists (select 1   
            from  sysobjects   
           where  id = object_id('cpo_frlowlevelplan')   
            and   type = 'U')   
   drop table cpo_fr_low_level_plan   
go
create table cpo_fr_low_level_plan (
	low_level_plan_id bigint not null IDENTITY(1,1)  ,
	factory_code   varchar(255) ,
	factory   varchar(255) ,
	ap_group   varchar(255) ,
	product_line   varchar(255) ,
	mo   varchar(255) ,
	product   varchar(255) ,
	customer   varchar(255) ,
	plan_qty   varchar(255) ,
	production_start_date   varchar(255) ,
	production_end_date   varchar(255) ,
	plan_per_day   varchar(255) ,
	utc_create  datetime  ,
	utc_update  datetime  ,
	low_level_plan_status   varchar(1) ,
	create_by   bigint ,
	update_by   bigint ,
	note   varchar(1024) ,
	primary key (low_level_plan_id) 
);

-- Add comments to the columns
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'记录id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frlowlevelplan', @level2type=N'COLUMN',@level2name=N'low_level_plan_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'factoryCode' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frlowlevelplan', @level2type=N'COLUMN',@level2name=N'factory_code';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'factory' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frlowlevelplan', @level2type=N'COLUMN',@level2name=N'factory';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'GROUP' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frlowlevelplan', @level2type=N'COLUMN',@level2name=N'ap_group';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'LINE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frlowlevelplan', @level2type=N'COLUMN',@level2name=N'product_line';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ORDER' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frlowlevelplan', @level2type=N'COLUMN',@level2name=N'mo';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PRODUCT' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frlowlevelplan', @level2type=N'COLUMN',@level2name=N'product';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'CUSTOMER' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frlowlevelplan', @level2type=N'COLUMN',@level2name=N'customer';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PLAN QTY' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frlowlevelplan', @level2type=N'COLUMN',@level2name=N'plan_qty';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PRODUCTION START DATE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frlowlevelplan', @level2type=N'COLUMN',@level2name=N'production_start_date';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PRODUCTION END DATE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frlowlevelplan', @level2type=N'COLUMN',@level2name=N'production_end_date';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PLAN PER DAY' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frlowlevelplan', @level2type=N'COLUMN',@level2name=N'plan_per_day';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frlowlevelplan', @level2type=N'COLUMN',@level2name=N'utc_create';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frlowlevelplan', @level2type=N'COLUMN',@level2name=N'utc_update';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frlowlevelplan', @level2type=N'COLUMN',@level2name=N'low_level_plan_status';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frlowlevelplan', @level2type=N'COLUMN',@level2name=N'create_by';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'变更人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frlowlevelplan', @level2type=N'COLUMN',@level2name=N'update_by';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frlowlevelplan', @level2type=N'COLUMN',@level2name=N'note';
-- end --

-- begin--cpo_slt_forecast--
if exists (select 1   
            from  sysobjects   
           where  id = object_id('cpo_sltforecast')   
            and   type = 'U')   
   drop table cpo_slt_forecast   
go
create table cpo_slt_forecast (
	slt_forecast_id bigint not null IDENTITY(1,1)  ,
	document_id   bigint ,
	division   varchar(10) ,
	brand   varchar(50) ,
	supply_chain_track   varchar(10) ,
	season   varchar(10) ,
	period   varchar(10) ,
	working_no   varchar(50) ,
	tooling_number   varchar(10) ,
	sport_code   varchar(255) ,
	business_segment   varchar(255) ,
	model   varchar(10) ,
	article_code   varchar(10) ,
	article   varchar(255) ,
	lot_size   varchar(10) ,
	gps_customer_customer   varchar(10) ,
	pre_order_assigned_result   varchar(10) ,
	gps_customer_desc   varchar(255) ,
	lo   varchar(255) ,
	factory_code   varchar(10) ,
	factory_id   varchar(10) ,
	factory_name_short   varchar(255) ,
	half_month_period   varchar(50) ,
	vpn_ind   varchar(255) ,
	lead_time   varchar(10) ,
	forecast_quantity   varchar(15) ,
	open_forecast_quantity   varchar(15) ,
	order_quantity   varchar(15) ,
	pv_quantity   varchar(15) ,
	eu_rate   float ,
	eu_quantity   float ,
	china_rate   float ,
	china_quantity   float ,
	total_quantity   float ,
	utc_update  datetime  ,
	status   varchar(2) ,
	create_by   bigint ,
	update_by   bigint ,
	note   varchar(1024) ,
	primary key (slt_forecast_id) 
);

-- Add comments to the columns
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'slt_forecast' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_sltforecast', @level2type=N'COLUMN',@level2name=N'slt_forecast_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'document id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_sltforecast', @level2type=N'COLUMN',@level2name=N'document_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'division' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_sltforecast', @level2type=N'COLUMN',@level2name=N'division';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Brand' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_sltforecast', @level2type=N'COLUMN',@level2name=N'brand';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Supply Chain Track' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_sltforecast', @level2type=N'COLUMN',@level2name=N'supply_chain_track';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Season' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_sltforecast', @level2type=N'COLUMN',@level2name=N'season';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Period' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_sltforecast', @level2type=N'COLUMN',@level2name=N'period';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Working No' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_sltforecast', @level2type=N'COLUMN',@level2name=N'working_no';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tooling Number' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_sltforecast', @level2type=N'COLUMN',@level2name=N'tooling_number';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Sports Code' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_sltforecast', @level2type=N'COLUMN',@level2name=N'sport_code';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Business Segment' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_sltforecast', @level2type=N'COLUMN',@level2name=N'business_segment';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Model' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_sltforecast', @level2type=N'COLUMN',@level2name=N'model';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ArticleCode' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_sltforecast', @level2type=N'COLUMN',@level2name=N'article_code';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Article' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_sltforecast', @level2type=N'COLUMN',@level2name=N'article';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Lot Size' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_sltforecast', @level2type=N'COLUMN',@level2name=N'lot_size';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'customer_no' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_sltforecast', @level2type=N'COLUMN',@level2name=N'gps_customer_customer';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'pre_order_assigned_result' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_sltforecast', @level2type=N'COLUMN',@level2name=N'pre_order_assigned_result';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'GPS Customer DESC' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_sltforecast', @level2type=N'COLUMN',@level2name=N'gps_customer_desc';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'LO' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_sltforecast', @level2type=N'COLUMN',@level2name=N'lo';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Factory Group' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_sltforecast', @level2type=N'COLUMN',@level2name=N'factory_code';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Factory ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_sltforecast', @level2type=N'COLUMN',@level2name=N'factory_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Factory Factory Name Short' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_sltforecast', @level2type=N'COLUMN',@level2name=N'factory_name_short';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Half Month Period' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_sltforecast', @level2type=N'COLUMN',@level2name=N'half_month_period';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'VPH Ind' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_sltforecast', @level2type=N'COLUMN',@level2name=N'vpn_ind';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Lead Time' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_sltforecast', @level2type=N'COLUMN',@level2name=N'lead_time';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Forecast Quantity' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_sltforecast', @level2type=N'COLUMN',@level2name=N'forecast_quantity';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Open Forecast Quantity' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_sltforecast', @level2type=N'COLUMN',@level2name=N'open_forecast_quantity';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Order Qty' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_sltforecast', @level2type=N'COLUMN',@level2name=N'order_quantity';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PV Qty' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_sltforecast', @level2type=N'COLUMN',@level2name=N'pv_quantity';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'eu_rate' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_sltforecast', @level2type=N'COLUMN',@level2name=N'eu_rate';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'eu_quantity' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_sltforecast', @level2type=N'COLUMN',@level2name=N'eu_quantity';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'china_rate' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_sltforecast', @level2type=N'COLUMN',@level2name=N'china_rate';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'china_quantity' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_sltforecast', @level2type=N'COLUMN',@level2name=N'china_quantity';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'total_quantity' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_sltforecast', @level2type=N'COLUMN',@level2name=N'total_quantity';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_sltforecast', @level2type=N'COLUMN',@level2name=N'utc_update';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_sltforecast', @level2type=N'COLUMN',@level2name=N'status';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_sltforecast', @level2type=N'COLUMN',@level2name=N'create_by';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'变更人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_sltforecast', @level2type=N'COLUMN',@level2name=N'update_by';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_sltforecast', @level2type=N'COLUMN',@level2name=N'note';
-- end --

-- begin--cpo_working_no_season_attributes--
if exists (select 1   
            from  sysobjects   
           where  id = object_id('cpo_workingnoseasonattributes')   
            and   type = 'U')   
   drop table cpo_working_no_season_attributes   
go
create table cpo_working_no_season_attributes (
	work_no_seasonly_attr_id bigint not null IDENTITY(1,1)  ,
	working_no_id   bigint ,
	working_no   varchar(50) ,
	season   varchar(10) ,
	speed_order   varchar(50) ,
	wc_style   varchar(20) ,
	slt_factory_name   varchar(10) ,
	pr_factory_name   varchar(10) ,
	special_order   varchar(10) ,
	new_factroy_name   varchar(10) ,
	transfer_reason   varchar(255) ,
	transfer_remark   varchar(255) ,
	ei_set_up   varchar(50) ,
	by_ready  datetime  ,
	style_status   varchar(10) ,
	develop_type   varchar(30) ,
	garment_producting_day   float ,
	presell_fty   varchar(10) ,
	sms_fty   varchar(10) ,
	bulk_order_factory   varchar(10) ,
	mkt_forecast_factory   varchar(10) ,
	cus_forecast_factory   varchar(10) ,
	cus_forecast_factory_eu   varchar(10) ,
	cus_forecast_factory_noneu   varchar(10) ,
	cus_forecast_factory_china   varchar(10) ,
	a_source   varchar(10) ,
	b_source   varchar(10) ,
	c_source   varchar(10) ,
	d_source   varchar(10) ,
	pad_print   varchar(10) ,
	pad_item   varchar(10) ,
	special_process_schedule   varchar(10) ,
	special_process_remark   varchar(500) ,
	mtf_fty_name   varchar(15) ,
	china_buy_plan_fty   varchar(15) ,
	ipf_fty_name   varchar(15) ,
	gsp   varchar(2) ,
	test   varchar(128) ,
	utc_create  datetime  ,
	utc_update  datetime  ,
	attr_status   varchar(2) ,
	create_by   bigint ,
	update_by   bigint ,
	note   varchar(1024) ,
	primary key (work_no_seasonly_attr_id) 
);

-- Add comments to the columns
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'记录id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_workingnoseasonattributes', @level2type=N'COLUMN',@level2name=N'work_no_seasonly_attr_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'working no id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_workingnoseasonattributes', @level2type=N'COLUMN',@level2name=N'working_no_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'working_no' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_workingnoseasonattributes', @level2type=N'COLUMN',@level2name=N'working_no';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'season' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_workingnoseasonattributes', @level2type=N'COLUMN',@level2name=N'season';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'急单' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_workingnoseasonattributes', @level2type=N'COLUMN',@level2name=N'speed_order';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'世界杯款' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_workingnoseasonattributes', @level2type=N'COLUMN',@level2name=N'wc_style';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Slt厂名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_workingnoseasonattributes', @level2type=N'COLUMN',@level2name=N'slt_factory_name';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Pr厂名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_workingnoseasonattributes', @level2type=N'COLUMN',@level2name=N'pr_factory_name';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'特殊单' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_workingnoseasonattributes', @level2type=N'COLUMN',@level2name=N'special_order';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'新厂名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_workingnoseasonattributes', @level2type=N'COLUMN',@level2name=N'new_factroy_name';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'转厂原因' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_workingnoseasonattributes', @level2type=N'COLUMN',@level2name=N'transfer_reason';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'转厂备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_workingnoseasonattributes', @level2type=N'COLUMN',@level2name=N'transfer_remark';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'EI Set-up' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_workingnoseasonattributes', @level2type=N'COLUMN',@level2name=N'ei_set_up';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'byready' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_workingnoseasonattributes', @level2type=N'COLUMN',@level2name=N'by_ready';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Style Status' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_workingnoseasonattributes', @level2type=N'COLUMN',@level2name=N'style_status';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'develop type' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_workingnoseasonattributes', @level2type=N'COLUMN',@level2name=N'develop_type';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Garment Producting Day' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_workingnoseasonattributes', @level2type=N'COLUMN',@level2name=N'garment_producting_day';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'presell fty' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_workingnoseasonattributes', @level2type=N'COLUMN',@level2name=N'presell_fty';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'sms fty' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_workingnoseasonattributes', @level2type=N'COLUMN',@level2name=N'sms_fty';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'大货单厂名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_workingnoseasonattributes', @level2type=N'COLUMN',@level2name=N'bulk_order_factory';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'市场预测单厂名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_workingnoseasonattributes', @level2type=N'COLUMN',@level2name=N'mkt_forecast_factory';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'客户预测单厂名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_workingnoseasonattributes', @level2type=N'COLUMN',@level2name=N'cus_forecast_factory';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'客户预测单厂名-eu' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_workingnoseasonattributes', @level2type=N'COLUMN',@level2name=N'cus_forecast_factory_eu';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'客户预测单厂名-noneu' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_workingnoseasonattributes', @level2type=N'COLUMN',@level2name=N'cus_forecast_factory_noneu';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'客户预测单厂名-china' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_workingnoseasonattributes', @level2type=N'COLUMN',@level2name=N'cus_forecast_factory_china';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A source' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_workingnoseasonattributes', @level2type=N'COLUMN',@level2name=N'a_source';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'B source' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_workingnoseasonattributes', @level2type=N'COLUMN',@level2name=N'b_source';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'C source' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_workingnoseasonattributes', @level2type=N'COLUMN',@level2name=N'c_source';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'D source' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_workingnoseasonattributes', @level2type=N'COLUMN',@level2name=N'd_source';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'墨水打印' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_workingnoseasonattributes', @level2type=N'COLUMN',@level2name=N'pad_print';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'pad_item' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_workingnoseasonattributes', @level2type=N'COLUMN',@level2name=N'pad_item';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'特殊工序排期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_workingnoseasonattributes', @level2type=N'COLUMN',@level2name=N'special_process_schedule';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'特殊工序备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_workingnoseasonattributes', @level2type=N'COLUMN',@level2name=N'special_process_remark';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'mtf_fty_name' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_workingnoseasonattributes', @level2type=N'COLUMN',@level2name=N'mtf_fty_name';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'china_buy_plan_fty' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_workingnoseasonattributes', @level2type=N'COLUMN',@level2name=N'china_buy_plan_fty';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ipf_fty_name' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_workingnoseasonattributes', @level2type=N'COLUMN',@level2name=N'ipf_fty_name';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Gsp' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_workingnoseasonattributes', @level2type=N'COLUMN',@level2name=N'gsp';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'test' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_workingnoseasonattributes', @level2type=N'COLUMN',@level2name=N'test';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_workingnoseasonattributes', @level2type=N'COLUMN',@level2name=N'utc_create';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_workingnoseasonattributes', @level2type=N'COLUMN',@level2name=N'utc_update';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_workingnoseasonattributes', @level2type=N'COLUMN',@level2name=N'attr_status';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_workingnoseasonattributes', @level2type=N'COLUMN',@level2name=N'create_by';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'变更人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_workingnoseasonattributes', @level2type=N'COLUMN',@level2name=N'update_by';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_workingnoseasonattributes', @level2type=N'COLUMN',@level2name=N'note';
-- end --

-- begin--cpo_working_no_process--
if exists (select 1   
            from  sysobjects   
           where  id = object_id('cpo_workingnoprocess')   
            and   type = 'U')   
   drop table cpo_working_no_process   
go
create table cpo_working_no_process (
	work_no_process_id bigint not null IDENTITY(1,1)  ,
	working_no_id   bigint ,
	working_no   varchar(50) ,
	process_category   varchar(50) ,
	process_id   bigint ,
	process_code   varchar(30) ,
	process_name   varchar(255) ,
	process_content_type   varchar(10) ,
	process_content_value   float ,
	type   varchar(2) ,
	utc_create  datetime  ,
	utc_update  datetime  ,
	attr_status   varchar(2) ,
	create_by   bigint ,
	update_by   bigint ,
	note   varchar(1024) ,
	primary key (work_no_process_id) 
);

-- Add comments to the columns
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'记录id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_workingnoprocess', @level2type=N'COLUMN',@level2name=N'work_no_process_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'working no id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_workingnoprocess', @level2type=N'COLUMN',@level2name=N'working_no_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'working_no' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_workingnoprocess', @level2type=N'COLUMN',@level2name=N'working_no';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工序类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_workingnoprocess', @level2type=N'COLUMN',@level2name=N'process_category';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工序ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_workingnoprocess', @level2type=N'COLUMN',@level2name=N'process_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工序代码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_workingnoprocess', @level2type=N'COLUMN',@level2name=N'process_code';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工序名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_workingnoprocess', @level2type=N'COLUMN',@level2name=N'process_name';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工序内容类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_workingnoprocess', @level2type=N'COLUMN',@level2name=N'process_content_type';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工序内容值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_workingnoprocess', @level2type=N'COLUMN',@level2name=N'process_content_value';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Type' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_workingnoprocess', @level2type=N'COLUMN',@level2name=N'type';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_workingnoprocess', @level2type=N'COLUMN',@level2name=N'utc_create';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_workingnoprocess', @level2type=N'COLUMN',@level2name=N'utc_update';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_workingnoprocess', @level2type=N'COLUMN',@level2name=N'attr_status';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_workingnoprocess', @level2type=N'COLUMN',@level2name=N'create_by';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'变更人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_workingnoprocess', @level2type=N'COLUMN',@level2name=N'update_by';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_workingnoprocess', @level2type=N'COLUMN',@level2name=N'note';
-- end --

-- begin--cpo_ax_interface_log--
if exists (select 1   
            from  sysobjects   
           where  id = object_id('cpo_axinterfacelog')   
            and   type = 'U')   
   drop table cpo_ax_interface_log   
go
create table cpo_ax_interface_log (
	ax_interface_log_id bigint not null IDENTITY(1,1)  ,
	ax_data   varchar(8000) ,
	log_message   varchar(8000) ,
	interfacename   varchar(500) ,
	request_data   varchar(500) ,
	start_time  datetime  ,
	end_time  datetime  ,
	utc_create  datetime  ,
	utc_update  datetime  ,
	ax_interface_status   varchar(5) ,
	create_by   bigint ,
	update_by   bigint ,
	note   varchar(1024) ,
	primary key (ax_interface_log_id) 
);

-- Add comments to the columns
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'记录id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_axinterfacelog', @level2type=N'COLUMN',@level2name=N'ax_interface_log_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ax_data' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_axinterfacelog', @level2type=N'COLUMN',@level2name=N'ax_data';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'log_message' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_axinterfacelog', @level2type=N'COLUMN',@level2name=N'log_message';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'interfaceName' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_axinterfacelog', @level2type=N'COLUMN',@level2name=N'interfacename';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'request data' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_axinterfacelog', @level2type=N'COLUMN',@level2name=N'request_data';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'开始时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_axinterfacelog', @level2type=N'COLUMN',@level2name=N'start_time';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'结束时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_axinterfacelog', @level2type=N'COLUMN',@level2name=N'end_time';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_axinterfacelog', @level2type=N'COLUMN',@level2name=N'utc_create';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_axinterfacelog', @level2type=N'COLUMN',@level2name=N'utc_update';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_axinterfacelog', @level2type=N'COLUMN',@level2name=N'ax_interface_status';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_axinterfacelog', @level2type=N'COLUMN',@level2name=N'create_by';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'变更人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_axinterfacelog', @level2type=N'COLUMN',@level2name=N'update_by';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_axinterfacelog', @level2type=N'COLUMN',@level2name=N'note';
-- end --

-- begin--cpo_slt_style--
if exists (select 1   
            from  sysobjects   
           where  id = object_id('cpo_sltstyle')   
            and   type = 'U')   
   drop table cpo_slt_style   
go
create table cpo_slt_style (
	slt_style_id bigint not null IDENTITY(1,1)  ,
	document_id   bigint ,
	working_no   varchar(30) ,
	season   varchar(10) ,
	confirm_factory   varchar(10) ,
	cus_in_fty   varchar(10) ,
	cus_cr_fty   varchar(10) ,
	cus_fr_fty   varchar(10) ,
	cus_fx_fty   varchar(10) ,
	utc_update  datetime  ,
	status   bigint ,
	create_by   bigint ,
	update_by   bigint ,
	note   varchar(1024) ,
	primary key (slt_style_id) 
);

-- Add comments to the columns
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'记录ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_sltstyle', @level2type=N'COLUMN',@level2name=N'slt_style_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'document id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_sltstyle', @level2type=N'COLUMN',@level2name=N'document_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Working No' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_sltstyle', @level2type=N'COLUMN',@level2name=N'working_no';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'season' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_sltstyle', @level2type=N'COLUMN',@level2name=N'season';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Confirm_factory' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_sltstyle', @level2type=N'COLUMN',@level2name=N'confirm_factory';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'cus_in_fty' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_sltstyle', @level2type=N'COLUMN',@level2name=N'cus_in_fty';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'cus_cr_fty' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_sltstyle', @level2type=N'COLUMN',@level2name=N'cus_cr_fty';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'cus_fr_fty' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_sltstyle', @level2type=N'COLUMN',@level2name=N'cus_fr_fty';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'cus_fx_fty' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_sltstyle', @level2type=N'COLUMN',@level2name=N'cus_fx_fty';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_sltstyle', @level2type=N'COLUMN',@level2name=N'utc_update';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_sltstyle', @level2type=N'COLUMN',@level2name=N'status';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_sltstyle', @level2type=N'COLUMN',@level2name=N'create_by';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'变更人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_sltstyle', @level2type=N'COLUMN',@level2name=N'update_by';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_sltstyle', @level2type=N'COLUMN',@level2name=N'note';
-- end --

-- begin--cpo_fr_interface_log--
if exists (select 1   
            from  sysobjects   
           where  id = object_id('cpo_frinterfacelog')   
            and   type = 'U')   
   drop table cpo_fr_interface_log   
go
create table cpo_fr_interface_log (
	fr_interface_log_id bigint not null IDENTITY(1,1)  ,
	interface_name   varchar(255) ,
	request_data   varchar(8000) ,
	response_data   varchar(8000) ,
	log_message   varchar(8000) ,
	start_time  datetime  ,
	end_time  datetime  ,
	f1   varchar(50) ,
	f2   varchar(50) ,
	f3   varchar(50) ,
	f4   varchar(50) ,
	utc_create  datetime  ,
	utc_update  datetime  ,
	fr_interface_log_status   varchar(10) ,
	create_by   bigint ,
	update_by   bigint ,
	note   varchar(1024) ,
	primary key (fr_interface_log_id) 
);

-- Add comments to the columns
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'记录id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frinterfacelog', @level2type=N'COLUMN',@level2name=N'fr_interface_log_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'interfaceName' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frinterfacelog', @level2type=N'COLUMN',@level2name=N'interface_name';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'requestData' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frinterfacelog', @level2type=N'COLUMN',@level2name=N'request_data';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'responseData' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frinterfacelog', @level2type=N'COLUMN',@level2name=N'response_data';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'log_message' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frinterfacelog', @level2type=N'COLUMN',@level2name=N'log_message';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'start_time' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frinterfacelog', @level2type=N'COLUMN',@level2name=N'start_time';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'end_time' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frinterfacelog', @level2type=N'COLUMN',@level2name=N'end_time';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'动态字段1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frinterfacelog', @level2type=N'COLUMN',@level2name=N'f1';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'动态字段2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frinterfacelog', @level2type=N'COLUMN',@level2name=N'f2';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'动态字段3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frinterfacelog', @level2type=N'COLUMN',@level2name=N'f3';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'动态字段4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frinterfacelog', @level2type=N'COLUMN',@level2name=N'f4';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frinterfacelog', @level2type=N'COLUMN',@level2name=N'utc_create';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frinterfacelog', @level2type=N'COLUMN',@level2name=N'utc_update';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frinterfacelog', @level2type=N'COLUMN',@level2name=N'fr_interface_log_status';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frinterfacelog', @level2type=N'COLUMN',@level2name=N'create_by';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'变更人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frinterfacelog', @level2type=N'COLUMN',@level2name=N'update_by';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frinterfacelog', @level2type=N'COLUMN',@level2name=N'note';
-- end --

-- begin--cpo_fr_capacity--
if exists (select 1   
            from  sysobjects   
           where  id = object_id('cpo_frcapacity')   
            and   type = 'U')   
   drop table cpo_fr_capacity   
go
create table cpo_fr_capacity (
	fr_capacity_id bigint not null IDENTITY(1,1)  ,
	factory   varchar(10) ,
	plan_group   varchar(50) ,
	capacity_smv   float ,
	actual_order_loading_smv   float ,
	cf_loading_smv   float ,
	mf_loading_smv   float ,
	month   varchar(10) ,
	process_id   varchar(10) ,
	process_name   varchar(30) ,
	weighted_avg_smv   float ,
	utc_create  datetime  ,
	utc_update  datetime  ,
	high_level_plan_status   varchar(1) ,
	create_by   bigint ,
	update_by   bigint ,
	note   varchar(1024) ,
	primary key (fr_capacity_id) 
);

-- Add comments to the columns
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'记录id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frcapacity', @level2type=N'COLUMN',@level2name=N'fr_capacity_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'FACTORY' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frcapacity', @level2type=N'COLUMN',@level2name=N'factory';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PLAN GROUP' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frcapacity', @level2type=N'COLUMN',@level2name=N'plan_group';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'CAPACITY(SMV)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frcapacity', @level2type=N'COLUMN',@level2name=N'capacity_smv';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ACTUAL ORDER LOADING(SMV)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frcapacity', @level2type=N'COLUMN',@level2name=N'actual_order_loading_smv';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'CF LOADING(SMV)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frcapacity', @level2type=N'COLUMN',@level2name=N'cf_loading_smv';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'MF LOADING(SMV)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frcapacity', @level2type=N'COLUMN',@level2name=N'mf_loading_smv';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'MONTH' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frcapacity', @level2type=N'COLUMN',@level2name=N'month';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Process id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frcapacity', @level2type=N'COLUMN',@level2name=N'process_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Process_name' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frcapacity', @level2type=N'COLUMN',@level2name=N'process_name';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'weighted_avg_smv' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frcapacity', @level2type=N'COLUMN',@level2name=N'weighted_avg_smv';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frcapacity', @level2type=N'COLUMN',@level2name=N'utc_create';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frcapacity', @level2type=N'COLUMN',@level2name=N'utc_update';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frcapacity', @level2type=N'COLUMN',@level2name=N'high_level_plan_status';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frcapacity', @level2type=N'COLUMN',@level2name=N'create_by';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'变更人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frcapacity', @level2type=N'COLUMN',@level2name=N'update_by';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frcapacity', @level2type=N'COLUMN',@level2name=N'note';
-- end --

-- begin--cpo_working_no_product_type--
if exists (select 1   
            from  sysobjects   
           where  id = object_id('cpo_workingnoproducttype')   
            and   type = 'U')   
   drop table cpo_working_no_product_type   
go
create table cpo_working_no_product_type (
	working_no_product_type_id bigint not null IDENTITY(1,1)  ,
	working_no_id   bigint ,
	working_no   varchar(50) ,
	product_type_fr   varchar(30) ,
	product_type_ax   varchar(100) ,
	fabric_type   varchar(100) ,
	unit   varchar(30) ,
	utc_create  datetime  ,
	utc_update  datetime  ,
	status   varchar(2) ,
	create_by   bigint ,
	update_by   bigint ,
	note   varchar(1024) ,
	primary key (working_no_product_type_id) 
);

-- Add comments to the columns
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'记录id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_workingnoproducttype', @level2type=N'COLUMN',@level2name=N'working_no_product_type_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'working no id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_workingnoproducttype', @level2type=N'COLUMN',@level2name=N'working_no_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'working_no' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_workingnoproducttype', @level2type=N'COLUMN',@level2name=N'working_no';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'product_type_fr' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_workingnoproducttype', @level2type=N'COLUMN',@level2name=N'product_type_fr';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'product_type_ax' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_workingnoproducttype', @level2type=N'COLUMN',@level2name=N'product_type_ax';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'针织/梭织' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_workingnoproducttype', @level2type=N'COLUMN',@level2name=N'fabric_type';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'配套' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_workingnoproducttype', @level2type=N'COLUMN',@level2name=N'unit';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_workingnoproducttype', @level2type=N'COLUMN',@level2name=N'utc_create';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_workingnoproducttype', @level2type=N'COLUMN',@level2name=N'utc_update';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_workingnoproducttype', @level2type=N'COLUMN',@level2name=N'status';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_workingnoproducttype', @level2type=N'COLUMN',@level2name=N'create_by';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'变更人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_workingnoproducttype', @level2type=N'COLUMN',@level2name=N'update_by';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_workingnoproducttype', @level2type=N'COLUMN',@level2name=N'note';
-- end --

-- begin--cpo_article_development--
if exists (select 1   
            from  sysobjects   
           where  id = object_id('cpo_articledevelopment')   
            and   type = 'U')   
   drop table cpo_article_development   
go
create table cpo_article_development (
	cpo_article_development_id bigint not null IDENTITY(1,1)  ,
	article_no   varchar(30) ,
	article_name   varchar(255) ,
	develop_season   varchar(5) ,
	by_ready_date  datetime  ,
	carry_status   varchar(10) ,
	from_date  datetime  ,
	to_date  datetime  ,
	utc_create  datetime  ,
	utc_update  datetime  ,
	create_by   bigint ,
	update_by   bigint ,
	note   varchar(1024) ,
	primary key (cpo_article_development_id) 
);

-- Add comments to the columns
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_articledevelopment', @level2type=N'COLUMN',@level2name=N'cpo_article_development_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'article no' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_articledevelopment', @level2type=N'COLUMN',@level2name=N'article_no';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'article name' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_articledevelopment', @level2type=N'COLUMN',@level2name=N'article_name';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'develop season' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_articledevelopment', @level2type=N'COLUMN',@level2name=N'develop_season';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'by ready date' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_articledevelopment', @level2type=N'COLUMN',@level2name=N'by_ready_date';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'carry status' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_articledevelopment', @level2type=N'COLUMN',@level2name=N'carry_status';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'fromdate' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_articledevelopment', @level2type=N'COLUMN',@level2name=N'from_date';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'todate' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_articledevelopment', @level2type=N'COLUMN',@level2name=N'to_date';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_articledevelopment', @level2type=N'COLUMN',@level2name=N'utc_create';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_articledevelopment', @level2type=N'COLUMN',@level2name=N'utc_update';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_articledevelopment', @level2type=N'COLUMN',@level2name=N'create_by';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'变更人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_articledevelopment', @level2type=N'COLUMN',@level2name=N'update_by';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_articledevelopment', @level2type=N'COLUMN',@level2name=N'note';
-- end --

-- begin--cpo_working_no_size_group--
if exists (select 1   
            from  sysobjects   
           where  id = object_id('cpo_workingnosizegroup')   
            and   type = 'U')   
   drop table cpo_working_no_size_group   
go
create table cpo_working_no_size_group (
	working_no_size_group_id bigint not null IDENTITY(1,1)  ,
	working_no_id   bigint ,
	working_no   varchar(50) ,
	season   varchar(10) ,
	b_no   varchar(50) ,
	size   varchar(256) ,
	size_group   varchar(50) ,
	product_no   varchar(50) ,
	product_name   varchar(128) ,
	is_garment_set   varchar(30) ,
	athletic   varchar(50) ,
	utc_create  datetime  ,
	utc_update  datetime  ,
	status   varchar(2) ,
	create_by   bigint ,
	update_by   bigint ,
	note   varchar(1024) ,
	primary key (working_no_size_group_id) 
);

-- Add comments to the columns
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'记录id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_workingnosizegroup', @level2type=N'COLUMN',@level2name=N'working_no_size_group_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'working no id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_workingnosizegroup', @level2type=N'COLUMN',@level2name=N'working_no_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'working_no' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_workingnosizegroup', @level2type=N'COLUMN',@level2name=N'working_no';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'season' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_workingnosizegroup', @level2type=N'COLUMN',@level2name=N'season';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'b_no' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_workingnosizegroup', @level2type=N'COLUMN',@level2name=N'b_no';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'size' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_workingnosizegroup', @level2type=N'COLUMN',@level2name=N'size';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'size_group' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_workingnosizegroup', @level2type=N'COLUMN',@level2name=N'size_group';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'product_no' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_workingnosizegroup', @level2type=N'COLUMN',@level2name=N'product_no';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'product_name' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_workingnosizegroup', @level2type=N'COLUMN',@level2name=N'product_name';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'is_garment_set' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_workingnosizegroup', @level2type=N'COLUMN',@level2name=N'is_garment_set';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'athletic' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_workingnosizegroup', @level2type=N'COLUMN',@level2name=N'athletic';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_workingnosizegroup', @level2type=N'COLUMN',@level2name=N'utc_create';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_workingnosizegroup', @level2type=N'COLUMN',@level2name=N'utc_update';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_workingnosizegroup', @level2type=N'COLUMN',@level2name=N'status';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_workingnosizegroup', @level2type=N'COLUMN',@level2name=N'create_by';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'变更人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_workingnosizegroup', @level2type=N'COLUMN',@level2name=N'update_by';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_workingnosizegroup', @level2type=N'COLUMN',@level2name=N'note';
-- end --

-- begin--cpo_customer_forecast_tuning--
if exists (select 1   
            from  sysobjects   
           where  id = object_id('cpo_customerforecasttuning')   
            and   type = 'U')   
   drop table cpo_customer_forecast_tuning   
go
create table cpo_customer_forecast_tuning (
	customer_forecast_tuning_id bigint not null IDENTITY(1,1)  ,
	working_no   varchar(30) ,
	factory   varchar(10) ,
	customer_no   varchar(10) ,
	supply_chain_track   varchar(10) ,
	pv_month  datetime  ,
	to_pv_month  datetime  ,
	article   varchar(10) ,
	order_country   varchar(10) ,
	season   varchar(5) ,
	country_code   varchar(10) ,
	utc_create  datetime  ,
	utc_update  datetime  ,
	status   int ,
	create_by   varchar(30) ,
	update_by   varchar(30) ,
	note   varchar(1024) ,
	primary key (customer_forecast_tuning_id) 
);

-- Add comments to the columns
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'记录ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_customerforecasttuning', @level2type=N'COLUMN',@level2name=N'customer_forecast_tuning_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'working_no' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_customerforecasttuning', @level2type=N'COLUMN',@level2name=N'working_no';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'factory' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_customerforecasttuning', @level2type=N'COLUMN',@level2name=N'factory';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'customer_no' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_customerforecasttuning', @level2type=N'COLUMN',@level2name=N'customer_no';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'supply_chain_track' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_customerforecasttuning', @level2type=N'COLUMN',@level2name=N'supply_chain_track';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'pv_month' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_customerforecasttuning', @level2type=N'COLUMN',@level2name=N'pv_month';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'to_pv_month' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_customerforecasttuning', @level2type=N'COLUMN',@level2name=N'to_pv_month';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'article' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_customerforecasttuning', @level2type=N'COLUMN',@level2name=N'article';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'order_country' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_customerforecasttuning', @level2type=N'COLUMN',@level2name=N'order_country';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'season' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_customerforecasttuning', @level2type=N'COLUMN',@level2name=N'season';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'country code' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_customerforecasttuning', @level2type=N'COLUMN',@level2name=N'country_code';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_customerforecasttuning', @level2type=N'COLUMN',@level2name=N'utc_create';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_customerforecasttuning', @level2type=N'COLUMN',@level2name=N'utc_update';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_customerforecasttuning', @level2type=N'COLUMN',@level2name=N'status';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_customerforecasttuning', @level2type=N'COLUMN',@level2name=N'create_by';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'变更人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_customerforecasttuning', @level2type=N'COLUMN',@level2name=N'update_by';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_customerforecasttuning', @level2type=N'COLUMN',@level2name=N'note';
-- end --

-- begin--cpo_interface_process--
if exists (select 1   
            from  sysobjects   
           where  id = object_id('cpo_interfaceprocess')   
            and   type = 'U')   
   drop table cpo_interface_process   
go
create table cpo_interface_process (
	interface_process_id bigint not null IDENTITY(1,1)  ,
	platform   varchar(10) ,
	interface_type   varchar(10) ,
	status   varchar(2) ,
	process_id   varchar(256) ,
	utc_create  datetime  ,
	utc_update  datetime  ,
	primary key (interface_process_id) 
);

-- Add comments to the columns
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'记录id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_interfaceprocess', @level2type=N'COLUMN',@level2name=N'interface_process_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'platform' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_interfaceprocess', @level2type=N'COLUMN',@level2name=N'platform';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Interface_type' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_interfaceprocess', @level2type=N'COLUMN',@level2name=N'interface_type';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'status' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_interfaceprocess', @level2type=N'COLUMN',@level2name=N'status';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'process_id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_interfaceprocess', @level2type=N'COLUMN',@level2name=N'process_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_interfaceprocess', @level2type=N'COLUMN',@level2name=N'utc_create';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_interfaceprocess', @level2type=N'COLUMN',@level2name=N'utc_update';
-- end --

-- begin--cpo_non_trade_card--
if exists (select 1   
            from  sysobjects   
           where  id = object_id('cpo_nontradecard')   
            and   type = 'U')   
   drop table cpo_non_trade_card   
go
create table cpo_non_trade_card (
	non_trade_card_id bigint not null IDENTITY(1,1)  ,
	document_id   bigint ,
	cpo_168_no   varchar(50) ,
	b_no   varchar(50) ,
	batch_no   varchar(50) ,
	factory_name   varchar(50) ,
	assigned_factory   varchar(10) ,
	ipmt_no   varchar(50) ,
	woven_knit   varchar(10) ,
	product_type   varchar(30) ,
	quantity   varchar(30) ,
	unit   varchar(30) ,
	article   varchar(30) ,
	product_name   varchar(30) ,
	season   varchar(10) ,
	country   varchar(10) ,
	customer_no   varchar(10) ,
	gps_po_no   varchar(30) ,
	tc_po_no   varchar(30) ,
	classic_code   varchar(30) ,
	order_no   varchar(30) ,
	customer_request_date  datetime  ,
	plan_date  datetime  ,
	psdd  datetime  ,
	fpd  datetime  ,
	price   varchar(30) ,
	main_po_no   varchar(30) ,
	fabric_pi_date  datetime  ,
	ts_1   varchar(10) ,
	qty_1   varchar(10) ,
	ts_2   varchar(10) ,
	qty_2   varchar(10) ,
	ts_3   varchar(10) ,
	qty_3   varchar(10) ,
	ts_4   varchar(10) ,
	qty_4   varchar(10) ,
	ts_5   varchar(10) ,
	qty_5   varchar(10) ,
	ts_6   varchar(10) ,
	qty_6   varchar(10) ,
	ts_7   varchar(10) ,
	qty_7   varchar(10) ,
	ts_8   varchar(10) ,
	qty_8   varchar(10) ,
	ts_9   varchar(10) ,
	qty_9   varchar(10) ,
	ts_10   varchar(10) ,
	qty_10   varchar(10) ,
	utc_create  datetime  ,
	utc_update  datetime  ,
	assign_result_status   varchar(1) ,
	create_by   bigint ,
	update_by   bigint ,
	note   varchar(1024) ,
	primary key (non_trade_card_id) 
);

-- Add comments to the columns
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'non trade card order' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_nontradecard', @level2type=N'COLUMN',@level2name=N'non_trade_card_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'document id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_nontradecard', @level2type=N'COLUMN',@level2name=N'document_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'168 No' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_nontradecard', @level2type=N'COLUMN',@level2name=N'cpo_168_no';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'B No' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_nontradecard', @level2type=N'COLUMN',@level2name=N'b_no';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Batch No' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_nontradecard', @level2type=N'COLUMN',@level2name=N'batch_no';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'factory name' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_nontradecard', @level2type=N'COLUMN',@level2name=N'factory_name';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'assigned_factory' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_nontradecard', @level2type=N'COLUMN',@level2name=N'assigned_factory';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'IPMT_NO' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_nontradecard', @level2type=N'COLUMN',@level2name=N'ipmt_no';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'woven_knit' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_nontradecard', @level2type=N'COLUMN',@level2name=N'woven_knit';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'product_type' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_nontradecard', @level2type=N'COLUMN',@level2name=N'product_type';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'quantity' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_nontradecard', @level2type=N'COLUMN',@level2name=N'quantity';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'unit' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_nontradecard', @level2type=N'COLUMN',@level2name=N'unit';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'article' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_nontradecard', @level2type=N'COLUMN',@level2name=N'article';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'product_name' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_nontradecard', @level2type=N'COLUMN',@level2name=N'product_name';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'season' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_nontradecard', @level2type=N'COLUMN',@level2name=N'season';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'country' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_nontradecard', @level2type=N'COLUMN',@level2name=N'country';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'customer no' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_nontradecard', @level2type=N'COLUMN',@level2name=N'customer_no';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'gps po no' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_nontradecard', @level2type=N'COLUMN',@level2name=N'gps_po_no';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'tc po no' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_nontradecard', @level2type=N'COLUMN',@level2name=N'tc_po_no';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'classic code' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_nontradecard', @level2type=N'COLUMN',@level2name=N'classic_code';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'order no' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_nontradecard', @level2type=N'COLUMN',@level2name=N'order_no';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Customer request date' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_nontradecard', @level2type=N'COLUMN',@level2name=N'customer_request_date';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'plan_date' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_nontradecard', @level2type=N'COLUMN',@level2name=N'plan_date';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'psdd ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_nontradecard', @level2type=N'COLUMN',@level2name=N'psdd';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'fpd' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_nontradecard', @level2type=N'COLUMN',@level2name=N'fpd';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'price' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_nontradecard', @level2type=N'COLUMN',@level2name=N'price';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'MainPONo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_nontradecard', @level2type=N'COLUMN',@level2name=N'main_po_no';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'fabric pi date' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_nontradecard', @level2type=N'COLUMN',@level2name=N'fabric_pi_date';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ts_1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_nontradecard', @level2type=N'COLUMN',@level2name=N'ts_1';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'qty_1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_nontradecard', @level2type=N'COLUMN',@level2name=N'qty_1';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ts_2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_nontradecard', @level2type=N'COLUMN',@level2name=N'ts_2';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'qty_2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_nontradecard', @level2type=N'COLUMN',@level2name=N'qty_2';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ts_3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_nontradecard', @level2type=N'COLUMN',@level2name=N'ts_3';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'qty_3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_nontradecard', @level2type=N'COLUMN',@level2name=N'qty_3';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ts_4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_nontradecard', @level2type=N'COLUMN',@level2name=N'ts_4';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'qty_4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_nontradecard', @level2type=N'COLUMN',@level2name=N'qty_4';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ts_5' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_nontradecard', @level2type=N'COLUMN',@level2name=N'ts_5';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'qty_5' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_nontradecard', @level2type=N'COLUMN',@level2name=N'qty_5';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ts_6' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_nontradecard', @level2type=N'COLUMN',@level2name=N'ts_6';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'qty_6' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_nontradecard', @level2type=N'COLUMN',@level2name=N'qty_6';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ts_7' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_nontradecard', @level2type=N'COLUMN',@level2name=N'ts_7';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'qty_7' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_nontradecard', @level2type=N'COLUMN',@level2name=N'qty_7';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ts_8' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_nontradecard', @level2type=N'COLUMN',@level2name=N'ts_8';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'qty_8' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_nontradecard', @level2type=N'COLUMN',@level2name=N'qty_8';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ts_9' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_nontradecard', @level2type=N'COLUMN',@level2name=N'ts_9';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'qty_9' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_nontradecard', @level2type=N'COLUMN',@level2name=N'qty_9';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ts_10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_nontradecard', @level2type=N'COLUMN',@level2name=N'ts_10';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'qty_10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_nontradecard', @level2type=N'COLUMN',@level2name=N'qty_10';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_nontradecard', @level2type=N'COLUMN',@level2name=N'utc_create';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_nontradecard', @level2type=N'COLUMN',@level2name=N'utc_update';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_nontradecard', @level2type=N'COLUMN',@level2name=N'assign_result_status';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_nontradecard', @level2type=N'COLUMN',@level2name=N'create_by';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'变更人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_nontradecard', @level2type=N'COLUMN',@level2name=N'update_by';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_nontradecard', @level2type=N'COLUMN',@level2name=N'note';
-- end --

-- begin--cpo_ax_po_entity--
if exists (select 1   
            from  sysobjects   
           where  id = object_id('cpo_axpoentity')   
            and   type = 'U')   
   drop table cpo_ax_po_entity   
go
create table cpo_ax_po_entity (
	ax_po_entity_id bigint not null IDENTITY(1,1)  ,
	forecast_id   varchar(30) ,
	po_id   varchar(30) ,
	document_id   varchar(30) ,
	document_type   varchar(5) ,
	assign_result_id   bigint ,
	tex_sales_doc_type_id   varchar(30) ,
	account_num   varchar(30) ,
	delivery_date  datetime  ,
	inconterm   varchar(30) ,
	site_id   varchar(30) ,
	factory_id   varchar(30) ,
	order_status   varchar(20) ,
	change_date   varchar(5) ,
	change_qty   varchar(5) ,
	change_price   varchar(5) ,
	change_site   varchar(5) ,
	coo   varchar(30) ,
	period   varchar(30) ,
	brand   varchar(30) ,
	tex_bas_season_code   varchar(30) ,
	item_id   varchar(30) ,
	product_model   varchar(30) ,
	product_no   varchar(30) ,
	name   varchar(30) ,
	color   varchar(30) ,
	color_name   varchar(30) ,
	gar_1stsize   varchar(30) ,
	gar_2ndsize   varchar(30) ,
	size_group_id   varchar(30) ,
	qty   float ,
	price   float ,
	address   varchar(30) ,
	first_prod_date  datetime  ,
	last_prod_date  datetime  ,
	cust_num   varchar(30) ,
	service_identifier   varchar(30) ,
	country   varchar(30) ,
	delivery_reason   varchar(30) ,
	domestic_order   int ,
	order_type   varchar(30) ,
	shipment_address   varchar(30) ,
	classic_code   varchar(30) ,
	customer_order_number   varchar(30) ,
	model_number   varchar(30) ,
	customer_status   varchar(30) ,
	mdp_fail_reason   varchar(30) ,
	sdp_fail_reason   varchar(30) ,
	payment_team   varchar(30) ,
	charges   varchar(30) ,
	plan_date  datetime  ,
	psdd  datetime  ,
	podd  datetime  ,
	garment_lead_time   varchar(30) ,
	fr_order_no   varchar(30) ,
	supply_chain_track   varchar(255) ,
	customer_request_date  datetime  ,
	region   varchar(30) ,
	b_number   varchar(10) ,
	size_run   varchar(100) ,
	technical_notation   varchar(100) ,
	client_code   varchar(20) ,
	ship_mode   varchar(10) ,
	test   varchar(100) ,
	gsp   varchar(100) ,
	mtf_ppc_order_num   varchar(20) ,
	crd_confirm_status   varchar(10) ,
	pd_confirm_status   varchar(10) ,
	order_special_requirement   varchar(100) ,
	customization_status   varchar(10) ,
	expected_material_date  datetime  ,
	last_fabric_pi_eta_date  datetime  ,
	last_trim_pi_eta_date  datetime  ,
	mi_hem_insert   varchar(100) ,
	mi_logo   varchar(50) ,
	mi_n_n   varchar(50) ,
	mi_print   varchar(50) ,
	mi_stripes   varchar(50) ,
	po_batch_date  datetime  ,
	issue_date  datetime  ,
	utc_create  datetime  ,
	utc_update  datetime  ,
	ax_po_status   varchar(1) ,
	create_by   bigint ,
	update_by   bigint ,
	transfer_status   varchar(2) ,
	note   varchar(1024) ,
	primary key (ax_po_entity_id) 
);

-- Add comments to the columns
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_axpoentity', @level2type=N'COLUMN',@level2name=N'ax_po_entity_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ForecastId' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_axpoentity', @level2type=N'COLUMN',@level2name=N'forecast_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'POId' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_axpoentity', @level2type=N'COLUMN',@level2name=N'po_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'document_id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_axpoentity', @level2type=N'COLUMN',@level2name=N'document_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Document_type' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_axpoentity', @level2type=N'COLUMN',@level2name=N'document_type';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'assign_result_id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_axpoentity', @level2type=N'COLUMN',@level2name=N'assign_result_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TEX_SalesDocTypeId' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_axpoentity', @level2type=N'COLUMN',@level2name=N'tex_sales_doc_type_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'AccountNum' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_axpoentity', @level2type=N'COLUMN',@level2name=N'account_num';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'DeliveryDate' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_axpoentity', @level2type=N'COLUMN',@level2name=N'delivery_date';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Inconterm' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_axpoentity', @level2type=N'COLUMN',@level2name=N'inconterm';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'SiteId' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_axpoentity', @level2type=N'COLUMN',@level2name=N'site_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'FactoryId' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_axpoentity', @level2type=N'COLUMN',@level2name=N'factory_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'order_status' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_axpoentity', @level2type=N'COLUMN',@level2name=N'order_status';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'change date' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_axpoentity', @level2type=N'COLUMN',@level2name=N'change_date';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'change qty' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_axpoentity', @level2type=N'COLUMN',@level2name=N'change_qty';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'change price' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_axpoentity', @level2type=N'COLUMN',@level2name=N'change_price';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'change site' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_axpoentity', @level2type=N'COLUMN',@level2name=N'change_site';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'COO' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_axpoentity', @level2type=N'COLUMN',@level2name=N'coo';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Period' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_axpoentity', @level2type=N'COLUMN',@level2name=N'period';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Brand' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_axpoentity', @level2type=N'COLUMN',@level2name=N'brand';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TEX_BAS_SeasonCode' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_axpoentity', @level2type=N'COLUMN',@level2name=N'tex_bas_season_code';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ItemId' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_axpoentity', @level2type=N'COLUMN',@level2name=N'item_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ProductModel' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_axpoentity', @level2type=N'COLUMN',@level2name=N'product_model';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ProductNo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_axpoentity', @level2type=N'COLUMN',@level2name=N'product_no';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Name' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_axpoentity', @level2type=N'COLUMN',@level2name=N'name';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Color' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_axpoentity', @level2type=N'COLUMN',@level2name=N'color';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ColorName' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_axpoentity', @level2type=N'COLUMN',@level2name=N'color_name';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'GAR_1stSize' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_axpoentity', @level2type=N'COLUMN',@level2name=N'gar_1stsize';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'GAR_2ndSize' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_axpoentity', @level2type=N'COLUMN',@level2name=N'gar_2ndsize';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'SizeGroupId' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_axpoentity', @level2type=N'COLUMN',@level2name=N'size_group_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Qty' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_axpoentity', @level2type=N'COLUMN',@level2name=N'qty';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Price' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_axpoentity', @level2type=N'COLUMN',@level2name=N'price';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Address' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_axpoentity', @level2type=N'COLUMN',@level2name=N'address';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'FirstProdDate' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_axpoentity', @level2type=N'COLUMN',@level2name=N'first_prod_date';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'LastProdDate' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_axpoentity', @level2type=N'COLUMN',@level2name=N'last_prod_date';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'CustNum' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_axpoentity', @level2type=N'COLUMN',@level2name=N'cust_num';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ServiceIdentifier' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_axpoentity', @level2type=N'COLUMN',@level2name=N'service_identifier';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Country' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_axpoentity', @level2type=N'COLUMN',@level2name=N'country';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'DeliveryReason' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_axpoentity', @level2type=N'COLUMN',@level2name=N'delivery_reason';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'DomesticOrder' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_axpoentity', @level2type=N'COLUMN',@level2name=N'domestic_order';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'OrderType' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_axpoentity', @level2type=N'COLUMN',@level2name=N'order_type';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ShipmentAddress' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_axpoentity', @level2type=N'COLUMN',@level2name=N'shipment_address';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ClassicCode' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_axpoentity', @level2type=N'COLUMN',@level2name=N'classic_code';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'CustomerOrderNumber' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_axpoentity', @level2type=N'COLUMN',@level2name=N'customer_order_number';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ModelNumber' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_axpoentity', @level2type=N'COLUMN',@level2name=N'model_number';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'CustomerStatus' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_axpoentity', @level2type=N'COLUMN',@level2name=N'customer_status';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'MDPFailReason' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_axpoentity', @level2type=N'COLUMN',@level2name=N'mdp_fail_reason';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'SDPFailReason' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_axpoentity', @level2type=N'COLUMN',@level2name=N'sdp_fail_reason';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PaymentTeam' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_axpoentity', @level2type=N'COLUMN',@level2name=N'payment_team';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Charges' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_axpoentity', @level2type=N'COLUMN',@level2name=N'charges';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PlanDate' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_axpoentity', @level2type=N'COLUMN',@level2name=N'plan_date';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PSDD' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_axpoentity', @level2type=N'COLUMN',@level2name=N'psdd';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PODD' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_axpoentity', @level2type=N'COLUMN',@level2name=N'podd';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'GarmentLeadTime' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_axpoentity', @level2type=N'COLUMN',@level2name=N'garment_lead_time';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'frOrderNo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_axpoentity', @level2type=N'COLUMN',@level2name=N'fr_order_no';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Supply Chain Track' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_axpoentity', @level2type=N'COLUMN',@level2name=N'supply_chain_track';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'CustomerRequestDate' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_axpoentity', @level2type=N'COLUMN',@level2name=N'customer_request_date';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Region' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_axpoentity', @level2type=N'COLUMN',@level2name=N'region';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'BNumber' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_axpoentity', @level2type=N'COLUMN',@level2name=N'b_number';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'SizeRun' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_axpoentity', @level2type=N'COLUMN',@level2name=N'size_run';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TechnicalNotation' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_axpoentity', @level2type=N'COLUMN',@level2name=N'technical_notation';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ClientCode' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_axpoentity', @level2type=N'COLUMN',@level2name=N'client_code';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ShipMode' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_axpoentity', @level2type=N'COLUMN',@level2name=N'ship_mode';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Test' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_axpoentity', @level2type=N'COLUMN',@level2name=N'test';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'GSP' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_axpoentity', @level2type=N'COLUMN',@level2name=N'gsp';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'MTFPPCOrderNum' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_axpoentity', @level2type=N'COLUMN',@level2name=N'mtf_ppc_order_num';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'CRDConfirmStatus' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_axpoentity', @level2type=N'COLUMN',@level2name=N'crd_confirm_status';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PDConfirmStatus' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_axpoentity', @level2type=N'COLUMN',@level2name=N'pd_confirm_status';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'OrderSpecialRequirement' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_axpoentity', @level2type=N'COLUMN',@level2name=N'order_special_requirement';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'CustomizationStatus' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_axpoentity', @level2type=N'COLUMN',@level2name=N'customization_status';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ExpectedMaterialDate' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_axpoentity', @level2type=N'COLUMN',@level2name=N'expected_material_date';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'LastFabricPIETADate' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_axpoentity', @level2type=N'COLUMN',@level2name=N'last_fabric_pi_eta_date';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'LastTrimPIETADate' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_axpoentity', @level2type=N'COLUMN',@level2name=N'last_trim_pi_eta_date';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'mi_hem_insert' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_axpoentity', @level2type=N'COLUMN',@level2name=N'mi_hem_insert';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'mi_logo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_axpoentity', @level2type=N'COLUMN',@level2name=N'mi_logo';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'mi_n_n' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_axpoentity', @level2type=N'COLUMN',@level2name=N'mi_n_n';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'mi_print' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_axpoentity', @level2type=N'COLUMN',@level2name=N'mi_print';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'mi_stripes' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_axpoentity', @level2type=N'COLUMN',@level2name=N'mi_stripes';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'po_batch_date' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_axpoentity', @level2type=N'COLUMN',@level2name=N'po_batch_date';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'issue_date' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_axpoentity', @level2type=N'COLUMN',@level2name=N'issue_date';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_axpoentity', @level2type=N'COLUMN',@level2name=N'utc_create';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_axpoentity', @level2type=N'COLUMN',@level2name=N'utc_update';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_axpoentity', @level2type=N'COLUMN',@level2name=N'ax_po_status';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_axpoentity', @level2type=N'COLUMN',@level2name=N'create_by';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'变更人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_axpoentity', @level2type=N'COLUMN',@level2name=N'update_by';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_axpoentity', @level2type=N'COLUMN',@level2name=N'transfer_status';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_axpoentity', @level2type=N'COLUMN',@level2name=N'note';
-- end --

-- begin--cpo_working_no_pull_forward--
if exists (select 1   
            from  sysobjects   
           where  id = object_id('cpo_workingnopullforward')   
            and   type = 'U')   
   drop table cpo_working_no_pull_forward   
go
create table cpo_working_no_pull_forward (
	working_no_pull_forward_id bigint not null IDENTITY(1,1)  ,
	working_no   varchar(50) ,
	season   varchar(10) ,
	factory   varchar(5) ,
	quantity   float ,
	utc_create  datetime  ,
	utc_update  datetime  ,
	status   varchar(2) ,
	create_by   bigint ,
	update_by   bigint ,
	note   varchar(1024) ,
	primary key (working_no_pull_forward_id) 
);

-- Add comments to the columns
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'记录id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_workingnopullforward', @level2type=N'COLUMN',@level2name=N'working_no_pull_forward_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'working_no' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_workingnopullforward', @level2type=N'COLUMN',@level2name=N'working_no';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'season' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_workingnopullforward', @level2type=N'COLUMN',@level2name=N'season';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Factory' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_workingnopullforward', @level2type=N'COLUMN',@level2name=N'factory';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'quantity' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_workingnopullforward', @level2type=N'COLUMN',@level2name=N'quantity';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_workingnopullforward', @level2type=N'COLUMN',@level2name=N'utc_create';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_workingnopullforward', @level2type=N'COLUMN',@level2name=N'utc_update';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_workingnopullforward', @level2type=N'COLUMN',@level2name=N'status';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_workingnopullforward', @level2type=N'COLUMN',@level2name=N'create_by';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'变更人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_workingnopullforward', @level2type=N'COLUMN',@level2name=N'update_by';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_workingnopullforward', @level2type=N'COLUMN',@level2name=N'note';
-- end --

-- begin--cpo_admin_country--
if exists (select 1   
            from  sysobjects   
           where  id = object_id('cpo_admincountry')   
            and   type = 'U')   
   drop table cpo_admin_country   
go
create table cpo_admin_country (
	country_id bigint not null IDENTITY(1,1)  ,
	code   varchar(5) ,
	name   varchar(50) ,
	primary key (country_id) 
);

-- Add comments to the columns
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'记录ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_admincountry', @level2type=N'COLUMN',@level2name=N'country_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_admincountry', @level2type=N'COLUMN',@level2name=N'code';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_admincountry', @level2type=N'COLUMN',@level2name=N'name';
-- end --

-- begin--cpo_factory_transfer_result--
if exists (select 1   
            from  sysobjects   
           where  id = object_id('cpo_factorytransferresult')   
            and   type = 'U')   
   drop table cpo_factory_transfer_result   
go
create table cpo_factory_transfer_result (
	transfer_result_id bigint not null IDENTITY(1,1)  ,
	fact_assign_id   bigint ,
	assign_result_id   bigint ,
	working_no   varchar(30) ,
	document_type   varchar(30) ,
	season   varchar(10) ,
	transfer_reason   varchar(500) ,
	pad_print   varchar(30) ,
	speed_style   varchar(50) ,
	bulk_order_assigned_factory   varchar(100) ,
	china_buy_plan_fty   varchar(10) ,
	slt_fty   varchar(10) ,
	ipf_fty_name   varchar(10) ,
	mtf_fty_name   varchar(10) ,
	eu_factory   varchar(10) ,
	china_factory   varchar(10) ,
	non_eu_factory   varchar(10) ,
	ei_set_up   varchar(10) ,
	special_process   varchar(128) ,
	old_fty   varchar(10) ,
	new_fty_name   varchar(10) ,
	transfer_remark   varchar(500) ,
	a_source   varchar(10) ,
	b_source   varchar(10) ,
	c_source   varchar(10) ,
	d_source   varchar(10) ,
	to_do_style_transfer   varchar(2) ,
	to_source   varchar(10) ,
	remark_date  datetime  ,
	working_no_range   varchar(50) ,
	quantity   float ,
	brand   varchar(20) ,
	transfer_source   varchar(10) ,
	utc_create  datetime  ,
	utc_update  datetime  ,
	assign_result_status   varchar(1) ,
	create_by   varchar(30) ,
	update_by   varchar(30) ,
	note   varchar(1024) ,
	primary key (transfer_result_id) 
);

-- Add comments to the columns
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'记录id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factorytransferresult', @level2type=N'COLUMN',@level2name=N'transfer_result_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'fact_assign_id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factorytransferresult', @level2type=N'COLUMN',@level2name=N'fact_assign_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'assign_result_id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factorytransferresult', @level2type=N'COLUMN',@level2name=N'assign_result_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Working No' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factorytransferresult', @level2type=N'COLUMN',@level2name=N'working_no';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'document_type' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factorytransferresult', @level2type=N'COLUMN',@level2name=N'document_type';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Season' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factorytransferresult', @level2type=N'COLUMN',@level2name=N'season';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'转厂原因' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factorytransferresult', @level2type=N'COLUMN',@level2name=N'transfer_reason';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Pad print' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factorytransferresult', @level2type=N'COLUMN',@level2name=N'pad_print';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Speed style' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factorytransferresult', @level2type=N'COLUMN',@level2name=N'speed_style';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'大貨做過工廠' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factorytransferresult', @level2type=N'COLUMN',@level2name=N'bulk_order_assigned_factory';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'China buy plan FTY' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factorytransferresult', @level2type=N'COLUMN',@level2name=N'china_buy_plan_fty';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'SLT FTY' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factorytransferresult', @level2type=N'COLUMN',@level2name=N'slt_fty';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'IPF fty name' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factorytransferresult', @level2type=N'COLUMN',@level2name=N'ipf_fty_name';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'MTF fty name' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factorytransferresult', @level2type=N'COLUMN',@level2name=N'mtf_fty_name';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'EU Factory' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factorytransferresult', @level2type=N'COLUMN',@level2name=N'eu_factory';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'China Factory' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factorytransferresult', @level2type=N'COLUMN',@level2name=N'china_factory';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Non EU Factory' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factorytransferresult', @level2type=N'COLUMN',@level2name=N'non_eu_factory';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'EI set up' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factorytransferresult', @level2type=N'COLUMN',@level2name=N'ei_set_up';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'特殊做工排期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factorytransferresult', @level2type=N'COLUMN',@level2name=N'special_process';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Old fty' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factorytransferresult', @level2type=N'COLUMN',@level2name=N'old_fty';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'NEW FTY NAME' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factorytransferresult', @level2type=N'COLUMN',@level2name=N'new_fty_name';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'转厂备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factorytransferresult', @level2type=N'COLUMN',@level2name=N'transfer_remark';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A Source' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factorytransferresult', @level2type=N'COLUMN',@level2name=N'a_source';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'B Source' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factorytransferresult', @level2type=N'COLUMN',@level2name=N'b_source';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'C Source' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factorytransferresult', @level2type=N'COLUMN',@level2name=N'c_source';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'D Source' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factorytransferresult', @level2type=N'COLUMN',@level2name=N'd_source';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'To do styles transfer' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factorytransferresult', @level2type=N'COLUMN',@level2name=N'to_do_style_transfer';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TO Source' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factorytransferresult', @level2type=N'COLUMN',@level2name=N'to_source';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'RemarkDate' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factorytransferresult', @level2type=N'COLUMN',@level2name=N'remark_date';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'working no range' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factorytransferresult', @level2type=N'COLUMN',@level2name=N'working_no_range';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'quantity' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factorytransferresult', @level2type=N'COLUMN',@level2name=N'quantity';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'brand' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factorytransferresult', @level2type=N'COLUMN',@level2name=N'brand';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'transfer_source' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factorytransferresult', @level2type=N'COLUMN',@level2name=N'transfer_source';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factorytransferresult', @level2type=N'COLUMN',@level2name=N'utc_create';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factorytransferresult', @level2type=N'COLUMN',@level2name=N'utc_update';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factorytransferresult', @level2type=N'COLUMN',@level2name=N'assign_result_status';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factorytransferresult', @level2type=N'COLUMN',@level2name=N'create_by';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'变更人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factorytransferresult', @level2type=N'COLUMN',@level2name=N'update_by';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_factorytransferresult', @level2type=N'COLUMN',@level2name=N'note';
-- end --

-- begin--cpo_po_transfer--
if exists (select 1   
            from  sysobjects   
           where  id = object_id('cpo_potransfer')   
            and   type = 'U')   
   drop table cpo_po_transfer   
go
create table cpo_po_transfer (
	po_transfer_id bigint not null IDENTITY(1,1)  ,
	working_no   varchar(30) ,
	working_no_range   varchar(30) ,
	brand   varchar(30) ,
	factory_code   varchar(10) ,
	plan_date  datetime  ,
	customer_request_date  datetime  ,
	psdd  datetime  ,
	fpd  datetime  ,
	po   varchar(30) ,
	tc_po   varchar(10) ,
	updated_po_number   varchar(30) ,
	class_code   varchar(10) ,
	cpo_no   varchar(50) ,
	customer_no   varchar(10) ,
	order_country   varchar(30) ,
	assigned_factory   varchar(10) ,
	po_qty   float ,
	from_factory   varchar(10) ,
	to_factory   varchar(10) ,
	quota_approved   varchar(50) ,
	reason   varchar(500) ,
	order_release_date  datetime  ,
	b_source_needed   varchar(50) ,
	lo_contract   varchar(50) ,
	gps_contract   varchar(50) ,
	transfer_contract   varchar(50) ,
	completed_date  datetime  ,
	tc_client_number   varchar(30) ,
	release_date  datetime  ,
	document_type   varchar(5) ,
	lc0190_date  datetime  ,
	utc_create  datetime  ,
	utc_update  datetime  ,
	status   varchar(5) ,
	create_by   varchar(30) ,
	update_by   varchar(30) ,
	note   varchar(1024) ,
	primary key (po_transfer_id) 
);

-- Add comments to the columns
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'记录id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_potransfer', @level2type=N'COLUMN',@level2name=N'po_transfer_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'working No' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_potransfer', @level2type=N'COLUMN',@level2name=N'working_no';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'working No Range' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_potransfer', @level2type=N'COLUMN',@level2name=N'working_no_range';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'brand' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_potransfer', @level2type=N'COLUMN',@level2name=N'brand';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'factory code' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_potransfer', @level2type=N'COLUMN',@level2name=N'factory_code';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'plan date' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_potransfer', @level2type=N'COLUMN',@level2name=N'plan_date';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'customer request date' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_potransfer', @level2type=N'COLUMN',@level2name=N'customer_request_date';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PSDD' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_potransfer', @level2type=N'COLUMN',@level2name=N'psdd';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'FPD' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_potransfer', @level2type=N'COLUMN',@level2name=N'fpd';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'po' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_potransfer', @level2type=N'COLUMN',@level2name=N'po';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N't/c po' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_potransfer', @level2type=N'COLUMN',@level2name=N'tc_po';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'updated po number' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_potransfer', @level2type=N'COLUMN',@level2name=N'updated_po_number';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'class code' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_potransfer', @level2type=N'COLUMN',@level2name=N'class_code';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'cpoNo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_potransfer', @level2type=N'COLUMN',@level2name=N'cpo_no';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'customer code' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_potransfer', @level2type=N'COLUMN',@level2name=N'customer_no';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'order_country' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_potransfer', @level2type=N'COLUMN',@level2name=N'order_country';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'assigned_factory' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_potransfer', @level2type=N'COLUMN',@level2name=N'assigned_factory';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'po_qty' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_potransfer', @level2type=N'COLUMN',@level2name=N'po_qty';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'from_factory' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_potransfer', @level2type=N'COLUMN',@level2name=N'from_factory';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'to_factory' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_potransfer', @level2type=N'COLUMN',@level2name=N'to_factory';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'quota_approved' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_potransfer', @level2type=N'COLUMN',@level2name=N'quota_approved';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'reason' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_potransfer', @level2type=N'COLUMN',@level2name=N'reason';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'order_release_date' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_potransfer', @level2type=N'COLUMN',@level2name=N'order_release_date';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'b_source_needed' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_potransfer', @level2type=N'COLUMN',@level2name=N'b_source_needed';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'lo_contract' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_potransfer', @level2type=N'COLUMN',@level2name=N'lo_contract';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'gps_contract' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_potransfer', @level2type=N'COLUMN',@level2name=N'gps_contract';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'transfer_contract' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_potransfer', @level2type=N'COLUMN',@level2name=N'transfer_contract';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'completed_date' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_potransfer', @level2type=N'COLUMN',@level2name=N'completed_date';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'tc_client_number' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_potransfer', @level2type=N'COLUMN',@level2name=N'tc_client_number';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'release date' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_potransfer', @level2type=N'COLUMN',@level2name=N'release_date';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Document_type' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_potransfer', @level2type=N'COLUMN',@level2name=N'document_type';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'LC0190 Date' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_potransfer', @level2type=N'COLUMN',@level2name=N'lc0190_date';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_potransfer', @level2type=N'COLUMN',@level2name=N'utc_create';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_potransfer', @level2type=N'COLUMN',@level2name=N'utc_update';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_potransfer', @level2type=N'COLUMN',@level2name=N'status';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_potransfer', @level2type=N'COLUMN',@level2name=N'create_by';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'变更人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_potransfer', @level2type=N'COLUMN',@level2name=N'update_by';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_potransfer', @level2type=N'COLUMN',@level2name=N'note';
-- end --

-- begin--cpo_style_transfer--
if exists (select 1   
            from  sysobjects   
           where  id = object_id('cpo_styletransfer')   
            and   type = 'U')   
   drop table cpo_style_transfer   
go
create table cpo_style_transfer (
	style_transfer_id bigint not null IDENTITY(1,1)  ,
	working_no   varchar(30) ,
	if_got_lc0   varchar(5) ,
	division   varchar(10) ,
	allocation_type   varchar(30) ,
	sourcing_type   varchar(30) ,
	transfer_reason   varchar(500) ,
	season   varchar(10) ,
	a_source   varchar(10) ,
	b_source   varchar(10) ,
	c_source   varchar(10) ,
	d_source   varchar(10) ,
	fty_code   varchar(20) ,
	giving_factory   varchar(10) ,
	receiving_factory   varchar(10) ,
	receiving_factory_lead_time   int ,
	transfer_volume   float ,
	request_transfer_month_from  datetime  ,
	request_transfer_month_to  datetime  ,
	change_a_source   varchar(10) ,
	giving_factory_fob   float ,
	receiving_factory_fob   float ,
	diff_of_fob_data   float ,
	diff_of_fob_percent   float ,
	reason_for_price_variance   varchar(500) ,
	working_no_range   varchar(30) ,
	lo_merch   varchar(128) ,
	tier_merch   varchar(128) ,
	remarks   varchar(1024) ,
	field_name   varchar(20) ,
	giving_factory_price_landed   float ,
	receiving_factory_price_landed   float ,
	ei_set_up_needed   varchar(10) ,
	selling_region_percentage_eu   float ,
	selling_region_percentage_asia   float ,
	selling_region_percentage_nam   float ,
	selling_region_percentage_lam   float ,
	selling_region_percentage_cis   float ,
	selling_region_percentage_china   float ,
	landed_price_per_selling_region_giving_factory_eu   float ,
	landed_price_per_selling_region_giving_factory_asia   float ,
	landed_price_per_selling_region_giving_factory_nam   float ,
	landed_price_per_selling_region_giving_factory_lam   float ,
	landed_price_per_selling_region_giving_factory_cis   float ,
	landed_price_per_selling_region_giving_factory_china   float ,
	skip_techpack   varchar(30) ,
	document_type   varchar(30) ,
	confirm_factory   varchar(30) ,
	source_remark   varchar(50) ,
	utc_create  datetime  ,
	utc_update  datetime  ,
	status   varchar(5) ,
	create_by   varchar(30) ,
	update_by   varchar(30) ,
	note   varchar(1024) ,
	primary key (style_transfer_id) 
);

-- Add comments to the columns
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'记录id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_styletransfer', @level2type=N'COLUMN',@level2name=N'style_transfer_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'working No' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_styletransfer', @level2type=N'COLUMN',@level2name=N'working_no';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'if_got_lc0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_styletransfer', @level2type=N'COLUMN',@level2name=N'if_got_lc0';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'division' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_styletransfer', @level2type=N'COLUMN',@level2name=N'division';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'allocation_type' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_styletransfer', @level2type=N'COLUMN',@level2name=N'allocation_type';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'sourcing_type' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_styletransfer', @level2type=N'COLUMN',@level2name=N'sourcing_type';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'transfer_reason' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_styletransfer', @level2type=N'COLUMN',@level2name=N'transfer_reason';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'season' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_styletransfer', @level2type=N'COLUMN',@level2name=N'season';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'a_source' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_styletransfer', @level2type=N'COLUMN',@level2name=N'a_source';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'b_source' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_styletransfer', @level2type=N'COLUMN',@level2name=N'b_source';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'c_source' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_styletransfer', @level2type=N'COLUMN',@level2name=N'c_source';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'd_source' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_styletransfer', @level2type=N'COLUMN',@level2name=N'd_source';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fty_code' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_styletransfer', @level2type=N'COLUMN',@level2name=N'fty_code';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'giving_factory' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_styletransfer', @level2type=N'COLUMN',@level2name=N'giving_factory';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'receiving_factory' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_styletransfer', @level2type=N'COLUMN',@level2name=N'receiving_factory';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'receiving_factory_lead_time' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_styletransfer', @level2type=N'COLUMN',@level2name=N'receiving_factory_lead_time';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'transfer_volume' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_styletransfer', @level2type=N'COLUMN',@level2name=N'transfer_volume';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'request_transfer_month_from' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_styletransfer', @level2type=N'COLUMN',@level2name=N'request_transfer_month_from';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'request_transfer_month_to' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_styletransfer', @level2type=N'COLUMN',@level2name=N'request_transfer_month_to';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'change_a_source' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_styletransfer', @level2type=N'COLUMN',@level2name=N'change_a_source';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'giving_factory_fob' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_styletransfer', @level2type=N'COLUMN',@level2name=N'giving_factory_fob';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'receiving_factory_fob' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_styletransfer', @level2type=N'COLUMN',@level2name=N'receiving_factory_fob';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'diff_of_fob_data' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_styletransfer', @level2type=N'COLUMN',@level2name=N'diff_of_fob_data';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'diff_of_fob_percent' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_styletransfer', @level2type=N'COLUMN',@level2name=N'diff_of_fob_percent';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'reason_for_price_variancr' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_styletransfer', @level2type=N'COLUMN',@level2name=N'reason_for_price_variance';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'working_no_range' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_styletransfer', @level2type=N'COLUMN',@level2name=N'working_no_range';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'lo_merch' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_styletransfer', @level2type=N'COLUMN',@level2name=N'lo_merch';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'tier_merch' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_styletransfer', @level2type=N'COLUMN',@level2name=N'tier_merch';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'remarks' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_styletransfer', @level2type=N'COLUMN',@level2name=N'remarks';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Field name' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_styletransfer', @level2type=N'COLUMN',@level2name=N'field_name';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Giving Factory price Landed' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_styletransfer', @level2type=N'COLUMN',@level2name=N'giving_factory_price_landed';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Receiving Factory price Landed' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_styletransfer', @level2type=N'COLUMN',@level2name=N'receiving_factory_price_landed';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'EI set up needed' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_styletransfer', @level2type=N'COLUMN',@level2name=N'ei_set_up_needed';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'selling region percentage - EU' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_styletransfer', @level2type=N'COLUMN',@level2name=N'selling_region_percentage_eu';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'selling region percentage - Asia' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_styletransfer', @level2type=N'COLUMN',@level2name=N'selling_region_percentage_asia';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'selling region percentage - NAM' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_styletransfer', @level2type=N'COLUMN',@level2name=N'selling_region_percentage_nam';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'selling region percentage - LAM' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_styletransfer', @level2type=N'COLUMN',@level2name=N'selling_region_percentage_lam';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'selling region percentage - CIS' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_styletransfer', @level2type=N'COLUMN',@level2name=N'selling_region_percentage_cis';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'selling region percentage - China' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_styletransfer', @level2type=N'COLUMN',@level2name=N'selling_region_percentage_china';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'landed price per selling region - Giving Factory - EU' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_styletransfer', @level2type=N'COLUMN',@level2name=N'landed_price_per_selling_region_giving_factory_eu';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'landed price per selling region - Giving Factory - Asia' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_styletransfer', @level2type=N'COLUMN',@level2name=N'landed_price_per_selling_region_giving_factory_asia';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'landed price per selling region - Giving Factory - NAM' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_styletransfer', @level2type=N'COLUMN',@level2name=N'landed_price_per_selling_region_giving_factory_nam';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'landed price per selling region - Giving Factory - LAM' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_styletransfer', @level2type=N'COLUMN',@level2name=N'landed_price_per_selling_region_giving_factory_lam';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'landed price per selling region - Giving Factory - CIS' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_styletransfer', @level2type=N'COLUMN',@level2name=N'landed_price_per_selling_region_giving_factory_cis';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'landed price per selling region - Giving Factory - China' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_styletransfer', @level2type=N'COLUMN',@level2name=N'landed_price_per_selling_region_giving_factory_china';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Skip techpack' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_styletransfer', @level2type=N'COLUMN',@level2name=N'skip_techpack';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'document type' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_styletransfer', @level2type=N'COLUMN',@level2name=N'document_type';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'confirm_factory' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_styletransfer', @level2type=N'COLUMN',@level2name=N'confirm_factory';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'source_remark' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_styletransfer', @level2type=N'COLUMN',@level2name=N'source_remark';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_styletransfer', @level2type=N'COLUMN',@level2name=N'utc_create';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_styletransfer', @level2type=N'COLUMN',@level2name=N'utc_update';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_styletransfer', @level2type=N'COLUMN',@level2name=N'status';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_styletransfer', @level2type=N'COLUMN',@level2name=N'create_by';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'变更人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_styletransfer', @level2type=N'COLUMN',@level2name=N'update_by';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_styletransfer', @level2type=N'COLUMN',@level2name=N'note';
-- end --

-- begin--cpo_vendorkpi_shipping_manual--
if exists (select 1   
            from  sysobjects   
           where  id = object_id('cpo_vendorkpishippingmanual')   
            and   type = 'U')   
   drop table cpo_vendorkpi_shipping_manual   
go
create table cpo_vendorkpi_shipping_manual (
	vendorkpi_shipping_manual_id bigint not null IDENTITY(1,1)  ,
	forwarder   varchar(50) ,
	origin_region   varchar(50) ,
	destination_region   varchar(50) ,
	orgin_country   varchar(50) ,
	destination_country   varchar(50) ,
	customer_number   varchar(50) ,
	base_date   varchar(30) ,
	type_of_days   varchar(20) ,
	no_of_days   int ,
	upload_date  datetime  ,
	upload_user   int ,
	primary key (vendorkpi_shipping_manual_id) 
);

-- Add comments to the columns
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'记录id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_vendorkpishippingmanual', @level2type=N'COLUMN',@level2name=N'vendorkpi_shipping_manual_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'forwarder' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_vendorkpishippingmanual', @level2type=N'COLUMN',@level2name=N'forwarder';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'origin_region' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_vendorkpishippingmanual', @level2type=N'COLUMN',@level2name=N'origin_region';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'destination_region' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_vendorkpishippingmanual', @level2type=N'COLUMN',@level2name=N'destination_region';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'orgin_country' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_vendorkpishippingmanual', @level2type=N'COLUMN',@level2name=N'orgin_country';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'destination_country' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_vendorkpishippingmanual', @level2type=N'COLUMN',@level2name=N'destination_country';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'customer_number' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_vendorkpishippingmanual', @level2type=N'COLUMN',@level2name=N'customer_number';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'base_date' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_vendorkpishippingmanual', @level2type=N'COLUMN',@level2name=N'base_date';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'type_of_days' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_vendorkpishippingmanual', @level2type=N'COLUMN',@level2name=N'type_of_days';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'no_of_days' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_vendorkpishippingmanual', @level2type=N'COLUMN',@level2name=N'no_of_days';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'upload_date' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_vendorkpishippingmanual', @level2type=N'COLUMN',@level2name=N'upload_date';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'upload_user' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_vendorkpishippingmanual', @level2type=N'COLUMN',@level2name=N'upload_user';
-- end --

-- begin--cpo_shipping_order--
if exists (select 1   
            from  sysobjects   
           where  id = object_id('cpo_shippingorder')   
            and   type = 'U')   
   drop table cpo_shipping_order   
go
create table cpo_shipping_order (
	vendorkpi_shipping_order_id bigint not null IDENTITY(1,1)  ,
	forwarder   varchar(50) ,
	shipping_order   varchar(50) ,
	pl3_shipping_order_reference   varchar(50) ,
	po_number   varchar(50) ,
	customer_number   varchar(50) ,
	ship_mode   varchar(50) ,
	shipper   varchar(50) ,
	book_date  datetime  ,
	intended_delivery  datetime  ,
	fgr   varchar(50) ,
	loadport   varchar(50) ,
	loadtype   varchar(50) ,
	factory_code   varchar(50) ,
	origin   varchar(50) ,
	origin_country   varchar(50) ,
	destination   varchar(50) ,
	destination_country   varchar(50) ,
	creation_date  datetime  ,
	creation_user   int ,
	primary key (vendorkpi_shipping_order_id) 
);

-- Add comments to the columns
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'记录id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_shippingorder', @level2type=N'COLUMN',@level2name=N'vendorkpi_shipping_order_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'forwarder' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_shippingorder', @level2type=N'COLUMN',@level2name=N'forwarder';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'shipping_order' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_shippingorder', @level2type=N'COLUMN',@level2name=N'shipping_order';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'pl3_shipping_order_reference' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_shippingorder', @level2type=N'COLUMN',@level2name=N'pl3_shipping_order_reference';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'po_number' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_shippingorder', @level2type=N'COLUMN',@level2name=N'po_number';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'customer_number' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_shippingorder', @level2type=N'COLUMN',@level2name=N'customer_number';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ship_mode' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_shippingorder', @level2type=N'COLUMN',@level2name=N'ship_mode';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'shipper' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_shippingorder', @level2type=N'COLUMN',@level2name=N'shipper';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'book_date' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_shippingorder', @level2type=N'COLUMN',@level2name=N'book_date';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'intended_delivery' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_shippingorder', @level2type=N'COLUMN',@level2name=N'intended_delivery';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'fgr' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_shippingorder', @level2type=N'COLUMN',@level2name=N'fgr';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'loadport' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_shippingorder', @level2type=N'COLUMN',@level2name=N'loadport';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'loadtype' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_shippingorder', @level2type=N'COLUMN',@level2name=N'loadtype';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'factory_code' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_shippingorder', @level2type=N'COLUMN',@level2name=N'factory_code';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'origin' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_shippingorder', @level2type=N'COLUMN',@level2name=N'origin';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'origin_country' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_shippingorder', @level2type=N'COLUMN',@level2name=N'origin_country';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'destination' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_shippingorder', @level2type=N'COLUMN',@level2name=N'destination';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'destination_country' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_shippingorder', @level2type=N'COLUMN',@level2name=N'destination_country';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'creation_date' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_shippingorder', @level2type=N'COLUMN',@level2name=N'creation_date';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'creation_user' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_shippingorder', @level2type=N'COLUMN',@level2name=N'creation_user';
-- end --

-- begin--cpo_shipping_manual--
if exists (select 1   
            from  sysobjects   
           where  id = object_id('cpo_shippingmanual')   
            and   type = 'U')   
   drop table cpo_shipping_manual   
go
create table cpo_shipping_manual (
	vendorkpi_shipping_manual_id bigint not null IDENTITY(1,1)  ,
	forwarder   varchar(50) ,
	origin_region   varchar(50) ,
	destination_region   varchar(50) ,
	orgin_country   varchar(50) ,
	destination_country   varchar(50) ,
	customer_number   varchar(50) ,
	base_date  datetime  ,
	type_of_days   int ,
	no_of_days   int ,
	upload_date  datetime  ,
	upload_user   int ,
	primary key (vendorkpi_shipping_manual_id) 
);

-- Add comments to the columns
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'记录id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_shippingmanual', @level2type=N'COLUMN',@level2name=N'vendorkpi_shipping_manual_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'forwarder' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_shippingmanual', @level2type=N'COLUMN',@level2name=N'forwarder';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'origin_region' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_shippingmanual', @level2type=N'COLUMN',@level2name=N'origin_region';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'destination_region' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_shippingmanual', @level2type=N'COLUMN',@level2name=N'destination_region';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'orgin_country' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_shippingmanual', @level2type=N'COLUMN',@level2name=N'orgin_country';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'destination_country' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_shippingmanual', @level2type=N'COLUMN',@level2name=N'destination_country';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'customer_number' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_shippingmanual', @level2type=N'COLUMN',@level2name=N'customer_number';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'base_date' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_shippingmanual', @level2type=N'COLUMN',@level2name=N'base_date';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'type_of_days' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_shippingmanual', @level2type=N'COLUMN',@level2name=N'type_of_days';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'no_of_days' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_shippingmanual', @level2type=N'COLUMN',@level2name=N'no_of_days';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'upload_date' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_shippingmanual', @level2type=N'COLUMN',@level2name=N'upload_date';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'upload_user' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_shippingmanual', @level2type=N'COLUMN',@level2name=N'upload_user';
-- end --

-- begin--cpo_shipping_invoice--
if exists (select 1   
            from  sysobjects   
           where  id = object_id('cpo_shippinginvoice')   
            and   type = 'U')   
   drop table cpo_shipping_invoice   
go
create table cpo_shipping_invoice (
	vendorkpi_shipping_invoice_id bigint not null IDENTITY(1,1)  ,
	shipping_order   varchar(50) ,
	invoice_nubmer   varchar(50) ,
	creation_date  datetime  ,
	creation_user   int ,
	primary key (vendorkpi_shipping_invoice_id) 
);

-- Add comments to the columns
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'记录id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_shippinginvoice', @level2type=N'COLUMN',@level2name=N'vendorkpi_shipping_invoice_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'shipping_order' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_shippinginvoice', @level2type=N'COLUMN',@level2name=N'shipping_order';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'invoice_nubmer' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_shippinginvoice', @level2type=N'COLUMN',@level2name=N'invoice_nubmer';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'creation_date' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_shippinginvoice', @level2type=N'COLUMN',@level2name=N'creation_date';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'creation_user' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_shippinginvoice', @level2type=N'COLUMN',@level2name=N'creation_user';
-- end --

-- begin--cpo_document_date--
if exists (select 1   
            from  sysobjects   
           where  id = object_id('cpo_documentdate')   
            and   type = 'U')   
   drop table cpo_document_date   
go
create table cpo_document_date (
	vendorkpi_document_date_id bigint not null IDENTITY(1,1)  ,
	shipping_order   varchar(50) ,
	invoice_nubmer   varchar(50) ,
	documen_treceipt_date  datetime  ,
	etd   varchar(50) ,
	upload_date  datetime  ,
	upload_user   int ,
	primary key (vendorkpi_document_date_id) 
);

-- Add comments to the columns
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'记录id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_documentdate', @level2type=N'COLUMN',@level2name=N'vendorkpi_document_date_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'shipping_order' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_documentdate', @level2type=N'COLUMN',@level2name=N'shipping_order';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'invoice_nubmer' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_documentdate', @level2type=N'COLUMN',@level2name=N'invoice_nubmer';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'documen_treceipt_date' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_documentdate', @level2type=N'COLUMN',@level2name=N'documen_treceipt_date';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'etd' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_documentdate', @level2type=N'COLUMN',@level2name=N'etd';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'upload_date' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_documentdate', @level2type=N'COLUMN',@level2name=N'upload_date';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'upload_user' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_documentdate', @level2type=N'COLUMN',@level2name=N'upload_user';
-- end --

-- begin--cpo_public_holiday--
if exists (select 1   
            from  sysobjects   
           where  id = object_id('cpo_publicholiday')   
            and   type = 'U')   
   drop table cpo_public_holiday   
go
create table cpo_public_holiday (
	vendorkpi_public_holiday_id bigint not null IDENTITY(1,1)  ,
	country   varchar(50) ,
	holiday_date  datetime  ,
	description   varchar(50) ,
	upload_date  datetime  ,
	upload_user   int ,
	primary key (vendorkpi_public_holiday_id) 
);

-- Add comments to the columns
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'记录id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_publicholiday', @level2type=N'COLUMN',@level2name=N'vendorkpi_public_holiday_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'country' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_publicholiday', @level2type=N'COLUMN',@level2name=N'country';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'holiday_date' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_publicholiday', @level2type=N'COLUMN',@level2name=N'holiday_date';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_publicholiday', @level2type=N'COLUMN',@level2name=N'description';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'upload_date' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_publicholiday', @level2type=N'COLUMN',@level2name=N'upload_date';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'upload_user' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_publicholiday', @level2type=N'COLUMN',@level2name=N'upload_user';
-- end --

-- begin--cpo_vendorkpi_public_holiday--
if exists (select 1   
            from  sysobjects   
           where  id = object_id('cpo_vendorkpipublicholiday')   
            and   type = 'U')   
   drop table cpo_vendorkpi_public_holiday   
go
create table cpo_vendorkpi_public_holiday (
	vendorkpi_public_holiday_id bigint not null IDENTITY(1,1)  ,
	country   varchar(50) ,
	holiday_date  datetime  ,
	description   varchar(50) ,
	upload_date  datetime  ,
	upload_user   int ,
	primary key (vendorkpi_public_holiday_id) 
);

-- Add comments to the columns
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'记录id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_vendorkpipublicholiday', @level2type=N'COLUMN',@level2name=N'vendorkpi_public_holiday_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'country' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_vendorkpipublicholiday', @level2type=N'COLUMN',@level2name=N'country';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'holiday_date' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_vendorkpipublicholiday', @level2type=N'COLUMN',@level2name=N'holiday_date';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_vendorkpipublicholiday', @level2type=N'COLUMN',@level2name=N'description';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'upload_date' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_vendorkpipublicholiday', @level2type=N'COLUMN',@level2name=N'upload_date';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'upload_user' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_vendorkpipublicholiday', @level2type=N'COLUMN',@level2name=N'upload_user';
-- end --

-- begin--cpo_vendorkpi_document_date--
if exists (select 1   
            from  sysobjects   
           where  id = object_id('cpo_vendorkpidocumentdate')   
            and   type = 'U')   
   drop table cpo_vendorkpi_document_date   
go
create table cpo_vendorkpi_document_date (
	vendorkpi_document_date_id bigint not null IDENTITY(1,1)  ,
	shipping_order   varchar(50) ,
	invoice_nubmer   varchar(50) ,
	documen_treceipt_date  datetime  ,
	etd  datetime  ,
	upload_date  datetime  ,
	upload_user   int ,
	primary key (vendorkpi_document_date_id) 
);

-- Add comments to the columns
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'记录id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_vendorkpidocumentdate', @level2type=N'COLUMN',@level2name=N'vendorkpi_document_date_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'shipping_order' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_vendorkpidocumentdate', @level2type=N'COLUMN',@level2name=N'shipping_order';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'invoice_nubmer' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_vendorkpidocumentdate', @level2type=N'COLUMN',@level2name=N'invoice_nubmer';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'documen_treceipt_date' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_vendorkpidocumentdate', @level2type=N'COLUMN',@level2name=N'documen_treceipt_date';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'etd' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_vendorkpidocumentdate', @level2type=N'COLUMN',@level2name=N'etd';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'upload_date' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_vendorkpidocumentdate', @level2type=N'COLUMN',@level2name=N'upload_date';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'upload_user' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_vendorkpidocumentdate', @level2type=N'COLUMN',@level2name=N'upload_user';
-- end --

-- begin--cpo_vendorkpi_shipping_invoice--
if exists (select 1   
            from  sysobjects   
           where  id = object_id('cpo_vendorkpishippinginvoice')   
            and   type = 'U')   
   drop table cpo_vendorkpi_shipping_invoice   
go
create table cpo_vendorkpi_shipping_invoice (
	vendorkpi_shipping_invoice_id bigint not null IDENTITY(1,1)  ,
	shipping_order   varchar(50) ,
	invoice_nubmer   varchar(50) ,
	creation_date  datetime  ,
	creation_user   int ,
	primary key (vendorkpi_shipping_invoice_id) 
);

-- Add comments to the columns
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'记录id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_vendorkpishippinginvoice', @level2type=N'COLUMN',@level2name=N'vendorkpi_shipping_invoice_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'shipping_order' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_vendorkpishippinginvoice', @level2type=N'COLUMN',@level2name=N'shipping_order';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'invoice_nubmer' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_vendorkpishippinginvoice', @level2type=N'COLUMN',@level2name=N'invoice_nubmer';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'creation_date' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_vendorkpishippinginvoice', @level2type=N'COLUMN',@level2name=N'creation_date';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'creation_user' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_vendorkpishippinginvoice', @level2type=N'COLUMN',@level2name=N'creation_user';
-- end --

-- begin--cpo_vendorkpi_shipping_order--
if exists (select 1   
            from  sysobjects   
           where  id = object_id('cpo_vendorkpishippingorder')   
            and   type = 'U')   
   drop table cpo_vendorkpi_shipping_order   
go
create table cpo_vendorkpi_shipping_order (
	vendorkpi_shipping_order_id bigint not null IDENTITY(1,1)  ,
	forwarder   varchar(50) ,
	shipping_order   varchar(50) ,
	pl3_shipping_order_reference   varchar(50) ,
	po_number   varchar(50) ,
	customer_number   varchar(50) ,
	ship_mode   varchar(50) ,
	shipper   varchar(50) ,
	book_date  datetime  ,
	intended_delivery  datetime  ,
	fgr  datetime  ,
	loadport   varchar(50) ,
	loadtype   varchar(50) ,
	factory_code   varchar(50) ,
	origin   varchar(50) ,
	origin_country   varchar(50) ,
	destination   varchar(50) ,
	destination_country   varchar(50) ,
	creation_date  datetime  ,
	creation_user   int ,
	shipping_order_status   varchar(50) ,
	primary key (vendorkpi_shipping_order_id) 
);

-- Add comments to the columns
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'记录id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_vendorkpishippingorder', @level2type=N'COLUMN',@level2name=N'vendorkpi_shipping_order_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'forwarder' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_vendorkpishippingorder', @level2type=N'COLUMN',@level2name=N'forwarder';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'shipping_order' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_vendorkpishippingorder', @level2type=N'COLUMN',@level2name=N'shipping_order';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'pl3_shipping_order_reference' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_vendorkpishippingorder', @level2type=N'COLUMN',@level2name=N'pl3_shipping_order_reference';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'po_number' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_vendorkpishippingorder', @level2type=N'COLUMN',@level2name=N'po_number';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'customer_number' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_vendorkpishippingorder', @level2type=N'COLUMN',@level2name=N'customer_number';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ship_mode' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_vendorkpishippingorder', @level2type=N'COLUMN',@level2name=N'ship_mode';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'shipper' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_vendorkpishippingorder', @level2type=N'COLUMN',@level2name=N'shipper';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'book_date' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_vendorkpishippingorder', @level2type=N'COLUMN',@level2name=N'book_date';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'intended_delivery' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_vendorkpishippingorder', @level2type=N'COLUMN',@level2name=N'intended_delivery';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'fgr' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_vendorkpishippingorder', @level2type=N'COLUMN',@level2name=N'fgr';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'loadport' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_vendorkpishippingorder', @level2type=N'COLUMN',@level2name=N'loadport';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'loadtype' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_vendorkpishippingorder', @level2type=N'COLUMN',@level2name=N'loadtype';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'factory_code' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_vendorkpishippingorder', @level2type=N'COLUMN',@level2name=N'factory_code';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'origin' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_vendorkpishippingorder', @level2type=N'COLUMN',@level2name=N'origin';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'origin_country' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_vendorkpishippingorder', @level2type=N'COLUMN',@level2name=N'origin_country';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'destination' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_vendorkpishippingorder', @level2type=N'COLUMN',@level2name=N'destination';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'destination_country' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_vendorkpishippingorder', @level2type=N'COLUMN',@level2name=N'destination_country';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'creation_date' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_vendorkpishippingorder', @level2type=N'COLUMN',@level2name=N'creation_date';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'creation_user' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_vendorkpishippingorder', @level2type=N'COLUMN',@level2name=N'creation_user';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'shipping_order_status' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_vendorkpishippingorder', @level2type=N'COLUMN',@level2name=N'shipping_order_status';
-- end --

-- begin--cpo_working_no_factory_smv--
if exists (select 1   
            from  sysobjects   
           where  id = object_id('cpo_workingnofactorysmv')   
            and   type = 'U')   
   drop table cpo_working_no_factory_smv   
go
create table cpo_working_no_factory_smv (
	working_no_factory_smv_id bigint not null IDENTITY(1,1)  ,
	working_no   varchar(50) ,
	factory_id   bigint ,
	factory_name   varchar(30) ,
	smv   float ,
	unit   varchar(5) ,
	smv_type   varchar(1) ,
	product_type   varchar(30) ,
	primary key (working_no_factory_smv_id) 
);

-- Add comments to the columns
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'记录id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_workingnofactorysmv', @level2type=N'COLUMN',@level2name=N'working_no_factory_smv_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'working_no' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_workingnofactorysmv', @level2type=N'COLUMN',@level2name=N'working_no';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'factory_id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_workingnofactorysmv', @level2type=N'COLUMN',@level2name=N'factory_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Factory_name' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_workingnofactorysmv', @level2type=N'COLUMN',@level2name=N'factory_name';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'smv' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_workingnofactorysmv', @level2type=N'COLUMN',@level2name=N'smv';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'unit' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_workingnofactorysmv', @level2type=N'COLUMN',@level2name=N'unit';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'smv_type' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_workingnofactorysmv', @level2type=N'COLUMN',@level2name=N'smv_type';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'product_type' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_workingnofactorysmv', @level2type=N'COLUMN',@level2name=N'product_type';
-- end --

-- begin--cpo_a_chian_buy_plan_size--
if exists (select 1   
            from  sysobjects   
           where  id = object_id('cpo_achianbuyplansize')   
            and   type = 'U')   
   drop table cpo_a_chian_buy_plan_size   
go
create table cpo_a_chian_buy_plan_size (
	a_china_buy_plan_size_id bigint not null IDENTITY(1,1)  ,
	a_china_buy_plan_id   bigint ,
	sizename   varchar(10) ,
	sizequantity   int ,
	utc_create  datetime  ,
	utc_update  datetime  ,
	status   varchar(1) ,
	create_by   bigint ,
	update_by   bigint ,
	note   varchar(1024) ,
	primary key (a_china_buy_plan_size_id) 
);

-- Add comments to the columns
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'记录id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_achianbuyplansize', @level2type=N'COLUMN',@level2name=N'a_china_buy_plan_size_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'aChinaBuyPlanId' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_achianbuyplansize', @level2type=N'COLUMN',@level2name=N'a_china_buy_plan_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'sizeName' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_achianbuyplansize', @level2type=N'COLUMN',@level2name=N'sizename';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'sizeQuantity' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_achianbuyplansize', @level2type=N'COLUMN',@level2name=N'sizequantity';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_achianbuyplansize', @level2type=N'COLUMN',@level2name=N'utc_create';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_achianbuyplansize', @level2type=N'COLUMN',@level2name=N'utc_update';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_achianbuyplansize', @level2type=N'COLUMN',@level2name=N'status';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_achianbuyplansize', @level2type=N'COLUMN',@level2name=N'create_by';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'变更人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_achianbuyplansize', @level2type=N'COLUMN',@level2name=N'update_by';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_achianbuyplansize', @level2type=N'COLUMN',@level2name=N'note';
-- end --

-- begin--cpo_a_china_buy_plan_size--
if exists (select 1   
            from  sysobjects   
           where  id = object_id('cpo_achinabuyplansize')   
            and   type = 'U')   
   drop table cpo_a_china_buy_plan_size   
go
create table cpo_a_china_buy_plan_size (
	a_china_buy_plan_size_id bigint not null IDENTITY(1,1)  ,
	a_china_buy_plan_id   bigint ,
	sizename   varchar(10) ,
	sizequantity   int ,
	utc_create  datetime  ,
	utc_update  datetime  ,
	status   varchar(1) ,
	create_by   bigint ,
	update_by   bigint ,
	note   varchar(1024) ,
	primary key (a_china_buy_plan_size_id) 
);

-- Add comments to the columns
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'记录id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_achinabuyplansize', @level2type=N'COLUMN',@level2name=N'a_china_buy_plan_size_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'aChinaBuyPlanId' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_achinabuyplansize', @level2type=N'COLUMN',@level2name=N'a_china_buy_plan_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'sizeName' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_achinabuyplansize', @level2type=N'COLUMN',@level2name=N'sizename';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'sizeQuantity' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_achinabuyplansize', @level2type=N'COLUMN',@level2name=N'sizequantity';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_achinabuyplansize', @level2type=N'COLUMN',@level2name=N'utc_create';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_achinabuyplansize', @level2type=N'COLUMN',@level2name=N'utc_update';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_achinabuyplansize', @level2type=N'COLUMN',@level2name=N'status';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_achinabuyplansize', @level2type=N'COLUMN',@level2name=N'create_by';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'变更人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_achinabuyplansize', @level2type=N'COLUMN',@level2name=N'update_by';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_achinabuyplansize', @level2type=N'COLUMN',@level2name=N'note';
-- end --

-- begin--cpo_a_china_buy_plan--
if exists (select 1   
            from  sysobjects   
           where  id = object_id('cpo_achinabuyplan')   
            and   type = 'U')   
   drop table cpo_a_china_buy_plan   
go
create table cpo_a_china_buy_plan (
	a_china_buy_plan_id bigint not null IDENTITY(1,1)  ,
	document_id   bigint ,
	season   varchar(10) ,
	assigned_factory   varchar(10) ,
	develop_sourcing   varchar(255) ,
	season_of_tm   varchar(255) ,
	ib_po_no   varchar(255) ,
	sap_order_no   varchar(255) ,
	working_no   varchar(30) ,
	model_no   varchar(30) ,
	article_no   varchar(30) ,
	model_name   varchar(255) ,
	division   varchar(30) ,
	gender   varchar(10) ,
	local_drop   varchar(10) ,
	category   varchar(50) ,
	themes   varchar(50) ,
	priority_tracking   varchar(30) ,
	owr_launch_date   varchar(30) ,
	crd_in_system   varchar(30) ,
	sourcing_channel   varchar(30) ,
	sourcing_group   varchar(30) ,
	sourcing_origin   varchar(30) ,
	manufactory   varchar(255) ,
	int_l_vendor_code   varchar(30) ,
	lo   varchar(100) ,
	ds_fty_code   varchar(30) ,
	lead_time   varchar(10) ,
	shipping_mode   varchar(30) ,
	buy_ready_cut_off   varchar(30) ,
	actual_cut_off   varchar(30) ,
	brand_ii   varchar(128) ,
	ils_fc_qty   varchar(10) ,
	consolidation_qty   varchar(10) ,
	po_qty   varchar(10) ,
	size_pattern   varchar(30) ,
	size_run   varchar(30) ,
	priority   varchar(30) ,
	crd_in_month  datetime  ,
	ds_lo   varchar(30) ,
	utc_create  datetime  ,
	utc_update  datetime  ,
	a_chian_buy_plan_status   varchar(1) ,
	create_by   bigint ,
	update_by   bigint ,
	note   varchar(1024) ,
	primary key (a_china_buy_plan_id) 
);

-- Add comments to the columns
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'记录id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_achinabuyplan', @level2type=N'COLUMN',@level2name=N'a_china_buy_plan_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'document id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_achinabuyplan', @level2type=N'COLUMN',@level2name=N'document_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Season' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_achinabuyplan', @level2type=N'COLUMN',@level2name=N'season';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Assigned_factory' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_achinabuyplan', @level2type=N'COLUMN',@level2name=N'assigned_factory';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'DEVELOP SOURCING' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_achinabuyplan', @level2type=N'COLUMN',@level2name=N'develop_sourcing';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'SEASON OF TM' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_achinabuyplan', @level2type=N'COLUMN',@level2name=N'season_of_tm';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'IB PO NO' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_achinabuyplan', @level2type=N'COLUMN',@level2name=N'ib_po_no';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'SAP ORDER NO' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_achinabuyplan', @level2type=N'COLUMN',@level2name=N'sap_order_no';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'WORKING NO' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_achinabuyplan', @level2type=N'COLUMN',@level2name=N'working_no';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'MODEL NO' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_achinabuyplan', @level2type=N'COLUMN',@level2name=N'model_no';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ARTICLE NO' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_achinabuyplan', @level2type=N'COLUMN',@level2name=N'article_no';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'MODEL NAME' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_achinabuyplan', @level2type=N'COLUMN',@level2name=N'model_name';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'DIVISION' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_achinabuyplan', @level2type=N'COLUMN',@level2name=N'division';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'GENDER' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_achinabuyplan', @level2type=N'COLUMN',@level2name=N'gender';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'LOCAL DROP' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_achinabuyplan', @level2type=N'COLUMN',@level2name=N'local_drop';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'CATEGORY' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_achinabuyplan', @level2type=N'COLUMN',@level2name=N'category';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'THEMES' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_achinabuyplan', @level2type=N'COLUMN',@level2name=N'themes';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PRIORITY TRACKING' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_achinabuyplan', @level2type=N'COLUMN',@level2name=N'priority_tracking';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'OWR LAUNCH DATE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_achinabuyplan', @level2type=N'COLUMN',@level2name=N'owr_launch_date';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'CRD IN SYSTEM' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_achinabuyplan', @level2type=N'COLUMN',@level2name=N'crd_in_system';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'SOURCING CHANNEL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_achinabuyplan', @level2type=N'COLUMN',@level2name=N'sourcing_channel';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'SOURCING GROUP' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_achinabuyplan', @level2type=N'COLUMN',@level2name=N'sourcing_group';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'SOURCING ORIGIN' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_achinabuyplan', @level2type=N'COLUMN',@level2name=N'sourcing_origin';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'MANUFACTORY' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_achinabuyplan', @level2type=N'COLUMN',@level2name=N'manufactory';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'INT'L VENDOR CODE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_achinabuyplan', @level2type=N'COLUMN',@level2name=N'int_l_vendor_code';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'LO' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_achinabuyplan', @level2type=N'COLUMN',@level2name=N'lo';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'DS fty code' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_achinabuyplan', @level2type=N'COLUMN',@level2name=N'ds_fty_code';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'LEAD TIME' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_achinabuyplan', @level2type=N'COLUMN',@level2name=N'lead_time';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'SHIPPING MODE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_achinabuyplan', @level2type=N'COLUMN',@level2name=N'shipping_mode';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'BUY-READY CUT-OFF' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_achinabuyplan', @level2type=N'COLUMN',@level2name=N'buy_ready_cut_off';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ACTUAL CUT OFF' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_achinabuyplan', @level2type=N'COLUMN',@level2name=N'actual_cut_off';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'BRAND II' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_achinabuyplan', @level2type=N'COLUMN',@level2name=N'brand_ii';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ILS FC QTY' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_achinabuyplan', @level2type=N'COLUMN',@level2name=N'ils_fc_qty';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'CONSOLIDATION  QTY' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_achinabuyplan', @level2type=N'COLUMN',@level2name=N'consolidation_qty';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PO QTY' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_achinabuyplan', @level2type=N'COLUMN',@level2name=N'po_qty';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'SIZE PATTERN' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_achinabuyplan', @level2type=N'COLUMN',@level2name=N'size_pattern';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'SIZE RUN' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_achinabuyplan', @level2type=N'COLUMN',@level2name=N'size_run';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Priority' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_achinabuyplan', @level2type=N'COLUMN',@level2name=N'priority';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'crd_in_month' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_achinabuyplan', @level2type=N'COLUMN',@level2name=N'crd_in_month';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ds_lo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_achinabuyplan', @level2type=N'COLUMN',@level2name=N'ds_lo';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_achinabuyplan', @level2type=N'COLUMN',@level2name=N'utc_create';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_achinabuyplan', @level2type=N'COLUMN',@level2name=N'utc_update';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_achinabuyplan', @level2type=N'COLUMN',@level2name=N'a_chian_buy_plan_status';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_achinabuyplan', @level2type=N'COLUMN',@level2name=N'create_by';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'变更人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_achinabuyplan', @level2type=N'COLUMN',@level2name=N'update_by';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_achinabuyplan', @level2type=N'COLUMN',@level2name=N'note';
-- end --

-- begin--cpo_season_data_range_setting--
if exists (select 1   
            from  sysobjects   
           where  id = object_id('cpo_seasondatarangesetting')   
            and   type = 'U')   
   drop table cpo_season_data_range_setting   
go
create table cpo_season_data_range_setting (
	season_data_range_setting_id bigint not null IDENTITY(1,1)  ,
	season   varchar(10) ,
	document_type   varchar(5) ,
	from_date  datetime  ,
	to_date  datetime  ,
	utc_create  datetime  ,
	utc_update  datetime  ,
	status   varchar(1) ,
	create_by   varchar(30) ,
	update_by   varchar(30) ,
	note   varchar(1024) ,
	primary key (season_data_range_setting_id) 
);

-- Add comments to the columns
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'记录id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_seasondatarangesetting', @level2type=N'COLUMN',@level2name=N'season_data_range_setting_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Season' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_seasondatarangesetting', @level2type=N'COLUMN',@level2name=N'season';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'document type' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_seasondatarangesetting', @level2type=N'COLUMN',@level2name=N'document_type';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'from date' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_seasondatarangesetting', @level2type=N'COLUMN',@level2name=N'from_date';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'to date' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_seasondatarangesetting', @level2type=N'COLUMN',@level2name=N'to_date';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_seasondatarangesetting', @level2type=N'COLUMN',@level2name=N'utc_create';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_seasondatarangesetting', @level2type=N'COLUMN',@level2name=N'utc_update';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_seasondatarangesetting', @level2type=N'COLUMN',@level2name=N'status';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_seasondatarangesetting', @level2type=N'COLUMN',@level2name=N'create_by';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'变更人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_seasondatarangesetting', @level2type=N'COLUMN',@level2name=N'update_by';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_seasondatarangesetting', @level2type=N'COLUMN',@level2name=N'note';
-- end --

-- begin--cpo_season_date_range_setting--
if exists (select 1   
            from  sysobjects   
           where  id = object_id('cpo_seasondaterangesetting')   
            and   type = 'U')   
   drop table cpo_season_date_range_setting   
go
create table cpo_season_date_range_setting (
	season_date_range_setting_id bigint not null IDENTITY(1,1)  ,
	season   varchar(10) ,
	document_type   varchar(5) ,
	from_date  datetime  ,
	document_type_name   varchar(30) ,
	to_date  datetime  ,
	validation_date  datetime  ,
	invalidation_date  datetime  ,
	utc_create  datetime  ,
	utc_update  datetime  ,
	status   varchar(1) ,
	create_by   varchar(30) ,
	update_by   varchar(30) ,
	note   varchar(1024) ,
	primary key (season_date_range_setting_id) 
);

-- Add comments to the columns
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'记录id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_seasondaterangesetting', @level2type=N'COLUMN',@level2name=N'season_date_range_setting_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Season' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_seasondaterangesetting', @level2type=N'COLUMN',@level2name=N'season';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'document type' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_seasondaterangesetting', @level2type=N'COLUMN',@level2name=N'document_type';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'from date' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_seasondaterangesetting', @level2type=N'COLUMN',@level2name=N'from_date';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Document_type_name' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_seasondaterangesetting', @level2type=N'COLUMN',@level2name=N'document_type_name';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'to date' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_seasondaterangesetting', @level2type=N'COLUMN',@level2name=N'to_date';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'validation date' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_seasondaterangesetting', @level2type=N'COLUMN',@level2name=N'validation_date';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'invalidation date' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_seasondaterangesetting', @level2type=N'COLUMN',@level2name=N'invalidation_date';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_seasondaterangesetting', @level2type=N'COLUMN',@level2name=N'utc_create';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_seasondaterangesetting', @level2type=N'COLUMN',@level2name=N'utc_update';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_seasondaterangesetting', @level2type=N'COLUMN',@level2name=N'status';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_seasondaterangesetting', @level2type=N'COLUMN',@level2name=N'create_by';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'变更人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_seasondaterangesetting', @level2type=N'COLUMN',@level2name=N'update_by';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_seasondaterangesetting', @level2type=N'COLUMN',@level2name=N'note';
-- end --

-- begin--cpo_bno_batch--
if exists (select 1   
            from  sysobjects   
           where  id = object_id('cpo_bnobatch')   
            and   type = 'U')   
   drop table cpo_bno_batch   
go
create table cpo_bno_batch (
	bno_batch_id bigint not null IDENTITY(1,1)  ,
	b_no   varchar(50) ,
	batch_no   int ,
	primary key (bno_batch_id) 
);

-- Add comments to the columns
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'记录id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_bnobatch', @level2type=N'COLUMN',@level2name=N'bno_batch_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'b_no' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_bnobatch', @level2type=N'COLUMN',@level2name=N'b_no';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'batch_no' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_bnobatch', @level2type=N'COLUMN',@level2name=N'batch_no';
-- end --

-- begin--cpo_worktable_edi_order_batch--
if exists (select 1   
            from  sysobjects   
           where  id = object_id('cpo_worktableediorderbatch')   
            and   type = 'U')   
   drop table cpo_worktable_edi_order_batch   
go
create table cpo_worktable_edi_order_batch (
	worktable_edi_order_batch_id bigint not null IDENTITY(1,1)  ,
	order_master_id   bigint ,
	b_no   varchar(50) ,
	batch_no   varchar(5) ,
	primary key (worktable_edi_order_batch_id) 
);

-- Add comments to the columns
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'记录id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_worktableediorderbatch', @level2type=N'COLUMN',@level2name=N'worktable_edi_order_batch_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'order_master_id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_worktableediorderbatch', @level2type=N'COLUMN',@level2name=N'order_master_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'b_no' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_worktableediorderbatch', @level2type=N'COLUMN',@level2name=N'b_no';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'batch_no' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_worktableediorderbatch', @level2type=N'COLUMN',@level2name=N'batch_no';
-- end --

-- begin--cpo_edi_order_batch--
if exists (select 1   
            from  sysobjects   
           where  id = object_id('cpo_ediorderbatch')   
            and   type = 'U')   
   drop table cpo_edi_order_batch   
go
create table cpo_edi_order_batch (
	worktable_edi_order_batch_id bigint not null IDENTITY(1,1)  ,
	order_master_id   bigint ,
	b_no   varchar(50) ,
	batch_no   varchar(5) ,
	no_168   varchar(20) ,
	primary key (worktable_edi_order_batch_id) 
);

-- Add comments to the columns
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'记录id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_ediorderbatch', @level2type=N'COLUMN',@level2name=N'worktable_edi_order_batch_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'order_master_id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_ediorderbatch', @level2type=N'COLUMN',@level2name=N'order_master_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'b_no' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_ediorderbatch', @level2type=N'COLUMN',@level2name=N'b_no';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'batch_no' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_ediorderbatch', @level2type=N'COLUMN',@level2name=N'batch_no';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'168#' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_ediorderbatch', @level2type=N'COLUMN',@level2name=N'no_168';
-- end --

-- begin--cpo_working_no_factory_history--
if exists (select 1   
            from  sysobjects   
           where  id = object_id('cpo_workingnofactoryhistory')   
            and   type = 'U')   
   drop table cpo_working_no_factory_history   
go
create table cpo_working_no_factory_history (
	working_no_factory_history_id bigint not null IDENTITY(1,1)  ,
	working_no   varchar(50) ,
	factory   varchar(30) ,
	document_type   varchar(10) ,
	times   int ,
	primary key (working_no_factory_history_id) 
);

-- Add comments to the columns
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'记录id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_workingnofactoryhistory', @level2type=N'COLUMN',@level2name=N'working_no_factory_history_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'working_no' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_workingnofactoryhistory', @level2type=N'COLUMN',@level2name=N'working_no';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Factory' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_workingnofactoryhistory', @level2type=N'COLUMN',@level2name=N'factory';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'document_type' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_workingnofactoryhistory', @level2type=N'COLUMN',@level2name=N'document_type';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'times' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_workingnofactoryhistory', @level2type=N'COLUMN',@level2name=N'times';
-- end --

-- begin--worktable_edi_order_data_history--
if exists (select 1   
            from  sysobjects   
           where  id = object_id('worktable_ediorderdatahistory')   
            and   type = 'U')   
   drop table worktable_edi_order_data_history   
go
create table worktable_edi_order_data_history (
	edi_order_data_history_id bigint not null IDENTITY(1,1)  ,
	po   varchar(30) ,
	mtfc_number   varchar(30) ,
	order_data   varchar(8000) ,
	order_actual_type   varchar(30) ,
	utc_create  datetime  ,
	status   varchar(1) ,
	create_by   bigint ,
	note   varchar(1024) ,
	primary key (edi_order_data_history_id) 
);

-- Add comments to the columns
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'记录id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediorderdatahistory', @level2type=N'COLUMN',@level2name=N'edi_order_data_history_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'po' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediorderdatahistory', @level2type=N'COLUMN',@level2name=N'po';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mtfc_number' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediorderdatahistory', @level2type=N'COLUMN',@level2name=N'mtfc_number';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Order_data' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediorderdatahistory', @level2type=N'COLUMN',@level2name=N'order_data';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Order_actual_type' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediorderdatahistory', @level2type=N'COLUMN',@level2name=N'order_actual_type';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediorderdatahistory', @level2type=N'COLUMN',@level2name=N'utc_create';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediorderdatahistory', @level2type=N'COLUMN',@level2name=N'status';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediorderdatahistory', @level2type=N'COLUMN',@level2name=N'create_by';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediorderdatahistory', @level2type=N'COLUMN',@level2name=N'note';
-- end --

-- begin--cpo_bno_factory_history--
if exists (select 1   
            from  sysobjects   
           where  id = object_id('cpo_bnofactoryhistory')   
            and   type = 'U')   
   drop table cpo_bno_factory_history   
go
create table cpo_bno_factory_history (
	b_no_factory_history_id bigint not null IDENTITY(1,1)  ,
	b_no   varchar(50) ,
	factory   varchar(30) ,
	times   int ,
	primary key (b_no_factory_history_id) 
);

-- Add comments to the columns
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'记录id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_bnofactoryhistory', @level2type=N'COLUMN',@level2name=N'b_no_factory_history_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'b_no' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_bnofactoryhistory', @level2type=N'COLUMN',@level2name=N'b_no';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Factory' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_bnofactoryhistory', @level2type=N'COLUMN',@level2name=N'factory';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'times' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_bnofactoryhistory', @level2type=N'COLUMN',@level2name=N'times';
-- end --

-- begin--cpo_mi_b_number--
if exists (select 1   
            from  sysobjects   
           where  id = object_id('cpo_mibnumber')   
            and   type = 'U')   
   drop table cpo_mi_b_number   
go
create table cpo_mi_b_number (
	mi_b_number_id bigint not null IDENTITY(1,1)  ,
	stripes   varchar(50) ,
	logo   varchar(50) ,
	sublimation_printing   varchar(50) ,
	n_and_n   varchar(50) ,
	hem_insert   varchar(100) ,
	working_no   varchar(50) ,
	article_no   varchar(30) ,
	b_number   varchar(50) ,
	size_type   varchar(20) ,
	size_group   varchar(50) ,
	primary key (mi_b_number_id) 
);

-- Add comments to the columns
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'记录id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_mibnumber', @level2type=N'COLUMN',@level2name=N'mi_b_number_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'stripes' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_mibnumber', @level2type=N'COLUMN',@level2name=N'stripes';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'logo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_mibnumber', @level2type=N'COLUMN',@level2name=N'logo';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'sublimation printing' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_mibnumber', @level2type=N'COLUMN',@level2name=N'sublimation_printing';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'n and n' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_mibnumber', @level2type=N'COLUMN',@level2name=N'n_and_n';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'hem insert' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_mibnumber', @level2type=N'COLUMN',@level2name=N'hem_insert';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'working no' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_mibnumber', @level2type=N'COLUMN',@level2name=N'working_no';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'article no' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_mibnumber', @level2type=N'COLUMN',@level2name=N'article_no';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'b number' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_mibnumber', @level2type=N'COLUMN',@level2name=N'b_number';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'size_type' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_mibnumber', @level2type=N'COLUMN',@level2name=N'size_type';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'size_group' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_mibnumber', @level2type=N'COLUMN',@level2name=N'size_group';
-- end --

-- begin--worktable_edi_order_change--
if exists (select 1   
            from  sysobjects   
           where  id = object_id('worktable_ediorderchange')   
            and   type = 'U')   
   drop table worktable_edi_order_change   
go
create table worktable_edi_order_change (
	order_change_id bigint not null IDENTITY(1,1)  ,
	change_value   varchar(256) ,
	change_type   varchar(50) ,
	change_remark   varchar(256) ,
	status   varchar(5) ,
	utc_create  datetime  ,
	utc_update  datetime  ,
	update_by   bigint ,
	update_by_name   varchar(128) ,
	create_by_name   varchar(128) ,
	note   varchar(1024) ,
	original_po   varchar(30) ,
	order_actual_type   varchar(30) ,
	flag_fr   varchar(1) ,
	flag_ax   varchar(1) ,
	transit_fr_remark   varchar(128) ,
	transit_ax_remark   varchar(128) ,
	primary key (order_change_id) 
);

-- Add comments to the columns
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'记录id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediorderchange', @level2type=N'COLUMN',@level2name=N'order_change_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'change_value' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediorderchange', @level2type=N'COLUMN',@level2name=N'change_value';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'change_type' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediorderchange', @level2type=N'COLUMN',@level2name=N'change_type';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'change_remark' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediorderchange', @level2type=N'COLUMN',@level2name=N'change_remark';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'status' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediorderchange', @level2type=N'COLUMN',@level2name=N'status';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'utc_create' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediorderchange', @level2type=N'COLUMN',@level2name=N'utc_create';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'utc_update' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediorderchange', @level2type=N'COLUMN',@level2name=N'utc_update';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'update_by' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediorderchange', @level2type=N'COLUMN',@level2name=N'update_by';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'update_by_name' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediorderchange', @level2type=N'COLUMN',@level2name=N'update_by_name';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'create_by_name' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediorderchange', @level2type=N'COLUMN',@level2name=N'create_by_name';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'note' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediorderchange', @level2type=N'COLUMN',@level2name=N'note';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'original_po' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediorderchange', @level2type=N'COLUMN',@level2name=N'original_po';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'order_actual_type' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediorderchange', @level2type=N'COLUMN',@level2name=N'order_actual_type';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Flag_fr' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediorderchange', @level2type=N'COLUMN',@level2name=N'flag_fr';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Flag_Ax' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediorderchange', @level2type=N'COLUMN',@level2name=N'flag_ax';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'transit_fr_remark' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediorderchange', @level2type=N'COLUMN',@level2name=N'transit_fr_remark';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'transit_ax_remark' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediorderchange', @level2type=N'COLUMN',@level2name=N'transit_ax_remark';
-- end --

-- begin--worktable_edi_order_approval--
if exists (select 1   
            from  sysobjects   
           where  id = object_id('worktable_ediorderapproval')   
            and   type = 'U')   
   drop table worktable_edi_order_approval   
go
create table worktable_edi_order_approval (
	edi_order_approval_id bigint not null IDENTITY(1,1)  ,
	assign_result_id   bigint ,
	order_master_id   bigint ,
	original_po   varchar(30) ,
	status   varchar(5) ,
	create_by   varchar(128) ,
	utc_create  datetime  ,
	update_by   varchar(128) ,
	utc_update  datetime  ,
	from_factory   varchar(30) ,
	to_factory   varchar(30) ,
	note   varchar(1024) ,
	flag_fr   varchar(1) ,
	flag_ax   varchar(1) ,
	transit_fr_remark   varchar(128) ,
	transit_ax_remark   varchar(128) ,
	primary key (edi_order_approval_id) 
);

-- Add comments to the columns
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'记录id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediorderapproval', @level2type=N'COLUMN',@level2name=N'edi_order_approval_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'assign_result_id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediorderapproval', @level2type=N'COLUMN',@level2name=N'assign_result_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'order_master_id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediorderapproval', @level2type=N'COLUMN',@level2name=N'order_master_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'original_po' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediorderapproval', @level2type=N'COLUMN',@level2name=N'original_po';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'status' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediorderapproval', @level2type=N'COLUMN',@level2name=N'status';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'create_by' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediorderapproval', @level2type=N'COLUMN',@level2name=N'create_by';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'utc_create' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediorderapproval', @level2type=N'COLUMN',@level2name=N'utc_create';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'update_by' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediorderapproval', @level2type=N'COLUMN',@level2name=N'update_by';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'utc_update' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediorderapproval', @level2type=N'COLUMN',@level2name=N'utc_update';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'from_factory' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediorderapproval', @level2type=N'COLUMN',@level2name=N'from_factory';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'to_factory' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediorderapproval', @level2type=N'COLUMN',@level2name=N'to_factory';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'note' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediorderapproval', @level2type=N'COLUMN',@level2name=N'note';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Flag_fr' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediorderapproval', @level2type=N'COLUMN',@level2name=N'flag_fr';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Flag_Ax' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediorderapproval', @level2type=N'COLUMN',@level2name=N'flag_ax';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'transit_fr_remark' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediorderapproval', @level2type=N'COLUMN',@level2name=N'transit_fr_remark';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'transit_ax_remark' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediorderapproval', @level2type=N'COLUMN',@level2name=N'transit_ax_remark';
-- end --

-- begin--worktable_edi_order_cancel--
if exists (select 1   
            from  sysobjects   
           where  id = object_id('worktable_ediordercancel')   
            and   type = 'U')   
   drop table worktable_edi_order_cancel   
go
create table worktable_edi_order_cancel (
	edi_order_cancel_id bigint not null IDENTITY(1,1)  ,
	code   varchar(100) ,
	assign_result_id   bigint ,
	to_be_status   varchar(5) ,
	status   varchar(5) ,
	utc_create  datetime  ,
	utc_update  datetime  ,
	note   varchar(1024) ,
	primary key (edi_order_cancel_id) 
);

-- Add comments to the columns
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'记录id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordercancel', @level2type=N'COLUMN',@level2name=N'edi_order_cancel_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'code' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordercancel', @level2type=N'COLUMN',@level2name=N'code';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'assign_result_id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordercancel', @level2type=N'COLUMN',@level2name=N'assign_result_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'to_be_status' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordercancel', @level2type=N'COLUMN',@level2name=N'to_be_status';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'status' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordercancel', @level2type=N'COLUMN',@level2name=N'status';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'utc_create' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordercancel', @level2type=N'COLUMN',@level2name=N'utc_create';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'utc_update' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordercancel', @level2type=N'COLUMN',@level2name=N'utc_update';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'note' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'worktable_ediordercancel', @level2type=N'COLUMN',@level2name=N'note';
-- end --

-- begin--cpo_fr_order_schedule--
if exists (select 1   
            from  sysobjects   
           where  id = object_id('cpo_frorderschedule')   
            and   type = 'U')   
   drop table cpo_fr_order_schedule   
go
create table cpo_fr_order_schedule (
	fr_order_schedule_id bigint not null IDENTITY(1,1)  ,
	code   varchar(100) ,
	assign_result_id   bigint ,
	to_be_status   varchar(5) ,
	status   varchar(5) ,
	utc_create  datetime  ,
	utc_update  datetime  ,
	note   varchar(1024) ,
	type   varchar(50) ,
	retry_times   int ,
	primary key (fr_order_schedule_id) 
);

-- Add comments to the columns
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'记录id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frorderschedule', @level2type=N'COLUMN',@level2name=N'fr_order_schedule_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'code' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frorderschedule', @level2type=N'COLUMN',@level2name=N'code';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'assign_result_id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frorderschedule', @level2type=N'COLUMN',@level2name=N'assign_result_id';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'to_be_status' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frorderschedule', @level2type=N'COLUMN',@level2name=N'to_be_status';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'status' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frorderschedule', @level2type=N'COLUMN',@level2name=N'status';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'utc_create' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frorderschedule', @level2type=N'COLUMN',@level2name=N'utc_create';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'utc_update' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frorderschedule', @level2type=N'COLUMN',@level2name=N'utc_update';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'note' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frorderschedule', @level2type=N'COLUMN',@level2name=N'note';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'type' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frorderschedule', @level2type=N'COLUMN',@level2name=N'type';
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'retry times' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cpo_frorderschedule', @level2type=N'COLUMN',@level2name=N'retry_times';
-- end --

