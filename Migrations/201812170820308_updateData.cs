namespace TeacherCC.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class updateData : DbMigration
    {
        public override void Up()
        {
            DropForeignKey("dbo.keti", "gonghao", "dbo.teacher");
            DropForeignKey("dbo.rongyu", "gonghao", "dbo.teacher");
            DropForeignKey("dbo.teacher", "xibuId", "dbo.xibu");
            AlterColumn("dbo.keti", "title", c => c.String(nullable: false, maxLength: 50));
            AlterColumn("dbo.keti", "people", c => c.String(nullable: false, maxLength: 20));
            AlterColumn("dbo.keti", "status", c => c.String(nullable: false, maxLength: 10));
            AlterColumn("dbo.teacher", "pwd", c => c.String(nullable: false, maxLength: 50));
            AlterColumn("dbo.teacher", "name", c => c.String(nullable: false, maxLength: 50));
            AlterColumn("dbo.teacher", "name2", c => c.String(maxLength: 50));
            AlterColumn("dbo.teacher", "jiguan", c => c.String(maxLength: 20));
            AlterColumn("dbo.teacher", "minzu", c => c.String(maxLength: 10));
            AlterColumn("dbo.teacher", "sex", c => c.String(nullable: false, maxLength: 5));
            AlterColumn("dbo.teacher", "hunyin", c => c.String(maxLength: 5));
            AlterColumn("dbo.teacher", "usertype", c => c.String(nullable: false, maxLength: 10));
            AlterColumn("dbo.teacher", "birthplace", c => c.String(maxLength: 12));
            AlterColumn("dbo.teacher", "zhengzhi", c => c.String(maxLength: 5));
            AlterColumn("dbo.teacher", "jiankang", c => c.String(maxLength: 5));
            AlterColumn("dbo.teacher", "teachertype", c => c.String(maxLength: 10));
            AlterColumn("dbo.teacher", "mail", c => c.String(maxLength: 30));
            AlterColumn("dbo.teacher", "classname", c => c.String(maxLength: 10));
            AlterColumn("dbo.teacher", "project", c => c.String(maxLength: 10));
            AlterColumn("dbo.teacher", "season", c => c.String(maxLength: 10));
            AlterColumn("dbo.rongyu", "title", c => c.String(nullable: false, maxLength: 20));
            AlterColumn("dbo.xibu", "xibuNa", c => c.String(nullable: false, maxLength: 20));
            AddForeignKey("dbo.keti", "gonghao", "dbo.teacher", "gonghao", cascadeDelete: true);
            AddForeignKey("dbo.rongyu", "gonghao", "dbo.teacher", "gonghao", cascadeDelete: true);
            AddForeignKey("dbo.teacher", "xibuId", "dbo.xibu", "ID", cascadeDelete: true);
        }
        
        public override void Down()
        {
            DropForeignKey("dbo.teacher", "xibuId", "dbo.xibu");
            DropForeignKey("dbo.rongyu", "gonghao", "dbo.teacher");
            DropForeignKey("dbo.keti", "gonghao", "dbo.teacher");
            AlterColumn("dbo.xibu", "xibuNa", c => c.String(nullable: false, maxLength: 20, unicode: false));
            AlterColumn("dbo.rongyu", "title", c => c.String(nullable: false, maxLength: 20, unicode: false));
            AlterColumn("dbo.teacher", "season", c => c.String(maxLength: 10, unicode: false));
            AlterColumn("dbo.teacher", "project", c => c.String(maxLength: 10, unicode: false));
            AlterColumn("dbo.teacher", "classname", c => c.String(maxLength: 10, unicode: false));
            AlterColumn("dbo.teacher", "mail", c => c.String(maxLength: 30, unicode: false));
            AlterColumn("dbo.teacher", "teachertype", c => c.String(maxLength: 10, unicode: false));
            AlterColumn("dbo.teacher", "jiankang", c => c.String(maxLength: 5, unicode: false));
            AlterColumn("dbo.teacher", "zhengzhi", c => c.String(maxLength: 5, unicode: false));
            AlterColumn("dbo.teacher", "birthplace", c => c.String(maxLength: 12, unicode: false));
            AlterColumn("dbo.teacher", "usertype", c => c.String(nullable: false, maxLength: 10, unicode: false));
            AlterColumn("dbo.teacher", "hunyin", c => c.String(maxLength: 5, unicode: false));
            AlterColumn("dbo.teacher", "sex", c => c.String(nullable: false, maxLength: 5, unicode: false));
            AlterColumn("dbo.teacher", "minzu", c => c.String(maxLength: 10, unicode: false));
            AlterColumn("dbo.teacher", "jiguan", c => c.String(maxLength: 20, unicode: false));
            AlterColumn("dbo.teacher", "name2", c => c.String(maxLength: 50, unicode: false));
            AlterColumn("dbo.teacher", "name", c => c.String(nullable: false, maxLength: 50, unicode: false));
            AlterColumn("dbo.teacher", "pwd", c => c.String(nullable: false, maxLength: 50, unicode: false));
            AlterColumn("dbo.keti", "status", c => c.String(nullable: false, maxLength: 10, fixedLength: true, unicode: false));
            AlterColumn("dbo.keti", "people", c => c.String(nullable: false, maxLength: 20, unicode: false));
            AlterColumn("dbo.keti", "title", c => c.String(nullable: false, maxLength: 50, unicode: false));
            AddForeignKey("dbo.teacher", "xibuId", "dbo.xibu", "ID");
            AddForeignKey("dbo.rongyu", "gonghao", "dbo.teacher", "gonghao");
            AddForeignKey("dbo.keti", "gonghao", "dbo.teacher", "gonghao");
        }
    }
}
