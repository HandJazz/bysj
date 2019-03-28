namespace TeacherCC.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class InitCreate : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.keti",
                c => new
                    {
                        id = c.Int(nullable: false, identity: true),
                        gonghao = c.Int(nullable: false),
                        title = c.String(nullable: false, maxLength: 50, unicode: false),
                        text = c.String(nullable: false, unicode: false, storeType: "text"),
                        people = c.String(nullable: false, maxLength: 20, unicode: false),
                        shenbaodate = c.DateTime(nullable: false),
                        startdate = c.DateTime(nullable: false),
                        enddate = c.DateTime(nullable: false),
                        status = c.String(nullable: false, maxLength: 10, fixedLength: true, unicode: false),
                    })
                .PrimaryKey(t => t.id)
                .ForeignKey("dbo.teacher", t => t.gonghao)
                .Index(t => t.gonghao);
            
            CreateTable(
                "dbo.teacher",
                c => new
                    {
                        gonghao = c.Int(nullable: false),
                        pwd = c.String(nullable: false, maxLength: 50, unicode: false),
                        name = c.String(nullable: false, maxLength: 50, unicode: false),
                        name2 = c.String(maxLength: 50, unicode: false),
                        shenfennu = c.Int(nullable: false),
                        jiguan = c.String(maxLength: 10, unicode: false),
                        minzu = c.String(maxLength: 7, unicode: false),
                        sex = c.String(nullable: false, maxLength: 50, unicode: false),
                        hunyin = c.String(maxLength: 5, unicode: false),
                        worktime = c.DateTime(),
                        xibuId = c.Int(nullable: false),
                        cellphone = c.Int(),
                        usertype = c.String(nullable: false, maxLength: 50, unicode: false),
                        birthday = c.DateTime(),
                        birthplace = c.String(maxLength: 12, unicode: false),
                        zhengzhi = c.String(maxLength: 5, unicode: false),
                        jiankang = c.String(maxLength: 5, unicode: false),
                        teachertype = c.String(maxLength: 10, unicode: false),
                        mail = c.String(maxLength: 20, unicode: false),
                        classname = c.String(maxLength: 10, unicode: false),
                        project = c.String(maxLength: 10, unicode: false),
                        season = c.String(maxLength: 10, unicode: false),
                        twork = c.String(unicode: false, storeType: "text"),
                        tlearn = c.String(unicode: false, storeType: "text"),
                    })
                .PrimaryKey(t => t.gonghao)
                .ForeignKey("dbo.xibu", t => t.xibuId)
                .Index(t => t.xibuId);
            
            CreateTable(
                "dbo.rongyu",
                c => new
                    {
                        ID = c.Int(nullable: false, identity: true),
                        title = c.String(nullable: false, maxLength: 50, unicode: false),
                        text = c.String(nullable: false, unicode: false, storeType: "text"),
                        gonghao = c.Int(nullable: false),
                        AddDate = c.DateTime(nullable: false),
                    })
                .PrimaryKey(t => t.ID)
                .ForeignKey("dbo.teacher", t => t.gonghao)
                .Index(t => t.gonghao);
            
            CreateTable(
                "dbo.xibu",
                c => new
                    {
                        ID = c.Int(nullable: false, identity: true),
                        xibuNa = c.String(nullable: false, maxLength: 50, unicode: false),
                    })
                .PrimaryKey(t => t.ID);
            
        }
        
        public override void Down()
        {
            DropForeignKey("dbo.teacher", "xibuId", "dbo.xibu");
            DropForeignKey("dbo.rongyu", "gonghao", "dbo.teacher");
            DropForeignKey("dbo.keti", "gonghao", "dbo.teacher");
            DropIndex("dbo.rongyu", new[] { "gonghao" });
            DropIndex("dbo.teacher", new[] { "xibuId" });
            DropIndex("dbo.keti", new[] { "gonghao" });
            DropTable("dbo.xibu");
            DropTable("dbo.rongyu");
            DropTable("dbo.teacher");
            DropTable("dbo.keti");
        }
    }
}
