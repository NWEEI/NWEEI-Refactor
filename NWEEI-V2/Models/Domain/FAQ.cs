namespace NWEEI_V2.Models
{
    public class FAQ : ContentItem
    {
        public int FAQID { get; set; }
        public string Question { get; set; }
        public string Answer { get; set; }
        public int Upvotes { get; set; }
    }
}
