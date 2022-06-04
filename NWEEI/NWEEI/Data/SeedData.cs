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
                        new TrainingDetail("Introduction and overview of the Energy industry"),
                        new TrainingDetail("Sensible/latent heat equations; psychometrics"),
                        new TrainingDetail("Heating/cooling load equations and basic sizing"),
                        new TrainingDetail("Energy conversion between different fuel types"),
                        new TrainingDetail("Conversion of different units of energy/power"),
                        new TrainingDetail("The refrigeration process"),
                        new TrainingDetail("Interpreting and understanding different Energy " +
                            "ratings (SEER, EERs AFUEs, COP)"),
                        new TrainingDetail("Fundamental building systems and terminology"),
                        new TrainingDetail("The physics of heating, ventilation, and air conditioning " +
                            "systems (HVAC)")
                    }
                };
                context.CustomTrainingOptions.Add(ct1);

                CustomTrainingOption ct2 = new CustomTrainingOption
                {
                    Name = "Residential Energy",
                    TrainingDetails =
                    {
                        new TrainingDetail("BPI Residential Inspector Certification (CSC)"),
                        new TrainingDetail("BPI Residential Auditor Certification (CSC)"),
                        new TrainingDetail("Energy efficient heating and cooling systems"),
                        new TrainingDetail("Blower door and duct blaster basics"),
                        new TrainingDetail("Basic heat loss calculations"),
                        new TrainingDetail("Indoor air pollution/air quality"),
                        new TrainingDetail("Stack effect, energy flow, pressure, and heat transfer " +
                            "through building envelope")
                    }
                };
                context.CustomTrainingOptions.Add(ct2);

                CustomTrainingOption ct3 = new CustomTrainingOption
                {
                    Name = "Building System Operation",
                    TrainingDetails =
                    {
                        new TrainingDetail("HVAC Classification (Unitary, single zone and " +
                            "multi-zone secondary systems)"),
                        new TrainingDetail("Educational walkthroughs of HVAC equipment along with " +
                            "typical operation"),
                        new TrainingDetail("Typical HVAC operation (fans, pumps, dampers, control " +
                            "valves and ducting)"),
                        new TrainingDetail("Basics of electric, pneumatic, and digital controls"),
                        new TrainingDetail("Control theory, device identification and typical operation"),
                        new TrainingDetail("Control strategies to estimate energy savings"),
                        new TrainingDetail("Compressed Air Challenge"),
                        new TrainingDetail("Water Efficiency & Conservation"),
                        new TrainingDetail("System Maintenance")
                    }
                };
                context.CustomTrainingOptions.Add(ct3);

                CustomTrainingOption ct4 = new CustomTrainingOption
                {
                    Name = "Analysis of Energy Use in Commercial Buildings",
                    TrainingDetails =
                    {
                        new TrainingDetail("Utility Bill analysis and addressing high energy bill concerns"),
                        new TrainingDetail("Establishing an energy utilization index (EUI)"),
                        new TrainingDetail("End use splits for major energy using systems (Space Heating, " +
                            "Space Cooling, Ventilation, Lighting, Plug load, etc.)"),
                        new TrainingDetail("Benchmarking buildings with EPA’s Portfolio Manager"),
                        new TrainingDetail("Energy/cost savings associated with different efficiency " +
                            "improvement strategies"),
                        new TrainingDetail("Evaluate lighting system performance of luminaries and " +
                            "associated components"),
                        new TrainingDetail("Lighting and HVAC interactions"),
                        new TrainingDetail("Calculating power density (watts sq/ft)"),
                        new TrainingDetail("Interpreting Auditing data"),
                        new TrainingDetail("Heating Degree Days, Bin Data, Hourly Simulation (eQuest)"),
                        new TrainingDetail("Energy Modeling and Simulation (eQuest / DOE2)")
                    }
                };
                context.CustomTrainingOptions.Add(ct4);

                CustomTrainingOption ct5 = new CustomTrainingOption
                {
                    Name = "Energy Auditing Concepts",
                    TrainingDetails =
                    {
                        new TrainingDetail("Data collection and organizational techniques"),
                        new TrainingDetail("Datalogger installation/usage to verify equipment " +
                            "operation, building performance and energy consumption"),
                        new TrainingDetail("Determining energy/power usage in various systems"),
                        new TrainingDetail("Light sources, luminaries, controls & operations"),
                        new TrainingDetail("Creating and adjusting building baselines, cost " +
                            "avoidance, load factor, data analysis"),
                        new TrainingDetail("Supervised Field Audits (ASHRAE Levels I, II & III)"),
                        new TrainingDetail("Conducting a lighting audit"),
                        new TrainingDetail("Identifying energy efficiency measures"),
                        new TrainingDetail("Designing and writing a quality audit report"),
                        new TrainingDetail("Energy Savings Concepts and Calculations (Simply payback, " +
                            "Life cycle cost, Low cost/no cost improvement)"),
                        new TrainingDetail("Energy Investment Concepts and Calculations (Cost estimating " +
                            "procedures, Time value of money, Cash flow equivalence, " +
                            "Cost-benefit analysis, Effects of tax credits, Depreciation " +
                            "vs Inflation and/or escalating fuel costs on energy investments)")
                    }
                };
                context.CustomTrainingOptions.Add(ct5);

                CustomTrainingOption ct6 = new CustomTrainingOption
                {
                    Name = "Integrating Sustainability Concepts into the Built Environment",
                    TrainingDetails =
                    {
                        new TrainingDetail("Emerging Conservation Technologies"),
                        new TrainingDetail("Sustainability Assessments"),
                        new TrainingDetail("Carbon footprints in complex organizations"),
                        new TrainingDetail("Environmental, social, and economic advantages of different " +
                            "alternative energy technologies"),
                        new TrainingDetail("Alternative energy technology overview (geothermal, wind, " +
                            "low head hydro, solar and biomass)"),
                        new TrainingDetail("Understanding the LEED framework and Green buildings"),
                        new TrainingDetail("Green Procurement")
                    }
                };
                context.CustomTrainingOptions.Add(ct6);

                CustomTrainingOption ct7 = new CustomTrainingOption
                {
                    Name = "Water Efficiency",
                    TrainingDetails =
                    {
                        new TrainingDetail("Introduction and overview of the water industry"),
                        new TrainingDetail("Conservation program design, implementation, evaluation, and marketing"),
                        new TrainingDetail("Water usage patterns for rural, urban, residential, and commercial sites"),
                        new TrainingDetail("Effective efficiency measures and utilizing alternate water sources"),
                        new TrainingDetail("Water distribution, flow, and elimination systems; " +
                            "basic hydraulics; quality issues; balance and time of use"),
                        new TrainingDetail("Water accessibility, supply and demand issues, seasonal " +
                            "stressors, legal rights"),
                        new TrainingDetail("Monitoring, collecting, interpreting, and analyzing data to " +
                            "evaluate effectiveness of programs"),
                        new TrainingDetail("Program modification over time to maximize savings"),
                        new TrainingDetail("Water and cost savings calculations that contribute to " +
                            "comprehensive cost/benefit analysis reports"),
                        new TrainingDetail("Stormwater and alternative water")
                    }
                };
                context.CustomTrainingOptions.Add(ct7);

                CustomTrainingOption ct8 = new CustomTrainingOption
                {
                    Name = "Resource Conservation Management",
                    TrainingDetails =
                    {
                        new TrainingDetail("Traditional Internal procurement processes"),
                        new TrainingDetail("Collaborating with vendors to prioritize responsible procurement"),
                        new TrainingDetail("Supply chain, consumption, waste, and climate change"),
                        new TrainingDetail("Indicators and benchmarks for the specific buildings"),
                        new TrainingDetail("Setting goals for performance, selecting, and making appropriate " +
                            "calculations then accurately reporting performance")
                    }
                };
                context.CustomTrainingOptions.Add(ct8);
                context.SaveChanges();
            }
        }
    }
}
