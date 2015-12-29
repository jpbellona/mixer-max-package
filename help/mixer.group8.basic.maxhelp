{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 6,
			"minor" : 1,
			"revision" : 7,
			"architecture" : "x86"
		}
,
		"rect" : [ 74.0, 100.0, 877.0, 672.0 ],
		"bglocked" : 0,
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Gill Sans",
		"gridonopen" : 0,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 0,
		"statusbarvisible" : 2,
		"toolbarvisible" : 1,
		"boxanimatetime" : 200,
		"imprint" : 0,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"boxes" : [ 			{
				"box" : 				{
					"fontname" : "Gill Sans",
					"fontsize" : 12.0,
					"id" : "obj-22",
					"maxclass" : "flonum",
					"maximum" : 6.0,
					"minimum" : -70.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 622.0, 246.25, 50.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Gill Sans",
					"fontsize" : 13.0,
					"frgb" : 0.0,
					"id" : "obj-4",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 634.0, 293.25, 76.0, 21.0 ],
					"text" : "ch. 6 volume",
					"textcolor" : [ 0.426676, 0.426663, 0.42667, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Gill Sans",
					"fontsize" : 12.0,
					"id" : "obj-17",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 622.0, 275.25, 71.0, 18.0 ],
					"text" : "6 volume $1"
				}

			}
, 			{
				"box" : 				{
					"args" : [ "@vol", -6, "@module", 0, "@loop", 1, "@file", 4 ],
					"id" : "obj-3",
					"maxclass" : "bpatcher",
					"name" : "demosound.maxpat",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 236.0, 196.75, 225.0, 96.5 ]
				}

			}
, 			{
				"box" : 				{
					"args" : [ "@vol", -6, "@module", 0, "@loop", 1 ],
					"id" : "obj-10",
					"maxclass" : "bpatcher",
					"name" : "demosound.maxpat",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 11.0, 196.75, 225.0, 96.5 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Gill Sans",
					"fontsize" : 13.0,
					"frgb" : 0.0,
					"id" : "obj-26",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 11.0, 167.25, 334.0, 21.0 ],
					"text" : "Use presets on right to recall/save different volumes and pans",
					"textcolor" : [ 0.426676, 0.426663, 0.42667, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Gill Sans",
					"fontsize" : 13.0,
					"frgb" : 0.0,
					"id" : "obj-5",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 496.5, 339.5, 143.0, 36.0 ],
					"text" : "Storage of presets may be synced with pattr.",
					"textcolor" : [ 0.426676, 0.426663, 0.42667, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Gill Sans",
					"fontsize" : 12.0,
					"id" : "obj-34",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 496.5, 388.5, 130.0, 18.0 ],
					"text" : "pattrstorage mixergroup"
				}

			}
, 			{
				"box" : 				{
					"autorestore" : "mixergroup.json",
					"fontname" : "Gill Sans",
					"fontsize" : 12.0,
					"id" : "obj-31",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 496.5, 451.5, 130.0, 20.0 ],
					"saved_object_attributes" : 					{
						"client_rect" : [ 854, 172, 1208, 300 ],
						"parameter_enable" : 0,
						"storage_rect" : [ 766, 44, 1220, 302 ]
					}
,
					"text" : "pattrstorage mixergroup",
					"varname" : "mixergroup"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-30",
					"maxclass" : "preset",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "preset", "int", "preset", "int" ],
					"patching_rect" : [ 496.5, 421.5, 57.0, 19.0 ],
					"pattrstorage" : "mixergroup"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Gill Sans",
					"fontsize" : 13.0,
					"frgb" : 0.0,
					"id" : "obj-29",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 559.0, 293.25, 65.0, 21.0 ],
					"text" : "ch. 4 mute",
					"textcolor" : [ 0.426676, 0.426663, 0.42667, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-28",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 549.0, 246.25, 20.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Gill Sans",
					"fontsize" : 12.0,
					"id" : "obj-25",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 549.0, 275.25, 61.0, 18.0 ],
					"text" : "4 mute $1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Gill Sans",
					"fontsize" : 13.0,
					"frgb" : 0.0,
					"id" : "obj-24",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 492.0, 293.25, 57.0, 21.0 ],
					"text" : "ch. 3 pan",
					"textcolor" : [ 0.426676, 0.426663, 0.42667, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Gill Sans",
					"fontsize" : 13.0,
					"frgb" : 0.0,
					"id" : "obj-21",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 480.0, 195.25, 171.0, 51.0 ],
					"text" : "channel specific messages should begin with channel number",
					"textcolor" : [ 0.426676, 0.426663, 0.42667, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Gill Sans",
					"fontsize" : 12.0,
					"id" : "obj-16",
					"maxclass" : "number",
					"maximum" : 1000,
					"minimum" : 0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 480.0, 246.25, 50.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Gill Sans",
					"fontsize" : 12.0,
					"id" : "obj-14",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 480.0, 275.25, 53.0, 18.0 ],
					"text" : "3 pan $1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Gill Sans",
					"fontsize" : 12.0,
					"id" : "obj-12",
					"maxclass" : "number",
					"maximum" : 127,
					"minimum" : 0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 484.5, 514.0, 50.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Gill Sans",
					"fontsize" : 13.0,
					"frgb" : 0.0,
					"id" : "obj-7",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 304.5, 604.5, 143.0, 36.0 ],
					"text" : "May also be used as an abstraction",
					"textcolor" : [ 0.426676, 0.426663, 0.42667, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Gill Sans",
					"fontsize" : 13.0,
					"frgb" : 0.0,
					"id" : "obj-15",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 541.5, 505.0, 231.0, 36.0 ],
					"text" : "Use pattr to control objects directly. \nThis controls channel 1's pan",
					"textcolor" : [ 0.426676, 0.426663, 0.42667, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Gill Sans",
					"fontsize" : 12.0,
					"id" : "obj-13",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 484.5, 545.5, 275.0, 20.0 ],
					"text" : "pattrforward mixer::mixer.channel[1]::channel.pan::pan"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-6",
					"maxclass" : "ezdac~",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 11.0, 604.5, 45.0, 45.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Gill Sans",
					"fontsize" : 12.0,
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 9,
					"numoutlets" : 6,
					"outlettype" : [ "signal", "signal", "signal", "signal", "signal", "signal" ],
					"patching_rect" : [ 304.5, 576.5, 127.0, 20.0 ],
					"text" : "mixer.group8",
					"varname" : "mixer.bypass[1]"
				}

			}
, 			{
				"box" : 				{
					"border" : 1,
					"id" : "obj-1",
					"maxclass" : "bpatcher",
					"name" : "mixer.group8.basic.maxpat",
					"numinlets" : 9,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 11.0, 323.0, 443.5, 242.5 ],
					"varname" : "mixer"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Gill Sans",
					"fontsize" : 12.0,
					"hidden" : 1,
					"id" : "obj-19",
					"linecount" : 3,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 516.0, 73.0, 109.0, 46.0 ],
					"text" : ";\rmax launchbrowser http://jpbellona.com"
				}

			}
, 			{
				"box" : 				{
					"handoff" : "",
					"id" : "obj-20",
					"maxclass" : "ubutton",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "bang", "bang", "", "int" ],
					"patching_rect" : [ 516.0, 8.0, 124.0, 51.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 150.0, 109.0, 125.0, 31.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Gill Sans",
					"fontsize" : 13.0,
					"frgb" : 0.0,
					"id" : "obj-27",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 516.0, 8.0, 124.0, 51.0 ],
					"presentation" : 1,
					"presentation_linecount" : 3,
					"presentation_rect" : [ 155.0, 113.0, 110.0, 51.0 ],
					"text" : "Jon Bellona \njpbellona.com\n©2015",
					"textcolor" : [ 0.426676, 0.426663, 0.42667, 1.0 ],
					"textjustification" : 2
				}

			}
, 			{
				"box" : 				{
					"border" : 0,
					"filename" : "helpdetails.js",
					"id" : "obj-33",
					"ignoreclick" : 1,
					"jsarguments" : [ "mixer.group8.basic", 85 ],
					"maxclass" : "jsui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 11.0, 8.0, 495.0, 130.0 ]
				}

			}
, 			{
				"box" : 				{
					"background" : 1,
					"bgcolor" : [ 0.901961, 0.901961, 0.901961, 1.0 ],
					"border" : 1,
					"id" : "obj-11",
					"maxclass" : "panel",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 484.5, 331.5, 162.0, 148.0 ]
				}

			}
, 			{
				"box" : 				{
					"background" : 1,
					"bgcolor" : [ 0.901961, 0.901961, 0.901961, 1.0 ],
					"border" : 1,
					"id" : "obj-8",
					"maxclass" : "panel",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 292.5, 569.5, 162.0, 80.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 445.0, 568.5, 46.5, 568.5 ],
					"source" : [ "obj-1", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 8 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 489.5, 307.625, 445.0, 307.625 ],
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-16", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 8 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 631.5, 314.625, 445.0, 314.625 ],
					"source" : [ "obj-17", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"source" : [ "obj-20", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-22", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 8 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 558.5, 314.625, 445.0, 314.625 ],
					"source" : [ "obj-25", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-28", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 2 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-30", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-34", 0 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-10::obj-32" : [ "[8]", "[2]", 0 ],
			"obj-1::obj-57::obj-4" : [ "live.gain~[11]", "live.gain~", 0 ],
			"obj-1::obj-27" : [ "live.gain~[21]", "live.gain~", 0 ],
			"obj-2::obj-33::obj-17::obj-27" : [ "aux1_level[7]", "live.gain~", 0 ],
			"obj-3::obj-21::obj-6" : [ "live.tab[1]", "live.tab[1]", 0 ],
			"obj-2::obj-57::obj-17::obj-26" : [ "aux4_level[1]", "live.gain~", 0 ],
			"obj-1::obj-56::obj-4" : [ "live.gain~", "live.gain~", 0 ],
			"obj-2::obj-35::obj-17::obj-24" : [ "aux2_level[17]", "live.gain~", 0 ],
			"obj-2::obj-52::obj-17::obj-27" : [ "aux1_level[5]", "live.gain~", 0 ],
			"obj-2::obj-57::obj-17::obj-27" : [ "aux1_level[2]", "live.gain~", 0 ],
			"obj-2::obj-54::obj-4" : [ "live.gain~[24]", "live.gain~", 0 ],
			"obj-2::obj-55::obj-17::obj-24" : [ "aux2_level[4]", "live.gain~", 0 ],
			"obj-3::obj-35" : [ "[9]", "Level", 0 ],
			"obj-2::obj-33::obj-17::obj-25" : [ "aux3_level[7]", "live.gain~", 0 ],
			"obj-1::obj-54::obj-4" : [ "live.gain~[13]", "live.gain~", 0 ],
			"obj-2::obj-56::obj-17::obj-25" : [ "aux3_level[16]", "live.gain~", 0 ],
			"obj-2::obj-35::obj-4" : [ "live.gain~[8]", "live.gain~", 0 ],
			"obj-2::obj-52::obj-17::obj-25" : [ "aux3_level[5]", "live.gain~", 0 ],
			"obj-2::obj-56::obj-17::obj-27" : [ "aux1_level[1]", "live.gain~", 0 ],
			"obj-2::obj-27" : [ "live.gain~[16]", "live.gain~", 0 ],
			"obj-2::obj-54::obj-17::obj-24" : [ "aux2_level[16]", "live.gain~", 0 ],
			"obj-2::obj-35::obj-17::obj-26" : [ "aux4_level[18]", "live.gain~", 0 ],
			"obj-2::obj-53::obj-4" : [ "live.gain~[23]", "live.gain~", 0 ],
			"obj-1::obj-55::obj-4" : [ "live.gain~[17]", "live.gain~", 0 ],
			"obj-3::obj-32" : [ "[10]", "[2]", 0 ],
			"obj-1::obj-53::obj-4" : [ "live.gain~[12]", "live.gain~", 0 ],
			"obj-2::obj-56::obj-17::obj-26" : [ "aux4_level[16]", "live.gain~", 0 ],
			"obj-2::obj-56::obj-4" : [ "live.gain~[1]", "live.gain~", 0 ],
			"obj-1::obj-52::obj-4" : [ "live.gain~[14]", "live.gain~", 0 ],
			"obj-2::obj-53::obj-17::obj-24" : [ "aux2_level[3]", "live.gain~", 0 ],
			"obj-2::obj-35::obj-17::obj-27" : [ "aux1_level[17]", "live.gain~", 0 ],
			"obj-2::obj-52::obj-17::obj-24" : [ "aux2_level[5]", "live.gain~", 0 ],
			"obj-2::obj-55::obj-17::obj-26" : [ "aux4_level[4]", "live.gain~", 0 ],
			"obj-2::obj-57::obj-4" : [ "live.gain~[22]", "live.gain~", 0 ],
			"obj-2::obj-54::obj-17::obj-25" : [ "aux3_level[17]", "live.gain~", 0 ],
			"obj-2::obj-55::obj-4" : [ "live.gain~[6]", "live.gain~", 0 ],
			"obj-2::obj-54::obj-17::obj-27" : [ "aux1_level[16]", "live.gain~", 0 ],
			"obj-2::obj-33::obj-17::obj-24" : [ "aux2_level[7]", "live.gain~", 0 ],
			"obj-2::obj-33::obj-4" : [ "live.gain~[9]", "live.gain~", 0 ],
			"obj-2::obj-53::obj-17::obj-25" : [ "aux3_level[2]", "live.gain~", 0 ],
			"obj-2::obj-57::obj-17::obj-24" : [ "aux2_level[2]", "live.gain~", 0 ],
			"obj-2::obj-55::obj-17::obj-25" : [ "aux3_level[4]", "live.gain~", 0 ],
			"obj-1::obj-33::obj-4" : [ "live.gain~[18]", "live.gain~", 0 ],
			"obj-10::obj-35" : [ "[5]", "Level", 0 ],
			"obj-2::obj-33::obj-17::obj-26" : [ "aux4_level[7]", "live.gain~", 0 ],
			"obj-10::obj-21::obj-6" : [ "live.tab[3]", "live.tab[1]", 0 ],
			"obj-2::obj-53::obj-17::obj-26" : [ "aux4_level[2]", "live.gain~", 0 ],
			"obj-2::obj-57::obj-17::obj-25" : [ "aux3_level[1]", "live.gain~", 0 ],
			"obj-2::obj-56::obj-17::obj-24" : [ "aux2_level[1]", "live.gain~", 0 ],
			"obj-1::obj-35::obj-4" : [ "live.gain~[15]", "live.gain~", 0 ],
			"obj-2::obj-52::obj-17::obj-26" : [ "aux4_level[5]", "live.gain~", 0 ],
			"obj-2::obj-53::obj-17::obj-27" : [ "aux1_level[3]", "live.gain~", 0 ],
			"obj-2::obj-52::obj-4" : [ "live.gain~[7]", "live.gain~", 0 ],
			"obj-2::obj-35::obj-17::obj-25" : [ "aux3_level[18]", "live.gain~", 0 ],
			"obj-2::obj-55::obj-17::obj-27" : [ "aux1_level[4]", "live.gain~", 0 ],
			"obj-2::obj-54::obj-17::obj-26" : [ "aux4_level[17]", "live.gain~", 0 ]
		}
,
		"dependency_cache" : [ 			{
				"name" : "helpdetails.js",
				"bootpath" : "/Applications/Max 6.1/Cycling '74/help-resources",
				"patcherrelativepath" : "../../../Cycling '74/help-resources",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "mixer.group8.basic.maxpat",
				"bootpath" : "/Applications/Max 6.1/packages/mixer-0.0.1/patchers",
				"patcherrelativepath" : "../patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "mixer.channel.basic.maxpat",
				"bootpath" : "/Applications/Max 6.1/packages/mixer-0.0.1/patchers/channelstrip",
				"patcherrelativepath" : "../patchers/channelstrip",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "mixer.pan.maxpat",
				"bootpath" : "/Applications/Max 6.1/packages/mixer-0.0.1/patchers/channelstrip",
				"patcherrelativepath" : "../patchers/channelstrip",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "pan2.maxpat",
				"bootpath" : "/Applications/Max 6.1/examples/spatialization/panning/lib",
				"patcherrelativepath" : "../../../examples/spatialization/panning/lib",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "mixer.mute.maxpat",
				"bootpath" : "/Applications/Max 6.1/packages/mixer-0.0.1/patchers/channelstrip",
				"patcherrelativepath" : "../patchers/channelstrip",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "mixer.group8.maxpat",
				"bootpath" : "/Applications/Max 6.1/packages/mixer-0.0.1/patchers",
				"patcherrelativepath" : "../patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "mixer.channel.maxpat",
				"bootpath" : "/Applications/Max 6.1/packages/mixer-0.0.1/patchers/channelstrip",
				"patcherrelativepath" : "../patchers/channelstrip",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "mixer.aux.maxpat",
				"bootpath" : "/Applications/Max 6.1/packages/mixer-0.0.1/patchers/channelstrip",
				"patcherrelativepath" : "../patchers/channelstrip",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "mixergroup.json",
				"bootpath" : "/Applications/Max 6.1/packages/mixer-0.0.1/help",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "demosound.maxpat",
				"bootpath" : "/Applications/Max 6.1/Cycling '74/msp-help",
				"patcherrelativepath" : "../../../Cycling '74/msp-help",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "sine.svg",
				"bootpath" : "/Applications/Max 6.1/patches/picts/m4l-picts",
				"patcherrelativepath" : "../../../patches/picts/m4l-picts",
				"type" : "svg ",
				"implicit" : 1
			}
, 			{
				"name" : "saw.svg",
				"bootpath" : "/Applications/Max 6.1/patches/picts/m4l-picts",
				"patcherrelativepath" : "../../../patches/picts/m4l-picts",
				"type" : "svg ",
				"implicit" : 1
			}
, 			{
				"name" : "square.svg",
				"bootpath" : "/Applications/Max 6.1/patches/picts/m4l-picts",
				"patcherrelativepath" : "../../../patches/picts/m4l-picts",
				"type" : "svg ",
				"implicit" : 1
			}
, 			{
				"name" : "random.svg",
				"bootpath" : "/Applications/Max 6.1/patches/picts/m4l-picts",
				"patcherrelativepath" : "../../../patches/picts/m4l-picts",
				"type" : "svg ",
				"implicit" : 1
			}
 ]
	}

}
