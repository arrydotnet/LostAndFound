//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace LostnFound.DataLayer.PocoClasses
{
    
    public partial class LostFoundDetail
    {
        public int ID { get; set; }
        public int RequestID { get; set; }
        public int FoundByUserID { get; set; }
        public string FoundByName { get; set; }
        public string FoundByMsg { get; set; }
        public System.DateTime FoundDate { get; set; }
        public string MsgToSite { get; set; }
    }
}
