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
    
    public partial class tblUser
    {
        public tblUser()
        {
            this.tblConversation_Reply = new HashSet<tblConversation_Reply>();
            this.tblConversations = new HashSet<tblConversation>();
            this.tblFoundRequests = new HashSet<tblFoundRequest>();
            this.tblLostRequests = new HashSet<tblLostRequest>();
        }
    
        public int UserID { get; set; }
        public string UserName { get; set; }
        public string Password { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public Nullable<bool> IsActive { get; set; }
        public System.DateTime AddedOn { get; set; }
        public Nullable<System.DateTime> LastLogin { get; set; }
        public string FbLoginData { get; set; }
    
        public virtual ICollection<tblConversation_Reply> tblConversation_Reply { get; set; }
        public virtual ICollection<tblConversation> tblConversations { get; set; }
        public virtual tblConversation tblConversation { get; set; }
        public virtual ICollection<tblFoundRequest> tblFoundRequests { get; set; }
        public virtual ICollection<tblLostRequest> tblLostRequests { get; set; }
    }
}
