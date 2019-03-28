namespace TeacherCC.Entity
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("rongyu")]
    public partial class rongyu
    {
        public int ID { get; set; }

        [Required]
        public DateTime Adddate { get; set; }

        [StringLength(50)]
        [Required]
        public string text { get; set; }

        public int gonghao { get; set; }

        public virtual teacher teacher { get; set; }
    }
}
