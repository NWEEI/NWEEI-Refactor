using System;
using System.Collections.Generic;
using System.Linq;
using NWEEI.Models;

namespace NWEEI.Repositories
{
    public class TrainingProgramTestRepo : ITrainingProgramRepo
    {
        private List<TrainingProgram> trainingPrograms = new List<TrainingProgram>();
        private List<CustomTrainingOption> customTrainingOptions = new List<CustomTrainingOption>();

        public IQueryable<TrainingProgram> TrainingPrograms
        {
            get
            {
                return trainingPrograms.AsQueryable<TrainingProgram>();
            }
        }

        // add a new trainingProgram
        public void AddTrainingProgram(TrainingProgram trainingProgram)
        {
            // attempt to retrieve existing trainingProgram
            TrainingProgram existingTrainingProgram = trainingPrograms.Find(p => p.Name == trainingProgram.Name);

            // add trainingProgram to list if it doesn't already exist
            if (existingTrainingProgram == null)
            {
                // simulate auto-incremented primary key and add article to list
                trainingProgram.TrainingProgramID = trainingPrograms.Count;
                trainingPrograms.Add(trainingProgram);
            }
            else
            {
                throw new Exception("TrainingProgram already exists");
            }
        }

        // get a list of all trainingPrograms
        public List<TrainingProgram> GetAllTrainingPrograms()
        {
            trainingPrograms = TrainingPrograms.ToList();

            return trainingPrograms;
        }

        // get a specific trainingProgram by its id
        public TrainingProgram GetTrainingProgramByID(int id)
        {
            TrainingProgram trainingProgram = trainingPrograms.Find(t => t.TrainingProgramID == id);
            return trainingProgram;
        }

        // update a trainingProgram
        public void UpdateTrainingProgram(TrainingProgram trainingProgram)
        {
            // retrieve trainingProgram from list
            TrainingProgram existingTrainingProgram = trainingPrograms.Find(t => t.TrainingProgramID == trainingProgram.TrainingProgramID);

            // update its properties
            existingTrainingProgram.Name = trainingProgram.Name;
        }

        // delete a trainingProgram
        public void DeleteTrainingProgram(TrainingProgram trainingProgram)
        {
            TrainingProgram existingTrainingProgram = trainingPrograms.Find(t => t.TrainingProgramID == trainingProgram.TrainingProgramID);
            trainingPrograms.Remove(existingTrainingProgram);
        }


        #region CustomTrainingOption methods

        public IQueryable<CustomTrainingOption> CustomTrainingOptions
        {
            get
            {
                return customTrainingOptions.AsQueryable<CustomTrainingOption>();
            }
        }

        // gets a list of all custom training options
        public List<CustomTrainingOption> GetCustomTrainingOptions()
        {
            return customTrainingOptions.ToList();
        }

        // gets a single custom training option by its id
        public CustomTrainingOption GetCustomTrainingOptionByID(int id)
        {
            return customTrainingOptions.Find(c => c.CustomTrainingOptionID == id);
        }

        // adds a custom training option to the db
        public void AddCustomTrainingOption(CustomTrainingOption trainingOption)
        {
            // attempt to retrieve existing training option
            CustomTrainingOption existingTrainingOption = customTrainingOptions
                .Find(c => c.Name == trainingOption.Name);

            // add training option to list if it doesn't already exist
            if (existingTrainingOption == null)
            {
                // simulate auto-incremented primary key and add training option to list
                trainingOption.CustomTrainingOptionID = customTrainingOptions.Count;
                customTrainingOptions.Add(trainingOption);
            }
            else
            {
                throw new Exception("Training option already exists");
            }
        }

        #endregion
    }
}
