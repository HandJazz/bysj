namespace TeacherCC.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class updatetype34 : DbMigration
    {
        public override void Up()
        {
            DropColumn("dbo.rongyu", "title");
        }
        
        public override void Down()
        {
            AddColumn("dbo.rongyu", "title", c => c.String(nullable: false, maxLength: 20));
        }
    }
}
