using Microsoft.AspNetCore.Razor.TagHelpers;

namespace NWEEI.TagHelpers
{
    [HtmlTargetElement("a", Attributes = "data-btn-dashboard")]
    public class DashboardButtonTagHelper: TagHelper
    {
        private ButtonTagHelper button = new ButtonTagHelper()
        {
            ButtonIcon = "grid",
            ButtonText = "Dashboard",
            HTMLTag = "a",
            HTMLClassList = "btn btn-outline-primary h3 m-0 mr-2",
            RawPreContentElement = "<i class=\"fa fa-grid fa-xl\"></i> "
        };
        public override void Process(TagHelperContext context, TagHelperOutput output)
        {
            output.SetRawPreContentElement(button.RawPreContentElement);
            output.Content.Append(button.ButtonText);
            output.BuildTag(button.HTMLTag, button.HTMLClassList);
        }
    }
}