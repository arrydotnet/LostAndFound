using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using LostnFound.DataLayer.Services;
using LostnFound.DataLayer.PocoClasses;

namespace LostAndFound.Web
{
    public class LostAndFoundController : ApiController
    {
        // GET api/<controller>
        [HttpGet]
        public HttpResponseMessage GetAllLostData()
        {
            var ltObj= new LostService().getAllLostItems();
            var json = new System.Web.Script.Serialization.JavaScriptSerializer().Serialize(ltObj);
            HttpResponseMessage response = Request.CreateResponse(HttpStatusCode.OK, json);
            return response;
        }
        [HttpGet]
        public HttpResponseMessage GetAllData(int enumData, int ID = 0)
        {
            var ltObj= new LostService().getAllData((EnumLocationType)enumData, ID);
            var json = new System.Web.Script.Serialization.JavaScriptSerializer().Serialize(ltObj);
            HttpResponseMessage response = Request.CreateResponse(HttpStatusCode.OK, json);
            return response;
        }
        public HttpResponseMessage GetAllData([FromBody]string value)
        {
            //var ltObj= new LostService().AddLostItem((EnumLocationType)enumData, ID);
            //var json = new System.Web.Script.Serialization.JavaScriptSerializer().Serialize(ltObj);
            //HttpResponseMessage response = Request.CreateResponse(HttpStatusCode.OK, json);
            //return response;
            return null;
        }

        // POST api/<controller>
        public void Post([FromBody]string value)
        {
        }

        // PUT api/<controller>/5
        public void Put(int id, [FromBody]string value)
        {
        }

        // DELETE api/<controller>/5
        public void Delete(int id)
        {
        }
        
    }
}