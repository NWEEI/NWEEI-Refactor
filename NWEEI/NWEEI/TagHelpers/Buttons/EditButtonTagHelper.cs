﻿using Microsoft.AspNetCore.Razor.TagHelpers;

namespace NWEEI.TagHelpers
{
    [HtmlTargetElement("a", Attributes = "data-btn-edit")]
    public class EditButtonTagHelper : TagHelper
    {
        public override void Process(TagHelperContext context, TagHelperOutput output)
        {
            output.Content.Clear();
            output.SetRawPreContentElement("<i class=\"fa fa-pen-to-square fa-xl\"></i>");
            output.Content.Append("\tEdit");
            output.BuildTag("a", "btn btn-outline-primary h3 m-0 mr-1");
            output.Attributes.SetAttribute("style", "border-color: rgba(0,0,0,0)");
        }
    }
}