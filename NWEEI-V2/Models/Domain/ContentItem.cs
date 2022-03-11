namespace NWEEI_V2.Models
{
    public abstract class ContentItem
    {
        public Category Category { get; set; }
        public AppUser Author { get; set; }
        public bool Published { get; set; }
        public bool Featured { get; set; }
    }
}
