namespace TeacherCC.Entity
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("keti")]
    public partial class keti
    {
        public int id { get; set; }

        public int gonghao { get; set; }

        [Required]
        [StringLength(50)]
        public string title { get; set; }

        [Required]
        [StringLength(20)]
        public string people { get; set; }

        public DateTime shenbaodate { get; set; }

        public DateTime startdate { get; set; }

        public DateTime enddate { get; set; }

        public virtual teacher teacher { get; set; }
    }
}
