namespace LostnFound.DataLayer.PocoClasses
{
    public class LocationViewModel
    {
        public int ID { get; set; }
        public string Text { get; set; }
        public LocationViewModel() {  }
        public LocationViewModel(int _id, string _text) { ID = _id; Text = _text; }

    }
}
