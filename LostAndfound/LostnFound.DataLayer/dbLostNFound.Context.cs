﻿//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace LostnFound.DataLayer
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class dbLostEntities : DbContext
    {
        public dbLostEntities()
            : base("name=dbLostEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public DbSet<tblCity> tblCities { get; set; }
        public DbSet<tblConversation_Reply> tblConversation_Reply { get; set; }
        public DbSet<tblConversation> tblConversations { get; set; }
        public DbSet<tblCountry> tblCountries { get; set; }
        public DbSet<tblFoundRequest> tblFoundRequests { get; set; }
        public DbSet<tblItem> tblItems { get; set; }
        public DbSet<tblLostFoundDetail> tblLostFoundDetails { get; set; }
        public DbSet<tblLostRequest> tblLostRequests { get; set; }
        public DbSet<tblState> tblStates { get; set; }
        public DbSet<tblUser> tblUsers { get; set; }
    }
}
