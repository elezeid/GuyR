Processor 
Type SynthChain ID ONLY 2 IRS Bypassed Gain 	      �?Balance 	        VoiceLimit 	      P@KillFadeTime 	      4@IconColour 0 packageName  BuildVersion �  EditorStates BodyShown 0 Visible 1 Solo 0 Folded 1  ChildProcessors  Processor Type MidiProcessorChain ID Midi Processor Bypassed EditorStates BodyShown 1 Visible 0 Solo 0  ChildProcessors  Processor Type ScriptProcessor ID Interface Bypassed Script �Content.makeFrontInterface(600, 600);


const var ConvolutionReverb1 = Synth.getAudioSampleProcessor("Convolution Reverb1");

const irs = Engine.loadAudioFilesIntoPool()

//cmbIR
const cmbIR = Content.getComponent("cmbIR");


inline function oncmbIRControl(component, value)
{
	if (value > 0)
		ConvolutionReverb1.setFile(irs[value - 1]);
};

Content.getComponent("cmbIR").setControlCallback(oncmbIRControl);

cmbIR.set("items", "");

for (x in irs)
	cmbIR.addItem(x.replace("{PROJECT_FOLDER}").replace(".wav"));




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
  EditorStates BodyShown 1 Visible 1 Solo 0 contentShown 1 onInitOpen 1  ChildProcessors   Content  Control type ScriptComboBox id cmbIR value 	      F@ Control type ScriptAudioWaveform id AudioWaveform1 value 	        data .{PROJECT_FOLDER}Dreamcast Reverb 2 (SFG).wav rangeStart     rangeEnd B  Control type ScriptSlider id knbWet value 	   ���9� Control type ScriptSlider id knbDry value 	         Control type ScriptSlider id knbPreDelay value 	         Control type ScriptSlider id 	knbDamp value 	   ����� UIData  ContentProperties DeviceType 	Desktop Component 	type ScriptPanel id Panel1 x 	      �?y 	      �width 	     ��@height 	     ��@bgColour 4294967295 itemColour 4160749567 itemColour2 4160749567  Component type ScriptComboBox id cmbIR x 	      w@y 	      i@itemColour 4278190080 bgColour 4294967295 text Load Impulse width 	     �k@height 	      >@visible 0 items 
3DS Hall (SoundFontGuy)
3DS Large Hall (SoundFontGuy)
3DS Large Plate (SoundFontGuy)
3DS Large Room (SoundFontGuy)
3DS Large Spring (SoundFontGuy)
3DS Plate (SoundFontGuy)
3DS Room (SoundFontGuy)
3DS Spring (SoundFontGuy)
PSX Echo (SoundFontGuy)
PSX Hall (SoundFontGuy)
PSX Pipe (SoundFontGuy)
PSX Room (SoundFontGuy)
PSX Space (SoundFontGuy)
PSX Studio 1 (SoundFontGuy)
PSX Studio 2 (SoundFontGuy)
PSX Studio 3 (SoundFontGuy)
Studio Monitors
Bluetooth Speaker (2)
Bluetooth Speaker (3)
Bluetooth Speaker (1)
Car Backseat
Car Driver
Cell Phone
CRT with VCR (SoundFontGuy)
GBA (SoundFontGuy)
Switch (SoundFontGuy)
TV (SoundFontGuy)
TV In Bedroom (SoundFontGuy)
3DS Speaker (SoundFontGuy) (1)
3DS Speaker (SoundFontGuy) (2)
CRT (SoundFontGuy)
DMG (SoundFontGuy)
DualShock 4 (SoundFontGuy)
Laptop (SoundFontGuy)
Dreamcast Reverb 3 (SFG)
Saturn (SFG)
Saturn 2 (SFG)
Saturn 3 (SFG)
Dreamcast Delay 1 (SFG)
Dreamcast Delay 2 (SFG)
Dreamcast Delay 3 (SFG)
Dreamcast ER (SFG)
Dreamcast Reverb (SFG)
Dreamcast Reverb 2 (SFG)
Analogue Pocket Stereo (by Kang)
Game Boy Pocket (by Kang)
Game Boy Advance (by Kang)
Analogue Pocket Mono (by Kang)
DMG (by Kang)
Game Boy Color (by Kang) (2)
tweaked_gba_ir_Moximog
Blue 06
Blue 07
Blue 08
Yellow 01
Yellow 02
Yellow 03
Yellow 04
SFG_PS2_Room
SFG_PS2_Space
SFG_PS2_Studio_A
SFG_PS2_Studio_B
SFG_PS2_Studio_C
SFG_PS2_Bios
SFG_PS2_Delay
SFG_PS2_Hall
SFG_PS2_Large_Hall
SFG_PS2_Pipe
SFG GCN 1
SFG GCN DELAY 2
SFG GCN DELAY
SFG GCN HALL
SFG GCN Huge Chamber
SFG GCN ROOM
SFG GCN ROOM2
SFG GCN SPACE
SFG GCN TEMPLE
Wii Delay max N    Component type ScriptAudioWaveform id AudioWaveform1 x 	      $@y 	      N@processorId Convolution Reverb1 opaque 0 loadWithLeftClick 1 bgColour 4278190080 itemColour 4278210146 width 	      �@height 	     �a@itemColour2 4278248959 itemColour3 4278190080 textColour 4294180607  Component type ScriptSlider id knbWet x 	      >@y 	      i@text Wet processorId Convolution Reverb1 parameterId 	WetGain mode 	Decibel min 	      Y�max 	        stepSize 	   ����?suffix  dB middlePosition 	      2�bgColour 1476395008 itemColour 2382364672 showTextBox 0 numStrips 	     @Y@scaleFactor 	      �?width 	      U@height 	     �S@filmstripImage {PROJECT_FOLDER}101knob.png  Component type ScriptSlider id knbDry x 	     �f@y 	      i@middlePosition 	      2�stepSize 	   ����?min 	      Y�max 	        suffix  dB text Dry processorId Convolution Reverb1 parameterId 	DryGain mode 	Decibel itemColour 1711276032 bgColour 1426063360 filmstripImage {PROJECT_FOLDER}101knob.png numStrips 	     @Y@scaleFactor 	      �?width 	      U@height 	     �S@ Component type ScriptSlider id knbPreDelay x 	     �t@y 	      i@text 
Predelay processorId Convolution Reverb1 parameterId 
Predelay mode Time max 	     ��@stepSize 	      �?suffix  ms middlePosition 	     @�@filmstripImage {PROJECT_FOLDER}101knob.png scaleFactor 	      �?numStrips 	     @Y@width 	     @U@height 	     @S@ Component type ScriptSlider id 	knbDamp x 	      ~@y 	      i@text 	Damping processorId Convolution Reverb1 parameterId 	Damping mode 	Decibel min 	      Y�max 	        stepSize 	   ����?suffix  dB middlePosition 	      2�numStrips 	     @Y@filmstripImage {PROJECT_FOLDER}101knob.png width 	     �U@height 	      T@scaleFactor 	      �? Component type ScriptImage id Image1 x 	      $@y 	      $@fileName {PROJECT_FOLDER}GUYR.png width 	      i@height 	      I@ Component 	type ScriptPanel id pnlBlackBar x 	     @b@y 	     s@itemColour 4278190080 itemColour2 4278190080 width 	     �u@height 	     �@@text   Component type ScriptFloatingTile id fltPresetBrowser x 	      @y 	     �r@ContentType PresetBrowser bgColour 
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
  Component type ScriptLabel id Label1 x 	      |@y 	      D@textColour 4278190080 text SoundFontGuy fontName 	Default alignment left  Processor Type ModulatorChain ID GainModulation Bypassed Intensity 	      �?EditorStates BodyShown 1 Visible 0 Solo 0 Folded 1  ChildProcessors   Processor Type ModulatorChain ID PitchModulation Bypassed Intensity 	        EditorStates BodyShown 1 Visible 0 Solo 0 Folded 1  ChildProcessors   Processor Type EffectChain ID FX Bypassed EditorStates BodyShown 1 Visible 0 Solo 0  ChildProcessors  Processor Type Convolution ID Convolution Reverb1 Bypassed DryGain 	        WetGain 	   ���9�Latency 	        ImpulseLength 	      �?ProcessInput 	      �?UseBackgroundThread 	        Predelay 	        HiCut 	     ��@Damping 	    ����FFTType 	      @FileName .{PROJECT_FOLDER}Dreamcast Reverb 2 (SFG).wav min     max B loopStart     loopEnd B EditorStates BodyShown 1 Visible 1 Solo 0  ChildProcessors   RoutingMatrix NumSourceChannels    Channel0     Send0 ����Channel1    Send1 ���� Processor Type 
Analyser ID Analyser1 Bypassed BufferSize 	      �@PreviewType 	      @EditorStates BodyShown 1 Visible 1 Solo 0  ChildProcessors   RoutingMatrix NumSourceChannels    Channel0     Send0 ����Channel1    Send1 ���� Processor Type WaveSynth ID Waveform Generator1 Bypassed Gain 	      �?Balance 	        VoiceLimit 	      p@KillFadeTime 	      4@IconColour 0 OctaveTranspose1 	        OctaveTranspose2 	        Detune1 	        Detune2 	        WaveForm1 	      @WaveForm2 	      @Pan1 	        Pan2 	        Mix 	      �?EnableSecondOscillator 	        PulseWidth1 	      �?PulseWidth2 	      �?HardSync 	        EditorStates BodyShown 1 Visible 1 Solo 0 Folded 1  ChildProcessors  Processor Type MidiProcessorChain ID Midi Processor Bypassed EditorStates BodyShown 1 Visible 0 Solo 0 Folded 1  ChildProcessors   Processor Type ModulatorChain ID GainModulation Bypassed Intensity 	      �?EditorStates BodyShown 1 Visible 0 Solo 0  ChildProcessors  Processor 	Type SimpleEnvelope ID DefaultEnvelope1 Bypassed Monophonic 	        Retrigger 	      �?Intensity 	      �?Attack 	      @Release 	      $@LinearMode 	      �?EditorStates BodyShown 1 Visible 1 Solo 0  ChildProcessors  Processor Type ModulatorChain ID Attack Time Modulation Bypassed Intensity 	      �?EditorStates BodyShown 1 Visible 0 Solo 0 Folded 1  ChildProcessors   Processor Type ModulatorChain ID PitchModulation Bypassed Intensity 	        EditorStates BodyShown 1 Visible 0 Solo 0 Folded 1  ChildProcessors   Processor Type EffectChain ID FX Bypassed EditorStates BodyShown 1 Visible 0 Solo 0 Folded 1  ChildProcessors   Processor Type ModulatorChain ID Mix Modulation Bypassed Intensity 	      �?EditorStates BodyShown 1 Visible 0 Solo 0 Folded 1  ChildProcessors   Processor Type ModulatorChain ID Osc2 Pitch Modulation Bypassed Intensity 	        EditorStates BodyShown 1 Visible 0 Solo 0 Folded 1  ChildProcessors   RoutingMatrix NumSourceChannels    Channel0     Send0 ����Channel1    Send1 ���� RoutingMatrix NumSourceChannels    Channel0     Send0 ����Channel1    Send1 ���� macro_controls  macro name 	Macro 1 value 	        midi_cc ���� macro name 	Macro 2 value 	        midi_cc ���� macro name 	Macro 3 value 	        midi_cc ���� macro name 	Macro 4 value 	        midi_cc ���� macro name 	Macro 5 value 	        midi_cc ���� macro name 	Macro 6 value 	        midi_cc ���� macro name 	Macro 7 value 	        midi_cc ���� macro name 	Macro 8 value 	        midi_cc ���� MidiAutomation   MPEData Enabled  