Processor 
Type SynthChain ID script testing Bypassed Gain 	      �?Balance 	        VoiceLimit 	      P@KillFadeTime 	      4@IconColour 0 packageName  BuildVersion �  EditorStates BodyShown 0 Visible 1 Solo 0 Folded 1  ChildProcessors  Processor Type MidiProcessorChain ID Midi Processor Bypassed EditorStates BodyShown 1 Visible 0 Solo 0  ChildProcessors  Processor Type ScriptProcessor ID Interface Bypassed Script ,Content.makeFrontInterface(600, 600);


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
  EditorStates BodyShown 1 Visible 1 Solo 0 contentShown 1 onInitOpen 1  ChildProcessors   Content  Control type ScriptAudioWaveform id AudioWaveform1 value 	        data -{PROJECT_FOLDER}3DS Hall (SoundFontGuy).wav rangeStart     rangeEnd �P  Control type ScriptSlider id knbWet value 	     @@� Control type ScriptSlider id knbDry value 	         Control type ScriptSlider id knbPreDelay value 	         Control type ScriptSlider id 	knbDamp value 	         Control type ScriptComboBox id cmbIR value 	      �? UIData  ContentProperties DeviceType 	Desktop Component 	type ScriptPanel id Panel1 x 	      �?y 	      �width 	     ��@height 	     ��@bgColour 4294967295 itemColour 4160749567 itemColour2 4160749567  Component type ScriptAudioWaveform id AudioWaveform1 x 	      $@y 	      N@processorId Convolution Reverb1 opaque 0 loadWithLeftClick 1 bgColour 4278190080 itemColour 4278210146 width 	      �@height 	     �a@itemColour2 4278248959 itemColour3 4278190080 textColour 4294180607 showFileName 0  Component type ScriptSlider id knbWet x 	      >@y 	      i@text Wet processorId Convolution Reverb1 parameterId 	WetGain mode 	Decibel min 	      Y�max 	        stepSize 	   ����?suffix  dB middlePosition 	      2�bgColour 1476395008 itemColour 2382364672 showTextBox 0 numStrips 	     @Y@scaleFactor 	      �?width 	      U@height 	     �S@filmstripImage {PROJECT_FOLDER}101knob.png  Component type ScriptSlider id knbDry x 	     �f@y 	      i@middlePosition 	      2�stepSize 	   ����?min 	      Y�max 	        suffix  dB text Dry processorId Convolution Reverb1 parameterId 	DryGain mode 	Decibel itemColour 1711276032 bgColour 1426063360 filmstripImage {PROJECT_FOLDER}101knob.png numStrips 	     @Y@scaleFactor 	      �?width 	      U@height 	     �S@showTextBox 0  Component type ScriptSlider id knbPreDelay x 	     �t@y 	      i@text 
Predelay processorId Convolution Reverb1 parameterId 
Predelay mode Time max 	     ��@stepSize 	      �?suffix  ms middlePosition 	     @�@filmstripImage {PROJECT_FOLDER}101knob.png scaleFactor 	      �?numStrips 	     @Y@width 	     @U@height 	     @S@showTextBox 0  Component type ScriptSlider id 	knbDamp x 	      ~@y 	      i@text 	Damping processorId Convolution Reverb1 parameterId 	Damping mode 	Decibel min 	      Y�max 	        stepSize 	   ����?suffix  dB middlePosition 	      2�numStrips 	     @Y@filmstripImage {PROJECT_FOLDER}101knob.png width 	     �U@height 	      T@scaleFactor 	      �?showTextBox 0  Component type ScriptImage id Image1 x 	      $@y 	      $@fileName {PROJECT_FOLDER}GUYR.png width 	      i@height 	      I@ Component 	type ScriptPanel id pnlBlackBar x 	     @b@y 	     s@itemColour 4278190080 itemColour2 4278190080 width 	     �u@height 	     �@@text   Component type ScriptFloatingTile id fltPresetBrowser x 	      @y 	     �r@ContentType PresetBrowser bgColour 
16777215 itemColour 4286874756 itemColour2 4294967295 Data Y{
  "ShowSaveButton": true,
  "ShowExpansionsAsColumn": false,
  "ShowFolderButton": true,
  "ShowNotes": true,
  "ShowEditButtons": true,
  "EditButtonOffset": 10,
  "ShowAddButton": true,
  "ShowRenameButton": true,
  "ShowDeleteButton": true,
  "ShowFavoriteIcon": true,
  "ButtonsInsideBorder": false,
  "NumColumns": 3,
  "ColumnWidthRatio": [
    0.3,
    0.25,
    0.45
  ],
  "ListAreaOffset": [
    0,
    0,
    0,
    0
  ],
  "ColumnRowPadding": [
    0,
    0,
    0,
    0
  ],
  "SearchBarBounds": [],
  "MoreButtonBounds": [],
  "SaveButtonBounds": [],
  "FavoriteButtonBounds": []
} width 	     p�@height 	     �r@itemColour3 4278190080 FontSize 	      (@textColour 4278190080  Component type ScriptLabel id lblWet x 	     �I@y 	     0q@text Wet fontName 	Default textColour 4278190080 alignment left width 	      D@height 	      4@fontSize 	      .@ Component type ScriptLabel id lblDry x 	     @j@y 	     Pq@text Dry textColour 4278190080 fontSize 	      .@fontName 	Default alignment left width 	      D@height 	      4@ Component type ScriptLabel id lblPreDelay x 	     �u@y 	     0q@text 
Predelay textColour 4278190080 fontSize 	      .@fontName 	Default alignment left width 	      N@height 	      4@ Component type ScriptLabel id 	lblDamp x 	      @y 	     0q@alignment left textColour 4278190080 text Damp - fontSize 	      .@width 	      I@height 	      5@fontName 	Default  Component type ScriptImage id imgGuy x 	     ��@y 	        fileName 0{PROJECT_FOLDER}just_a_little_guy_BRIGHTER.png width 	     �P@height 	      N@popupMenuItems doy
  Component type ScriptLabel id Label1 x 	      |@y 	      D@textColour 4278190080 text SoundFontGuy fontName 	Default alignment left  Component type ScriptComboBox id cmbIR x 	      w@y 	      N@itemColour 4278190080 bgColour 4294967295 text Load Impulse width 	     �k@height 	      >@useUndoManager 1 items 
3DS Hall (SoundFontGuy)
3DS Large Hall (SoundFontGuy)
3DS Large Plate (SoundFontGuy)
3DS Large Room (SoundFontGuy)
3DS Large Spring (SoundFontGuy)
3DS Plate (SoundFontGuy)
3DS Room (SoundFontGuy)
3DS Speaker (1)
3DS Speaker (2)
3DS Spring (SoundFontGuy)
Bluetooth Speaker (1)
Bluetooth Speaker (2)
Bluetooth Speaker (3)
Car Backseat
Car Driver
Cell Phone
CRT (SoundFontGuy)
CRT with VCR (SoundFontGuy)
Dreamcast Delay 1 (SFG)
Dreamcast Delay 2 (SFG)
Dreamcast Delay 3 (SFG)
Dreamcast ER (SFG)
Dreamcast Reverb (SFG)
Dreamcast Reverb 2 (SFG)
Dreamcast Reverb 3 (SFG)
DualShock 4 (SoundFontGuy)
Game Boy Advance (SoundFontGuy)
Game Boy Speaker
Gamecube Delay 2
Gamecube Delay
Gamecube Hall
Gamecube Huge Chamber
Gamecube Reverb
Gamecube Room 2
Gamecube Room
Gamecube Space
Gamecube Temple
KANG - Analogue Pocket Mono
KANG - Analogue Pocket Stereo
KANG - DMG
KANG - Game Boy Advance
KANG - Game Boy Color
KANG - Game Boy Pocket
Laptop (SoundFontGuy)
Moximog Blue 06
Moximog Blue 07
Moximog Blue 08
Moximog GBA Tweaked
Moximog Yellow 01
Moximog Yellow 02
Moximog Yellow 03
Moximog Yellow 04
PS2 BIOS
PS2 Delay
PS2 Hall
PS2 Large Hall
PS2 Pipe
PS2 Room
PS2 Space
PS2 Studio A
PS2 Studio B
PS2 Studio C
PSX Echo (SoundFontGuy)
PSX Hall (SoundFontGuy)
PSX Pipe (SoundFontGuy)
PSX Room (SoundFontGuy)
PSX Space (SoundFontGuy)
PSX Studio 1 (SoundFontGuy)
PSX Studio 2 (SoundFontGuy)
PSX Studio 3 (SoundFontGuy)
Saturn (SFG)
Saturn 2 (SFG)
Saturn 3 (SFG)
Studio Monitors
Switch (SoundFontGuy)
TV (SoundFontGuy)
TV In Bedroom (SoundFontGuy)
Wii Delay max N    Component type ScriptPanel id 	pnlZoom x 	     p�@y 	     p�@width 	      $@height 	      $@bgColour 1442775040 allowCallbacks Clicks, Hover & Dragging  Processor Type ModulatorChain ID GainModulation Bypassed Intensity 	      �?EditorStates BodyShown 1 Visible 0 Solo 0  ChildProcessors   Processor Type ModulatorChain ID PitchModulation Bypassed Intensity 	        EditorStates BodyShown 1 Visible 0 Solo 0  ChildProcessors   Processor Type EffectChain ID FX Bypassed EditorStates BodyShown 1 Visible 0 Solo 0  ChildProcessors  Processor Type Convolution ID Convolution Reverb1 Bypassed DryGain 	        WetGain 	     @@�Latency 	        ImpulseLength 	      �?ProcessInput 	      �?UseBackgroundThread 	      �?Predelay 	        HiCut 	     ��@Damping 	        FFTType 	      @FileName -{PROJECT_FOLDER}3DS Hall (SoundFontGuy).wav min     max �P loopStart     loopEnd �P EditorStates BodyShown 1 Visible 1 Solo 0  ChildProcessors   RoutingMatrix NumSourceChannels    Channel0     Send0 ����Channel1    Send1 ���� Processor Type 
Analyser ID Analyser1 Bypassed BufferSize 	      �@PreviewType 	      @EditorStates BodyShown 1 Visible 1 Solo 0  ChildProcessors   RoutingMatrix NumSourceChannels    Channel0     Send0 ����Channel1    Send1 ���� Processor Type 
Dynamics ID Dynamics1 Bypassed GateEnabled 	        GateThreshold 	        GateAttack 	      �?GateRelease 	      Y@CompressorEnabled 	        CompressorThreshold 	        CompressorRatio 	      �?CompressorAttack 	      $@CompressorRelease 	      Y@LimiterEnabled 	      �?LimiterThreshold 	   �����LimiterAttack 	      �?LimiterRelease 	      $@CompressorMakeup 	        LimiterMakeup 	        EditorStates BodyShown 1 Visible 1 Solo 0  ChildProcessors   RoutingMatrix NumSourceChannels    Channel0     Send0 ����Channel1    Send1 ���� RoutingMatrix NumSourceChannels    Channel0     Send0 ����Channel1    Send1 ���� macro_controls  macro name 	Macro 1 value 	        midi_cc ���� macro name 	Macro 2 value 	        midi_cc ���� macro name 	Macro 3 value 	        midi_cc ���� macro name 	Macro 4 value 	        midi_cc ���� macro name 	Macro 5 value 	        midi_cc ���� macro name 	Macro 6 value 	        midi_cc ���� macro name 	Macro 7 value 	        midi_cc ���� macro name 	Macro 8 value 	        midi_cc ���� MidiAutomation   MPEData Enabled  