using Microsoft.AspNetCore.Razor.TagHelpers;
using MimeKit.Text;
using NWEEI.TagHelpers;

namespace NWEEI.TagHelpers
{
    [HtmlTargetElement("button", Attributes = "data-btn-form-send")]
    public class FormSend2ButtonTagHelper: TagHelper
    {
        private FormButtonTagHelper formButton = new FormButtonTagHelper()
        {
            ButtonIcon = "paper-plane",
            ButtonText = "Send",
            HTMLTag = "button",
            HTMLClassList = "btn btn-outline-primary pb-0 mt-3 float-right",
            Attributes = new() {
                {"type", "submit"},
            },
            RawPreContentElement =
                "<table class=\"form-group mb-2\">\n" +
                    "\t<tr>\n" +
                        "\t\t<td>\n",
            // I neeed to find a way to separate the icon from the post content elements...
            RawPostContentElement =
                            "\t\t\t<i class=\"fa fa-paper-plane fa-xl\"></i> \n" +
                        "\t\t</td>\n" +
                    "\t</tr>" +
                "</table>"
        };

        /// <summary>This uses the 'formButton' above to build a form button tag helper.</summary>
        public override void Process(TagHelperContext context, TagHelperOutput output)
        {
            output.SetRawPreContentElement(formButton.RawPreContentElement);
            output.Content.Clear();
            output.Content.Append(formButton.ButtonText);
            output.BuildTag(formButton.HTMLTag, formButton.HTMLClassList);
            foreach (System.Collections.Generic.KeyValuePair<string, string> attribute in formButton.Attributes)
                output.Attributes.SetAttribute(attribute.Key, attribute.Value);
            output.SetRawPostContentElement(formButton.RawPostContentElement);
        }
    }
}