using MobileShop.Web.Models;
using Newtonsoft.Json;
using System.Text;

namespace MobileShop.Web.Helper
{
    public static class Chart
    {
        public static string LineChart<T>(
        this List<T> list,
        Func<T, long> ySelector,
        Func<T, DateTime> timeLabelSelector)
        {
            StringBuilder dataPoints = new StringBuilder();
            dataPoints.Append("[");
            foreach (T item in list)
            {
                var time = timeLabelSelector(item);
                var y = ySelector(item);
                dataPoints.Append($"{{ x: new Date({time.Year}, {time.Month - 1}, {time.Day}), y: {y} }},");
            }
            dataPoints.Append("]");
            return dataPoints.ToString();
        }

        public static string ColumnChart<T>(
        this List<T> list,
        Func<T, long> ySelector,
        Func<T, string> labelSelector)
        {
            var dataPoints = new List<ColumnDataPoint>();
            foreach (var item in list)
            {
                var y = ySelector(item);
                var label = labelSelector(item);
                var point = new ColumnDataPoint(label, y);

                dataPoints.Add(point);
            }
            return JsonConvert.SerializeObject(dataPoints);
        }

        public static string PieChart<T>(
        this List<T> list,
        Func<T, long> ySelector,
        Func<T, string> labelSelector)
        {
            var dataPoints = new List<ColumnDataPoint>();
            foreach (var item in list)
            {
                var y = ySelector(item);
                var label = labelSelector(item);
                var point = new ColumnDataPoint(label, y);

                dataPoints.Add(point);
            }
            return JsonConvert.SerializeObject(dataPoints);
        }
    }
}