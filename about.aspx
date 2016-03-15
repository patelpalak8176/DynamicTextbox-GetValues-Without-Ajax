<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="DynamicTextboxes.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h4>Dynamic Textboxes - DEBUG AND SUBMIT TO GET VALUES WITHOUT AJAX AND JQUERY</h4>

    <hr />

    <input id="btnAdd" type="button" value="Add" />
    <br />
    <br />
    <div id="TextBoxContainer">
        <!--Textboxes will be added here -->
    </div>
    <br />
    <%--<input id="btnGet" type="button" value="Get Values" />--%>

    <%--JAVA Script & JQUERY CODE BELOW--%>

    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
    <script type="text/javascript">
        var counter = 0;
        $(function () {
            $("#btnAdd").bind("click", function () {
                var div = $("<div />");
                div.html(GetDynamicTextBox(""));
                $("#TextBoxContainer").append(div);
            });
            //$("#btnGet").bind("click", function () {
            //    var values = "";
            //    $("input[name=DynamicTextBox]").each(function () {
            //        values += $(this).val() + "\n";
            //    });
            //    alert(values);
            //});
            $("body").on("click", ".remove", function () {
                $(this).closest("div").remove();
            });
        });
        function GetDynamicTextBox(value) {
            counter++;
            return '<input name = "DynamicTextBox" id="' + "txtDynamic_" + counter + '" type="text" value = "' + value + '" />&nbsp;' +
                '<input type="button" value="Remove" class="remove" />';
            
        }
    </script>
    <br/>
    <hr/>
    <asp:Button ID="txtSubmit" OnClick="txtSubmit_OnClick" runat="server" Text="SUBMIT AFTER ADDING VALUES"></asp:Button>
</asp:Content>

