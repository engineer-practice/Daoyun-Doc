/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2021/6/29 ĞÇÆÚ¶ş 13:43:20                       */
/*==============================================================*/


drop table if exists attendance;

drop table if exists attendence_result;

drop table if exists course;

drop table if exists course_manger;

drop table if exists course_student;

drop table if exists dictionary;

drop table if exists dictionary_detial;

drop table if exists menu;

drop table if exists power;

drop table if exists role;

drop table if exists role_power;

drop table if exists school;

drop table if exists system_manage;

drop table if exists user;

drop table if exists user_role;

/*==============================================================*/
/* Table: attendance                                            */
/*==============================================================*/
create table attendance
(
   id                   bigint not null,
   course_id            bigint,
   start_time           datetime,
   end_time             datetime,
   count                bigint,
   is_end               bigint,
   longitude            float,
   latitude             float,
   attendance_type      bigint,
   creater              varchar,
   create_time          datetime,
   mender               varchar,
   mender_time          datetime,
   primary key (id)
);

/*==============================================================*/
/* Table: attendence_result                                     */
/*==============================================================*/
create table attendence_result
(
   id                   bigint not null,
   student_id           bigint,
   attend_time          date,
   is_delete            bigint,
   course_id            bigint,
   longitude            float,
   latitude             float,
   distance             float,
   creater              varchar,
   create_time          datetime,
   mender               varchar,
   mender_time          datetime,
   primary key (id)
);

/*==============================================================*/
/* Table: course                                                */
/*==============================================================*/
create table course
(
   id                   bigint not null,
   name                 varchar,
   code                 varchar,
   teacher_id           bigint,
   class_name           varchar,
   semester             bigint,
   image                varchar,
   learn_require        varchar,
   teach_progress       varchar,
   exam_schedule        varchar,
   school_id            bigint,
   flag                 bigint,
   is_join              bigint,
   is_end               bigint,
   is_delete            bigint,
   creater              varchar,
   create_time          datetime,
   mender               varchar,
   mender_time          datetime,
   primary key (id)
);

/*==============================================================*/
/* Table: course_manger                                         */
/*==============================================================*/
create table course_manger
(
   id                   bigint not null,
   name                 varchar,
   type                 bigint,
   description          varchar,
   created_name         varchar,
   created_time         datetime,
   is_deleted           bigint,
   creater              varchar,
   create_time          datetime,
   mender               varchar,
   mender_time          datetime,
   primary key (id)
);

/*==============================================================*/
/* Table: course_student                                        */
/*==============================================================*/
create table course_student
(
   id                   bigint not null,
   course_id            bigint,
   student_id           bigint,
   exp                  bigint,
   is_delete            bigint,
   creater              varchar,
   creat_time           datetime,
   mender               varchar,
   mender_time          datetime,
   primary key (id)
);

/*==============================================================*/
/* Table: dictionary                                            */
/*==============================================================*/
create table dictionary
(
   id                   bigint not null,
   code                 varchar,
   name                 varchar,
   is_delete            bigint,
   description          varchar,
   primary key (id)
);

/*==============================================================*/
/* Table: dictionary_detial                                     */
/*==============================================================*/
create table dictionary_detial
(
   id                   bigint not null,
   type_code            varchar,
   name                 varchar,
   value                bigint,
   is_default           bigint,
   dict_order           bigint,
   is_delete            bigint,
   primary key (id)
);

/*==============================================================*/
/* Table: menu                                                  */
/*==============================================================*/
create table menu
(
   id                   bigint not null,
   parent_id            bigint,
   name                 varchar,
   menu_order           bigint,
   icon                 varchar,
   url                  varchar,
   type                 bigint,
   is_menu              bigint,
   is_visible           bigint,
   is_page              bigint,
   is_deleted           bigint,
   menu_level           bigint,
   creater              varchar,
   create_time          datetime,
   mender               varchar,
   mender_time          datetime,
   primary key (id)
);

/*==============================================================*/
/* Table: power                                                 */
/*==============================================================*/
create table power
(
   id                   bigint not null,
   name                 varchar,
   parent_id            bigint,
   id_delete            bigint,
   creater              varchar,
   create_time          datetime,
   mender               varchar,
   mender_time          datetime,
   primary key (id)
);

/*==============================================================*/
/* Table: role                                                  */
/*==============================================================*/
create table role
(
   id                   bigint not null,
   name                 varchar,
   id_student           bigint,
   description          varchar,
   power_id             bigint,
   state                bigint,
   is_delete            bigint,
   creater              varchar,
   create_time          datetime,
   mender               varchar,
   mender_time          datetime,
   primary key (id)
);

/*==============================================================*/
/* Table: role_power                                            */
/*==============================================================*/
create table role_power
(
   id                   bigint not null,
   role_id              bigint,
   power_id             bigint,
   id_delete            bigint,
   creater              varchar,
   create_time          datetime,
   mender               varchar,
   mender_time          datetime,
   primary key (id)
);

/*==============================================================*/
/* Table: school                                                */
/*==============================================================*/
create table school
(
   id                   bigint not null,
   name                 varchar,
   parent_id            bigint,
   is_delete            bigint,
   school_code          varchar,
   creater              varchar,
   create_time          datetime,
   mender               varchar,
   mender_time          datetime,
   primary key (id)
);

/*==============================================================*/
/* Table: system_manage                                         */
/*==============================================================*/
create table system_manage
(
   id                   bigint not null,
   description          varchar,
   name                 varchar,
   value                bigint,
   is_delete            bigint,
   creater              varchar,
   create_time          datetime,
   mender               varchar,
   mender_time          datetime,
   primary key (id)
);

/*==============================================================*/
/* Table: user                                                  */
/*==============================================================*/
create table user
(
   id                   bigint unsigned not null,
   nickname             varchar,
   sno                  varchar,
   sex                  bigint,
   telphone             varchar,
   email                varchar,
   password             varchar,
   birth                datetime,
   role_id              bigint,
   exp                  bigint,
   state                bigint,
   school_id            varchar,
   power_id             bigint,
   education            bigint,
   is_delete            bigint,
   creater              varchar,
   create_time          datetime,
   mender               varchar,
   mender_time          datetime,
   name                 varchar,
   image                varchar,
   primary key (id)
);

/*==============================================================*/
/* Table: user_role                                             */
/*==============================================================*/
create table user_role
(
   id                   bigint not null,
   role_id              bigint,
   user_id              bigint,
   is_delete            bigint,
   creater              varchar,
   create_time          datetime,
   mender               varchar,
   mender_time          datetime,
   primary key (id)
);

alter table attendance add constraint FK_Reference_6 foreign key (course_id)
      references course (id) on delete restrict on update restrict;

alter table attendence_result add constraint FK_Reference_15 foreign key (student_id)
      references user (id) on delete restrict on update restrict;

alter table attendence_result add constraint FK_Reference_7 foreign key (course_id)
      references course (id) on delete restrict on update restrict;

alter table course add constraint FK_Reference_13 foreign key (school_id)
      references school (id) on delete restrict on update restrict;

alter table course add constraint FK_Reference_17 foreign key (teacher_id)
      references user (id) on delete restrict on update restrict;

alter table course_student add constraint FK_Reference_9 foreign key (course_id)
      references course (id) on delete restrict on update restrict;

alter table dictionary_detial add constraint FK_Reference_14 foreign key (type_code)
      references dictionary (id) on delete restrict on update restrict;

alter table menu add constraint FK_Reference_12 foreign key (parent_id)
      references menu (id) on delete restrict on update restrict;

alter table role_power add constraint FK_Reference_3 foreign key (role_id)
      references role (id) on delete restrict on update restrict;

alter table role_power add constraint FK_Reference_4 foreign key (power_id)
      references power (id) on delete restrict on update restrict;

alter table school add constraint FK_Reference_11 foreign key (parent_id)
      references school (id) on delete restrict on update restrict;

alter table user add constraint FK_Reference_16 foreign key (school_id)
      references school (id) on delete restrict on update restrict;

alter table user_role add constraint FK_Reference_1 foreign key (user_id)
      references user (id) on delete restrict on update restrict;

alter table user_role add constraint FK_Reference_2 foreign key (role_id)
      references role (id) on delete restrict on update restrict;

