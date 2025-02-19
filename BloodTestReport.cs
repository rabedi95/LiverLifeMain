using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LiverLife
{
    public class BloodTestReport
    {
        public DateTime TestDate { get; set; }
        public double AST { get; set; }
        public double ALT { get; set; }
        public double Bilirubin { get; set; }
        public double INR { get; set; }
        public double Albumin { get; set; }

        // Constructor (optional)
        public BloodTestReport(DateTime testDate, double ast, double alt, double bilirubin, double inr, double albumin)
        {
            TestDate = testDate;
            AST = ast;
            ALT = alt;
            Bilirubin = bilirubin;
            INR = inr;
            Albumin = albumin;
        }
    }
}
