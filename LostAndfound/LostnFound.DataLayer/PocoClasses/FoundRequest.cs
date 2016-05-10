using System;
namespace LostnFound.DataLayer.PocoClasses
{
    public class FoundRequest
    {
        public int RequestID { get; set; }
        public int UserID { get; set; }
        public int ItemID { get; set; }
        public Nullable<System.DateTime> LostDateFrom { get; set; }
        public Nullable<System.DateTime> LostDateTo { get; set; }
        public string FoundDetails { get; set; }
        public int  CountryID { get; set; }
        public int  StateID { get; set; }
        public int  CityID { get; set; }
        public string OtherCity { get; set; }
        public string FoundLocation { get; set; }
        public string Email { get; set; }
        public string Phone1 { get; set; }
        public string Phone2 { get; set; }
        public string Address { get; set; }
        public string MessageToSeeker { get; set; }
        public bool IsGivenToOwner { get; set; }
        public bool IsActiveByAdmin { get; set; }
        public bool IsDeleted { get; set; }
        
    
    }
}
