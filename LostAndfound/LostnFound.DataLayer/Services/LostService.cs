using LostnFound.DataLayer.PocoClasses;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LostnFound.DataLayer.Services
{
    public class LostService
    {
        public List<LostRequest> getAllLostItems()
        {
            List<LostRequest> lst = new List<LostRequest>();
            try
            {
                using (dbLostEntities db =new dbLostEntities())
                {
                    lst = db.tblLostRequests.Where(x => x.IsDeleted == false && x.IsActiveByAdmin == true && x.IsGivenToOwner == false)
                        .ToList()
                        .Select(x => new LostRequest(x)).ToList();

                }
            }
            catch (Exception ex)
            {
                //log
            }
            return lst;

        }
        public List<LocationViewModel> getAllData(EnumLocationType en, int ID)
        {
            List<LocationViewModel> lst = new List<LocationViewModel>();
            try
            {
                using (dbLostEntities db =new dbLostEntities())
                {
                    if (en == EnumLocationType.IsCountry)
                    {
                        lst = db.tblCountries.ToList().Select(x => new LocationViewModel(x.CountryID, x.CountryName)).ToList();
                    }
                    else if (en == EnumLocationType.IsState)
                    {
                        lst = db.tblStates.Where(x=>x.CountryID==ID).ToList().Select(x => new LocationViewModel(x.StateID, x.StateName)).ToList();
                    }
                    else if (en == EnumLocationType.IsCity)
                    {
                        lst = db.tblCities.Where(x => x.StateID == ID).ToList().Select(x => new LocationViewModel(x.CityID, x.CityName)).ToList();
                    }
                }
            }
            catch (Exception ex)
            {
                //log
            }
            return lst;
        }
        public int AddLostItem(LostRequest req)
        {
            int status=0;
            try
            {
                using (dbLostEntities db =new dbLostEntities())
                {
                    tblItem itm= new tblItem();
                    itm.ItemName = req.ItemName;
                    itm.ItemDetails = req.ItemDetails;
                    db.tblItems.Add(itm);

                    tblLostRequest tblLost = new tblLostRequest();
                    tblLost.tblItem = itm;//  tblLost.ItemID = req.ItemID;
                    tblLost.UserID = req.UserID;
                    tblLost.LostDateFrom = req.LostDateFrom;
                    tblLost.LostDateTo = req.LostDateTo;
                    tblLost.LostDetails = req.LostDetails;
                    tblLost.CountryID = req.CountryID;
                    tblLost.StateID = req.StateID;
                    tblLost.CityID = req.CityID;
                    tblLost.OtherCity = req.OtherCity;
                    tblLost.LostLocation = req.LostLocation;
                    tblLost.Email = req.Email;
                    tblLost.Phone1 = req.Phone1;
                    tblLost.Phone2 = req.Phone2;
                    tblLost.Address = req.Address;
                    tblLost.MessageToFounder = req.MessageToFounder;
                    tblLost.IsGivenToOwner = false;
                    tblLost.IsActiveByAdmin = false;
                    tblLost.IsDeleted = false;
                    db.tblLostRequests.Add(tblLost);
                    db.SaveChanges();
                    status = 1;
                }
            }
            catch (Exception ex)
            {
                //log
                status = -1;
            }
            return status;
        }
        
        public Boolean AddEditLostItems(LostRequest lostRequest)
        {
            Boolean flag=false;
            try
            {
                using (dbLostEntities db =new dbLostEntities())
                {

                    flag = true;
                }
            }
            catch (Exception ex)
            {
                //log
            }
            return flag;
        }

    }
}
