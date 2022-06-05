using Microsoft.AspNetCore.Razor.TagHelpers;

namespace NWEEI.TagHelpers
{
    [HtmlTargetElement("a", Attributes = "data-btn-details")]
    public class DetailsButtonTagHelper: TagHelper
    {
        private ButtonTagHelper button = new ButtonTagHelper()
        {
            ButtonIcon = "info-circle",
            HTMLTag = "a",
            HTMLClassList = "btn btn-outline-secondary h3 m-0 mr-1",
            RawPreContentElement = "<i class=\"fa fa-info-circle fa-xl\"></i> ",
            Attributes = new() {
                {"type", "button"},
                {"data-toggle", "tooltip"},
                {"data-placement", "top"},
                {"title", "Details"},
                {"style", "border-color: rgba(0,0,0,0)"},
            },
        };
        public override void Process(TagHelperContext context, TagHelperOutput output)
        {
            output.Content.Clear();
            output.SetRawPreContentElement(button.RawPreContentElement);
            output.BuildTag(button.HTMLTag, button.HTMLClassList);
            foreach (System.Collections.Generic.KeyValuePair<string, string> attribute in button.Attributes)
                output.Attributes.SetAttribute(attribute.Key, attribute.Value);
        }
    }
}