namespace VerzamelwoedeV2.Models
{
    public class Category
    {
        public int CategoryId { get; set; }
        public string Name { get; set; }        
        public ICollection<Collection> Collections { get; set; }

    }
}
