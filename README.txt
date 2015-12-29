README

ABOUT
Mixer-x.x.x is a Max package created by Jon Bellona (http://jpbellona.com). The package includes various objects, like channel strips, eqs, limiters, and aux sends, for audio mapping projects. Mixer.* objects provide GUI, modular design, and pattr binding for smooth integration into your Max/MSP workflow.

Some objects are built on existing effects and dynamics processing Max objects, like yafr2, a plate-reverb. Other objects are custom designed to aid your prototyping and audio work inside of Max. Project webpage at (http://jpbellona.com/work/mixer-maxmsp-package/)

INSTALLATION
To install, place the 'mixer-x.x.x' folder inside 'Max 6.1 > packages' directory. Then restart Max. 
You will then have access to all mixer.* objects.

HOW TO USE
Inside a Max window, you may type 'M' (that's shift-M) to quickly access these tools (bpatcher @name mixer.*), or create a new object, start typing "mixer" and let autocomplete help you do the rest. All mixer.* objects contain helpfiles, with attribute and methods reference, as well as links to other relevant objects in the package. All mixer objects are linked to pattr, which means channels, subgroups, and mixers can be easily stored and recalled with presets.

CHANGELOG
	v.0.0.1 -- initial release

MIXER.* OBJECTS
	mixer.aux
	mixer.bypass
	mixer.channel
	mixer.channel.basic (no aux sends)
	mixer.channel.stereo
	mixer.echo
	mixer.eq
	mixer.peaklim
	mixer.mute
	mixer.pan
	mixer.pan.stereo
	mixer.verb-plate
	mixer.8channel
	mixer.group4
	mixer.group4.basic
	mixer.group4.stereo
	mixer.group8
	mixer.group8.basic

OTHER OBJECTS USED IN THIS LIBRARY
	yafr2, a plate reverb.	Main effect for mixer.verb-plate
	omx.peaklim~		Main object for mixer.peaklim
	cascade~		Main object for mixer.eq

TODO
* Acquire User feedback --> collect at jon @ jpbellona.com. Please send!
* Add more example files.

License
----------------------------------------
All files are covered under the GPL v3 license.

Copyright (C) 2015 Jon Bellona. http://jpbellona.com/

	Released under the GNU General Public License, Version 3.0 (the "License");
	you may not use this file except in compliance with the License.
	You may obtain a copy of the License at

	  http://www.gnu.org/licenses/gpl.html

	Unless required by applicable law or agreed to in writing, software
	distributed under the License is distributed on an "AS IS" BASIS,
	WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
	See the License for the specific language governing permissions and
	limitations under the License.