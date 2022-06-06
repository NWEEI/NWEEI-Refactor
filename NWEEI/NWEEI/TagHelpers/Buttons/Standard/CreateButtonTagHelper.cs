using Microsoft.AspNetCore.Razor.TagHelpers;

namespace NWEEI.TagHelpers
{
    [HtmlTargetElement("a", Attributes = "data-btn-create")]
    public class CreateButtonATagHelper: TagHelper
    {
        private ButtonTagHelper button = new ButtonTagHelper()
        {
            ButtonIcon = "circle-plus",
            ButtonText = "Create",
            HTMLTag = "a",
            HTMLClassList = "btn btn-outline-success h3 m-0 mr-2",
            RawPreContentElement = "<i class=\"fa fa-circle-plus fa-xl\"></i>",
        };
        public override void Process(TagHelperContext context, TagHelperOutput output)
        {
            output.SetRawPreContentElement(button.RawPreContentElement);
            output.BuildTag(button.HTMLTag, button.HTMLClassList);
        }
    }
    [HtmlTargetElement("button", Attributes = "data-btn-create")]
    public class CreateButtonTagHelper: TagHelper
    {
        private ButtonTagHelper button = new ButtonTagHelper()
        {
            ButtonIcon = "circle-plus",
            ButtonText = "Create",
            HTMLTag = "button",
            HTMLClassList = "btn btn-outline-success h3 m-0 mr-2",
            RawPreContentElement = "<i class=\"fa fa-circle-plus fa-xl\"></i>",
        };
        public override void Process(TagHelperContext context, TagHelperOutput output)
        {
            output.SetRawPreContentElement(button.RawPreContentElement);
            output.BuildTag(button.HTMLTag, button.HTMLClassList);
        }
    }
}