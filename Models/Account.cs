namespace IgorMarinho_WebApp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class Account
    {
        [Key]
        public int acc_id { get; set; }

        [Required]
        public string acc_name { get; set; }

        public string ins { get; set; }

        public string outs { get; set; }

        public string ins_total { get; set; }

        public string outs_total { get; set; }
    }
}
