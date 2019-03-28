namespace TeacherCC.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class CreateDate2 : DbMigration
    {
        public override void Up()
        {
            AlterColumn("dbo.teacher", "shenfennu", c => c.String(maxLength: 20));
            AlterColumn("dbo.teacher", "cellphone", c => c.String(maxLength: 15));
        }
        
        public override void Down()
        {
            AlterColumn("dbo.teacher", "cellphone", c => c.Int());
            AlterColumn("dbo.teacher", "shenfennu", c => c.Int(nullable: false));
        }
    }
}
