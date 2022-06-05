using Microsoft.AspNetCore.Razor.TagHelpers;

namespace NWEEI.TagHelpers
{
    [HtmlTargetElement("button", Attributes = "data-btn-form-create")]
    public class FormCreateButtonTagHelper: TagHelper
    {
        private ButtonTagHelper button = new ButtonTagHelper()
        {
            ButtonIcon = "circle-plus",
            ButtonText = "Create",
            HTMLTag = "button",
            HTMLClassList = "btn btn-outline-success pb-0",
            Attributes = new() {
                {"type", "submit"},
            },
            RawPreContentElement =
                "<table class=\"form-group mb-2\">\n" +
                    "\t<tr>\n" +
                        "\t\t<td>\n" +
                            "\t\t\t<i class=\"fa fa-circle-plus fa-xl\"></i> \n",
            RawPostContentElement =
                        "\t\t</td>\n" +
                    "\t</tr>" +
                "</table>"
        };

        /// <summary>This uses the 'button' above to build a form button tag helper.</summary>
        public override void Process(TagHelperContext context, TagHelperOutput output)
        {
            output.SetRawPreContentElement(button.RawPreContentElement);
            output.Content.Append(button.ButtonText);
            output.BuildTag(button.HTMLTag, button.HTMLClassList);
            foreach (System.Collections.Generic.KeyValuePair<string, string> attribute in button.Attributes)
                output.Attributes.SetAttribute(attribute.Key, attribute.Value);
            output.SetRawPostContentElement(button.RawPostContentElement);
        }
    }
}