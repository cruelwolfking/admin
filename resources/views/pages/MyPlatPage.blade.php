
<div id="app2">

    <el-card class="box-card">
        <el-row>
            <el-button type="primary" @click="newHandle">新增</el-button>
        </el-row>
        <el-table
                :data="tableData"
                style="width: 100%"
                :row-class-name="tableRowClassName">
            <el-table-column
                    prop="id"
                    label="编号"
                    width="80">
            </el-table-column>
            <el-table-column
                    prop="site_title"
                    label="名称"
                    width="180">
            </el-table-column>
            <el-table-column
                    label="平台"
                    width="100">
                <template slot-scope="scope">
                    {{--<i class="el-icon-time"></i>--}}
                    <span style="margin-left: 10px">@{{ scope.row.plat.name }}</span>
                </template>
            </el-table-column>
            <el-table-column
                    label="机器人状态"
                    width="120">
                <template slot-scope="scope">

                    <span class="text-success" style="margin-left: 10px" v-if="scope.row.online === 1 ">
                        <i class="el-icon-sunny text-success"></i>
                    </span>
                    <span class="text-muted el-icon-warning-outline" style="margin-left: 10px" v-else>

                    </span>
                </template>
            </el-table-column>
            <el-table-column
                    label="状态"
                    width="80">
                <template slot-scope="scope">
                    {{--<i class="el-icon-time"></i>--}}
                    <span class="text-success" style="margin-left: 10px" v-if="scope.row.status === 1 ">已开启</span>
                    <span class="text-danger" style="margin-left: 10px" v-else>已禁用</span>
                </template>
            </el-table-column>
            <el-table-column
                    prop="created_at"
                    label="添加时间">
            </el-table-column>
            <el-table-column label="操作"  width="380">
                <template slot-scope="scope">
                    <el-button
                            size="mini"
                            @click="handleEdit(scope.$index, scope.row)">编辑</el-button>
                    <el-button v-if="scope.row.online === 0 && scope.row.status === 1" size="mini" type="primary" @click="robotHandle(scope.$index, scope.row)">激活</el-button>
                    <el-button v-if="scope.row.online === 1 && scope.row.status === 1" size="mini" type="danger" @click="robotHandle(scope.$index, scope.row)">停止</el-button>
                    <el-button v-if=" scope.row.status === 0" size="mini" type="primary" @click="changeStatus(scope.$index, scope.row)">开启</el-button>
                    <el-button v-if=" scope.row.status === 1" size="mini" type="danger" @click="changeStatus(scope.$index, scope.row)">禁用</el-button>
                    <el-button
                            size="mini"
                            type="danger"
                            @click="handleDelete(scope.$index, scope.row)">删除</el-button>
                </template>
            </el-table-column>
        </el-table>
    </el-card>
    <el-dialog
            :title="getTitle"
            :visible.sync="dialogVisible"
            width="50%"
            :before-close="handleClose">

            <el-form label-position="right" label-width="80px" :model="form">
                <el-form-item label="名称">
                    <el-input v-model="form.site_title"></el-input>
                </el-form-item>
                <el-form-item label="平台" prop="plat_id">
                    <el-select v-model="plat_id" placeholder="请选择所属平台" @change="selectHandle">

                        <el-option v-for="(item,index) in plats" :label="item.name" :value="index"></el-option>

                    </el-select>
                </el-form-item>
                <el-form-item label="参数">
                    <br>
                    <el-row :gutter="24"  v-for="(item,index in form.extra_json" :key="index">
                        <el-col :span="8">
                            请填写@{{ item.desc }}：
                        </el-col>
                        <el-col :span="8">
                            <el-input v-model="item.value"></el-input>
                        </el-col>
                    </el-row>
                </el-form-item>
            </el-form>


            <span slot="footer" class="dialog-footer">
                <el-button @click="dialogVisible = false">取 消</el-button>
                <el-button type="primary" @click="submit">确 定</el-button>
            </span>
    </el-dialog>



</div>
<script>
    Dcat.ready(function () {
        new Vue({
            el: '#app2',
            data: {
                tableData: [],
                dialogVisible: false,
                extra:{
                    key:'',
                    value:'',
                    desc:''
                },
                form:{
                    id:null,
                    site_title:null,
                    plat_id:null,
                    extra_json:[]
                },
                plat_id:null,
                plats:[],
            },
            mounted(){
                axios.get('/merchant-admin/plat_list').then(res=>{
                    this.plats = res.data
                })
                this.getList();
            },
            computed: {
                // 计算属性的 getter
                getTitle: function () {
                    if (this.form.id === null){
                        return '新增'
                    } else {
                        return '编辑'
                    }
                }
            },
            methods: {
                getList(){
                    axios.get('/merchant-admin/merchant/plats').then(res=>{
                        this.tableData = res.data.data
                    })
                },
                tableRowClassName({row, rowIndex}) {
                    if (rowIndex === 1) {
                        return 'warning-row';
                    } else if (rowIndex === 3) {
                        return 'success-row';
                    }
                    return '';
                },
                handleEdit(index, row) {
                    this.form.site_title = row.site_title;
                    this.form.plat_id = row.plat_id;
                    this.form.extra_json = JSON.parse(row.extra_json);
                    this.form.id = row.id;
                    const plat_id  = this.plats.findIndex(function (item,index) {

                        return item.id === row.plat_id;
                    });
                    this.plat_id = plat_id;
                    this.dialogVisible = true;
                },
                handleDelete(index, row) {
                    console.log(index, row);
                    if(row.status === 1){
                        this.$message({
                            message: '正在使用的账户无法删除!',
                            type: 'warning'
                        });
                    }
                    axios.get("{{url('/merchant-admin/merchant/delete')}}/" + row.id).then(res=>{
                        if(res.data.code === 200){
                            this.$message({
                                message: res.data.msg,
                                type: 'success'
                            });
                            this.getList();
                        }else{
                            this.$message({
                                message: res.data.msg,
                                type: 'warning'
                            });
                        }
                    });

                },
                //新增弹窗
                newHandle(){
                    this.form.site_title = null;
                    this.form.plat_id = null;
                    this.form.extra_json = [];
                    this.form.id = null;
                    this.plat_id = null;
                    this.dialogVisible = true;
                },
                //关闭弹窗
                handleClose(done) {
                    this.dialogVisible = false
                    // this.$confirm('确认关闭？')
                    //     .then(_ => {
                    //         done();
                    //     })
                    //     .catch(_ => {});
                },
                //select 选中
                selectHandle(index){
                    this.form.plat_id = this.plats[index].id;
                    this.form.extra_json = this.plats[index].extra_json
                },
                submit(){
                    console.log(this.form);


                    axios.post("{{url('merchant-admin/merchant-plats')}}",this.form).then(res=>{
                        if(res.data.code === 200){
                            this.$message({
                                message: res.data.msg,
                                type: 'success'
                            });
                            this.dialogVisible = false;
                            this.getList();
                        }else{
                            this.$message({
                                message: res.data.msg,
                                type: 'warning'
                            });

                        }
                    })
                },
                changeStatus(index,row){

                    axios.post("{{url('/merchant-admin/merchant/changeStatus')}}",row).then(res=>{
                        console.log(res.data)
                    });
                    this.getList();
                },
                robotHandle(index,row){
                    axios.post("{{url('/merchant-admin/merchant/robotHandle')}}",row).then(res=>{
                        console.log(res.data)
                        if(res.data.code === 200){
                            this.$message({
                                message: res.data.msg,
                                type: 'success'
                            });
                            this.getList();
                        }else{
                            this.$message({
                                message: res.data.msg,
                                type: 'warning'
                            });
                        }
                    });

                }
            }
        })
    });
</script>
