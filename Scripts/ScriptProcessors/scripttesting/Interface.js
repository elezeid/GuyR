Content.makeFrontInterface(600, 600);


const var ConvolutionReverb1 = Synth.getAudioSampleProcessor("Convolution Reverb1");

const irs = Engine.loadAudioFilesIntoPool();

inline function onInit()
{
    if (irs.length > 0)
    {
        Console.print("Forcing initial IR: " + irs[0]);
        ConvolutionReverb1.setFile(irs[0]); // Load first IR on startup
    }
}
onInit();


//cmbIR
const cmbIR = Content.getComponent("cmbIR");


inline function oncmbIRControl(component, value)
{
	if (value > 0)
		ConvolutionReverb1.setBypassed(true);   // Disable convolution temporarily
		ConvolutionReverb1.setFile(irs[value - 1]);  // Load new IR
		ConvolutionReverb1.setBypassed(false);  // Re-enable convolution

};

Content.getComponent("cmbIR").setControlCallback(oncmbIRControl);

cmbIR.set("items", "");

for (x in irs)
	cmbIR.addItem(x.replace("{PROJECT_FOLDER}").replace(".wav"));
	
include("ZoomHandler.js");




function onNoteOn()
{
	
}
 function onNoteOff()
{
	
}
 function onController()
{
	
}
 function onTimer()
{
	
}
 function onControl(number, value)
{
	
}
 