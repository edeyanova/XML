using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Xml;

namespace BlancApplying
{
    class Program
    {
        static void Main(string[] args)
        {
            XmlDocument doc = new XmlDocument();
            doc.Load(@"..\..\XMLFile.xml");

            XmlElement applicant = doc.LastChild.FirstChild.FirstChild as XmlElement;
            foreach (XmlAttribute attr in applicant.Attributes)
	        {
                Console.WriteLine("{0}: {1}",attr.Name,attr.Value);
	        }
            foreach (XmlElement child in applicant.ChildNodes)
            {
                foreach (XmlAttribute attr in child.Attributes)
                {
                    Console.WriteLine("{0}: {1}",attr.Name,attr.Value);
                }
            }
            
        }
    }
}
