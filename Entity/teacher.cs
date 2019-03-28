namespace TeacherCC.Entity
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("teacher")]
    public partial class teacher
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public teacher()
        {
            keti = new HashSet<keti>();
            rongyu = new HashSet<rongyu>();
        }

        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int gonghao { get; set; }

        [Required]
        [StringLength(50)]
        public string pwd { get; set; }

        [Required]
        [StringLength(50)]
        public string name { get; set; }

        [StringLength(50)]
        public string name2 { get; set; }

        [StringLength(20)]
        public string shenfennu { get; set; }

        [StringLength(20)]
        public string jiguan { get; set; }

        [StringLength(10)]
        public string minzu { get; set; }

        [Required]
        [StringLength(5)]
        public string sex { get; set; }

        [StringLength(5)]
        public string hunyin { get; set; }

        public DateTime? worktime { get; set; }

        public int xibuId { get; set; }

        [StringLength(15)]
        public string cellphone { get; set; }

        [Required]
        [StringLength(10)]
        public string usertype { get; set; }

        public DateTime? birthday { get; set; }

        [StringLength(12)]
        public string birthplace { get; set; }

        [StringLength(5)]
        public string zhengzhi { get; set; }

        [StringLength(5)]
        public string jiankang { get; set; }

        [StringLength(10)]
        public string teachertype { get; set; }

        [StringLength(30)]
        public string mail { get; set; }

        [StringLength(20)]
        public string classname { get; set; }

        [StringLength(20)]
        public string project { get; set; }

        [StringLength(10)]
        public string season { get; set; }

        [StringLength(500)]
        public string twork { get; set; }

        [StringLength(500)]
        public string tlearn { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<keti> keti { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<rongyu> rongyu { get; set; }

        public virtual xibu xibu { get; set; }
    }
}
