using Microsoft.AspNetCore.Razor.TagHelpers;

namespace NWEEI.TagHelpers
{
    [HtmlTargetElement("table", Attributes = "data-index-table")]
    public class TableTagHelper : TagHelper
    {
        public override void Process(TagHelperContext context, TagHelperOutput output)
        {
            output.Attributes.SetAttribute("class", "table table-striped table-responsive table-hover");
        }
    }
}