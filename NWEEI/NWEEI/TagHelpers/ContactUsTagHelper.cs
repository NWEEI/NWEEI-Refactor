using Google.Protobuf.WellKnownTypes;
using Microsoft.AspNetCore.Mvc;
using System;
using Microsoft.AspNetCore.Razor.TagHelpers;
using SendGrid.Helpers.Mail;

namespace NWEEI.TagHelpers
{
    [HtmlTargetElement("a", Attributes = "data-contact-us")]
    public class ContactUsTagHelper: TagHelper
    {
        public override void Process(TagHelperContext context, TagHelperOutput output)
        {
            // Make sure the a tag includes the asp-action and asp-controller of the contact form ([GET], not [POST]).
            // This tag helper will only work on "a" tags with the "data-contact-us" attribute.
            output.SetRawPreContentElement(
                "<div class=\"container content-section text-center\" >\n" +
                    "\t<h4>Have a Question?</h4>\n" +
                    "\t<h6 class=\"pt-2\">\n"
            );
            output.Content.Clear();
            output.Content.Append("Contact us");
            output.SetRawPostContentElement(
                        " if you have any questions.\n" +
                    "\t</h6>\n" +
                "</div>\n"
            );
        }
    }
}