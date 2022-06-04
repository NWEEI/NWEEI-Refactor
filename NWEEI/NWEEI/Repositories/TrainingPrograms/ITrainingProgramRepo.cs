using System;
using System.Collections.Generic;
using System.Linq;
using NWEEI.Models;

namespace NWEEI.Repositories
{
    public interface ITrainingProgramRepo
    {
        IQueryable<TrainingProgram> TrainingPrograms { get; }

        // create
        void AddTrainingProgram(TrainingProgram trainingProgram);

        // retrieve
        List<TrainingProgram> GetAllTrainingPrograms();
        TrainingProgram GetTrainingProgramByID(int id);

        // update
        void UpdateTrainingProgram(TrainingProgram trainingProgram);

        // delete
        void DeleteTrainingProgram(TrainingProgram trainingProgram);


        // CustomTrainingOption methods
        List<CustomTrainingOption> GetCustomTrainingOptions();
        CustomTrainingOption GetCustomTrainingOptionByID(int id);
        void AddCustomTrainingOption(CustomTrainingOption trainingOption);
    }
}
