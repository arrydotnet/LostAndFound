using System;
namespace LostnFound.DataLayer.PocoClasses
{
    public  class User
    {
        public int UserID { get; set; }
        public string UserName { get; set; }
        public string Password { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public bool IsActive { get; set; }
        public DateTime AddedOn { get; set; }
        public DateTime LastLogin { get; set; }
        public string FbLoginData { get; set; }
    }
}
