namespace TeacherCC.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class updatetype44 : DbMigration
    {
        public override void Up()
        {
            AlterColumn("dbo.rongyu", "text", c => c.String(nullable: false, maxLength: 50));
        }
        
        public override void Down()
        {
            AlterColumn("dbo.rongyu", "text", c => c.String(nullable: false, unicode: false, storeType: "text"));
        }
    }
}
