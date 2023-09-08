using Humanizer;
using System.Runtime.Serialization;

namespace MobileShop.Web.Models
{
    [DataContract]
    public class ColumnDataPoint
    {
        public ColumnDataPoint(string label, long y)
        {
            this.label = label;
            this.Y = y;
        }

        //Explicitly setting the name to be used while serializing to JSON.
        [DataMember(Name = "y")]
        public Nullable<long> Y = null;

        //Explicitly setting the name to be used while serializing to JSON.

        [DataMember(Name = "label")]
        public string label;
    }
}