using System.ComponentModel.DataAnnotations;

namespace NWEEI.Models
{
    public class TrainingProgram
    {

        public int TrainingProgramID { get; set; }
        [Required(ErrorMessage = "Please enter a name for the Training Program.")]
        public string Name { get; set; }
    }
}
