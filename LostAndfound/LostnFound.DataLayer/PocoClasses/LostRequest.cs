using System;
namespace LostnFound.DataLayer.PocoClasses
{
    public class LostRequest
    {
        public int RequestID { get; set; }
        public int UserID { get; set; }
        public int ItemID { get; set; }
        public Nullable<System.DateTime> LostDateFrom { get; set; }
        public Nullable<System.DateTime> LostDateTo { get; set; }
        public string LostDetails { get; set; }
        public int CountryID { get; set; }
        public int StateID { get; set; }
        public int CityID { get; set; }
        public string OtherCity { get; set; }
        public string LostLocation { get; set; }
        public string Email { get; set; }
        public string Phone1 { get; set; }
        public string Phone2 { get; set; }
        public string Address { get; set; }
        public string MessageToFounder { get; set; }
        public bool IsGivenToOwner { get; set; }
        public bool IsActiveByAdmin { get; set; }
        public bool IsDeleted { get; set; }
        //extras
        public string ItemName { get; set; }
        public string ItemDetails { get; set; }

        public string UserName { get; set; }


        public string CountryName { get; set; }
        public string StateName { get; set; }
        public string CityName { get; set; }


        public LostRequest(tblLostRequest request)
        {
            this.RequestID = request.RequestID;
            this.UserID = request.UserID;
            this.ItemID = request.ItemID;
            this.LostDateFrom = request.LostDateFrom;
            this.LostDateTo = request.LostDateTo;
            this.LostDetails = request.LostDetails;
            this.CountryName = request.tblCountry.CountryName;
            this.StateName = request.tblState.StateName;
            this.CityName =  request.tblCity.CityName;
            this.OtherCity = request.OtherCity;
            this.LostLocation = request.LostLocation;
            this.Email = request.Email;
            this.Phone1 = request.Phone1;
            this.Phone2 = request.Phone2;
            this.Address = request.Address;
            this.MessageToFounder = request.MessageToFounder;
            this.IsGivenToOwner = request.IsGivenToOwner;
            this.IsActiveByAdmin = request.IsActiveByAdmin;
            this.IsDeleted = request.IsDeleted;
            this.ItemName = request.tblItem.ItemName;
            this.ItemDetails = request.tblItem.ItemDetails;
            this.UserName = request.tblUser.FirstName + " " + request.tblUser.LastName;
        }

    }
}
