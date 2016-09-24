insert into departmentsystem(dept_name,system_name,create_time) values('浦东新区环保市容局', '浦东新区环保市容局行政处罚系统', (select now()));
insert into departmentsystem(dept_name,system_name,create_time) values('浦东新区环保市容局', '浦东新区环保市容局许可系统', (select now()));
insert into departmentsystem(dept_name,system_name,create_time) values('公用事业管理处', '浦东新区环保局道监管理信息系统', (select now()));
insert into departmentsystem(dept_name,system_name,create_time) values('公用事业管理署', '上海市浦东新区公用事业管理信息系统', (select now()));
insert into departmentsystem(dept_name,system_name,create_time) values('绿化林业处', '浦东新区绿化养护管理信息系统', (select now()));
insert into departmentsystem(dept_name,system_name,create_time) values('水文水资源管理署', '浦东水文署信息化框架支撑平台', (select now()));
insert into departmentsystem(dept_name,system_name,create_time) values('环境监测站', '浦东新区环境监测站广域污染源在线监测系统', (select now()));
insert into departmentsystem(dept_name,system_name,create_time) values('环境监测站', '上海浦东新区环境质量监测监控系统', (select now()));
insert into departmentsystem(dept_name,system_name,create_time) values('环境监测站', '浦东新区环境监测站远大空气质量平台', (select now()));
insert into departmentsystem(dept_name,system_name,create_time) values('环境景观署', '浦东新区景观灯光无线联网及视频监控系统', (select now()));
insert into departmentsystem(dept_name,system_name,create_time) values('废弃物管理中心', '浦东废管中心信息化平台', (select now()));
insert into departmentsystem(dept_name,system_name,create_time) values('河道事务管理中心', '浦东新区河道信息整合与业务监管系统', (select now()));
insert into departmentsystem(dept_name,system_name,create_time) values('防汛指挥中心', '浦东海塘管理系统', (select now()));
insert into departmentsystem(dept_name,system_name,create_time) values('防汛指挥中心', '浦东防汛应急指挥系统', (select now()));
insert into departmentsystem(dept_name,system_name,create_time) values('水闸管理署', '浦东新区水闸管理署监控中心软件系统', (select now()));
insert into departmentsystem(dept_name,system_name,create_time) values('排水管理所', '浦东排水所泵站信息化系统', (select now()));
insert into departmentsystem(dept_name,system_name,create_time) values('网格管理中心', '浦东新区城市网格化综合管理信息系统', (select now()));
insert into departmentsystem(dept_name,system_name,create_time) values('公路管理署', '浦东公路管养平台', (select now()));
insert into departmentsystem(dept_name,system_name,create_time) values('公路管理署', '乡村公路养护系统', (select now()));
insert into departmentsystem(dept_name,system_name,create_time) values('公路管理署', '浦东公路管理署公路养护系统', (select now()));




/*插入接口信息*/
INSERT INTO `springmvc`.`webserviceport` (`ws_port`, `ws_desc`, `ws_name`, `deptsys_id`, `pub_date`, `available`) VALUES ('7433', '水闸实时监测表', 'T_LASTEDUPDATA',15,(select now()),1);
INSERT INTO `springmvc`.`webserviceport` (`ws_port`, `ws_desc`, `ws_name`, `deptsys_id`, `available`) VALUES ('1915', '水闸实时监测历史表', 'T_UPDATA',15,(select now()),1);
INSERT INTO `springmvc`.`webserviceport` (`ws_port`, `ws_desc`, `ws_name`, `deptsys_id`, `available`) VALUES ('1073', '水闸基本信息', 'T_SZJBXX',15,(select now()),1);
INSERT INTO `springmvc`.`webserviceport` (`ws_port`, `ws_desc`, `ws_name`, `deptsys_id`, `available`) VALUES ('9968', '测站基本信息表', 'PD_CZJBXX_B',6,(select now()),1);
INSERT INTO `springmvc`.`webserviceport` (`ws_port`, `ws_desc`, `ws_name`, `deptsys_id`, `available`) VALUES ('2176', '实时监测信息表', 'PD_SSJCXX_R',6,(select now()),1);
INSERT INTO `springmvc`.`webserviceport` (`ws_port`, `ws_desc`, `ws_name`, `deptsys_id`, `available`) VALUES ('6620', '河道基础信息', 'MR_River',12,(select now()),1);
INSERT INTO `springmvc`.`webserviceport` (`ws_port`, `ws_desc`, `ws_name`, `deptsys_id`, `available`) VALUES ('8773', '堤防岸段信息', 'MR_ProtectiveDike',12,(select now()),1);
INSERT INTO `springmvc`.`webserviceport` (`ws_port`, `ws_desc`, `ws_name`, `deptsys_id`, `available`) VALUES ('7108', '防汛通道信息', 'MR_FPPath',12,(select now()),1);
INSERT INTO `springmvc`.`webserviceport` (`ws_port`, `ws_desc`, `ws_name`, `deptsys_id`, `available`) VALUES ('9998', '标牌信息', 'MR_Signboard',12,(select now()),1);
INSERT INTO `springmvc`.`webserviceport` (`ws_port`, `ws_desc`, `ws_name`, `deptsys_id`, `available`) VALUES ('6687', '绿化信息', 'MR_GreenSpace',12,(select now()),1);
INSERT INTO `springmvc`.`webserviceport` (`ws_port`, `ws_desc`, `ws_name`, `deptsys_id`, `available`) VALUES ('6448', '栏杆信息', 'MR_Railing',12,(select now()),1);
INSERT INTO `springmvc`.`webserviceport` (`ws_port`, `ws_desc`, `ws_name`, `deptsys_id`, `available`) VALUES ('8997', '河道保洁', 'MR_RiverCleaning',12,(select now()),1);
INSERT INTO `springmvc`.`webserviceport` (`ws_port`, `ws_desc`, `ws_name`, `deptsys_id`, `available`) VALUES ('5032', '河道信访处理情况表', 'Report_PetitionProcess',12,(select now()),1);
INSERT INTO `springmvc`.`webserviceport` (`ws_port`, `ws_desc`, `ws_name`, `deptsys_id`, `available`) VALUES ('6164', '河道施工方案审批情况表', 'Report_PlanApproval',12,(select now()),1);
INSERT INTO `springmvc`.`webserviceport` (`ws_port`, `ws_desc`, `ws_name`, `deptsys_id`, `available`) VALUES ('7582', '河道违章情况表', 'Report_PeccancyInfo',12,(select now()),1);
INSERT INTO `springmvc`.`webserviceport` (`ws_port`, `ws_desc`, `ws_name`, `deptsys_id`, `available`) VALUES ('5228', '防汛仓库', 'FX_Warehouse',14,(select now()),1);
INSERT INTO `springmvc`.`webserviceport` (`ws_port`, `ws_desc`, `ws_name`, `deptsys_id`, `available`) VALUES ('7598', '防汛物资信息', 'FX_MaterialManage',14,(select now()),1);
INSERT INTO `springmvc`.`webserviceport` (`ws_port`, `ws_desc`, `ws_name`, `deptsys_id`, `available`) VALUES ('6126', '防汛队伍结集点', 'FX_AssmblyPoint',14,(select now()),1);
INSERT INTO `springmvc`.`webserviceport` (`ws_port`, `ws_desc`, `ws_name`, `deptsys_id`, `available`) VALUES ('9336', '防汛队伍信息', 'FX_RescueTeam',14,(select now()),1);
INSERT INTO `springmvc`.`webserviceport` (`ws_port`, `ws_desc`, `ws_name`, `deptsys_id`, `available`) VALUES ('4946', '项目信息表', 'V_SA_Plan_Project',3,(select now()),1);
INSERT INTO `springmvc`.`webserviceport` (`ws_port`, `ws_desc`, `ws_name`, `deptsys_id`, `available`) VALUES ('2131', '工程信息表', 'V_SA_Plan_Projectinfo',3,(select now()),1);
INSERT INTO `springmvc`.`webserviceport` (`ws_port`, `ws_desc`, `ws_name`, `deptsys_id`, `available`) VALUES ('3815', '行政处罚表', 'V_SA_Plan_Punish',3,(select now()),1);
INSERT INTO `springmvc`.`webserviceport` (`ws_port`, `ws_desc`, `ws_name`, `deptsys_id`, `available`) VALUES ('8187', '一线海塘', 'DEV_Seawall',13,(select now()),1);
INSERT INTO `springmvc`.`webserviceport` (`ws_port`, `ws_desc`, `ws_name`, `deptsys_id`, `available`) VALUES ('9149', '主要备塘', 'DEV_MainStandbySeawall',13,(select now()),1);
INSERT INTO `springmvc`.`webserviceport` (`ws_port`, `ws_desc`, `ws_name`, `deptsys_id`, `available`) VALUES ('6317', '次要备塘', 'DEV_MinorStandbySeawall',13,(select now()),1);
INSERT INTO `springmvc`.`webserviceport` (`ws_port`, `ws_desc`, `ws_name`, `deptsys_id`, `available`) VALUES ('5208', '撑塘', 'DEV_SupportSeawall',13,(select now()),1);
INSERT INTO `springmvc`.`webserviceport` (`ws_port`, `ws_desc`, `ws_name`, `deptsys_id`, `available`) VALUES ('3772', '海塘里程桩', 'DEV_SeawallMiles',13,(select now()),1);
INSERT INTO `springmvc`.`webserviceport` (`ws_port`, `ws_desc`, `ws_name`, `deptsys_id`, `available`) VALUES ('9079', '丁坝', 'DEV_VDike',13,(select now()),1);
INSERT INTO `springmvc`.`webserviceport` (`ws_port`, `ws_desc`, `ws_name`, `deptsys_id`, `available`) VALUES ('8218', '顺坝', 'DEV_TDike',13,(select now()),1);
INSERT INTO `springmvc`.`webserviceport` (`ws_port`, `ws_desc`, `ws_name`, `deptsys_id`, `available`) VALUES ('7835', '穿堤建筑物', 'DEV_Struc',13,(select now()),1);
INSERT INTO `springmvc`.`webserviceport` (`ws_port`, `ws_desc`, `ws_name`, `deptsys_id`, `available`) VALUES ('8601', '海塘专用岸线', 'DEV_SpecialSeawall',13,(select now()),1);
INSERT INTO `springmvc`.`webserviceport` (`ws_port`, `ws_desc`, `ws_name`, `deptsys_id`, `available`) VALUES ('7428', '断面表', 'SM_SectionInfo',13,(select now()),1);
INSERT INTO `springmvc`.`webserviceport` (`ws_port`, `ws_desc`, `ws_name`, `deptsys_id`, `available`) VALUES ('4828', '断面监测数据管理表', 'SM_SectionMonitorInfo',13,(select now()),1);
INSERT INTO `springmvc`.`webserviceport` (`ws_port`, `ws_desc`, `ws_name`, `deptsys_id`, `available`) VALUES ('7695', '位移区段管理表', 'SM_ShiftingInfo',13,(select now()),1);
INSERT INTO `springmvc`.`webserviceport` (`ws_port`, `ws_desc`, `ws_name`, `deptsys_id`, `available`) VALUES ('6207', '位移监测数据管理表', 'SM_ShiftingMonitorInfo',13,(select now()),1);
INSERT INTO `springmvc`.`webserviceport` (`ws_port`, `ws_desc`, `ws_name`, `deptsys_id`, `available`) VALUES ('5078', '沉降监测段表', 'SM_SedimentationSectionInfo',13,(select now()),1);
INSERT INTO `springmvc`.`webserviceport` (`ws_port`, `ws_desc`, `ws_name`, `deptsys_id`, `available`) VALUES ('9449', '沉降监测数据管理表', 'SM_SedimentationMonitorInfo',13,(select now()),1);
INSERT INTO `springmvc`.`webserviceport` (`ws_port`, `ws_desc`, `ws_name`, `deptsys_id`, `available`) VALUES ('9830', '断面沉降监测点表', 'SM_BeachLandSectionInfo',13,(select now()),1);
INSERT INTO `springmvc`.`webserviceport` (`ws_port`, `ws_desc`, `ws_name`, `deptsys_id`, `available`) VALUES ('4131', '断面沉降监测数据管理表', 'SM_BeachLandMonitorInfo',13,(select now()),1);
INSERT INTO `springmvc`.`webserviceport` (`ws_port`, `ws_desc`, `ws_name`, `deptsys_id`, `available`) VALUES ('2686', '案件信息表', 'ZF_LAWCASEINFO_SHARED',1,(select now()),1);
INSERT INTO `springmvc`.`webserviceport` (`ws_port`, `ws_desc`, `ws_name`, `deptsys_id`, `available`) VALUES ('1194', '绿地地块', 'T_GREENAREA',5,(select now()),1);
INSERT INTO `springmvc`.`webserviceport` (`ws_port`, `ws_desc`, `ws_name`, `deptsys_id`, `available`) VALUES ('7698', '养护合同', 'T_CONTRACT',5,(select now()),1);
INSERT INTO `springmvc`.`webserviceport` (`ws_port`, `ws_desc`, `ws_name`, `deptsys_id`, `available`) VALUES ('5843', '养护企业', 'T_ENT',5,(select now()),1);
INSERT INTO `springmvc`.`webserviceport` (`ws_port`, `ws_desc`, `ws_name`, `deptsys_id`, `available`) VALUES ('7925', '养护标段', 'T_BIDSECT',5,(select now()),1);
INSERT INTO `springmvc`.`webserviceport` (`ws_port`, `ws_desc`, `ws_name`, `deptsys_id`, `available`) VALUES ('9334', '行道树', 'T_TREEROADSECT',5,(select now()),1);
INSERT INTO `springmvc`.`webserviceport` (`ws_port`, `ws_desc`, `ws_name`, `deptsys_id`, `available`) VALUES ('2098', '废水月报表数据', 'DB_DataService_WaterPollution_PeriodReport',7,(select now()),1);
INSERT INTO `springmvc`.`webserviceport` (`ws_port`, `ws_desc`, `ws_name`, `deptsys_id`, `available`) VALUES ('1647', '生活垃圾称重数据', 'Ex_EWInfo',11,(select now()),1);
INSERT INTO `springmvc`.`webserviceport` (`ws_port`, `ws_desc`, `ws_name`, `deptsys_id`, `available`) VALUES ('9760', '定位车辆基本信息', 'Ex_VehicleInfo',11,(select now()),1);
INSERT INTO `springmvc`.`webserviceport` (`ws_port`, `ws_desc`, `ws_name`, `deptsys_id`, `available`) VALUES ('8594', '中转站信息', 'Ex_Transit',11,(select now()),1);
INSERT INTO `springmvc`.`webserviceport` (`ws_port`, `ws_desc`, `ws_name`, `deptsys_id`, `available`) VALUES ('2554', '处置场所信息', 'Ex_Disposal',11,(select now()),1);
INSERT INTO `springmvc`.`webserviceport` (`ws_port`, `ws_desc`, `ws_name`, `deptsys_id`, `available`) VALUES ('9936', '基础信息', '基础信息',16,(select now()),1);
INSERT INTO `springmvc`.`webserviceport` (`ws_port`, `ws_desc`, `ws_name`, `deptsys_id`, `available`) VALUES ('2465', '数据说明', '数据说明',16,(select now()),1);
INSERT INTO `springmvc`.`webserviceport` (`ws_port`, `ws_desc`, `ws_name`, `deptsys_id`, `available`) VALUES ('', '综合数据表', 'tbl_RealData',16,(select now()),1);
INSERT INTO `springmvc`.`webserviceport` (`ws_port`, `ws_desc`, `ws_name`, `deptsys_id`, `available`) VALUES ('4990', '给水相关企业信息', 'GS_Company',4,(select now()),1);
INSERT INTO `springmvc`.`webserviceport` (`ws_port`, `ws_desc`, `ws_name`, `deptsys_id`, `available`) VALUES ('5683', '水质监测样点信息', 'GS_SamplingDot',4,(select now()),1);
INSERT INTO `springmvc`.`webserviceport` (`ws_port`, `ws_desc`, `ws_name`, `deptsys_id`, `available`) VALUES ('6856', '水质监测（常规7项）', 'GS_SamplingItem7',4,(select now()),1);
INSERT INTO `springmvc`.`webserviceport` (`ws_port`, `ws_desc`, `ws_name`, `deptsys_id`, `available`) VALUES ('5430', '水质监测（常规42项）', 'GS_SamplingItem42',4,(select now()),1);
INSERT INTO `springmvc`.`webserviceport` (`ws_port`, `ws_desc`, `ws_name`, `deptsys_id`, `available`) VALUES ('1303', '水质监测（常规64项）', 'GS_SamplingItem64',4,(select now()),1);
INSERT INTO `springmvc`.`webserviceport` (`ws_port`, `ws_desc`, `ws_name`, `deptsys_id`, `available`) VALUES ('1585', '燃气相关企业信息', 'TB_QY_INFO',4,(select now()),1);
INSERT INTO `springmvc`.`webserviceport` (`ws_port`, `ws_desc`, `ws_name`, `deptsys_id`, `available`) VALUES ('8862', '液化气站点信息', 'TB_YHQ_ZD',4,(select now()),1);
INSERT INTO `springmvc`.`webserviceport` (`ws_port`, `ws_desc`, `ws_name`, `deptsys_id`, `available`) VALUES ('1423', '基本信息表', 'CITYGRID_TASK_INFO',17,(select now()),1);
INSERT INTO `springmvc`.`webserviceport` (`ws_port`, `ws_desc`, `ws_name`, `deptsys_id`, `available`) VALUES ('1245', '环境质量监督', 'EMC_DATA_HJ',8,(select now()),1);
INSERT INTO `springmvc`.`webserviceport` (`ws_port`, `ws_desc`, `ws_name`, `deptsys_id`, `available`) VALUES ('1577', '污染源监测', 'EMC_DATA_JD',8,(select now()),1);
INSERT INTO `springmvc`.`webserviceport` (`ws_port`, `ws_desc`, `ws_name`, `deptsys_id`, `available`) VALUES ('4998', '委托性监测', 'EMC_DATA_WT',8,(select now()),1);
INSERT INTO `springmvc`.`webserviceport` (`ws_port`, `ws_desc`, `ws_name`, `deptsys_id`, `available`) VALUES ('2349', '灯光站点信息', 'TB_PDDG',10,(select now()),1);
INSERT INTO `springmvc`.`webserviceport` (`ws_port`, `ws_desc`, `ws_name`, `deptsys_id`, `available`) VALUES ('3236', '标段信息表', 'YHPROJECTDEPARTINFO',18,(select now()),1);
INSERT INTO `springmvc`.`webserviceport` (`ws_port`, `ws_desc`, `ws_name`, `deptsys_id`, `available`) VALUES ('9575', '道路养护信息详细表', 'YHROADDETAILINFO',18,(select now()),1);
INSERT INTO `springmvc`.`webserviceport` (`ws_port`, `ws_desc`, `ws_name`, `deptsys_id`, `available`) VALUES ('2334', '道路养护信息', 'YHROADGPSINFO',18,(select now()),1);
INSERT INTO `springmvc`.`webserviceport` (`ws_port`, `ws_desc`, `ws_name`, `deptsys_id`, `available`) VALUES ('5898', '农村桥梁信息', 'bms_bridge_all',19,(select now()),1);
INSERT INTO `springmvc`.`webserviceport` (`ws_port`, `ws_desc`, `ws_name`, `deptsys_id`, `available`) VALUES ('4804', '农村路线信息', 'LINEINFO',19,(select now()),1);
INSERT INTO `springmvc`.`webserviceport` (`ws_port`, `ws_desc`, `ws_name`, `deptsys_id`, `available`) VALUES ('2249', '经费完成明细表', 'CompleteDetail',20,(select now()),1);
INSERT INTO `springmvc`.`webserviceport` (`ws_port`, `ws_desc`, `ws_name`, `deptsys_id`, `available`) VALUES ('9481', '经费完成主表', 'CompleteTotal',20,(select now()),1);
INSERT INTO `springmvc`.`webserviceport` (`ws_port`, `ws_desc`, `ws_name`, `deptsys_id`, `available`) VALUES ('2185', '经费计划明细表', 'PlansDetail',20,(select now()),1);
INSERT INTO `springmvc`.`webserviceport` (`ws_port`, `ws_desc`, `ws_name`, `deptsys_id`, `available`) VALUES ('9437', '经费计划总表', 'PlansTotal',20,(select now()),1);
INSERT INTO `springmvc`.`webserviceport` (`ws_port`, `ws_desc`, `ws_name`, `deptsys_id`, `available`) VALUES ('8549', '定额表', 'Quota',20,(select now()),1);
INSERT INTO `springmvc`.`webserviceport` (`ws_port`, `ws_desc`, `ws_name`, `deptsys_id`, `available`) VALUES ('5836', '定额版本', 'QuotaVS',20,(select now()),1);
INSERT INTO `springmvc`.`webserviceport` (`ws_port`, `ws_desc`, `ws_name`, `deptsys_id`, `available`) VALUES ('5783', '道路标段', 'RoadTenders',20,(select now()),1);
INSERT INTO `springmvc`.`webserviceport` (`ws_port`, `ws_desc`, `ws_name`, `deptsys_id`, `available`) VALUES ('7252', '单位工程', 'UnitGC',20,(select now()),1);
INSERT INTO `springmvc`.`webserviceport` (`ws_port`, `ws_desc`, `ws_name`, `deptsys_id`, `available`) VALUES ('5162', '标段用户', 'UsersTenders',20,(select now()),1);