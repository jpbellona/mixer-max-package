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
		"rect" : [ 4.0, 44.0, 1125.0, 550.0 ],
		"bglocked" : 0,
		"openinpresentation" : 1,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
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
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1126.75, 107.0, 115.0, 20.0 ],
					"text" : "pattrforward master"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-29",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 774.25, 9.0, 229.0, 20.0 ],
					"text" : "control messages parsed by channel first"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-14",
					"maxclass" : "newobj",
					"numinlets" : 9,
					"numoutlets" : 9,
					"outlettype" : [ "", "", "", "", "", "", "", "", "" ],
					"patching_rect" : [ 743.0, 44.0, 127.0, 20.0 ],
					"text" : "route 1 2 3 4 5 6 7 8"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"frgb" : 0.0,
					"id" : "obj-86",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1150.0, 477.0, 53.0, 21.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 471.0, 246.0, 51.0, 21.0 ],
					"text" : "Aux 2"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"frgb" : 0.0,
					"id" : "obj-85",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 943.0, 477.0, 53.0, 21.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 421.0, 246.0, 51.0, 21.0 ],
					"text" : "Aux 1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-84",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1018.0, 107.0, 105.0, 20.0 ],
					"text" : "pattrforward mute"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontname" : "Arial",
					"fontsize" : 16.0,
					"frgb" : 0.0,
					"id" : "obj-82",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1079.0, 20.0, 138.0, 24.0 ],
					"text" : "PATCHER ARGS"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-83",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 1055.0, 44.0, 192.0, 20.0 ],
					"text" : "patcherargs @mute 0 @master -6"
				}

			}
, 			{
				"box" : 				{
					"comment" : "ch.8 control",
					"id" : "obj-76",
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 743.0, 9.0, 25.0, 25.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-75",
					"maxclass" : "newobj",
					"numinlets" : 5,
					"numoutlets" : 5,
					"outlettype" : [ "", "", "", "", "" ],
					"patching_rect" : [ 1018.0, 78.0, 164.0, 20.0 ],
					"text" : "route mute echo verb master"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-70",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 3,
					"outlettype" : [ "bang", "bang", "" ],
					"patching_rect" : [ 1177.0, 162.5, 46.0, 20.0 ],
					"text" : "sel 1 0"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-71",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1189.5, 220.0, 43.0, 19.0 ],
					"text" : "close"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-72",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1177.0, 190.5, 40.0, 19.0 ],
					"text" : "open"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-73",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1177.0, 252.0, 53.0, 20.0 ],
					"text" : "pcontrol"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Gill Sans",
					"fontsize" : 13.0,
					"id" : "obj-74",
					"maxclass" : "textbutton",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1177.0, 134.0, 60.0, 21.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 474.0, 27.5, 44.0, 20.0 ],
					"text" : "Verb",
					"texton" : "close",
					"varname" : "verb"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-69",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 1100.0, 286.0, 96.0, 20.0 ],
					"text" : "mixer.verb-plate",
					"varname" : "mixer.verb-plate[1]"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-49",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 3,
					"outlettype" : [ "bang", "bang", "" ],
					"patching_rect" : [ 943.0, 162.5, 46.0, 20.0 ],
					"text" : "sel 1 0"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-50",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 955.5, 220.0, 43.0, 19.0 ],
					"text" : "close"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-51",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 943.0, 190.5, 40.0, 19.0 ],
					"text" : "open"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-66",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 943.0, 252.0, 53.0, 20.0 ],
					"text" : "pcontrol"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Gill Sans",
					"fontsize" : 13.0,
					"id" : "obj-67",
					"maxclass" : "textbutton",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 943.0, 134.0, 60.0, 21.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 421.0, 27.5, 44.0, 20.0 ],
					"text" : "Echo",
					"texton" : "close",
					"varname" : "echo"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-48",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "" ],
					"patching_rect" : [ 893.0, 286.0, 69.0, 20.0 ],
					"text" : "mixer.echo",
					"varname" : "mixer.echo[1]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-46",
					"maxclass" : "bpatcher",
					"name" : "mixer.peaklim.maxpat",
					"numinlets" : 3,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 685.0, 151.0, 65.0, 27.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 362.0, 28.0, 51.5, 27.0 ],
					"varname" : "mixer.peaklim[8]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-47",
					"maxclass" : "bpatcher",
					"name" : "mixer.eq.maxpat",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 685.0, 108.0, 51.5, 29.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 362.0, 6.0, 51.5, 22.0 ],
					"varname" : "mixer.eq[8]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-44",
					"maxclass" : "bpatcher",
					"name" : "mixer.peaklim.maxpat",
					"numinlets" : 3,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 614.5, 151.0, 65.0, 27.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 310.5, 28.0, 51.5, 27.0 ],
					"varname" : "mixer.peaklim[7]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-45",
					"maxclass" : "bpatcher",
					"name" : "mixer.eq.maxpat",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 614.5, 108.0, 51.5, 29.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 310.5, 6.0, 51.5, 22.0 ],
					"varname" : "mixer.eq[7]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-42",
					"maxclass" : "bpatcher",
					"name" : "mixer.peaklim.maxpat",
					"numinlets" : 3,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 544.0, 151.0, 65.0, 27.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 259.0, 28.0, 51.5, 27.0 ],
					"varname" : "mixer.peaklim[6]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-43",
					"maxclass" : "bpatcher",
					"name" : "mixer.eq.maxpat",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 544.0, 108.0, 51.5, 29.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 259.0, 6.0, 51.5, 22.0 ],
					"varname" : "mixer.eq[6]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-40",
					"maxclass" : "bpatcher",
					"name" : "mixer.peaklim.maxpat",
					"numinlets" : 3,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 473.5, 151.0, 65.0, 27.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 207.5, 28.0, 51.5, 27.0 ],
					"varname" : "mixer.peaklim[5]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-41",
					"maxclass" : "bpatcher",
					"name" : "mixer.eq.maxpat",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 473.5, 108.0, 51.5, 29.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 207.5, 6.0, 51.5, 22.0 ],
					"varname" : "mixer.eq[5]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-38",
					"maxclass" : "bpatcher",
					"name" : "mixer.peaklim.maxpat",
					"numinlets" : 3,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 403.5, 151.0, 65.0, 27.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 156.0, 28.0, 51.5, 27.0 ],
					"varname" : "mixer.peaklim[4]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-39",
					"maxclass" : "bpatcher",
					"name" : "mixer.eq.maxpat",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 403.5, 108.0, 51.5, 29.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 156.0, 6.0, 51.5, 22.0 ],
					"varname" : "mixer.eq[4]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-36",
					"maxclass" : "bpatcher",
					"name" : "mixer.peaklim.maxpat",
					"numinlets" : 3,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 334.0, 151.0, 65.0, 27.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 104.5, 28.0, 51.5, 27.0 ],
					"varname" : "mixer.peaklim[3]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-37",
					"maxclass" : "bpatcher",
					"name" : "mixer.eq.maxpat",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 334.0, 108.0, 51.5, 29.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 104.5, 6.0, 51.5, 22.0 ],
					"varname" : "mixer.eq[3]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-34",
					"maxclass" : "bpatcher",
					"name" : "mixer.peaklim.maxpat",
					"numinlets" : 3,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 261.5, 151.0, 65.0, 27.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 53.0, 28.0, 51.5, 27.0 ],
					"varname" : "mixer.peaklim[2]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-32",
					"maxclass" : "bpatcher",
					"name" : "mixer.peaklim.maxpat",
					"numinlets" : 3,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 191.5, 151.0, 65.0, 27.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1.5, 28.0, 51.5, 27.0 ],
					"varname" : "mixer.peaklim[1]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-31",
					"maxclass" : "bpatcher",
					"name" : "mixer.eq.maxpat",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 261.5, 108.0, 51.5, 29.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 53.0, 6.0, 51.5, 22.0 ],
					"varname" : "mixer.eq[2]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-30",
					"maxclass" : "bpatcher",
					"name" : "mixer.eq.maxpat",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 191.5, 108.0, 51.5, 29.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1.5, 6.0, 51.5, 22.0 ],
					"varname" : "mixer.eq[1]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-28",
					"maxclass" : "bpatcher",
					"name" : "mixer.channel.basic.stereo.maxpat",
					"numinlets" : 3,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 1100.0, 319.0, 50.0, 194.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 471.0, 52.0, 50.0, 194.0 ],
					"varname" : "mixer.channel.basic.stereo[1]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-25",
					"maxclass" : "bpatcher",
					"name" : "mixer.channel.basic.stereo.maxpat",
					"numinlets" : 3,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 893.0, 319.0, 50.0, 194.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 421.0, 52.0, 50.0, 194.0 ],
					"varname" : "mixer.channel.basic.stereo"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-9",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 14.0, 14.0, 150.0, 47.0 ],
					"text" : "8 channel mixer complete with EQ, compressor, and Echo/Verb aux returns"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-12",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 14.0, 72.0, 83.0, 47.0 ],
					"text" : "to do:\nSOLO\npost/pre send"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-23",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 716.25, 728.552734, 69.0, 20.0 ],
					"text" : "Aux Sends"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-13",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 857.5, 160.0, 54.0, 18.0 ],
					"text" : "mute $1"
				}

			}
, 			{
				"box" : 				{
					"comment" : "AUX4",
					"id" : "obj-22",
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 683.0, 728.552734, 25.0, 25.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "AUX3",
					"id" : "obj-21",
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 601.0, 728.552734, 25.0, 25.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "AUX2",
					"id" : "obj-20",
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 499.5, 728.552734, 25.0, 25.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "AUX1",
					"id" : "obj-19",
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 401.0, 728.552734, 25.0, 25.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-18",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 200.0, 649.0, 150.0, 20.0 ],
					"text" : "Connect output to ezdac~"
				}

			}
, 			{
				"box" : 				{
					"comment" : "MAIN R",
					"id" : "obj-17",
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 167.0, 728.552734, 25.0, 25.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "MAIN L",
					"id" : "obj-16",
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 141.0, 728.552734, 25.0, 25.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Gill Sans",
					"fontsize" : 10.0,
					"id" : "obj-121",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 217.0, 669.0, 119.0, 38.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 534.0, 31.0, 63.0, 24.0 ],
					"text" : "DSP Status"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-120",
					"linecount" : 2,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 217.0, 717.552734, 65.0, 31.0 ],
					"text" : ";\rdsp status"
				}

			}
, 			{
				"box" : 				{
					"comment" : "ch.8",
					"id" : "obj-65",
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 685.0, 9.0, 25.0, 25.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "ch.7",
					"id" : "obj-64",
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 614.5, 9.0, 25.0, 25.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "ch.6",
					"id" : "obj-63",
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 544.0, 9.0, 25.0, 25.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "ch.5",
					"id" : "obj-62",
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 473.5, 9.0, 25.0, 25.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "ch.4",
					"id" : "obj-61",
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 403.5, 9.0, 25.0, 25.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "ch.3",
					"id" : "obj-60",
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 334.0, 9.0, 25.0, 25.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "ch.2",
					"id" : "obj-59",
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 261.5, 9.0, 25.0, 25.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "ch.1",
					"id" : "obj-58",
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 191.5, 9.0, 25.0, 25.0 ]
				}

			}
, 			{
				"box" : 				{
					"args" : [ "@channel", 8 ],
					"id" : "obj-56",
					"maxclass" : "bpatcher",
					"name" : "mixer.channel.maxpat",
					"numinlets" : 2,
					"numoutlets" : 6,
					"outlettype" : [ "signal", "signal", "signal", "signal", "signal", "signal" ],
					"patching_rect" : [ 685.0, 192.0, 47.0, 211.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 362.0, 55.0, 47.0, 206.0 ],
					"varname" : "mixer.channel[8]"
				}

			}
, 			{
				"box" : 				{
					"args" : [ "@channel", 7 ],
					"id" : "obj-57",
					"maxclass" : "bpatcher",
					"name" : "mixer.channel.maxpat",
					"numinlets" : 2,
					"numoutlets" : 6,
					"outlettype" : [ "signal", "signal", "signal", "signal", "signal", "signal" ],
					"patching_rect" : [ 614.5, 192.0, 47.0, 211.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 310.5, 55.0, 47.0, 206.0 ],
					"varname" : "mixer.channel[7]"
				}

			}
, 			{
				"box" : 				{
					"args" : [ "@channel", 6 ],
					"id" : "obj-53",
					"maxclass" : "bpatcher",
					"name" : "mixer.channel.maxpat",
					"numinlets" : 2,
					"numoutlets" : 6,
					"outlettype" : [ "signal", "signal", "signal", "signal", "signal", "signal" ],
					"patching_rect" : [ 544.0, 192.0, 47.0, 211.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 259.0, 55.0, 47.0, 206.0 ],
					"varname" : "mixer.channel[6]"
				}

			}
, 			{
				"box" : 				{
					"args" : [ "@channel", 5 ],
					"id" : "obj-54",
					"maxclass" : "bpatcher",
					"name" : "mixer.channel.maxpat",
					"numinlets" : 2,
					"numoutlets" : 6,
					"outlettype" : [ "signal", "signal", "signal", "signal", "signal", "signal" ],
					"patching_rect" : [ 473.5, 192.0, 47.0, 211.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 207.5, 55.0, 47.0, 206.0 ],
					"varname" : "mixer.channel[5]"
				}

			}
, 			{
				"box" : 				{
					"args" : [ "@channel", 4 ],
					"id" : "obj-55",
					"maxclass" : "bpatcher",
					"name" : "mixer.channel.maxpat",
					"numinlets" : 2,
					"numoutlets" : 6,
					"outlettype" : [ "signal", "signal", "signal", "signal", "signal", "signal" ],
					"patching_rect" : [ 403.5, 192.0, 47.0, 211.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 156.0, 55.0, 47.0, 206.0 ],
					"varname" : "mixer.channel[4]"
				}

			}
, 			{
				"box" : 				{
					"args" : [ "@channel", 3 ],
					"id" : "obj-52",
					"maxclass" : "bpatcher",
					"name" : "mixer.channel.maxpat",
					"numinlets" : 2,
					"numoutlets" : 6,
					"outlettype" : [ "signal", "signal", "signal", "signal", "signal", "signal" ],
					"patching_rect" : [ 334.0, 192.0, 47.0, 211.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 104.5, 55.0, 47.0, 206.0 ],
					"varname" : "mixer.channel[3]"
				}

			}
, 			{
				"box" : 				{
					"args" : [ "@channel", 2 ],
					"id" : "obj-35",
					"maxclass" : "bpatcher",
					"name" : "mixer.channel.maxpat",
					"numinlets" : 2,
					"numoutlets" : 6,
					"outlettype" : [ "signal", "signal", "signal", "signal", "signal", "signal" ],
					"patching_rect" : [ 261.5, 192.0, 47.0, 211.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 53.0, 55.0, 47.0, 206.0 ],
					"varname" : "mixer.channel[2]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-33",
					"maxclass" : "bpatcher",
					"name" : "mixer.channel.maxpat",
					"numinlets" : 2,
					"numoutlets" : 6,
					"outlettype" : [ "signal", "signal", "signal", "signal", "signal", "signal" ],
					"patching_rect" : [ 191.5, 192.0, 47.0, 211.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1.5, 55.0, 47.0, 206.0 ],
					"varname" : "mixer.channel[1]"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-24",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 857.5, 99.0, 73.0, 20.0 ],
					"text" : "global mute"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontname" : "Palatino",
					"fontsize" : 10.0,
					"id" : "obj-15",
					"maxclass" : "textbutton",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 857.5, 123.0, 62.5, 26.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 536.5, 67.0, 58.0, 21.0 ],
					"text" : "MUTE",
					"texton" : "UNMUTE",
					"varname" : "mute"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"frgb" : 0.0,
					"id" : "obj-5",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 208.5, 600.0, 66.0, 21.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 536.5, 246.0, 66.0, 21.0 ],
					"text" : "MASTER"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 13.0,
					"id" : "obj-27",
					"maxclass" : "live.gain~",
					"numinlets" : 2,
					"numoutlets" : 5,
					"outlettype" : [ "signal", "signal", "", "float", "list" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 141.0, 580.0, 42.0, 114.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 536.5, 100.0, 58.0, 146.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "live.gain~[1]",
							"parameter_shortname" : "live.gain~",
							"parameter_type" : 0,
							"parameter_mmin" : -70.0,
							"parameter_mmax" : 6.0,
							"parameter_initial_enable" : 1,
							"parameter_initial" : [ 0 ],
							"parameter_unitstyle" : 4
						}

					}
,
					"showname" : 0,
					"varname" : "master"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-3",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "", "", "" ],
					"patching_rect" : [ 104.5, 72.0, 59.5, 20.0 ],
					"restore" : 					{
						"echo" : [ 0 ],
						"master" : [ -6.040034 ],
						"mute" : [ 0 ],
						"verb" : [ 0 ]
					}
,
					"text" : "autopattr",
					"varname" : "u334015063"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-120", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"source" : [ "obj-121", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-33", 1 ],
					"disabled" : 0,
					"hidden" : 1,
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-35", 1 ],
					"disabled" : 0,
					"hidden" : 1,
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-52", 1 ],
					"disabled" : 0,
					"hidden" : 1,
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-53", 1 ],
					"disabled" : 0,
					"hidden" : 1,
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-54", 1 ],
					"disabled" : 0,
					"hidden" : 1,
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-55", 1 ],
					"disabled" : 0,
					"hidden" : 1,
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-56", 1 ],
					"disabled" : 0,
					"hidden" : 1,
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-57", 1 ],
					"disabled" : 0,
					"hidden" : 1,
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-30", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 752.5, 85.5, 233.5, 85.5 ],
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-31", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 766.0, 85.5, 303.5, 85.5 ],
					"source" : [ "obj-14", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-32", 2 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 752.5, 139.0, 247.0, 139.0 ],
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-33", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 752.5, 185.5, 229.0, 185.5 ],
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-34", 2 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 766.0, 139.0, 317.0, 139.0 ],
					"source" : [ "obj-14", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-35", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 766.0, 183.5, 299.0, 183.5 ],
					"source" : [ "obj-14", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-36", 2 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 779.5, 139.0, 389.5, 139.0 ],
					"source" : [ "obj-14", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 779.5, 85.5, 376.0, 85.5 ],
					"source" : [ "obj-14", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-38", 2 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 793.0, 139.0, 459.0, 139.0 ],
					"source" : [ "obj-14", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-39", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 793.0, 85.5, 445.5, 85.5 ],
					"source" : [ "obj-14", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-40", 2 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 806.5, 138.0, 529.0, 138.0 ],
					"source" : [ "obj-14", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-41", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 806.5, 85.5, 515.5, 85.5 ],
					"source" : [ "obj-14", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-42", 2 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 820.0, 139.0, 599.5, 139.0 ],
					"source" : [ "obj-14", 5 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-43", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 820.0, 85.5, 586.0, 85.5 ],
					"source" : [ "obj-14", 5 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-44", 2 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 833.5, 139.0, 670.0, 139.0 ],
					"source" : [ "obj-14", 6 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-45", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 833.5, 85.5, 656.5, 85.5 ],
					"source" : [ "obj-14", 6 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-46", 2 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 847.0, 139.0, 740.5, 139.0 ],
					"source" : [ "obj-14", 7 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-47", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 847.0, 85.5, 727.0, 85.5 ],
					"source" : [ "obj-14", 7 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-52", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 779.5, 183.5, 371.5, 183.5 ],
					"source" : [ "obj-14", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-53", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 820.0, 184.5, 581.5, 184.5 ],
					"source" : [ "obj-14", 5 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-54", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 806.5, 185.5, 511.0, 185.5 ],
					"source" : [ "obj-14", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-55", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 793.0, 183.5, 441.0, 183.5 ],
					"source" : [ "obj-14", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-56", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 847.0, 182.5, 722.5, 182.5 ],
					"source" : [ "obj-14", 7 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-57", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 833.5, 185.5, 652.0, 185.5 ],
					"source" : [ "obj-14", 6 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-75", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-14", 8 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 933.5, 546.0, 173.5, 546.0 ],
					"source" : [ "obj-25", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 902.5, 546.0, 150.5, 546.0 ],
					"source" : [ "obj-25", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-27", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-27", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 1140.5, 546.0, 173.5, 546.0 ],
					"source" : [ "obj-28", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 1109.5, 546.0, 150.5, 546.0 ],
					"source" : [ "obj-28", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-32", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-30", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-34", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-31", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-33", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-32", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-33", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-33", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-33", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-33", 5 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 206.600006, 491.0, 173.5, 491.0 ],
					"source" : [ "obj-33", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 201.0, 491.0, 150.5, 491.0 ],
					"source" : [ "obj-33", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-48", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 212.199997, 412.0, 810.849976, 412.0, 810.849976, 276.0, 902.5, 276.0 ],
					"source" : [ "obj-33", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-69", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 217.800003, 412.0, 1005.150024, 412.0, 1005.150024, 276.0, 1109.5, 276.0 ],
					"source" : [ "obj-33", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-35", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-34", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-35", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-35", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-35", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-35", 5 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 276.600006, 491.0, 173.5, 491.0 ],
					"source" : [ "obj-35", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 271.0, 491.0, 150.5, 491.0 ],
					"source" : [ "obj-35", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-48", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 282.200012, 412.0, 820.849976, 412.0, 820.849976, 276.0, 902.5, 276.0 ],
					"source" : [ "obj-35", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-69", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 287.799988, 412.0, 1016.150024, 412.0, 1016.150024, 276.0, 1109.5, 276.0 ],
					"source" : [ "obj-35", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-52", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-36", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-36", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-37", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-55", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-38", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-38", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-54", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-40", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-40", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-41", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-53", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-42", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-42", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-43", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-57", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-44", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-44", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-45", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-56", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-46", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-46", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-47", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-48", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-48", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-50", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-49", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-49", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-66", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-50", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-66", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-51", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-52", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-52", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-52", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-52", 5 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 349.100006, 491.0, 173.5, 491.0 ],
					"source" : [ "obj-52", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 343.5, 491.0, 150.5, 491.0 ],
					"source" : [ "obj-52", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-48", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 354.700012, 412.0, 828.099976, 412.0, 828.099976, 276.0, 902.5, 276.0 ],
					"source" : [ "obj-52", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-69", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 360.299988, 412.0, 1052.400024, 412.0, 1052.400024, 276.0, 1109.5, 276.0 ],
					"source" : [ "obj-52", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-53", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-53", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-53", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-53", 5 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 559.099976, 491.0, 173.5, 491.0 ],
					"source" : [ "obj-53", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 553.5, 491.0, 150.5, 491.0 ],
					"source" : [ "obj-53", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-48", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 564.700012, 412.0, 859.099976, 412.0, 859.099976, 276.0, 902.5, 276.0 ],
					"source" : [ "obj-53", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-69", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 570.299988, 412.0, 1064.400024, 412.0, 1064.400024, 276.0, 1109.5, 276.0 ],
					"source" : [ "obj-53", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-54", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-54", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-54", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-54", 5 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 488.600006, 491.0, 173.5, 491.0 ],
					"source" : [ "obj-54", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 483.0, 491.0, 150.5, 491.0 ],
					"source" : [ "obj-54", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-48", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 494.200012, 412.0, 849.849976, 412.0, 849.849976, 276.0, 902.5, 276.0 ],
					"source" : [ "obj-54", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-69", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 499.799988, 412.0, 1039.150024, 412.0, 1039.150024, 276.0, 1109.5, 276.0 ],
					"source" : [ "obj-54", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-55", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-55", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-55", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-55", 5 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 418.600006, 491.0, 173.5, 491.0 ],
					"source" : [ "obj-55", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 413.0, 491.0, 150.5, 491.0 ],
					"source" : [ "obj-55", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-48", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 424.200012, 412.0, 840.849976, 412.0, 840.849976, 276.0, 902.5, 276.0 ],
					"source" : [ "obj-55", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-69", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 429.799988, 412.0, 1027.150024, 412.0, 1027.150024, 276.0, 1109.5, 276.0 ],
					"source" : [ "obj-55", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-56", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-56", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-56", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-56", 5 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 700.099976, 491.0, 173.5, 491.0 ],
					"source" : [ "obj-56", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 694.5, 491.0, 150.5, 491.0 ],
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-48", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 705.700012, 412.0, 878.599976, 412.0, 878.599976, 276.0, 902.5, 276.0 ],
					"source" : [ "obj-56", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-69", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 711.299988, 412.0, 1092.900024, 412.0, 1092.900024, 276.0, 1109.5, 276.0 ],
					"source" : [ "obj-56", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-57", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-57", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-57", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-57", 5 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 629.599976, 491.0, 173.5, 491.0 ],
					"source" : [ "obj-57", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 624.0, 491.0, 150.5, 491.0 ],
					"source" : [ "obj-57", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-48", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 635.200012, 412.0, 869.349976, 412.0, 869.349976, 276.0, 902.5, 276.0 ],
					"source" : [ "obj-57", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-69", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 640.799988, 412.0, 1079.650024, 412.0, 1079.650024, 276.0, 1109.5, 276.0 ],
					"source" : [ "obj-57", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-30", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-58", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-31", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-59", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-60", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-39", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-61", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-41", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-62", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-43", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-63", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-45", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-64", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-47", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-65", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-48", 2 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-66", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-49", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-67", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-28", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-69", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-28", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-69", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-71", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-70", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-72", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-70", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-73", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-71", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-73", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-72", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-69", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-73", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-70", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-74", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-75", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-48", 2 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-75", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-69", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-75", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-84", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-75", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-76", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-75", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-83", 1 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-53::obj-17::obj-27" : [ "live.gain~[4]", "live.gain~", 0 ],
			"obj-35::obj-17::obj-26" : [ "aux4_level[1]", "live.gain~", 0 ],
			"obj-53::obj-4" : [ "live.gain~[13]", "live.gain~", 0 ],
			"obj-57::obj-17::obj-24" : [ "aux2_level[6]", "live.gain~", 0 ],
			"obj-33::obj-4" : [ "live.gain~", "live.gain~", 0 ],
			"obj-48::obj-50" : [ "live.numbox[5]", "live.numbox[4]", 0 ],
			"obj-55::obj-17::obj-25" : [ "aux3_level[3]", "live.gain~", 0 ],
			"obj-33::obj-17::obj-26" : [ "aux4_level", "live.gain~", 0 ],
			"obj-28::obj-4" : [ "live.gain~[16]", "live.gain~", 0 ],
			"obj-53::obj-17::obj-24" : [ "aux2_level[5]", "live.gain~", 0 ],
			"obj-35::obj-17::obj-24" : [ "aux2_level[1]", "live.gain~", 0 ],
			"obj-57::obj-17::obj-27" : [ "live.gain~[3]", "live.gain~", 0 ],
			"obj-52::obj-17::obj-27" : [ "live.gain~[7]", "live.gain~", 0 ],
			"obj-56::obj-17::obj-24" : [ "aux2_level[7]", "live.gain~", 0 ],
			"obj-52::obj-4" : [ "live.gain~[11]", "live.gain~", 0 ],
			"obj-55::obj-17::obj-26" : [ "aux4_level[3]", "live.gain~", 0 ],
			"obj-56::obj-4" : [ "live.gain~[15]", "live.gain~", 0 ],
			"obj-54::obj-17::obj-26" : [ "aux4_level[4]", "live.gain~", 0 ],
			"obj-54::obj-4" : [ "live.gain~[12]", "live.gain~", 0 ],
			"obj-53::obj-17::obj-25" : [ "aux3_level[5]", "live.gain~", 0 ],
			"obj-52::obj-17::obj-26" : [ "aux4_level[2]", "live.gain~", 0 ],
			"obj-56::obj-17::obj-26" : [ "aux4_level[7]", "live.gain~", 0 ],
			"obj-55::obj-17::obj-27" : [ "aux1_level", "live.gain~", 0 ],
			"obj-54::obj-17::obj-27" : [ "live.gain~[5]", "live.gain~", 0 ],
			"obj-53::obj-17::obj-26" : [ "aux4_level[5]", "live.gain~", 0 ],
			"obj-35::obj-17::obj-27" : [ "live.gain~[8]", "live.gain~", 0 ],
			"obj-57::obj-17::obj-26" : [ "aux4_level[6]", "live.gain~", 0 ],
			"obj-35::obj-4" : [ "live.gain~[10]", "live.gain~", 0 ],
			"obj-52::obj-17::obj-25" : [ "aux3_level[2]", "live.gain~", 0 ],
			"obj-57::obj-4" : [ "live.gain~[14]", "live.gain~", 0 ],
			"obj-27" : [ "live.gain~[1]", "live.gain~", 0 ],
			"obj-56::obj-17::obj-25" : [ "aux3_level[7]", "live.gain~", 0 ],
			"obj-33::obj-17::obj-24" : [ "aux2_level", "live.gain~", 0 ],
			"obj-55::obj-4" : [ "live.gain~[6]", "live.gain~", 0 ],
			"obj-25::obj-4" : [ "live.gain~[17]", "live.gain~", 0 ],
			"obj-54::obj-17::obj-25" : [ "aux3_level[4]", "live.gain~", 0 ],
			"obj-33::obj-17::obj-27" : [ "live.gain~[9]", "live.gain~", 0 ],
			"obj-35::obj-17::obj-25" : [ "aux3_level[1]", "live.gain~", 0 ],
			"obj-57::obj-17::obj-25" : [ "aux3_level[6]", "live.gain~", 0 ],
			"obj-48::obj-15" : [ "Interval[1]", "Interval", 2 ],
			"obj-52::obj-17::obj-24" : [ "aux2_level[2]", "live.gain~", 0 ],
			"obj-56::obj-17::obj-27" : [ "live.gain~[2]", "live.gain~", 0 ],
			"obj-55::obj-17::obj-24" : [ "aux2_level[3]", "live.gain~", 0 ],
			"obj-33::obj-17::obj-25" : [ "aux3_level", "live.gain~", 0 ],
			"obj-54::obj-17::obj-24" : [ "aux2_level[4]", "live.gain~", 0 ]
		}
,
		"dependency_cache" : [ 			{
				"name" : "mixer.channel.maxpat",
				"bootpath" : "/Applications/Max 6.1/packages/mixer-0.0.1/patchers/channelstrip",
				"patcherrelativepath" : "./channelstrip",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "mixer.aux.maxpat",
				"bootpath" : "/Applications/Max 6.1/packages/mixer-0.0.1/patchers/channelstrip",
				"patcherrelativepath" : "./channelstrip",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "mixer.pan.maxpat",
				"bootpath" : "/Applications/Max 6.1/packages/mixer-0.0.1/patchers/channelstrip",
				"patcherrelativepath" : "./channelstrip",
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
				"patcherrelativepath" : "./channelstrip",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "mixer.channel.basic.stereo.maxpat",
				"bootpath" : "/Applications/Max 6.1/packages/mixer-0.0.1/patchers/channelstrip",
				"patcherrelativepath" : "./channelstrip",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "mixer.pan.stereo.maxpat",
				"bootpath" : "/Applications/Max 6.1/packages/mixer-0.0.1/patchers/channelstrip",
				"patcherrelativepath" : "./channelstrip",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "mixer.eq.maxpat",
				"bootpath" : "/Applications/Max 6.1/packages/mixer-0.0.1/patchers/dyn",
				"patcherrelativepath" : "./dyn",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "mixer.peaklim.maxpat",
				"bootpath" : "/Applications/Max 6.1/packages/mixer-0.0.1/patchers/dyn",
				"patcherrelativepath" : "./dyn",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "mixer.echo.maxpat",
				"bootpath" : "/Applications/Max 6.1/packages/mixer-0.0.1/patchers/effects",
				"patcherrelativepath" : "./effects",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "mixer.verb-plate.maxpat",
				"bootpath" : "/Applications/Max 6.1/packages/mixer-0.0.1/patchers/effects",
				"patcherrelativepath" : "./effects",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "yafr2.maxpat",
				"bootpath" : "/Applications/Max 6.1/examples/effects/reverb/lib",
				"patcherrelativepath" : "../../../examples/effects/reverb/lib",
				"type" : "JSON",
				"implicit" : 1
			}
 ]
	}

}
