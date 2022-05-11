using System;
using System.Collections.Generic;
using System.Linq;
using NWEEI.Models;

namespace NWEEI.Repositories
{
    public class TrainingProgramTestRepo : ITrainingProgramRepo
    {
        private List<TrainingProgram> trainingPrograms = new List<TrainingProgram>();

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
    }
}
