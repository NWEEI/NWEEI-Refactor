using System;
using System.Collections.Generic;
using System.Linq;
using Microsoft.EntityFrameworkCore;
using NWEEI.Data;
using NWEEI.Models;

namespace NWEEI.Repositories
{
    public class TrainingProgramRepo : ITrainingProgramRepo
    {
        private NWEEIContext context;

        public TrainingProgramRepo(NWEEIContext c) => context = c;

        public IQueryable<TrainingProgram> TrainingPrograms => context.TrainingPrograms;

        // add a new trainingProgram
        public void AddTrainingProgram(TrainingProgram trainingProgram)
        {
            context.TrainingPrograms.Add(trainingProgram);
            context.SaveChanges();
        }

        #region retrieval methods

        // get a list of all trainingPrograms
        public List<TrainingProgram> GetAllTrainingPrograms()
        {
            List<TrainingProgram> trainingPrograms = context.TrainingPrograms.ToList();

            return trainingPrograms;
        }

        // get a specific trainingProgram by its id
        public TrainingProgram GetTrainingProgramByID(int id)
        {
            TrainingProgram trainingProgram = context.TrainingPrograms
                .Where(t => t.TrainingProgramID == id)
                .FirstOrDefault();

            return trainingProgram;
        }

        #endregion

        // update a trainingProgram
        public void UpdateTrainingProgram(TrainingProgram trainingProgram)
        {
            context.TrainingPrograms.Update(trainingProgram);
            context.SaveChanges();
        }

        // delete a trainingProgram
        public void DeleteTrainingProgram(TrainingProgram trainingProgram)
        {
            TrainingProgram existingTrainingProgram = context.TrainingPrograms.Find(trainingProgram.TrainingProgramID);
            context.TrainingPrograms.Remove(existingTrainingProgram);
            context.SaveChanges();
        }

        #region CustomTrainingOption

        public IQueryable<CustomTrainingOption> CustomTrainingOptions
        {
            get
            {
                return context.CustomTrainingOptions;
            }
        }

        // gets a list of all custom training options
        public List<CustomTrainingOption> GetCustomTrainingOptions()
        {
            return context.CustomTrainingOptions
                .Include(c => c.TrainingDetails)
                .ToList();
        }

        // gets a single custom training option by its id
        public CustomTrainingOption GetCustomTrainingOptionByID(int id)
        {
            return context.CustomTrainingOptions
                .Where(c => c.CustomTrainingOptionID == id)
                .Include(c => c.TrainingDetails)
                .FirstOrDefault();
        }

        // adds a custom training option to the db
        public void AddCustomTrainingOption(CustomTrainingOption trainingOption)
        {
            context.CustomTrainingOptions.Add(trainingOption);
            context.SaveChanges();
        }

        #endregion
    }
}
