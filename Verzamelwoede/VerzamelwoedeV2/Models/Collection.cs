namespace VerzamelwoedeV2.Models
{
    public class Collection
    {

        public int CollectionId { get; set; }
        public string Name { get; set; }
        public int CategoryId { get; set; }
        public Category Category { get; set; }
        public ICollection<Item> Items { get; set; }

    }
}
