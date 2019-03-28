namespace TeacherCC.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class updatetype45 : DbMigration
    {
        public override void Up()
        {
            DropColumn("dbo.keti", "text");
            DropColumn("dbo.keti", "status");
        }
        
        public override void Down()
        {
            AddColumn("dbo.keti", "status", c => c.String(nullable: false, maxLength: 10));
            AddColumn("dbo.keti", "text", c => c.String(nullable: false, unicode: false, storeType: "text"));
        }
    }
}
