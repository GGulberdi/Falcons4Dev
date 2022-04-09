public with sharing class ListPractice {
    public static List<Planets> planetsList= new List<Planets>();

    public string addPlanet(string planetName, integer planetNumber, integer numberOfMoons) {
        
        string message = '';
                if(planetName != '' && planetName != null){
            Planets ppt = new Planets();
            ppt.planetName=planetName;
            ppt.planetNumber=planetNumber;
            ppt.moonNumber=numberOfMoons;
            planetsList.add(ppt);
            message= 'Planet ' + planetName + ' added successfully!';
        }else{
            message='Planet without name can not be added to the list!';
            
        }
system.debug(message);
return message;
    }
}
