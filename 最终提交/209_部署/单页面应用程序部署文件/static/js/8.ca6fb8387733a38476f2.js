webpackJsonp([8],{"7lHw":function(e,t,n){var i=n("BE9I");"string"==typeof i&&(i=[[e.i,i,""]]),i.locals&&(e.exports=i.locals);n("rjj0")("2ab49c4c",i,!0)},BE9I:function(e,t,n){(e.exports=n("FZ+f")(!1)).push([e.i,"\n.el-table__header {\r\n  width: auto !important;\n}\n.el-table__body {\r\n  width: auto !important;\n}\r\n",""])},MtGR:function(e,t,n){(e.exports=n("FZ+f")(!1)).push([e.i,"\n.el-pagination[data-v-88299ec6] {\r\n  text-align: center !important;\r\n  margin: 20px 0 !important;\n}\n.app-container[data-v-88299ec6] {\r\n  background-color: #f0f2f5;\r\n  min-height: 100vh;\r\n  height: 100%;\n}\n.form-style[data-v-88299ec6] {\r\n  background: #fff;\r\n  padding: 20px;\n}\r\n",""])},c6bh:function(e,t,n){"use strict";Object.defineProperty(t,"__esModule",{value:!0});var i=n("mvHQ"),a=n.n(i),l={data:function(){return{list:[],tableList:[{label:"菜单名称",prop:"name"},{label:"图标",prop:"icon"},{label:"层级",prop:"menuOrder"},{label:"父菜单",prop:"parentId"},{label:"排序",prop:"menuOrder"},{label:"是否可见",prop:"isVisible"},{label:"是否是菜单",prop:"isMenu"},{label:"是否是页面",prop:"isPage"},{label:"请求地址",prop:"url"}],AllData:[],listLoading:!1,multipleSelection:[],dialogFormVisible:!1,parentList:[],menuForm:{parentId:"",name:"",icon:"",isPage:"",url:"",isVisible:"1",menuOrder:"",menuLevel:""},menus:{parentId:[{required:!0,message:"请选择上级菜单",trigger:"change"}],name:[{required:!0,message:"请输入",trigger:"blur"}],isPage:[{required:!0,message:"请选择",trigger:"blur"}],isMenu:[{required:!0,message:"请选择",trigger:"blur"}],menuOrder:[{required:!0,message:"请输入",trigger:"blur"}],menuLevel:[{required:!0,message:"请输入",trigger:"blur"}]},totalNum:0,title:"新增用户",pageSize:10,page:1,formInline:{menus:"",state:""}}},filters:{statusFilter:function(e){return{published:"success",draft:"gray",deleted:"danger"}[e]}},created:function(){this.showMenuData(this.page)},methods:{reset:function(){this.menuForm.parentId="",this.menuForm.name="",this.menuForm.icon="",this.menuForm.isPage="",this.menuForm.url="",this.menuForm.isVisible="1",this.menuForm.menuOrder="",this.menuForm.menuLevel=""},handleSelectionChange:function(e){this.multipleSelection=e},addData:function(){for(var e=0,t=JSON.parse(localStorage.getItem("authority")),n=0;n<t.length;n++)"9"==t[n]&&(e=1);e?this.$alert("你没有新增菜单权限",{confirmButtonText:"确定"}):(this.reset(),this.dialogFormVisible=!0,this.title="新增菜单")},searchData:function(){var e=this,t=0,n=JSON.parse(localStorage.getItem("authority"));if(n)for(var i=0;i<n.length;i++)"12"==n[i]&&(t=1);if(t){this.list=[],this.listLoading=!0,this.page=1;var a={page:this.page,name:this.formInline.menus,state:this.formInline.state};this.$http.get("/api/menus?page="+a.page+"&name="+a.name+"&is_visible="+a.state).then(function(t){if(e.listLoading=!1,e.totalNum=t.data.total,0!=e.totalNum){e.list=t.data.records;var n=t.data.records;e.list=function(e){e.forEach(function(e){delete e.children});var t={};e.forEach(function(e){t[e.id]=e});var n=[];return e.forEach(function(e){var i=t[e.parentId];i?(i.children||(i.children=[])).push(e):n.push(e)}),n}(n);for(var i=0;i<e.list.length;i++)if(0==e.list[i].parentId&&(e.list[i].parentId="无"),null!=e.list[i].children)for(var a=0;a<e.list[i].children.length;a++)e.list[i].children[a].parentId=e.list[i].name}})}else this.$alert("你没有查询菜单权限",{confirmButtonText:"确定"})},deleteUser:function(e){var t=this,n=0,i=JSON.parse(localStorage.getItem("authority"));if(i)for(var l=0;l<i.length;l++)"11"==i[l]&&(n=1);if(n)this.$alert("你没有删除菜单权限",{confirmButtonText:"确定"});else{var r=[];r.push(e.id),this.$confirm("确定要删除该菜单？","删除菜单",{confirmButtonText:"确定",cancelButtonText:"取消",type:"info"}).then(function(){t.$http.delete("/api/menus?ids="+r).then(function(e){"1"==e.data.respCode&&t.$alert("删除成功","成功",{confirmButtonText:"确定"}).then(function(){t.listLoading=!0,t.$http.get("/api/menus").then(function(e){localStorage.setItem("menuList",a()(e.data))}),location.reload(),t.showMenuData(t.page)})})}).catch(function(){})}},deleteData:function(){var e=this,t=0,n=JSON.parse(localStorage.getItem("authority"));if(n)for(var i=0;i<n.length;i++)"11"==n[i]&&(t=1);if(t)this.$alert("你没有删除菜单权限",{confirmButtonText:"确定"});else if(0==this.multipleSelection.length)this.$alert("请至少选中一条数据","批量删除",{confirmButtonText:"确定"});else{var l=[];for(var i in this.multipleSelection)l.push(this.multipleSelection[i].id);this.$confirm("确定要删除所选择的菜单？","删除菜单",{confirmButtonText:"确定",cancelButtonText:"取消",type:"info"}).then(function(){e.$http.delete("/api/menus?ids="+l).then(function(t){"1"==t.data.respCode&&e.$alert("删除成功","成功",{confirmButtonText:"确定"}).then(function(){e.listLoading=!0,e.$http.get("/api/menus").then(function(e){localStorage.setItem("menuList",a()(e.data))}),location.reload(),e.showMenuData(e.page)})})}).catch(function(){})}},parentFind:function(e){for(var t="",n=0;n<this.list.length;n++)e==this.list[n].id&&(t=this.list[n].name);return t},editData:function(e){var t=0,n=JSON.parse(localStorage.getItem("authority"));if(n)for(var i=0;i<n.length;i++)"10"==n[i]&&(t=1);t?this.$alert("你没有编辑菜单权限",{confirmButtonText:"确定"}):(this.menuForm=e,this.menuForm.parentId=this.menuForm.parentId.toString(),this.menuForm.isPage=this.menuForm.isPage.toString(),this.menuForm.isMenu=this.menuForm.isMenu.toString(),this.menuForm.isVisible=this.menuForm.isVisible.toString(),this.title="编辑菜单",this.dialogFormVisible=!0)},showMenuData:function(e){var t=this;this.list=[],this.listLoading=!0,this.page=e;this.page;this.$http.get("/api/menus").then(function(e){localStorage.setItem("menuList",a()(e.data))}),this.$http.get("/api/menus?page="+e).then(function(e){if(t.listLoading=!1,t.totalNum=e.data.total,0!=t.totalNum){delete e.data[0],console.log("res.data.records  = "+a()(e.data.records)),t.list=e.data.records;var n=e.data.records;t.list=function(e){e.forEach(function(e){delete e.children});var t={};e.forEach(function(e){t[e.id]=e});var n=[];return e.forEach(function(e){var i=t[e.parentId];i?(i.children||(i.children=[])).push(e):n.push(e)}),n}(n);for(var i=0;i<t.list.length;i++)if(0==t.list[i].parentId&&(t.list[i].parentId="无"),null!=t.list[i].children)for(var l=0;l<t.list[i].children.length;l++)t.list[i].children[l].parentId=t.list[i].name}}),this.getParentList()},getParentList:function(){var e=this;this.$http.get("/api/menus?parent=1").then(function(t){e.listLoading=!1,e.parentList=t.data,e.parentList.push("无")})},addUser:function(){this.reset(),this.dialogFormVisible=!0,this.title="新增菜单"},submitForm:function(e){var t=this,n={id:this.menuForm.id,parent_name:this.menuForm.parentId,name:this.menuForm.name,icon:this.menuForm.icon,is_page:this.menuForm.isPage,url:this.menuForm.url,is_visible:this.menuForm.isVisible,is_menu:this.menuForm.isMenu,menu_order:this.menuForm.menuOrder,menu_level:this.menuForm.menuLevel},i={parent_name:this.menuForm.parentId,name:this.menuForm.name,icon:this.menuForm.icon,is_page:this.menuForm.isPage,url:this.menuForm.url,is_visible:this.menuForm.isVisible,is_menu:this.menuForm.isMenu,menu_order:this.menuForm.menuOrder,menu_level:this.menuForm.menuLevel};this.$refs[e].validate(function(l){l&&(t.dialogFormVisible=!1,"新增菜单"==t.title?(console.log("this.addData ====="+a()(i)),t.$http.post("/api/menus",i).then(function(n){"1"==n.data.respCode?t.$alert("菜单新增成功","成功",{confirmButtonText:"确定"}).then(function(){t.listLoading=!0,t.$http.get("/api/menus").then(function(e){localStorage.setItem("menuList",a()(e.data))}),location.reload(),t.showMenuData(t.page)}):(t.$alert(n.data.respCode,"失败",{confirmButtonText:"确定"}),t.showMenuData(t.page)),t.$refs[e].resetFields()})):t.$http.patch("/api/menus",n).then(function(e){"1"==e.data.respCode?(t.$http.get("/api/menus").then(function(e){localStorage.setItem("menuList",a()(e.data))}),t.$alert("菜单修改成功","成功",{confirmButtonText:"确定"}).then(function(){t.listLoading=!0,location.reload(),t.showMenuData(t.page)})):(t.$alert("菜单修改失败","失败",{confirmButtonText:"确定"}),t.showMenuData(t.page))}))})},resetForm:function(e){this.dialogFormVisible=!1,this.$refs[e].resetFields(),this.reset(),this.showMenuData(this.page)},handleCurrentChange:function(e){this.page=e,this.showMenuData(this.page)},resetData:function(){this.formInline.menus="",this.formInline.state="",this.showMenuData(this.page)}}},r={render:function(){var e=this,t=e.$createElement,n=e._self._c||t;return n("div",{staticClass:"app-container"},[n("div",{staticClass:"form-style"},[n("el-form",{staticClass:"demo-form-inline",attrs:{inline:!0,model:e.formInline}},[n("el-form-item",[n("el-button",{attrs:{type:"primary",size:"small",icon:"el-icon-plus"},on:{click:function(t){e.addData()}}},[e._v("新增")])],1),e._v(" "),n("el-form-item",[n("el-button",{attrs:{type:"danger",size:"small",icon:"el-icon-delete"},on:{click:function(t){e.deleteData()}}},[e._v("删除")])],1),e._v(" "),n("el-form-item",{staticStyle:{float:"right"}},[n("el-button",{attrs:{type:"primary",size:"small"},on:{click:function(t){e.resetData()}}},[e._v("重置")])],1),e._v(" "),n("el-form-item",{staticStyle:{float:"right"}},[n("el-button",{attrs:{type:"primary",size:"small"},on:{click:function(t){e.searchData()}}},[e._v("查询")])],1),e._v(" "),n("el-form-item",{staticStyle:{float:"right"},attrs:{label:"状态："}},[n("el-select",{attrs:{placeholder:"请选择状态",size:"small"},model:{value:e.formInline.state,callback:function(t){e.$set(e.formInline,"state",t)},expression:"formInline.state"}},[n("el-option",{attrs:{label:"正常",value:"1"}}),e._v(" "),n("el-option",{attrs:{label:"禁用",value:"2"}})],1)],1),e._v(" "),n("el-form-item",{staticStyle:{float:"right"},attrs:{label:"菜单名称："}},[n("el-input",{attrs:{placeholder:"请输入菜单名称",size:"small"},model:{value:e.formInline.menus,callback:function(t){e.$set(e.formInline,"menus",t)},expression:"formInline.menus"}})],1)],1),e._v(" "),n("el-table",{directives:[{name:"loading",rawName:"v-loading",value:e.listLoading,expression:"listLoading"}],ref:"multipleTable",staticStyle:{width:"100%"},attrs:{data:e.list,"element-loading-text":"Loading",border:"",fit:"","highlight-current-row":"","tooltip-effect":"dark","row-key":"id","tree-props":{children:"children",hasChildren:"hasChildren"},"header-cell-style":{background:"#eef1f6",color:"#606266"}},on:{"selection-change":e.handleSelectionChange}},[n("el-table-column",{attrs:{type:"selection",width:"50"}}),e._v(" "),n("el-table-column",{attrs:{label:"菜单名称","min-width":"70",align:"center"},scopedSlots:e._u([{key:"default",fn:function(t){return[n("span",[e._v(e._s(t.row.name))])]}}])}),e._v(" "),n("el-table-column",{attrs:{label:"图标","min-width":"50",align:"center"},scopedSlots:e._u([{key:"default",fn:function(e){return[n("i",{class:e.row.icon})]}}])}),e._v(" "),n("el-table-column",{attrs:{label:"层级","min-width":"50",align:"center"},scopedSlots:e._u([{key:"default",fn:function(t){return[n("span",[e._v(e._s(t.row.menuLevel)+"级")])]}}])}),e._v(" "),n("el-table-column",{attrs:{label:"父菜单","min-width":"50",align:"center"},scopedSlots:e._u([{key:"default",fn:function(t){return[n("span",[e._v(e._s(t.row.parentId))])]}}])}),e._v(" "),n("el-table-column",{attrs:{label:"排序","min-width":"50",align:"center"},scopedSlots:e._u([{key:"default",fn:function(t){return[n("span",[e._v(e._s(t.row.menuOrder))])]}}])}),e._v(" "),n("el-table-column",{attrs:{label:"是否可见","min-width":"70",align:"center"},scopedSlots:e._u([{key:"default",fn:function(t){return["1"==t.row.isVisible?n("i",{staticClass:"el-icon-check",staticStyle:{color:"green"}}):e._e(),e._v(" "),"0"==t.row.isVisible?n("i",{staticClass:"el-icon-close",staticStyle:{color:"red"}}):e._e()]}}])}),e._v(" "),n("el-table-column",{attrs:{label:"是否是菜单","min-width":"70",align:"center"},scopedSlots:e._u([{key:"default",fn:function(t){return["1"==t.row.isMenu?n("i",{staticClass:"el-icon-check",staticStyle:{color:"green"}}):e._e(),e._v(" "),"0"==t.row.isMenu?n("i",{staticClass:"el-icon-close",staticStyle:{color:"red"}}):e._e()]}}])}),e._v(" "),n("el-table-column",{attrs:{label:"是否是页面","min-width":"70",align:"center"},scopedSlots:e._u([{key:"default",fn:function(t){return["1"==t.row.isPage?n("i",{staticClass:"el-icon-check",staticStyle:{color:"green"}}):e._e(),e._v(" "),"0"==t.row.isPage?n("i",{staticClass:"el-icon-close",staticStyle:{color:"red"}}):e._e()]}}])}),e._v(" "),n("el-table-column",{attrs:{label:"请求地址","min-width":"80",align:"center"},scopedSlots:e._u([{key:"default",fn:function(t){return[n("span",[e._v(e._s(t.row.url))])]}}])}),e._v(" "),n("el-table-column",{attrs:{align:"center",label:"操作","min-width":"80"},scopedSlots:e._u([{key:"default",fn:function(t){return[n("div",[n("el-link",{attrs:{type:"primary"},on:{click:function(n){e.editData(t.row)}}},[e._v("编辑")]),e._v(" "),n("el-divider",{attrs:{direction:"vertical"}}),e._v(" "),n("el-link",{attrs:{type:"danger"},on:{click:function(n){e.deleteUser(t.row)}}},[e._v("删除")])],1)]}}])})],1),e._v(" "),0!=e.totalNum?n("el-pagination",{attrs:{background:"",layout:"total, prev, pager, next",total:e.totalNum,"page-size":e.pageSize},on:{"current-change":e.handleCurrentChange}}):e._e()],1),e._v(" "),n("el-dialog",{attrs:{title:e.title,visible:e.dialogFormVisible},on:{"update:visible":function(t){e.dialogFormVisible=t}}},[n("el-form",{ref:"menuForm",staticClass:"demo-menuForm",attrs:{model:e.menuForm,rules:e.menus,"label-width":"150px"}},[n("el-form-item",{attrs:{label:"上级菜单",prop:"parentId"}},[n("el-select",{attrs:{placeholder:"请选择上级菜单"},model:{value:e.menuForm.parentId,callback:function(t){e.$set(e.menuForm,"parentId",t)},expression:"menuForm.parentId"}},e._l(e.parentList,function(e){return n("el-option",{key:e,attrs:{value:e}})}))],1),e._v(" "),n("el-form-item",{attrs:{label:"菜单名称",prop:"name"}},[n("el-input",{model:{value:e.menuForm.name,callback:function(t){e.$set(e.menuForm,"name",t)},expression:"menuForm.name"}})],1),e._v(" "),n("el-form-item",{attrs:{label:"图标"}},[n("el-input",{model:{value:e.menuForm.icon,callback:function(t){e.$set(e.menuForm,"icon",t)},expression:"menuForm.icon"}})],1),e._v(" "),n("el-form-item",[n("span",[e._v("图标名：https://element.eleme.cn/#/zh-CN/component/icon")])]),e._v(" "),n("el-form-item",{attrs:{label:"是否是页面",prop:"isPage"}},[n("el-radio",{attrs:{label:"1"},model:{value:e.menuForm.isPage,callback:function(t){e.$set(e.menuForm,"isPage",t)},expression:"menuForm.isPage"}},[e._v("是")]),e._v(" "),n("el-radio",{attrs:{label:"0"},model:{value:e.menuForm.isPage,callback:function(t){e.$set(e.menuForm,"isPage",t)},expression:"menuForm.isPage"}},[e._v("否")])],1),e._v(" "),n("el-form-item",{attrs:{label:"请求地址"}},[n("el-input",{model:{value:e.menuForm.url,callback:function(t){e.$set(e.menuForm,"url",t)},expression:"menuForm.url"}})],1),e._v(" "),n("el-form-item",{attrs:{label:"是否是菜单",prop:"isMenu"}},[n("el-radio",{attrs:{label:"1"},model:{value:e.menuForm.isMenu,callback:function(t){e.$set(e.menuForm,"isMenu",t)},expression:"menuForm.isMenu"}},[e._v("是")]),e._v(" "),n("el-radio",{attrs:{label:"0"},model:{value:e.menuForm.isMenu,callback:function(t){e.$set(e.menuForm,"isMenu",t)},expression:"menuForm.isMenu"}},[e._v("否")])],1),e._v(" "),n("el-form-item",{attrs:{label:"菜单状态(默认可见)"}},[n("el-radio",{attrs:{label:"1"},model:{value:e.menuForm.isVisible,callback:function(t){e.$set(e.menuForm,"isVisible",t)},expression:"menuForm.isVisible"}},[e._v("可见")]),e._v(" "),n("el-radio",{attrs:{label:"0"},model:{value:e.menuForm.isVisible,callback:function(t){e.$set(e.menuForm,"isVisible",t)},expression:"menuForm.isVisible"}},[e._v("不可见")])],1),e._v(" "),n("el-form-item",{attrs:{label:"层级",prop:"menuLevel"}},[n("el-input",{model:{value:e.menuForm.menuLevel,callback:function(t){e.$set(e.menuForm,"menuLevel",t)},expression:"menuForm.menuLevel"}})],1),e._v(" "),n("el-form-item",{attrs:{label:"显示排序",prop:"menuOrder"}},[n("el-input",{model:{value:e.menuForm.menuOrder,callback:function(t){e.$set(e.menuForm,"menuOrder",t)},expression:"menuForm.menuOrder"}})],1)],1),e._v(" "),n("div",{staticClass:"dialog-footer",attrs:{slot:"footer"},slot:"footer"},[n("el-button",{attrs:{type:"primary"},on:{click:function(t){e.submitForm("menuForm")}}},[e._v("提交")]),e._v(" "),n("el-button",{on:{click:function(t){e.resetForm("menuForm")}}},[e._v("取消")])],1)],1)],1)},staticRenderFns:[]};var o=n("VU/8")(l,r,!1,function(e){n("qotn"),n("7lHw")},"data-v-88299ec6",null);t.default=o.exports},qotn:function(e,t,n){var i=n("MtGR");"string"==typeof i&&(i=[[e.i,i,""]]),i.locals&&(e.exports=i.locals);n("rjj0")("46d2d33c",i,!0)}});