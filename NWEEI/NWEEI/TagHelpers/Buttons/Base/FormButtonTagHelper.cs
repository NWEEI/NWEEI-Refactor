using System.Collections.Generic;
using Microsoft.AspNetCore.Razor.TagHelpers;

namespace NWEEI.TagHelpers
{
    public class FormButtonTagHelper: TagHelper
    {
        public FormButtonTagHelper() { }
        public string ButtonIcon { get; set; } // a string for a font-awesome icon. Example: "paper-plane" for "<i class="fa fa-paper-plane fa-xl">"
        public string ButtonText { get; set; } // what the button text says. Example: "Send"
        public string RawPreContentElement { get; set; } //the HTML that always comes before this form button
        public string HTMLTag { get; set; } // what HTML tag should the button actually have? Examples: "button", "a"
        public string HTMLClassList { get; set; } // a space-separated string of classes to add to the html tag (typically bootstrap classes). Example: "btn btn-primary pb-0"
        public Dictionary<string, string> Attributes { get; set; } // a dictionary of all attributes and their values to be added to the output tag. Example: "type", "submit"
        public string RawPostContentElement { get; set; } //the HTML that always comes before this form button
    }
}