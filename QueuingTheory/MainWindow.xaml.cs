using QueuingTheory.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace QueuingTheory
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }

        private void Calculate(object sender, RoutedEventArgs e)
        {
            List<ChartItem> servedItems = new List<ChartItem>();
            List<ChartItem> refusedItems = new List<ChartItem>();
            List<ChartItem> inQueueItems = new List<ChartItem>();

            double lambda = Convert.ToDouble(this.inputRate.Text);
            double avgTime = Convert.ToDouble(this.avgTime.Text);
            double mu = 60d / avgTime;
            int workersCount = Convert.ToInt32(this.workersCount.Text);
            int maxLength = Convert.ToInt32(this.maxLength.Text);
            double time = Convert.ToDouble(this.time.Text);

            double ro = (lambda / mu) / workersCount;
            float dt = 0.001f;
            List<Worker> workers = new List<Worker>();
            for(int i = 0; i < workersCount; i++)
            {
                workers.Add(new Worker());
            }
            avgTime = avgTime / 60;
            double p = 1 - Math.Pow(Math.E, (-1d) * lambda*dt);
            int queue = 0;
            Random randomGenerator = new Random();
            int came = 0;
            for(float t = 0; t < time; t += dt)
            {

                double random = randomGenerator.NextDouble();

                var nt = Math.Round(t);
                var servedItem = new ChartItem
                {
                    Time = nt
                };
                if (random < p)
                {
                    came++;
                    if (queue > maxLength)
                    {
                        if (!refusedItems.Any((i) => i.Time == nt))
                        {
                            refusedItems.Add(new ChartItem
                            {
                                Time = nt,
                                Value = 1d,
                            });
                        }
                        else
                        {
                            var index = refusedItems.FindIndex((i) => i.Time == nt);
                            refusedItems[index].Value += 1d;
                        }
                        queue--;
                    }

                    inQueueItems.Add(new ChartItem
                    {
                        Time = nt,
                        Value = queue,
                    });
                    queue++;
                      
                    for(int i = 0; i < workersCount && queue > 0; i++)
                    {
                        if(workers[i].serves >= avgTime)
                        {
                            workers[i].Served();
                        }
                        if (!workers[i].busy)
                        {
                            queue--;
                            servedItem.Value += 1d;
                            workers[i].busy = true;
                            workers[i].served++;
                        }
                        else
                        {
                            workers[i].serves += dt;
                        }
                    }
                }
                else
                {
                    for (int i = 0; i < workersCount; i++)
                    {
                        if (workers[i].serves >= avgTime)
                        {
                            workers[i].Served();
                        }
                        else
                        {
                            workers[i].serves += dt;
                        }
                    }
                }
                if (!servedItems.Any((i) => i.Time == nt))
                {
                    servedItems.Add(servedItem);
                }
                else
                {
                    var index = servedItems.FindIndex((i) => i.Time == nt);
                    servedItems[index].Value += servedItem.Value;
                }

            }
            p = Math.Pow(Math.E, (-1d) * lambda);
            double L = ro * ro / (1d - ro);

            string client = "հարցում";
            List<Property> items = new List<Property>
            {
                new Property { Name = "Հարցման սպասարկման հաճախությունը", Value = mu.ToString(), Measurement = "հ/ժ"},
                new Property { Name = "1 ժամում գոնե 1 հարցում գալու հավանականությունը", Value = (1 - p).ToString(), },
                new Property { Name = "1 ժամում ոչ մի հարցում գալու հավանականությունը", Value = p.ToString(), },
                new Property { Name = "Սպասարկողի ծանրաբեռնվածությունը", Value = ro.ToString(), },
                new Property { Name = "Սպասարկողի ազատ մնալու հավանականությունը", Value = (1d - ro).ToString(), },
                new Property { Name = "Սպասարկողի զբաղված լինելու հավանականությունը", Value = ro.ToString(), },
                new Property { Name = "Հերթում եղած հարցումների միջին թիվը", Value = L.ToString(), Measurement = client },
                new Property { Name = "Հերթում սպասման միջին ժամանակը", Value = (L/lambda).ToString(), Measurement = "ժամ" },
                
                new Property { Name = "Ընդհանուր ժամանած հարցումների քանակը", Value = came.ToString(), Measurement = "հարցում" },
                new Property { Name = "Սպասարկված են", Value = workers.Select((w)=>w.served).Sum().ToString(), Measurement = client },
                new Property { Name = "Մերժված են", Value = refusedItems.Count.ToString(), Measurement = client }
            };

            for (int i = 0; i < workers.Count; i++)
            {
                items.Add(
                    new Property
                    {
                        Name = "Սպասարկող " + i,
                        Value = workers[i].served.ToString(),
                        Measurement = client
                    });
            }

            data.ItemsSource = items;
            served.ItemsSource = servedItems;
            refused.ItemsSource = refusedItems;
            inQueue.ItemsSource = (from customer in inQueueItems
                                   group customer by customer.Time into g
                                   select new ChartItem
                                   {
                                       Time = g.Key,
                                       Value = g.Average(c => c.Value)
                                   });
        }

    }
}
