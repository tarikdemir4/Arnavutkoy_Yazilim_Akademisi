namespace FirstWebProject.Models.AbstractModels;

public class CommonProp
{
    public int Id { get; set; }
    public string? Name { get; set; }
    public bool Isstatus { get; set; }=true;
    public bool IsDelete { get; set; } = false;
}
