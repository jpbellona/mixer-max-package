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
		"rect" : [ 29.0, 69.0, 764.0, 495.0 ],
		"bglocked" : 0,
		"openinpresentation" : 0,
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
					"frgb" : 0.0,
					"id" : "obj-5",
					"linecount" : 4,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 547.0, 44.0, 217.0, 60.0 ],
					"text" : "adc represents your audio I/O into Max. mixer.8channel gives you software handles inside to control audio"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3",
					"maxclass" : "ezdac~",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 9.0, 424.0, 45.0, 45.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 8,
					"outlettype" : [ "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal" ],
					"patching_rect" : [ 9.0, 64.0, 530.875, 20.0 ],
					"text" : "adc~ 1 2 3 4 5 6 7 8"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1",
					"maxclass" : "bpatcher",
					"name" : "mixer.8channel.maxpat",
					"numinlets" : 9,
					"numoutlets" : 6,
					"outlettype" : [ "signal", "signal", "signal", "signal", "signal", "signal" ],
					"patching_rect" : [ 9.0, 112.0, 604.0, 292.0 ],
					"varname" : "mixer.8channel"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-1", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 7 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-2", 7 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 6 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-2", 6 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 5 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-2", 5 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 4 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-2", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 3 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-2", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 2 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-2", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-2", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-2", 0 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-1::obj-56::obj-17::obj-27" : [ "aux1_level", "live.gain~", 0 ],
			"obj-1::obj-53::obj-17::obj-27" : [ "aux1_level[2]", "live.gain~", 0 ],
			"obj-1::obj-57::obj-17::obj-27" : [ "aux1_level[1]", "live.gain~", 0 ],
			"obj-1::obj-28::obj-4" : [ "live.gain~", "live.gain~", 0 ],
			"obj-1::obj-52::obj-17::obj-26" : [ "aux4_level[5]", "live.gain~", 0 ],
			"obj-1::obj-55::obj-17::obj-25" : [ "aux3_level[4]", "live.gain~", 0 ],
			"obj-1::obj-54::obj-17::obj-26" : [ "aux4_level[3]", "live.gain~", 0 ],
			"obj-1::obj-56::obj-17::obj-24" : [ "aux2_level", "live.gain~", 0 ],
			"obj-1::obj-33::obj-17::obj-24" : [ "aux2_level[7]", "live.gain~", 0 ],
			"obj-1::obj-54::obj-4" : [ "live.gain~[5]", "live.gain~", 0 ],
			"obj-1::obj-33::obj-17::obj-27" : [ "aux1_level[7]", "live.gain~", 0 ],
			"obj-1::obj-53::obj-17::obj-26" : [ "aux4_level[2]", "live.gain~", 0 ],
			"obj-1::obj-35::obj-17::obj-24" : [ "aux2_level[6]", "live.gain~", 0 ],
			"obj-1::obj-48::obj-15" : [ "Interval[1]", "Interval", 2 ],
			"obj-1::obj-35::obj-4" : [ "live.gain~[8]", "live.gain~", 0 ],
			"obj-1::obj-52::obj-17::obj-24" : [ "aux2_level[5]", "live.gain~", 0 ],
			"obj-1::obj-56::obj-4" : [ "live.gain~[2]", "live.gain~", 0 ],
			"obj-1::obj-54::obj-17::obj-25" : [ "aux3_level[3]", "live.gain~", 0 ],
			"obj-1::obj-56::obj-17::obj-25" : [ "aux3_level", "live.gain~", 0 ],
			"obj-1::obj-33::obj-17::obj-26" : [ "aux4_level[7]", "live.gain~", 0 ],
			"obj-1::obj-53::obj-17::obj-24" : [ "aux2_level[2]", "live.gain~", 0 ],
			"obj-1::obj-35::obj-17::obj-27" : [ "aux1_level[6]", "live.gain~", 0 ],
			"obj-1::obj-57::obj-17::obj-25" : [ "aux3_level[1]", "live.gain~", 0 ],
			"obj-1::obj-52::obj-17::obj-27" : [ "aux1_level[5]", "live.gain~", 0 ],
			"obj-1::obj-57::obj-4" : [ "live.gain~[3]", "live.gain~", 0 ],
			"obj-1::obj-55::obj-17::obj-26" : [ "aux4_level[4]", "live.gain~", 0 ],
			"obj-1::obj-55::obj-4" : [ "live.gain~[6]", "live.gain~", 0 ],
			"obj-1::obj-54::obj-17::obj-27" : [ "aux1_level[3]", "live.gain~", 0 ],
			"obj-1::obj-25::obj-4" : [ "live.gain~[1]", "live.gain~", 0 ],
			"obj-1::obj-56::obj-17::obj-26" : [ "aux4_level", "live.gain~", 0 ],
			"obj-1::obj-33::obj-17::obj-25" : [ "aux3_level[7]", "live.gain~", 0 ],
			"obj-1::obj-33::obj-4" : [ "live.gain~[9]", "live.gain~", 0 ],
			"obj-1::obj-35::obj-17::obj-25" : [ "aux3_level[6]", "live.gain~", 0 ],
			"obj-1::obj-57::obj-17::obj-26" : [ "aux4_level[1]", "live.gain~", 0 ],
			"obj-1::obj-55::obj-17::obj-27" : [ "aux1_level[4]", "live.gain~", 0 ],
			"obj-1::obj-54::obj-17::obj-24" : [ "aux2_level[3]", "live.gain~", 0 ],
			"obj-1::obj-53::obj-17::obj-25" : [ "aux3_level[2]", "live.gain~", 0 ],
			"obj-1::obj-35::obj-17::obj-26" : [ "aux4_level[6]", "live.gain~", 0 ],
			"obj-1::obj-53::obj-4" : [ "live.gain~[4]", "live.gain~", 0 ],
			"obj-1::obj-57::obj-17::obj-24" : [ "aux2_level[1]", "live.gain~", 0 ],
			"obj-1::obj-48::obj-50" : [ "live.numbox[5]", "live.numbox[4]", 0 ],
			"obj-1::obj-52::obj-17::obj-25" : [ "aux3_level[5]", "live.gain~", 0 ],
			"obj-1::obj-27" : [ "live.gain~[10]", "live.gain~", 0 ],
			"obj-1::obj-52::obj-4" : [ "live.gain~[7]", "live.gain~", 0 ],
			"obj-1::obj-55::obj-17::obj-24" : [ "aux2_level[4]", "live.gain~", 0 ]
		}
,
		"dependency_cache" : [ 			{
				"name" : "mixer.8channel.maxpat",
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
				"name" : "mixer.channel.basic.stereo.maxpat",
				"bootpath" : "/Applications/Max 6.1/packages/mixer-0.0.1/patchers/channelstrip",
				"patcherrelativepath" : "../patchers/channelstrip",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "mixer.pan.stereo.maxpat",
				"bootpath" : "/Applications/Max 6.1/packages/mixer-0.0.1/patchers/channelstrip",
				"patcherrelativepath" : "../patchers/channelstrip",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "mixer.eq.maxpat",
				"bootpath" : "/Applications/Max 6.1/packages/mixer-0.0.1/patchers/dyn",
				"patcherrelativepath" : "../patchers/dyn",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "mixer.peaklim.maxpat",
				"bootpath" : "/Applications/Max 6.1/packages/mixer-0.0.1/patchers/dyn",
				"patcherrelativepath" : "../patchers/dyn",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "mixer.echo.maxpat",
				"bootpath" : "/Applications/Max 6.1/packages/mixer-0.0.1/patchers/effects",
				"patcherrelativepath" : "../patchers/effects",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "mixer.verb-plate.maxpat",
				"bootpath" : "/Applications/Max 6.1/packages/mixer-0.0.1/patchers/effects",
				"patcherrelativepath" : "../patchers/effects",
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
