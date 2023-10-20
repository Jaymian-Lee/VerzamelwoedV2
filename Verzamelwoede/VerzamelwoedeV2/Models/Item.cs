namespace VerzamelwoedeV2.Models
{
    public class Item
    {
        public int ItemId { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
        public int CollectionId { get; set; }
        public Collection Collection { get; set; }
    }
}
