var jq=jQuery.noConflict();
jq(function () {
    jq("form").bootstrapValidator({
        message:'请输入有效信息',feedbackIcons:{
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        fields:{
            uname: {
                message: '用户名验证失败',
                validators: {
                    notEmpty: {
                        message: '昵称不能为空'
                    },
                    regexp:{
                        regexp:/[A-Za-z0-9_\-\u4e00-\u9fa5]+$/,
                        message:'昵称只能包含大小写字母、中文、数字和下划线'
                    },
                    stringLength:{
                        min:3,
                        max:12,
                        message:'长度必须为3到12位之间'
                    }
                }
            },
            uemail: {
                message:'',
                validators: {
                    notEmpty: {
                        message: '邮箱地址不能为空'
                    },
                    regexp:{
                        regexp:/\w[-\w.+]*@([A-Za-z0-9][-A-Za-z0-9]+\.)+[A-Za-z]{2,14}/,
                        message: '邮箱格式有误'
                    },
                    stringLength:{
                        min:8,
                        max:30,
                        message:'长度必须为8到30位之间'
                    }
                }
            },
            upassword:{
                message: '非法的密码格式',
                validators: {
                    notEmpty: {
                        message: '密码不能为空'
                    },
                    regexp:{
                        regexp:/^[a-zA-Z]{1}([a-zA-Z0-9]|[._]){7,15}$/,
                        message:'大小写字母开头，可以使用数字，字母，下划线和.'
                    },
                    stringLength:{
                        min:8,
                        max:15,
                        message:'长度必须为8到15位之间'
                    }
                }
            },
            ubirthday:{
                message:'生日不能为空',
                validators:{
                    notEmpty:{
                        message:'生日不能为空'
                    }
                }
            }
        }
    })
});




