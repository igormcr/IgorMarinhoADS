using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace IgorMarinho_WebApp.Models
{
    public class TableViewModel
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
