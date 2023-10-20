using Microsoft.EntityFrameworkCore;

namespace VerzamelwoedeV2.Data
{
    public class AppDbContext : DbContext
    {

        public AppDbContext() { }

        public AppDbContext(DbContextOptions<AppDbContext> options) 
            : base(options) { }

        public DbSet<Models.Collection> Collections { get; set; }
        public DbSet<Models.Item> Items { get; set; }
        public DbSet<Models.Category> Categories { get; set; }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Models.Collection>()
                .HasOne(c => c.Category)
                .WithMany(c => c.Collections)
                .HasForeignKey(c => c.CategoryId); ;

            modelBuilder.Entity<Models.Item>()
                .HasOne(o => o.Collection)
                .WithMany(o => o.Items)
                .HasForeignKey(o => o.CollectionId); ;
        }

    }
}
