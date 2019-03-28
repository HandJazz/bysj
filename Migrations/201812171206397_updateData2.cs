namespace TeacherCC.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class updateData2 : DbMigration
    {
        public override void Up()
        {
            AlterColumn("dbo.teacher", "classname", c => c.String(maxLength: 20));
            AlterColumn("dbo.teacher", "project", c => c.String(maxLength: 20));
        }
        
        public override void Down()
        {
            AlterColumn("dbo.teacher", "project", c => c.String(maxLength: 10));
            AlterColumn("dbo.teacher", "classname", c => c.String(maxLength: 10));
        }
    }
}
