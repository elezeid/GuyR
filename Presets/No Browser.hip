Processor 
Type SynthChain ID No Browser Bypassed Gain 	      �?Balance 	        VoiceLimit 	      P@KillFadeTime 	      4@IconColour 0 packageName  BuildVersion �  EditorStates BodyShown 0 Visible 1 Solo 0 Folded 1  ChildProcessors  Processor Type MidiProcessorChain ID Midi Processor Bypassed EditorStates BodyShown 1 Visible 0 Solo 0  ChildProcessors  Processor Type ScriptProcessor ID Interface Bypassed Script �Content.makeFrontInterface(600, 300);


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
  EditorStates BodyShown 1 Visible 1 Solo 0 contentShown 1 onInitOpen 1  ChildProcessors   Content  Control type ScriptAudioWaveform id AudioWaveform1 value 	        data 4{PROJECT_FOLDER}SPEAKERS/Switch (SoundFontGuy).wav rangeStart     rangeEnd p   Control type ScriptSlider id knbWet value 	    ff� Control type ScriptSlider id knbDry value 	      Y� Control type ScriptSlider id knbPreDelay value 	         Control type ScriptSlider id 	knbDamp value 	         UIData  ContentProperties DeviceType 	Desktop Component 	type ScriptPanel id Panel1 x 	      �?y 	      �width 	     ��@height 	     ��@bgColour 4294967295 itemColour 4160749567 itemColour2 4160749567  Component type ScriptComboBox id cmbIR x 	      n@y 	        itemColour 4278190080 bgColour 4294967295 text Load Impulse width 	     �k@height 	      >@useUndoManager saveInPreset textColour 	�� �    fontStyle 	Regular items K
Misc/Bluetooth Speaker (1)
Misc/Bluetooth Speaker (2)
Misc/Bluetooth Speaker (3)
Misc/Car Backseat
Misc/Car Driver
Misc/Cell Phone
Misc/CRT (SoundFontGuy)
Misc/CRT with VCR (SoundFontGuy)
Misc/DualShock 4 (SoundFontGuy)
Misc/Laptop (SoundFontGuy)
Misc/Studio Monitors
Misc/TV (SoundFontGuy)
Misc/TV In Bedroom (SoundFontGuy)
REVERB/Wii Delay
REVERB/PS2 BIOS
REVERB/PS2 Delay
REVERB/PS2 Hall
REVERB/PS2 Large Hall
REVERB/PS2 Pipe
REVERB/PS2 Room
REVERB/PS2 Space
REVERB/PS2 Studio A
REVERB/PS2 Studio B
REVERB/PS2 Studio C
REVERB/PSX Echo (SoundFontGuy)
REVERB/PSX Hall (SoundFontGuy)
REVERB/PSX Pipe (SoundFontGuy)
REVERB/PSX Room (SoundFontGuy)
REVERB/PSX Space (SoundFontGuy)
REVERB/PSX Studio 1 (SoundFontGuy)
REVERB/PSX Studio 2 (SoundFontGuy)
REVERB/PSX Studio 3 (SoundFontGuy)
REVERB/Saturn (SFG)
REVERB/Saturn 2 (SFG)
REVERB/Saturn 3 (SFG)
REVERB/3DS Hall (SoundFontGuy)
REVERB/3DS Large Hall (SoundFontGuy)
REVERB/3DS Large Plate (SoundFontGuy)
REVERB/3DS Large Room (SoundFontGuy)
REVERB/3DS Large Spring (SoundFontGuy)
REVERB/3DS Plate (SoundFontGuy)
REVERB/3DS Room (SoundFontGuy)
REVERB/3DS Spring (SoundFontGuy)
REVERB/Dreamcast Delay 1 (SFG)
REVERB/Dreamcast Delay 2 (SFG)
REVERB/Dreamcast Delay 3 (SFG)
REVERB/Dreamcast ER (SFG)
REVERB/Dreamcast Reverb (SFG)
REVERB/Dreamcast Reverb 2 (SFG)
REVERB/Dreamcast Reverb 3 (SFG)
REVERB/Gamecube Delay 2
REVERB/Gamecube Delay
REVERB/Gamecube Hall
REVERB/Gamecube Huge Chamber
REVERB/Gamecube Reverb
REVERB/Gamecube Room 2
REVERB/Gamecube Room
REVERB/Gamecube Space
REVERB/Gamecube Temple
REVERB/Moximog Blue 06
REVERB/Moximog Blue 07
REVERB/Moximog Blue 08
REVERB/Moximog Yellow 01
REVERB/Moximog Yellow 02
REVERB/Moximog Yellow 03
REVERB/Moximog Yellow 04
SPEAKERS/Switch (SoundFontGuy)
SPEAKERS/3DS Speaker (SoundFontGuy) (1)
SPEAKERS/3DS Speaker (SoundFontGuy) (2)
SPEAKERS/Game Boy (SoundFontGuy)
SPEAKERS/Game Boy Advance (SoundFontGuy)
SPEAKERS/KANG - Analogue Pocket Mono
SPEAKERS/KANG - Analogue Pocket Stereo
SPEAKERS/KANG - DMG
SPEAKERS/KANG - Game Boy Advance
SPEAKERS/KANG - Game Boy Color
SPEAKERS/KANG - Game Boy Pocket
SPEAKERS/Moximog GBA Tweaked max N   visible  Component type ScriptAudioWaveform id AudioWaveform1 x 	      $@y 	      N@processorId Convolution Reverb1 loadWithLeftClick 1 bgColour 4278190080 itemColour 4278210146 width 	      �@height 	     �a@itemColour2 4278248959 itemColour3 4278190080 textColour 4294180607 showLines  Component type ScriptSlider id knbWet x 	      >@y 	      i@text Wet processorId Convolution Reverb1 parameterId 	WetGain mode 	Decibel min 	      Y�max 	        stepSize 	   ����?suffix  dB middlePosition 	      2�bgColour 1476395008 itemColour 2382364672 showTextBox 0 numStrips 	     @Y@scaleFactor 	      �?width 	      U@height 	     �S@filmstripImage {PROJECT_FOLDER}101knob.png  Component type ScriptSlider id knbDry x 	     �f@y 	      i@middlePosition 	      2�stepSize 	   ����?min 	      Y�max 	        suffix  dB text Dry processorId Convolution Reverb1 parameterId 	DryGain mode 	Decibel itemColour 1711276032 bgColour 1426063360 filmstripImage {PROJECT_FOLDER}101knob.png numStrips 	     @Y@scaleFactor 	      �?width 	      U@height 	     �S@ Component type ScriptSlider id knbPreDelay x 	     �t@y 	      i@text 
Predelay processorId Convolution Reverb1 parameterId 
Predelay mode Time max 	     ��@stepSize 	      �?suffix  ms middlePosition 	     @�@filmstripImage {PROJECT_FOLDER}101knob.png scaleFactor 	      �?numStrips 	     @Y@width 	     @U@height 	     @S@ Component type ScriptSlider id 	knbDamp x 	      ~@y 	      i@text 	Damping processorId Convolution Reverb1 parameterId 	Damping mode 	Decibel min 	      Y�max 	        stepSize 	   ����?suffix  dB middlePosition 	      2�numStrips 	     @Y@filmstripImage {PROJECT_FOLDER}101knob.png width 	     �U@height 	      T@scaleFactor 	      �? Component type ScriptImage id Image1 x 	      $@y 	      $@fileName {PROJECT_FOLDER}GUYR.png width 	      i@height 	      I@ Component type ScriptLabel id lblWet x 	     �I@y 	     0q@text Wet fontName 	Default textColour 4278190080 alignment left width 	      D@height 	      4@fontSize 	      .@ Component type ScriptLabel id lblDry x 	     @j@y 	     Pq@text Dry textColour 4278190080 fontSize 	      .@fontName 	Default alignment left width 	      D@height 	      4@ Component type ScriptLabel id lblPreDelay x 	     �u@y 	     0q@text 
Predelay textColour 4278190080 fontSize 	      .@fontName 	Default alignment left width 	      N@height 	      4@ Component type ScriptLabel id 	lblDamp x 	      @y 	     0q@alignment left textColour 4278190080 text Damp - fontSize 	      .@width 	      I@height 	      5@fontName 	Default  Component type ScriptImage id imgGuy x 	     ��@y 	        fileName 0{PROJECT_FOLDER}just_a_little_guy_BRIGHTER.png width 	     �P@height 	      N@popupMenuItems doy
  Component type ScriptLabel id Label1 x 	      |@y 	      D@textColour 4278190080 text SoundFontGuy fontName 	Default alignment left  Processor Type ModulatorChain ID GainModulation Bypassed Intensity 	      �?EditorStates BodyShown 1 Visible 0 Solo 0  ChildProcessors   Processor Type ModulatorChain ID PitchModulation Bypassed Intensity 	        EditorStates BodyShown 1 Visible 0 Solo 0  ChildProcessors   Processor Type EffectChain ID FX Bypassed EditorStates BodyShown 1 Visible 0 Solo 0  ChildProcessors  Processor Type Convolution ID Convolution Reverb1 Bypassed DryGain 	      Y�WetGain 	    ff�Latency 	        ImpulseLength 	      �?ProcessInput 	      �?UseBackgroundThread 	      �?Predelay 	        HiCut 	      4@Damping 	        FFTType 	      @FileName 4{PROJECT_FOLDER}SPEAKERS/Switch (SoundFontGuy).wav min     max p  loopStart     loopEnd p  EditorStates BodyShown 1 Visible 1 Solo 0  ChildProcessors   RoutingMatrix NumSourceChannels    Channel0     Send0 ����Channel1    Send1 ���� Processor Type 
Analyser ID Analyser1 Bypassed BufferSize 	      �@PreviewType 	      @EditorStates BodyShown 1 Visible 1 Solo 0  ChildProcessors   RoutingMatrix NumSourceChannels    Channel0     Send0 ����Channel1    Send1 ���� Processor Type WaveSynth ID Waveform Generator1 Bypassed Gain 	      �?Balance 	        VoiceLimit 	      p@KillFadeTime 	      4@IconColour 0 OctaveTranspose1 	        OctaveTranspose2 	        Detune1 	        Detune2 	        WaveForm1 	      @WaveForm2 	      @Pan1 	        Pan2 	        Mix 	      �?EnableSecondOscillator 	        PulseWidth1 	      �?PulseWidth2 	      �?HardSync 	        EditorStates BodyShown 1 Visible 1 Solo 0 Folded 1  ChildProcessors  Processor Type MidiProcessorChain ID Midi Processor Bypassed EditorStates BodyShown 1 Visible 0 Solo 0  ChildProcessors   Processor Type ModulatorChain ID GainModulation Bypassed Intensity 	      �?EditorStates BodyShown 1 Visible 0 Solo 0  ChildProcessors  Processor 	Type SimpleEnvelope ID DefaultEnvelope1 Bypassed Monophonic 	        Retrigger 	      �?Intensity 	      �?Attack 	      @Release 	      $@LinearMode 	      �?EditorStates BodyShown 1 Visible 1 Solo 0  ChildProcessors  Processor Type ModulatorChain ID Attack Time Modulation Bypassed Intensity 	      �?EditorStates BodyShown 1 Visible 0 Solo 0  ChildProcessors   Processor Type ModulatorChain ID PitchModulation Bypassed Intensity 	        EditorStates BodyShown 1 Visible 0 Solo 0  ChildProcessors   Processor Type EffectChain ID FX Bypassed EditorStates BodyShown 1 Visible 0 Solo 0  ChildProcessors   Processor Type ModulatorChain ID Mix Modulation Bypassed Intensity 	      �?EditorStates BodyShown 1 Visible 0 Solo 0  ChildProcessors   Processor Type ModulatorChain ID Osc2 Pitch Modulation Bypassed Intensity 	        EditorStates BodyShown 1 Visible 0 Solo 0  ChildProcessors   RoutingMatrix NumSourceChannels    Channel0     Send0 ����Channel1    Send1 ���� RoutingMatrix NumSourceChannels    Channel0     Send0 ����Channel1    Send1 ���� macro_controls  macro name 	Macro 1 value 	        midi_cc ���� macro name 	Macro 2 value 	        midi_cc ���� macro name 	Macro 3 value 	        midi_cc ���� macro name 	Macro 4 value 	        midi_cc ���� macro name 	Macro 5 value 	        midi_cc ���� macro name 	Macro 6 value 	        midi_cc ���� macro name 	Macro 7 value 	        midi_cc ���� macro name 	Macro 8 value 	        midi_cc ���� MidiAutomation   MPEData Enabled  