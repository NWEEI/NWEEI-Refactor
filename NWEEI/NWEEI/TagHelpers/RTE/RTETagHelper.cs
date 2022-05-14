using System;
using Microsoft.AspNetCore.Razor.TagHelpers;

namespace NWEEI.TagHelpers
{
    [HtmlTargetElement( "rte", Attributes="data-rte")]
    public class RTETagHelper : TagHelper
    {
        public override void Process( TagHelperContext context, TagHelperOutput output )
        {
            // get what attribute of the model is being edited by the id
            string property = output.Attributes.GetElementId();
            // get the controller action from the action property
            string action = output.Attributes.GetElementAction();

            string value = ( action == "Edit" ) ? "value=\"@Model." + property + "\" />" : "" ;

            // set up the stuff after the label
            output.SetRawPostContentElement(
                          "<link rel=\"stylesheet\" href=\"/richtexteditor/rte_theme_default.css\" />"
                +       "<script type=\"text/javascript\" src=\"/richtexteditor/rte.js\"></script>"
                +       "<script type=\"text/javascript\" src='/richtexteditor/plugins/all_plugins.js'></script>"
                +       "<script type=\"text/javascript\" src=\"/rte-upload.js\"></script>"
                +       "<input asp-for=\"" + property + "\" name=\"htmlcode\" id=\"inp_htmlcode\" type=\"hidden\" class=\"form-control\" " + value
                +       "<div id=\"div_editor1\" class=\"richtexteditor\" style=\"width: 960px;margin:0 auto;\"></div>"
            );
            output.SetRawPostContentElement(
                        "<script>"
                +            "\tvar editor1 = new RichTextEditor(document.getElementById(\"div_editor1\"));"
                +             "\teditor1.setHTML(document.getElementById(\"inp_htmlcode\").value)"
                +             "\teditor1.attachEvent(\"change\", function () {"
                +                   "\t\tdocument.getElementById(\"inp_htmlcode\").value = editor1.getHTMLCode();"
                +             "\t});"
                +       "</script>"
            );
        }
    }
}

/*
    <div class="form-group">
        <link rel="stylesheet" href="/richtexteditor/rte_theme_default.css" />
        <script type="text/javascript" src="/richtexteditor/rte.js"></script>
        <script type="text/javascript" src='/richtexteditor/plugins/all_plugins.js'></script>
        <script type="text/javascript" src="/rte-upload.js"></script>
        <label asp-for="Body" class="control-label"></label>
        <input asp-for="Body" name="htmlcode" id="inp_htmlcode" type="hidden" class="form-control" value="@Model.Body" />
        <div id="div_editor1" class="richtexteditor" style="width: 960px;margin:0 auto;"></div>
        <script>
            var editor1 = new RichTextEditor(document.getElementById("div_editor1"));
            editor1.setHTML(document.getElementById("inp_htmlcode").value)
            editor1.attachEvent("change", function () {
                document.getElementById("inp_htmlcode").value = editor1.getHTMLCode();
            });
        </script>
        <span asp-validation-for="Body" class="text-danger"></span>
    </div>
*/