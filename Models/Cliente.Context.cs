﻿

//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------


namespace WebApplication1_IgorMarinhoCarneiroRodrigues2021.Models
{

using System;
using System.Data.Entity;
using System.Data.Entity.Infrastructure;


public partial class ClienteContainer : DbContext
{
    public ClienteContainer()
        : base("name=ClienteContainer")
    {

    }

    protected override void OnModelCreating(DbModelBuilder modelBuilder)
    {
        throw new UnintentionalCodeFirstException();
    }


    public virtual DbSet<Cliente> Clientes { get; set; }

}

}

