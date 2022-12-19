scenario = "rating 2D";

pcl_file = "2Drating_7.4_G1_11-4-2014.pcl";

#response_port_output = false;
response_matching = simple_matching;		#allow responses by subject.
active_buttons = 1;
button_codes = 1;

default_background_color = 240,240,240;	#grey is the default background color
default_font = "Calibri";						#Calibri is the default font
default_text_color = 0,0,0;					#black is the default font (or text) color
default_font_size = 30;
default_formatted_text = true; 				#causes formatting tags to be applied.
write_codes = true;
stimulus_properties = trial_event, string, responses, number;
event_code_delimiter = ",";

#################################################################################################
begin; #begin the sdl part, so the part in which all the needed objects are defined

#DEFINE OBJECTS

# Slide to announce passive movement
picture {text{caption = "passive movement
relax your thumb";}; x=0;y=0;} pm_start;

trial{
	all_responses = true;
	trial_duration = forever;
	trial_type= first_response;
	stimulus_event{
		picture pm_start;
			time=0;
		code="start passive movement";
		}ste_pmstart;
		}tr_pmstart;

#VAS SCALE
#define appearance and position of the lines of the VAS.
box { color = 0,0,0; height = 530; width = 4; }VASvertical; 
box { color = 0,0,0; height = 4; width = 530; }VAShorizontal;  
box { color = 0,0,0; height = 3; width = 20; }VASanchorache;
box { color = 0,0,0; height = 20; width = 3; }VASanchorfatigue;
box { color = 0,0,0; height = 4; width = 30; }VASanchorhighache;
box { color = 0,0,0; height = 30; width = 4; }VASanchorhighfatigue;

#define marker in cross & box
text{caption = "+"; font_size = 48; background_color = 240,240,240,0; font_color = 153,51,255;} cross;
box{ color = 153,51,255; height = 1; width = 5; }responseboxvert;
box{ color = 153,51,255; height = 5; width = 1; }responseboxhoriz;

#picture of the scale for the condition with control
picture {
		box VASvertical; x = -280; bottom_y = -200;
		box VAShorizontal; left_x = -290; y = -190;
		box VASanchorhighache; x = -280; y = 330;
#		box VASanchorache; x = -280; y = 304;
#		box VASanchorache; x = -280; y = 278;
#		box VASanchorache; x = -280; y = 252;
#		box VASanchorache; x = -280; y = 226;
#		box VASanchorache; x = -280; y = 200;
#		box VASanchorache; x = -280; y = 174;
#		box VASanchorache; x = -280; y = 148;
#		box VASanchorache; x = -280; y = 122;
#		box VASanchorache; x = -280; y = 96;
#		box VASanchorache; x = -280; y = 70;
#		box VASanchorache; x = -280; y = 44;
#		box VASanchorache; x = -280; y = 18;
#		box VASanchorache; x = -280; y = -8;
#		box VASanchorache; x = -280; y = -34;
#		box VASanchorache; x = -280; y = -60;
#		box VASanchorache; x = -280; y = -86;
#		box VASanchorache; x = -280; y = -112;
#		box VASanchorache; x = -280; y = -138;
#		box VASanchorache; x = -280; y = -164;
		box VASanchorhighfatigue; x = 240; y = -190;
#		box VASanchorfatigue; x = 214; y = -190;
#		box VASanchorfatigue; x = 188; y = -190;
#		box VASanchorfatigue; x = 162; y = -190;
#		box VASanchorfatigue; x = 136; y = -190;
#		box VASanchorfatigue; x = 110; y = -190;
#		box VASanchorfatigue; x = 84; y = -190;
#		box VASanchorfatigue; x = 58; y = -190;
#		box VASanchorfatigue; x = 32; y = -190;
#		box VASanchorfatigue; x = 6; y = -190;
#		box VASanchorfatigue; x = -20; y = -190;
#		box VASanchorfatigue; x = -46; y = -190;
#		box VASanchorfatigue; x = -72; y = -190;
#		box VASanchorfatigue; x = -98; y = -190;
#		box VASanchorfatigue; x = -124; y = -190;
#		box VASanchorfatigue; x = -150; y = -190;
#		box VASanchorfatigue; x = -176; y = -190;
#		box VASanchorfatigue; x = -202; y = -190;
#		box VASanchorfatigue; x = -228; y = -190;
#		box VASanchorfatigue; x = -254; y = -190;
		text cross; x = -280; y = -188; #cursor at 0
		box responseboxvert; x = -280; y = -186;
		box responseboxhoriz; x = -280; y = -186;

		
		#descriptors
		text { caption = "<b>no sensation<\b>"; background_color = 240,240,240,0; font_size = 18; text_align = align_right;}; x = -360; y = -187; 
		text { caption = "<b>no sensation<\b>"; background_color = 240,240,240,0; font_size = 18;text_align = align_right;}nofatigue; x = -283; y = -265; 		
		text { caption = "<b>faint<\b>"; background_color = 240,240,240,0; font_size = 18; text_align = align_right;}; x = -320; y = -160; 
		text { caption = "<b>faint<\b>"; background_color = 240,240,240,0; font_size = 18;text_align = align_right;}faintfatigue; x = -256; y = -227; 		
		text { caption = "<b>very weak<\b>"; background_color = 240,240,240,0; font_size = 18; text_align = align_right;}; x = -350; y = -83; 
		text { caption = "<b>very weak<\b>"; background_color = 240,240,240,0; font_size = 18;text_align = align_right;}vweakfatigue; x = -179; y = -253; 		
		text { caption = "<b>weak<\b>"; background_color = 240,240,240,0; font_size = 18; text_align = align_right;}; x = -325; y = -57; 
		text { caption = "<b>weak<\b>"; background_color = 240,240,240,0; font_size = 18;text_align = align_right;}weakfatigue; x = -153; y = -229;
		text { caption = "<b>very mild<\b>"; background_color = 240,240,240,0; font_size = 18; text_align = align_right;}; x = -345; y = -5; 
		text { caption = "<b>very mild<\b>"; background_color = 240,240,240,0; font_size = 18;text_align = align_right;}vmildfatigue; x = -101; y = -250;
		text { caption = "<b>mild<\b>"; background_color = 240,240,240,0; font_size = 18; text_align = align_right;}; x = -320; y = 21;
		text { caption = "<b>mild<\b>"; background_color = 240,240,240,0; font_size = 18;text_align = align_right;}mildfatigue; x = -75; y = -225; 		
		text { caption = "<b>moderate<\b>"; background_color = 240,240,240,0; font_size = 18; text_align = align_right;}; x = -348; y = 99; 
		text { caption = "<b>moderate<\b>"; background_color = 240,240,240,0; font_size = 18;text_align = align_right;}modfatigue; x = 3; y = -252; 		
		text { caption = "<b>barely strong<\b>"; background_color = 240,240,240,0; font_size = 18; text_align = align_right;}; x = -365; y = 126;
		text { caption = "<b>barely strong<\b>"; background_color = 240,240,240,0; font_size = 18;text_align = align_right;}bstrongfatigue; x = 29; y = -269;
		text { caption = "<b>slightly intense<\b>"; background_color = 240,240,240,0; font_size = 18; text_align = align_right;}; x = -373; y = 152; 
		text { caption = "<b>slightly intense<\b>"; background_color = 240,240,240,0; font_size = 18;text_align = align_right;}sintensefatigue; x = 54; y = -278;	
		text { caption = "<b>strong<\b>"; background_color = 240,240,240,0; font_size = 18; text_align = align_right;}; x = -330; y = 203; 
		text { caption = "<b>strong<\b>"; background_color = 240,240,240,0; font_size = 18;text_align = align_right;}strongfatigue; x = 107; y = -235;
		text { caption = "<b>intense<\b>"; background_color = 240,240,240,0; font_size = 18; text_align = align_right;}; x = -335; y = 229; 
		text { caption = "<b>intense<\b>"; background_color = 240,240,240,0; font_size = 18;text_align = align_right;}intensefatigue; x = 133; y = -240; 		
		text { caption = "<b>very intense<\b>"; background_color = 240,240,240,0; font_size = 18; text_align = align_right;}; x = -360; y = 255; 
		text { caption = "<b>very intense<\b>"; background_color = 240,240,240,0; font_size = 18;text_align = align_right;}vintensefatigue; x = 158; y = -264; 		
		text { caption = "<b>extremely intense<\b>"; background_color = 240,240,240,0; font_size = 18; text_align = align_right;}; x = -388; y = 281; 
		text { caption = "<b>extremely intense<\b>"; background_color = 240,240,240,0; font_size = 18;text_align = align_right;}eintensefatigue; x = 184; y = -292; 		

		#sensation
		text { caption = "<b>ache<\b>"; background_color = 240,240,240,0; font_size = 20; }; x = -280; y = 350; 
		text { caption = "<b>fatigue<\b>"; background_color = 240,240,240,0; font_size = 20; }; x = 290; y = -187; 
	} VAS;
	
#slide VAS
trial{
	all_responses = true;
	trial_duration = stimuli_length;
	trial_type= fixed;
		picture VAS;
			time = 0;
		code = "start_scale";
	}tr_VAS;
	
#Define the slide for the end
picture {text {caption = "Thank you!";
					};x=0;y=0;} thanks;

trial{
	all_responses = true;
	trial_duration= forever;
	trial_type = first_response;
	stimulus_event{
		picture thanks;
		code = "thanks";
	}thanks_event;
} tr_thanks;