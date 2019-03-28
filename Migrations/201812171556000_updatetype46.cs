namespace TeacherCC.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class updatetype46 : DbMigration
    {
        public override void Up()
        {
            AlterColumn("dbo.teacher", "twork", c => c.String(maxLength: 500));
            AlterColumn("dbo.teacher", "tlearn", c => c.String(maxLength: 500));
        }
        
        public override void Down()
        {
            AlterColumn("dbo.teacher", "tlearn", c => c.String(unicode: false, storeType: "text"));
            AlterColumn("dbo.teacher", "twork", c => c.String(unicode: false, storeType: "text"));
        }
    }
}
