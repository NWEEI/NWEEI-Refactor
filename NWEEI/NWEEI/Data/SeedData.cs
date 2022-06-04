using System;
using NWEEI.Models;
using System.Linq;

namespace NWEEI.Data
{
    public class SeedData
    {
        // seeds custom training options
        public static void SeedCustomTrainingOptions(NWEEIContext context)
        {
            // seed data if CustomTrainingOptions table is empty
            if (!context.CustomTrainingOptions.Any())
            {
                // create CustomTrainingOptions objects and add them to db
                CustomTrainingOption ct1 = new CustomTrainingOption
                {
                    Name = "Energy Basics",
                    TrainingDetails =
                    {
                        "Introduction and overview of the Energy industry",
                        "Sensible/latent heat equations; psychometrics",
                        "Heating/cooling load equations and basic sizing",
                        "Energy conversion between different fuel types",
                        "Conversion of different units of energy/power",
                        "The refrigeration process",
                        "Interpreting and understanding different Energy " +
                            "ratings (SEER, EERs AFUEs, COP)",
                        "Fundamental building systems and terminology",
                        "The physics of heating, ventilation, and air conditioning " +
                            "systems (HVAC)"
                    }
                };
                context.CustomTrainingOptions.Add(ct1);

                CustomTrainingOption ct2 = new CustomTrainingOption
                {
                    Name = "Residential Energy",
                    TrainingDetails =
                    {
                        "BPI Residential Inspector Certification (CSC)",
                        "BPI Residential Auditor Certification (CSC)",
                        "Energy efficient heating and cooling systems",
                        "Blower door and duct blaster basics",
                        "Basic heat loss calculations",
                        "Indoor air pollution/air quality",
                        "Stack effect, energy flow, pressure, and heat transfer " +
                            "through building envelope"
                    }
                };
                context.CustomTrainingOptions.Add(ct2);

                CustomTrainingOption ct3 = new CustomTrainingOption
                {
                    Name = "Building System Operation",
                    TrainingDetails =
                    {
                        "HVAC Classification (Unitary, single zone and " +
                            "multi-zone secondary systems)",
                        "Educational walkthroughs of HVAC equipment along with " +
                            "typical operation",
                        "Typical HVAC operation (fans, pumps, dampers, control " +
                            "valves and ducting)",
                        "Basics of electric, pneumatic, and digital controls",
                        "Control theory, device identification and typical operation",
                        "Control strategies to estimate energy savings",
                        "Compressed Air Challenge",
                        "Water Efficiency & Conservation",
                        "System Maintenance"
                    }
                };
                context.CustomTrainingOptions.Add(ct3);

                CustomTrainingOption ct4 = new CustomTrainingOption
                {
                    Name = "Analysis of Energy Use in Commercial Buildings",
                    TrainingDetails =
                    {
                        "Utility Bill analysis and addressing high energy bill concerns",
                        "Establishing an energy utilization index (EUI)",
                        "End use splits for major energy using systems (Space Heating, " +
                            "Space Cooling, Ventilation, Lighting, Plug load, etc.)",
                        "Benchmarking buildings with EPA’s Portfolio Manager",
                        "Energy/cost savings associated with different efficiency " +
                            "improvement strategies",
                        "Evaluate lighting system performance of luminaries and " +
                            "associated components",
                        "Lighting and HVAC interactions",
                        "Calculating power density (watts sq/ft)",
                        "Interpreting Auditing data",
                        "Heating Degree Days, Bin Data, Hourly Simulation (eQuest)",
                        "Energy Modeling and Simulation (eQuest / DOE2)"
                    }
                };
                context.CustomTrainingOptions.Add(ct4);

                CustomTrainingOption ct5 = new CustomTrainingOption
                {
                    Name = "Energy Auditing Concepts",
                    TrainingDetails =
                    {
                        "Data collection and organizational techniques",
                        "Datalogger installation/usage to verify equipment " +
                            "operation, building performance and energy consumption",
                        "Determining energy/power usage in various systems",
                        "Light sources, luminaries, controls & operations",
                        "Creating and adjusting building baselines, cost " +
                            "avoidance, load factor, data analysis",
                        "Supervised Field Audits (ASHRAE Levels I, II & III)",
                        "Conducting a lighting audit",
                        "Identifying energy efficiency measures",
                        "Designing and writing a quality audit report",
                        "Energy Savings Concepts and Calculations (Simply payback, " +
                            "Life cycle cost, Low cost/no cost improvement)",
                        "Energy Investment Concepts and Calculations (Cost estimating " +
                            "procedures, Time value of money, Cash flow equivalence, " +
                            "Cost-benefit analysis, Effects of tax credits, Depreciation " +
                            "vs Inflation and/or escalating fuel costs on energy investments)"
                    }
                };
                context.CustomTrainingOptions.Add(ct5);

                CustomTrainingOption ct6 = new CustomTrainingOption
                {
                    Name = "Integrating Sustainability Concepts into the Built Environment",
                    TrainingDetails =
                    {
                        "Emerging Conservation Technologies",
                        "Sustainability Assessments",
                        "Carbon footprints in complex organizations",
                        "Environmental, social, and economic advantages of different " +
                            "alternative energy technologies",
                        "Alternative energy technology overview (geothermal, wind, " +
                            "low head hydro, solar and biomass)",
                        "Understanding the LEED framework and Green buildings",
                        "Green Procurement"
                    }
                };
                context.CustomTrainingOptions.Add(ct6);

                CustomTrainingOption ct7 = new CustomTrainingOption
                {
                    Name = "Water Efficiency",
                    TrainingDetails =
                    {
                        "Introduction and overview of the water industry",
                        "Conservation program design, implementation, evaluation, and marketing",
                        "Water usage patterns for rural, urban, residential, and commercial sites",
                        "Effective efficiency measures and utilizing alternate water sources",
                        "Water distribution, flow, and elimination systems; " +
                            "basic hydraulics; quality issues; balance and time of use",
                        "Water accessibility, supply and demand issues, seasonal " +
                            "stressors, legal rights",
                        "Monitoring, collecting, interpreting, and analyzing data to " +
                            "evaluate effectiveness of programs",
                        "Program modification over time to maximize savings",
                        "Water and cost savings calculations that contribute to " +
                            "comprehensive cost/benefit analysis reports",
                        "Stormwater and alternative water"
                    }
                };
                context.CustomTrainingOptions.Add(ct7);

                CustomTrainingOption ct8 = new CustomTrainingOption
                {
                    Name = "Resource Conservation Management",
                    TrainingDetails =
                    {
                        "Traditional Internal procurement processes",
                        "Collaborating with vendors to prioritize responsible procurement",
                        "Supply chain, consumption, waste, and climate change",
                        "Indicators and benchmarks for the specific buildings",
                        "Setting goals for performance, selecting, and making appropriate " +
                            "calculations then accurately reporting performance"
                    }
                };
                context.CustomTrainingOptions.Add(ct8);
                context.SaveChanges();
            }
        }
    }
}
