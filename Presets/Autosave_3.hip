Processor 
Type SynthChain ID Preset.test Bypassed Gain 	      �?Balance 	        VoiceLimit 	      P@KillFadeTime 	      4@IconColour 0 packageName  BuildVersion �  EditorStates BodyShown 0 Visible 1 Solo 0 Folded 1  ChildProcessors  Processor Type MidiProcessorChain ID Midi Processor Bypassed EditorStates BodyShown 1 Visible 0 Solo 0  ChildProcessors  Processor Type ScriptProcessor ID Interface Bypassed Script  Content.makeFrontInterface(1000, 600);



// fltPresetBrowser
const fltPresetBrowser = Content.getComponent("fltPresetBrowser");
fltPresetBrowser.showControl(false);

// btnPresetBrowser
const btnPresetBrowser = Content.getComponent("btnPresetBrowser")
btnPresetBrowser.setValue(false);
btnPresetBrowser.setControlCallback(onbtnPresetBrowserControl);

inline function onbtnPresetBrowserControl(component, value)
{
	fltPresetBrowser.showControl(value);
}

const var lblPreset = Content.getComponent("lblPreset");


inline function onknbDumControl(component, value)
{
	if (Engine.getCurrentUserPresetName() == "")
		Content.getComponent("lblPreset").set("text", "Electric Piano");
	else
		Content.getComponent("lblPreset").set("text", Engine.getCurrentUserPresetName());
};

Content.getComponent("knbDum").setControlCallback(onknbDumControl);


// btnPreset
const btnPreset = Content.getAllComponents("btnPreset\\d");

for (x in btnPreset)
	x.setControlCallback(onbtnPresetControl);

inline function onbtnPresetControl(component, value)
{
	local index = btnPreset.indexOf(component);
	if (!value)
		return;
		
	if (!index)
		Engine.loadPreviousUserPreset(false);
	else
		Engine.loadNextUserPreset(false);
}
//Sampler
const var Sampler1 = Synth.getChildSynth("Sampler1");

//Sample Maps Array
const var sampleMaps = Sampler.getSampleMapList();

//Combo Box
const var cmbSampleMap = Content.getComponent("cmbSampleMap");
cmbSampleMap.set("items", sampleMaps.join("\n"));


inline function oncmbSampleMapControl(component, value)
{
	Sampler1.asSampler().loadSampleMap(sampleMaps[value-1]);
};

Content.getComponent("cmbSampleMap").setControlCallback(oncmbSampleMapControl);
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
  EditorStates BodyShown 1 Visible 1 Solo 0 contentShown 1 onInitOpen 1  ChildProcessors   Content  Control type ScriptAudioWaveform id AudioWaveform1 value 	         Control type ScriptButton id btnPresetBrowser value 	         Control type ScriptSlider id Knob1 value 	     ��@ Control type ScriptSlider id Knob2 value 	      Y� Control type ScriptSlider id knbAttack value 	         Control type ScriptSlider id knbRelease value 	     @n@ Control type ScriptComboBox id cmbSampleMap value 	      $@ Control type ScriptSlider id knbDum value 	         UIData  ContentProperties DeviceType 	Desktop Component type ScriptImage id imgSSS x 	        y 	        fileName 2{PROJECT_FOLDER}Screenshot 2025-01-27 152853.png width 	     @�@height 	     ��@ Component type ScriptImage id imgBG x 	      �y 	        fileName :{PROJECT_FOLDER}VST Plugin 1 Background - Bare Bones.png width 	     @�@height 	     ��@ Component type ScriptImage id imgPresetBar x 	      n@y 	      4@fileName ){PROJECT_FOLDER}Selected Preset Bar.png width 	     �y@height 	      D@ Component type ScriptImage id imgSoundWave x 	      @@y 	     �Q@fileName #{PROJECT_FOLDER}Soundwave Box.png width 	     ��@height 	      t@ Component type ScriptImage id 	imgADSR x 	      H@y 	      ~@fileName {PROJECT_FOLDER}ADSR.png width 	     ��@height 	      I@ Component type ScriptImage id imgPresetSel x 	     @�@y 	     �Q@fileName #{PROJECT_FOLDER}Preselect Box.png width 	     �d@height 	      t@ Component type ScriptFloatingTile id fltPresetSelect x 	     h�@y 	     �b@width 	      c@height 	     �k@ContentType PresetBrowser bgColour 4279833108 itemColour 
33554431 itemColour2 0 Data �{
  "ShowSaveButton": false,
  "ShowExpansionsAsColumn": false,
  "ShowFolderButton": false,
  "ShowNotes": false,
  "ShowEditButtons": false,
  "EditButtonOffset": 10,
  "ShowAddButton": true,
  "ShowRenameButton": true,
  "ShowDeleteButton": true,
  "ShowSearchBar": false,
  "ShowFavoriteIcon": true,
  "FullPathFavorites": false,
  "ButtonsInsideBorder": true,
  "NumColumns": 1,
  "ColumnWidthRatio": [
    0.3333333333333333,
    0.3333333333333333,
    0.3333333333333333
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
} Font 	Verdana  Component type ScriptAudioWaveform id AudioWaveform1 x 	     �A@y 	     @R@processorId 
Sampler1 width 	     ��@height 	     `s@itemColour 	1579032 itemColour2 4294025942 bgColour 	1643028 textColour 
13238289 itemColour3 4278190080 showLines 1 loadWithLeftClick 1 opaque 0  Component type ScriptButton id btnPresetBrowser x 	      �@y 	      8@text Preset Browser width 	     �]@height 	      8@filmstripImage #{PROJECT_FOLDER}browse button.png  Component type ScriptSlider id Knob1 x 	     �e@y 	      {@middlePosition 	     @�@stepSize 	      �?max 	     ��@suffix  ms text Decay processorId AHDSR Envelope1 parameterId Decay mode Time width 	      H@height 	      H@itemColour2 0 showTextBox 0 filmstripImage &{PROJECT_FOLDER}PinkKnob62frames.png numStrips 	      O@scaleFactor 	      �? Component type ScriptSlider id Knob2 x 	     �q@y 	      {@stepSize 	   @�z�?text 	Sustain processorId AHDSR Envelope1 parameterId 	Sustain mode 	Decibel max 	        min 	      Y�filmstripImage &{PROJECT_FOLDER}PinkKnob62frames.png showTextBox 0 numStrips 	      O@width 	      H@height 	      H@scaleFactor 	      �? Component type ScriptSlider id knbAttack x 	     �P@y 	      {@text Attack processorId AHDSR Envelope1 parameterId Attack mode Time max 	     ��@stepSize 	      �?suffix  ms middlePosition 	     @�@width 	      H@height 	      H@numStrips 	      O@showTextBox 0 filmstripImage &{PROJECT_FOLDER}PinkKnob62frames.png bgColour 4294967295 scaleFactor 	      �? Component type ScriptSlider id knbRelease x 	     `x@y 	      {@text 	Release processorId AHDSR Envelope1 parameterId 	Release mode Time max 	     ��@stepSize 	      �?suffix  ms middlePosition 	     @�@filmstripImage &{PROJECT_FOLDER}PinkKnob62frames.png numStrips 	      O@width 	      H@height 	      H@showTextBox 0 scaleFactor 	      �? Component type ScriptComboBox id cmbSampleMap x 	     ��@y 	     @z@items �Acoustic Bass (FFVII)
Bassoon (FFVII)
Brass Ensemble (FFVII)
Celesta (FFVII)
Choir Ahs (FFVII)
Clarinet (FFVII)
Distortion Guitar (FFVII)
Drum Kit (FFVII)
Dulcimer (FFVII)
E. Piano (FFVII)
Fingered Bass (FFVII)
Flute (FFVII)
French Horn 1 (FFVII)
French Horn 2 (FFVII)
Hammond Organ (FFVII)
Harp (FFVII)
Muted Guitar (FFVII)
Nylon Guitar (FFVII)
Oboe (FFVII)
Orchestra Hit (FFVII)
Percussive Organ (FFVII)
Piano (FFVII)
Pizzicato Strings (FFVII)
Sawtooth Wave (FFVII)
Sine Wave (FFVII)
Square Wave (FFVII)
Steel Guitar (FFVII)
String Ensemble (FFVII)
Synth Bass (FFVII)
Synth Brass (FFVII)
Synth Strings (FFVII)
Taiko Drum (FFVII)
Timpani (FFVII)
Trumpet (FFVII)
Trumpet 2 (FFVII)
Tuba (FFVII)
Tubular Bell (FFVII)
Violin (FFVII) max &   visible 0  Component type ScriptSlider id 	knbGain x 	      @y 	     @z@text Gain processorId 
Sampler1 parameterId Gain mode NormalizedPercentage suffix % middlePosition 	      �?saveInPreset 0 showTextBox 0 filmstripImage &{PROJECT_FOLDER}PinkKnob62frames.png numStrips 	      O@width 	     �P@height 	      N@ Component type ScriptFloatingTile id fltKeyboard x 	      @@y 	     @�@ContentType 
Keyboard bgColour 4284769380 itemColour 452984831 itemColour2 4294967295 textColour 0 Data Q{
  "KeyWidth": 22.0,
  "DisplayOctaveNumber": false,
  "LowKey": 12,
  "HiKey": 128,
  "CustomGraphics": false,
  "DefaultAppearance": false,
  "BlackKeyRatio": 0.7,
  "ToggleMode": false,
  "MidiChannel": 1,
  "UseVectorGraphics": true,
  "UseFlatStyle": false,
  "MPEKeyboard": false,
  "MPEStartChannel": 2,
  "MPEEndChannel": 16
} width 	     @�@height 	      T@ Component type ScriptImage id imgMateria x 	      �@y 	     @x@fileName {PROJECT_FOLDER}Materia.png width ,  height |   scale .25  Component type ScriptFloatingTile id fltPresetBrowser x 	        y 	      N@width 	     @�@height 	     `}@ContentType PresetBrowser bgColour 4244713070 itemColour 4294967295 itemColour2 4278190080 Data �{
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
    0.3333333333333333,
    0.3333333333333333,
    0.3333333333333333
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
} itemColour3 4278190080 Font 	Verdana FontSize 	      0@visible  Component 
type ScriptLabel id lblPreset x 	      r@y 	      (@width 	     `s@height 	      D@text Electric Piano editable 0 fontSize 	      ?@fontName 	Phatone  Component 
type ScriptButton id btnPreset0 x 	      o@y 	      <@filmstripImage &{PROJECT_FOLDER}Left Arrow STRIP.png width 	      >@height 	      4@text Left saveInPreset 0 isMomentary 1  Component 	type ScriptButton id btnPreset1 x 	     (�@y 	      =@filmstripImage '{PROJECT_FOLDER}Right Arrow STRIP.png width 	      >@height 	      4@isMomentary 1 saveInPreset 0  Component type ScriptSlider id knbDum x 	      4@y 	      4@visible 0  Component type ScriptLabel id 	lblUDPS x 	        y 	        alignment 	topLeft text Ultima DSP LLC editable fontName Zrnic  Processor Type ModulatorChain ID GainModulation Bypassed Intensity 	      �?EditorStates BodyShown 1 Visible 0 Solo 0  ChildProcessors   Processor Type ModulatorChain ID PitchModulation Bypassed Intensity 	        EditorStates BodyShown 1 Visible 0 Solo 0  ChildProcessors   Processor Type EffectChain ID FX Bypassed EditorStates BodyShown 1 Visible 0 Solo 0  ChildProcessors   Processor Type StreamingSampler ID 
Sampler1 Bypassed Gain 	      �?Balance 	        VoiceLimit 	      p@KillFadeTime 	      4@IconColour 
ff0200ff PreloadSize 	      �@BufferSize 	      �@VoiceAmount 	      p@SamplerRepeatMode 	      @RRGroupAmount 	      �?PitchTracking 	      �?OneShot 	        CrossfadeGroups 	        Purged 	        Reversed 	        NumChannels    UseStaticMatrix 	        Group0Table  Group1Table  Group2Table  Group3Table  Group4Table  Group5Table  Group6Table  Group7Table  SampleMapID E. Piano (FFVII) EditorStates BodyShown 1 Visible 1 Solo 0 MapPanelShown 1 BigSampleMap 1 Folded 1  ChildProcessors  Processor Type MidiProcessorChain ID Midi Processor Bypassed EditorStates BodyShown 1 Visible 0 Solo 0  ChildProcessors  Processor Type Transposer ID Transposer1 Bypassed TransposeAmount 	        EditorStates BodyShown 1 Visible 1 Solo 0  ChildProcessors   Processor Type ModulatorChain ID GainModulation Bypassed Intensity 	      �?EditorStates BodyShown 1 Visible 0 Solo 0  ChildProcessors  Processor Type AHDSR ID AHDSR Envelope1 Bypassed Monophonic 	        Retrigger 	      �?Intensity 	      �?AttackCurve 	        DecayCurve 	        Attack 	        AttackLevel 	        Hold 	        Decay 	     ��@Sustain 	      Y�Release 	     @n@EcoMode 	      �?EditorStates BodyShown 1 Visible 1 Solo 0  ChildProcessors  Processor Type ModulatorChain ID Attack Time Bypassed Intensity 	      �?EditorStates BodyShown 1 Visible 0 Solo 0  ChildProcessors   Processor Type ModulatorChain ID Attack Level Bypassed Intensity 	      �?EditorStates BodyShown 1 Visible 0 Solo 0  ChildProcessors   Processor Type ModulatorChain ID Decay Time Bypassed Intensity 	      �?EditorStates BodyShown 1 Visible 0 Solo 0  ChildProcessors   Processor Type ModulatorChain ID Sustain Level Bypassed Intensity 	      �?EditorStates BodyShown 1 Visible 0 Solo 0  ChildProcessors   Processor Type ModulatorChain ID Release Time Bypassed Intensity 	      �?EditorStates BodyShown 1 Visible 0 Solo 0  ChildProcessors   Processor Type 
Velocity ID Velocity Modulator1 Bypassed Intensity 	      �?UseTable 	        Inverted 	        DecibelMode 	        EditorStates BodyShown 1 Visible 1 Solo 0  ChildProcessors   Processor Type ModulatorChain ID PitchModulation Bypassed Intensity 	        EditorStates BodyShown 1 Visible 0 Solo 0  ChildProcessors  Processor Type GlobalEnvelopeModulator ID Global Envelope Modulator1 Bypassed Monophonic 	        Retrigger 	        Bipolar Intensity 	        UseTable Inverted TableData  Connection  EditorStates BodyShown 1 Visible 1 Solo 0  ChildProcessors   Processor Type PitchWheel ID Pitch Wheel Modulator1 Bypassed Intensity 	   `UU�?Bipolar UseTable 	        Inverted 	        SmoothTime 	      i@EditorStates BodyShown 1 Visible 1 Solo 0  ChildProcessors   Processor Type EffectChain ID FX Bypassed EditorStates BodyShown 1 Visible 0 Solo 0  ChildProcessors   Processor Type ModulatorChain ID Sample Start Bypassed Intensity 	      �?EditorStates BodyShown 1 Visible 0 Solo 0  ChildProcessors   Processor Type ModulatorChain ID Group Fade Bypassed Intensity 	      �?EditorStates BodyShown 1 Visible 0 Solo 0  ChildProcessors   RoutingMatrix NumSourceChannels    Channel0     Send0 ����Channel1    Send1 ���� channels  channelData enabled level 	        suffix   RoutingMatrix NumSourceChannels    Channel0     Send0 ����Channel1    Send1 ���� macro_controls  macro name 	Macro 1 value 	        midi_cc ���� macro name 	Macro 2 value 	        midi_cc ���� macro name 	Macro 3 value 	        midi_cc ���� macro name 	Macro 4 value 	        midi_cc ���� macro name 	Macro 5 value 	        midi_cc ���� macro name 	Macro 6 value 	        midi_cc ���� macro name 	Macro 7 value 	        midi_cc ���� macro name 	Macro 8 value 	        midi_cc ���� MidiAutomation   MPEData Enabled  