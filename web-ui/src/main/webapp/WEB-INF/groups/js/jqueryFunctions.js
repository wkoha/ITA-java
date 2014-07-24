var functionCalled = false;


function viewGroups() {
    if (!functionCalled) {
        functionCalled = true;
        createCourseMenu("#courses", "All courses");
    }
    var template;
    jQuery.get("groups/template/iconTemplate", function (data) {
        template = data;
    });
    var output = "";
    var createGroupHtml="";
    var selectedStatus = $("#statuses").val();
    var selectedCourse = $("#courses").val();
    var getGroupsUrl;
    if (selectedStatus == "All groups") {
        getGroupsUrl = "/groups/allGroups";
    }
    else {
        getGroupsUrl = "/groups/status/" + selectedStatus;
    }
    if (selectedStatus == "PLANNED") {
        jQuery.get("groups/template/createGroupHtml", function (data) {
            createGroupHtml = data;
        });
    }
    $.ajax({
        url: location.origin + getGroupsUrl,
        dataType: "json",
        type: "GET",
        success: function (data) {
            var image;
            for (var index = 0; index < data.length; index++) {
                if (data[index].course.name == selectedCourse || selectedCourse == "All courses") {
                    var view = {
                        ref: 'group/' + data[index].groupID,
                        image: data[index].course.imageRef,
                        courseName: "Course : " + data[index].course.name,
                        groupName: "Group : " + data[index].groupName,
                    groupId: data[index].groupID
                }
                output += Mustache.render(template, view);
                }
            }
            output += createGroupHtml;
            $("#portfolio1").html(output);
        },
        error: function(data){
            console.log("" + data);
        }
    });


}

function viewAddDialog() {
    $("#dialog-form-add-user").data('content', 'Group added');
    $('#dialog-form-add-user').dialog('open');
}


function viewDeleteDialog() {
    $("#dialog-form-delete-group").data('content', 'Group deleted');
    $('#dialog-form-delete-group').dialog('open');
}