//------------------------------------------------------------------------------
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
    using System.Collections.Generic;
    
    public partial class tblCountry
    {
        public tblCountry()
        {
            this.tblStates = new HashSet<tblState>();
            this.tblFoundRequests = new HashSet<tblFoundRequest>();
            this.tblLostRequests = new HashSet<tblLostRequest>();
        }
    
        public int CountryID { get; set; }
        public string CountryCode { get; set; }
        public string CountryName { get; set; }
    
        public virtual ICollection<tblState> tblStates { get; set; }
        public virtual ICollection<tblFoundRequest> tblFoundRequests { get; set; }
        public virtual ICollection<tblLostRequest> tblLostRequests { get; set; }
    }
}
