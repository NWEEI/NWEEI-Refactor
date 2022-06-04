using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace NWEEI.Models
{
    public class CustomTrainingOption
    {
        private List<string> trainingDetails = new List<string>();

        public int CustomTrainingOptionID { get; set; }

        [Required(ErrorMessage = "Custom training option name is required.")]
        public string Name { get; set; }

        public List<string> TrainingDetails { get { return trainingDetails; } }
    }
}
