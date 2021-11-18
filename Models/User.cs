namespace IgorMarinho_WebApp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class User
    {
        [Key]
        public int user_id { get; set; }

        [Required]
        [StringLength(50)]
        public string username { get; set; }

        [Required]
        public string pass { get; set; }

        [Required]
        public string fullname { get; set; }

        public DateTime? reg_date { get; set; }
    }
}
