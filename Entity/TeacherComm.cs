namespace TeacherCC.Entity
{
    using System;
    using System.Data.Entity;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Linq;

    public partial class TeacherComm : DbContext
    {
        public TeacherComm()
            : base("name=TeacherComm")
        {
        }

        public virtual DbSet<keti> keti { get; set; }
        public virtual DbSet<rongyu> rongyu { get; set; }
        public virtual DbSet<teacher> teacher { get; set; }
        public virtual DbSet<xibu> xibu { get; set; }
    }
}
