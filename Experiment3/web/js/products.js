/**
 * Created by HYL.
 */
function isEmpty() {
    products = document.getElementsByName("products");
    editId = $("#editId")[0];
    flag = 0;
    for (i = 0; i < products.length; i++) {
        if (products[i].checked == true) {
            editId.value = products[i].id;
            flag = 1;
            break;
        }
    }
    if (flag == 0) {
        return true;
    } else {
        return false;
    }
}
function getEditProduct() {

    if (isEmpty()) {
        alert("请选择至少一个产品！");
        return;
    }
    $('#editName')[0].value = $('#name_' + editId.value)[0].innerText;
    $('#editAmount')[0].value = $('#amount_' + editId.value)[0].innerText;
    $('#editNote')[0].value = $('#note_' + editId.value)[0].innerText;
    $('#editModal').modal('show');

}

function check() {
    if (isEmpty()) {
        alert("请选择至少一个产品！");
        return;
    }
    $('#form1')[0].submit();
}

function search(){
    searchName = $('#searchName')[0].value;
    products = document.getElementsByName("products");

    for (i = 0; i < products.length; i++) {
        t = $('#name_' + products[i].id);
        if (t[0].innerText != searchName) {
            t.parent().remove();
            search();
            break;
        }
    }
}

function checkProduct(op){
    var name='';
    var amount='';
    var note='';
    if(op=="add"){
        name=document.getElementById("addName").value;
        amount=document.getElementById("addAmount").value;
        note=document.getElementById("addNote").value;
    }
    else if(op=="edit")
    {
        name=document.getElementById("editName").value;
        amount=document.getElementById("editAmount").value;
        note=document.getElementById("editNote").value;
    }

    var reInt = /^[0-9]*[1-9][0-9]*$/ ;
    if(name==null || name.length==0 ) {
        alert("名称不能为空！");
        return false;
    }
    if(amount==null || amount.length==0) {
        alert("库存不能为空！");
        return false;
    }
    if(!reInt.test(amount)) {
        alert("库存必须为正整数！");
        return false;
    }
    return true;



}