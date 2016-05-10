namespace LostnFound.DataLayer.PocoClasses
{
    public partial class Conversation_Reply
    {
        public int Conv_ReplyID { get; set; }
        public string ReplyText { get; set; }
        public int UserID { get; set; }
        public int Conv_ID { get; set; }
        public string IP { get; set; }
        public System.TimeSpan Time { get; set; }
    }
}
