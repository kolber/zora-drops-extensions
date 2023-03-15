// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

import {NounsCoasterMetadataRenderer} from "./NounsCoasterMetadataRenderer.sol";
import {SSTORE2} from "../utils/SSTORE2.sol";
import {INounsCoasterMetadataRendererTypes} from "../interfaces/INounsCoasterMetadataRendererTypes.sol";
import {VmSafe} from "forge-std/Vm.sol";

library CoasterHelper {
    function addLayer1(NounsCoasterMetadataRenderer renderer, address target)
        internal
    {
        // 1 Backgrounds
        INounsCoasterMetadataRendererTypes.VariantPropertyParameters
            memory variantPropertyParameters;
        variantPropertyParameters
            .offsets = new INounsCoasterMetadataRendererTypes.VariantOffset[](
            0
        );
        variantPropertyParameters.id = 0;
        variantPropertyParameters.count = 0;

        string[] memory items = new string[](16);
        items[0] = "Day Blue Roller Coaster";
        items[1] = "Day Blue Water Log";
        items[2] = "Day Orange Roller Coaster";
        items[3] = "Day Orange Water Log";
        items[4] = "Day Pink Roller Coaster";
        items[5] = "Day Pink Water Log";
        items[6] = "Day Purple Roller Coaster";
        items[7] = "Day Purple Water Log";
        items[8] = "Night Blue Roller Coaster";
        items[9] = "Night Blue Water Log";
        items[10] = "Night Orange Roller Coaster";
        items[11] = "Night Orange Water Log";
        items[12] = "Night Pink Roller Coaster";
        items[13] = "Night Pink Water Log";
        items[14] = "Night Purple Roller Coaster";
        items[15] = "Night Purple Water Log";

        bytes memory data = abi.encode(items);

        VmSafe vm = VmSafe(
            address(uint160(uint256(keccak256("hevm cheat code"))))
        );

        string[] memory inputs = new string[](3);
        inputs[0] = "node";
        inputs[1] = "script/nouns-coasters/deflate.js";
        inputs[2] = vm.toString(data);

        bytes memory compressedData = vm.ffi(inputs);

        // address result = SSTORE2.write(compressedData);

        renderer.addLayer({
            target: target,
            ipfs: INounsCoasterMetadataRendererTypes.IPFSGroup({
                baseUri: "ipfs://bafybeidmllp5rev4k2na7t34bmwxjjp2dt4w6papy4aicynmmshgojny2e/",
                extension: ".png"
            }),
            decompressedSize: data.length,
            compressedData: compressedData,
            count: items.length,
            property: "1 Backgrounds",
            variantProperty: variantPropertyParameters
        });
    }

    function addLayer5(NounsCoasterMetadataRenderer renderer, address target)
        internal
    {
        // 5 Body rear left
        INounsCoasterMetadataRendererTypes.VariantPropertyParameters
            memory variantPropertyParameters;
        variantPropertyParameters
            .offsets = new INounsCoasterMetadataRendererTypes.VariantOffset[](
            4
        );
        variantPropertyParameters.id = 0;
        variantPropertyParameters.count = 4;
        variantPropertyParameters.offsets[
            0
        ] = INounsCoasterMetadataRendererTypes.VariantOffset({
            startAt: 0,
            count: 30
        });
        variantPropertyParameters.offsets[
            1
        ] = INounsCoasterMetadataRendererTypes.VariantOffset({
            startAt: 30,
            count: 30
        });
        variantPropertyParameters.offsets[
            2
        ] = INounsCoasterMetadataRendererTypes.VariantOffset({
            startAt: 60,
            count: 30
        });
        variantPropertyParameters.offsets[
            3
        ] = INounsCoasterMetadataRendererTypes.VariantOffset({
            startAt: 90,
            count: 30
        });

        string[] memory items = new string[](120);
        items[0] = "1-Both Arms Down Bege Bsod";
        items[1] = "1-Both Arms Down Bege Crt";
        items[2] = "1-Both Arms Down Blue Grey";
        items[3] = "1-Both Arms Down Blue Sky";
        items[4] = "1-Both Arms Down Cold";
        items[5] = "1-Both Arms Down Computer Blue";
        items[6] = "1-Both Arms Down Dark Brown";
        items[7] = "1-Both Arms Down Dark Pink";
        items[8] = "1-Both Arms Down Foggrey";
        items[9] = "1-Both Arms Down Gold";
        items[10] = "1-Both Arms Down Gray Scale 1";
        items[11] = "1-Both Arms Down Gray Scale 7";
        items[12] = "1-Both Arms Down Gray Scale 8";
        items[13] = "1-Both Arms Down Gray Scale 9";
        items[14] = "1-Both Arms Down Green";
        items[15] = "1-Both Arms Down Gunk";
        items[16] = "1-Both Arms Down Hotbrown";
        items[17] = "1-Both Arms Down Magenta";
        items[18] = "1-Both Arms Down Orange";
        items[19] = "1-Both Arms Down Orange Yellow";
        items[20] = "1-Both Arms Down Peachy A";
        items[21] = "1-Both Arms Down Peachy B";
        items[22] = "1-Both Arms Down Purple";
        items[23] = "1-Both Arms Down Red";
        items[24] = "1-Both Arms Down Red Pinkish";
        items[25] = "1-Both Arms Down Rust";
        items[26] = "1-Both Arms Down Slime Green";
        items[27] = "1-Both Arms Down Teal";
        items[28] = "1-Both Arms Down Teal Light";
        items[29] = "1-Both Arms Down Yellow";
        items[30] = "2-Both Arms Up Bege Bsod";
        items[31] = "2-Both Arms Up Bege Crt";
        items[32] = "2-Both Arms Up Blue Gray";
        items[33] = "2-Both Arms Up Blue Sky";
        items[34] = "2-Both Arms Up Cold";
        items[35] = "2-Both Arms Up Computer Blue";
        items[36] = "2-Both Arms Up Dark Brown";
        items[37] = "2-Both Arms Up Dark Pink";
        items[38] = "2-Both Arms Up Foggrey";
        items[39] = "2-Both Arms Up Gold";
        items[40] = "2-Both Arms Up Gray Scale 1";
        items[41] = "2-Both Arms Up Gray Scale 7";
        items[42] = "2-Both Arms Up Gray Scale 8";
        items[43] = "2-Both Arms Up Gray Scale 9";
        items[44] = "2-Both Arms Up Green";
        items[45] = "2-Both Arms Up Gunk";
        items[46] = "2-Both Arms Up Hotbrown";
        items[47] = "2-Both Arms Up Magenta";
        items[48] = "2-Both Arms Up Orange";
        items[49] = "2-Both Arms Up Orange Yellow";
        items[50] = "2-Both Arms Up Peachy A";
        items[51] = "2-Both Arms Up Peachy B";
        items[52] = "2-Both Arms Up Purple";
        items[53] = "2-Both Arms Up Red";
        items[54] = "2-Both Arms Up Red Pinkish";
        items[55] = "2-Both Arms Up Rust";
        items[56] = "2-Both Arms Up Slime Green";
        items[57] = "2-Both Arms Up Teal";
        items[58] = "2-Both Arms Up Teal Light";
        items[59] = "2-Both Arms Up Yellow";
        items[60] = "3-Left Arm Up Bege Bsod";
        items[61] = "3-Left Arm Up Bege Crt";
        items[62] = "3-Left Arm Up Blue Grey";
        items[63] = "3-Left Arm Up Blue Sky";
        items[64] = "3-Left Arm Up Cold";
        items[65] = "3-Left Arm Up Computer Blue";
        items[66] = "3-Left Arm Up Dark Brown";
        items[67] = "3-Left Arm Up Dark Pink";
        items[68] = "3-Left Arm Up Foggrey";
        items[69] = "3-Left Arm Up Gold";
        items[70] = "3-Left Arm Up Gray Scale 1";
        items[71] = "3-Left Arm Up Gray Scale 7";
        items[72] = "3-Left Arm Up Gray Scale 8";
        items[73] = "3-Left Arm Up Gray Scale 9";
        items[74] = "3-Left Arm Up Green";
        items[75] = "3-Left Arm Up Gunk";
        items[76] = "3-Left Arm Up Hotbrown";
        items[77] = "3-Left Arm Up Magenta";
        items[78] = "3-Left Arm Up Orange";
        items[79] = "3-Left Arm Up Orange Yellow";
        items[80] = "3-Left Arm Up Peachy A";
        items[81] = "3-Left Arm Up Peachy B";
        items[82] = "3-Left Arm Up Purple";
        items[83] = "3-Left Arm Up Red";
        items[84] = "3-Left Arm Up Redpinkish";
        items[85] = "3-Left Arm Up Rust";
        items[86] = "3-Left Arm Up Slime Green";
        items[87] = "3-Left Arm Up Teal";
        items[88] = "3-Left Arm Up Teal Light";
        items[89] = "3-Left Arm Up Yellow";
        items[90] = "4-Right Arm Up Bege Bsod";
        items[91] = "4-Right Arm Up Bege Crt";
        items[92] = "4-Right Arm Up Blue Grey";
        items[93] = "4-Right Arm Up Blue Sky";
        items[94] = "4-Right Arm Up Cold";
        items[95] = "4-Right Arm Up Computer Blue";
        items[96] = "4-Right Arm Up Dark Brown";
        items[97] = "4-Right Arm Up Dark Pink";
        items[98] = "4-Right Arm Up Foggrey";
        items[99] = "4-Right Arm Up Gold";
        items[100] = "4-Right Arm Up Gray Scale 1";
        items[101] = "4-Right Arm Up Gray Scale 7";
        items[102] = "4-Right Arm Up Gray Scale 8";
        items[103] = "4-Right Arm Up Gray Scale 9";
        items[104] = "4-Right Arm Up Green";
        items[105] = "4-Right Arm Up Gunk";
        items[106] = "4-Right Arm Up Hotbrown";
        items[107] = "4-Right Arm Up Magenta";
        items[108] = "4-Right Arm Up Orange";
        items[109] = "4-Right Arm Up Orange Yellow";
        items[110] = "4-Right Arm Up Peachy A";
        items[111] = "4-Right Arm Up Peachy B";
        items[112] = "4-Right Arm Up Purple";
        items[113] = "4-Right Arm Up Red";
        items[114] = "4-Right Arm Up Red Pinkish";
        items[115] = "4-Right Arm Up Rust";
        items[116] = "4-Right Arm Up Slime Green";
        items[117] = "4-Right Arm Up Teal";
        items[118] = "4-Right Arm Up Teal Light";
        items[119] = "4-Right Arm Up Yellow";

        bytes memory data = abi.encode(items);

        VmSafe vm = VmSafe(
            address(uint160(uint256(keccak256("hevm cheat code"))))
        );

        string[] memory inputs = new string[](3);
        inputs[0] = "node";
        inputs[1] = "script/nouns-coasters/deflate.js";
        inputs[2] = vm.toString(data);

        bytes memory compressedData = vm.ffi(inputs);

        // address result = SSTORE2.write(compressedData);

        renderer.addLayer({
            target: target,
            ipfs: INounsCoasterMetadataRendererTypes.IPFSGroup({
                baseUri: "ipfs://bafybeidmllp5rev4k2na7t34bmwxjjp2dt4w6papy4aicynmmshgojny2e/",
                extension: ".png"
            }),
            decompressedSize: data.length,
            compressedData: compressedData,
            count: items.length,
            property: "5 Body rear left",
            variantProperty: variantPropertyParameters
        });
    }

    function addLayer6(NounsCoasterMetadataRenderer renderer, address target)
        internal
    {
        // 6 Accessories rear left
        INounsCoasterMetadataRendererTypes.VariantPropertyParameters
            memory variantPropertyParameters;
        variantPropertyParameters
            .offsets = new INounsCoasterMetadataRendererTypes.VariantOffset[](
            4
        );
        variantPropertyParameters.id = 0;
        variantPropertyParameters.count = 4;
        variantPropertyParameters.offsets[
            0
        ] = INounsCoasterMetadataRendererTypes.VariantOffset({
            startAt: 0,
            count: 139
        });
        variantPropertyParameters.offsets[
            1
        ] = INounsCoasterMetadataRendererTypes.VariantOffset({
            startAt: 139,
            count: 137
        });
        variantPropertyParameters.offsets[
            2
        ] = INounsCoasterMetadataRendererTypes.VariantOffset({
            startAt: 276,
            count: 137
        });
        variantPropertyParameters.offsets[
            3
        ] = INounsCoasterMetadataRendererTypes.VariantOffset({
            startAt: 413,
            count: 137
        });

        string[] memory items = new string[](550);
        items[0] = "1-Asset Rear Left 1n";
        items[1] = "1-Asset Rear Left Aardvark";
        items[2] = "1-Asset Rear Left Axe";
        items[3] = "1-Asset Rear Left Belly Chamaleon";
        items[4] = "1-Asset Rear Left Bird Flying";
        items[5] = "1-Asset Rear Left Bird Side";
        items[6] = "1-Asset Rear Left Bling Anchor";
        items[7] = "1-Asset Rear Left Bling Anvil";
        items[8] = "1-Asset Rear Left Bling Arrow";
        items[9] = "1-Asset Rear Left Bling Cheese";
        items[10] = "1-Asset Rear Left Bling Gold Ingot";
        items[11] = "1-Asset Rear Left Bling Love";
        items[12] = "1-Asset Rear Left Bling Mask";
        items[13] = "1-Asset Rear Left Bling Rings";
        items[14] = "1-Asset Rear Left Bling Scissors";
        items[15] = "1-Asset Rear Left Both Arms Down Bege Bsod";
        items[16] = "1-Asset Rear Left Both Arms Down Belly Chamaleon";
        items[17] = "1-Asset Rear Left Both Arms Down Bigwalk Blue Prime";
        items[18] = "1-Asset Rear Left Both Arms Down Bigwalk Grey Light";
        items[19] = "1-Asset Rear Left Both Arms Down Bigwalk Rainbow";
        items[20] = "1-Asset Rear Left Both Arms Down Chain Logo";
        items[21] = "1-Asset Rear Left Both Arms Down Checker Disco";
        items[22] = "1-Asset Rear Left Both Arms Down Checker Rgb";
        items[23] = "1-Asset Rear Left Both Arms Down Checker Spaced Black";
        items[24] = "1-Asset Rear Left Both Arms Down Checker Spaced White";
        items[25] = "1-Asset Rear Left Both Arms Down Checker Vibrant";
        items[26] = "1-Asset Rear Left Both Arms Down Checkers Big Green";
        items[27] = "1-Asset Rear Left Both Arms Down Checkers Big Red Cold";
        items[28] = "1-Asset Rear Left Both Arms Down Checkers Black";
        items[29] = "1-Asset Rear Left Both Arms Down Checkers Blue";
        items[30] = "1-Asset Rear Left Both Arms Down Checkers Magenta";
        items[31] = "1-Asset Rear Left Both Arms Down Collar Sunset";
        items[32] = "1-Asset Rear Left Both Arms Down Decay Gray Dark";
        items[33] = "1-Asset Rear Left Both Arms Down Decay Pride";
        items[34] = "1-Asset Rear Left Both Arms Down Gradient Dawn";
        items[35] = "1-Asset Rear Left Both Arms Down Gradient Dusk";
        items[36] = "1-Asset Rear Left Both Arms Down Gradient Glacier";
        items[37] = "1-Asset Rear Left Both Arms Down Gradient Ice";
        items[38] = "1-Asset Rear Left Both Arms Down Gradient Pride";
        items[39] = "1-Asset Rear Left Both Arms Down Gradient Redpink";
        items[40] = "1-Asset Rear Left Both Arms Down Gradient Sunset";
        items[41] = "1-Asset Rear Left Both Arms Down Gray Scale 1";
        items[42] = "1-Asset Rear Left Both Arms Down Gray Scale 9";
        items[43] = "1-Asset Rear Left Both Arms Down Grid Simple Bege";
        items[44] = "1-Asset Rear Left Both Arms Down Ice Cold";
        items[45] = "1-Asset Rear Left Both Arms Down Lines 45 Greens";
        items[46] = "1-Asset Rear Left Both Arms Down Lines 45 Rose";
        items[47] = "1-Asset Rear Left Both Arms Down Old Shirt";
        items[48] = "1-Asset Rear Left Both Arms Down Rainbow Steps";
        items[49] = "1-Asset Rear Left Both Arms Down Robot";
        items[50] = "1-Asset Rear Left Both Arms Down Safety Vest";
        items[51] = "1-Asset Rear Left Both Arms Down Scarf Clown";
        items[52] = "1-Asset Rear Left Both Arms Down Shirt Black";
        items[53] = "1-Asset Rear Left Both Arms Down Stripes And Checks";
        items[54] = "1-Asset Rear Left Both Arms Down Stripes Big Red";
        items[55] = "1-Asset Rear Left Both Arms Down Stripes Blit";
        items[56] = "1-Asset Rear Left Both Arms Down Stripes Blue Med";
        items[57] = "1-Asset Rear Left Both Arms Down Stripes Brown";
        items[58] = "1-Asset Rear Left Both Arms Down Stripes Olive";
        items[59] = "1-Asset Rear Left Both Arms Down Stripes Red Cold";
        items[60] = "1-Asset Rear Left Both Arms Down Taxi Checkers";
        items[61] = "1-Asset Rear Left Both Arms Down Tee Yo";
        items[62] = "1-Asset Rear Left Both Arms Down Txt Ico";
        items[63] = "1-Asset Rear Left Both Arms Down Wall";
        items[64] = "1-Asset Rear Left Both Arms Down Woolweave Bicolor";
        items[65] = "1-Asset Rear Left Both Arms Down Woolweave Dirt";
        items[66] = "1-Asset Rear Left Carrot";
        items[67] = "1-Asset Rear Left Chain Logo";
        items[68] = "1-Asset Rear Left Chicken";
        items[69] = "1-Asset Rear Left Cloud";
        items[70] = "1-Asset Rear Left Clover";
        items[71] = "1-Asset Rear Left Cow";
        items[72] = "1-Asset Rear Left Dinosaur";
        items[73] = "1-Asset Rear Left Dollar Bling";
        items[74] = "1-Asset Rear Left Dragon";
        items[75] = "1-Asset Rear Left Ducky";
        items[76] = "1-Asset Rear Left Eth";
        items[77] = "1-Asset Rear Left Eye";
        items[78] = "1-Asset Rear Left Flash";
        items[79] = "1-Asset Rear Left Fries";
        items[80] = "1-Asset Rear Left Glasses";
        items[81] = "1-Asset Rear Left Glasses Logo";
        items[82] = "1-Asset Rear Left Glasses Logo Sun";
        items[83] = "1-Asset Rear Left Heart";
        items[84] = "1-Asset Rear Left Hoodiestrings Uneven";
        items[85] = "1-Asset Rear Left Id";
        items[86] = "1-Asset Rear Left Infinity";
        items[87] = "1-Asset Rear Left Insignia";
        items[88] = "1-Asset Rear Left Leaf";
        items[89] = "1-Asset Rear Left Light Bulb";
        items[90] = "1-Asset Rear Left Lp";
        items[91] = "1-Asset Rear Left Mars Face";
        items[92] = "1-Asset Rear Left Matrix White";
        items[93] = "1-Asset Rear Left Moon Block";
        items[94] = "1-Asset Rear Left None";
        items[95] = "1-Asset Rear Left Pizza Bling";
        items[96] = "1-Asset Rear Left Pocket Pencil";
        items[97] = "1-Asset Rear Left Rain";
        items[98] = "1-Asset Rear Left Rgb";
        items[99] = "1-Asset Rear Left Secret X";
        items[100] = "1-Asset Rear Left Shrimp";
        items[101] = "1-Asset Rear Left Slime Splat";
        items[102] = "1-Asset Rear Left Small Bling";
        items[103] = "1-Asset Rear Left Snowflake";
        items[104] = "1-Asset Rear Left Sparkles";
        items[105] = "1-Asset Rear Left Stains Blood";
        items[106] = "1-Asset Rear Left Stains Zombie";
        items[107] = "1-Asset Rear Left Sunset";
        items[108] = "1-Asset Rear Left Think";
        items[109] = "1-Asset Rear Left Tie Black On White";
        items[110] = "1-Asset Rear Left Tie Dye";
        items[111] = "1-Asset Rear Left Tie Purple";
        items[112] = "1-Asset Rear Left Tie Red";
        items[113] = "1-Asset Rear Left Txt A2+b2";
        items[114] = "1-Asset Rear Left Txt Cc";
        items[115] = "1-Asset Rear Left Txt Cc 2";
        items[116] = "1-Asset Rear Left Txt Copy";
        items[117] = "1-Asset Rear Left Txt Dao Black";
        items[118] = "1-Asset Rear Left Txt Doom";
        items[119] = "1-Asset Rear Left Txt Dope";
        items[120] = "1-Asset Rear Left Txt Foo Black";
        items[121] = "1-Asset Rear Left Txt Io";
        items[122] = "1-Asset Rear Left Txt Lmao";
        items[123] = "1-Asset Rear Left Txt Lol";
        items[124] = "1-Asset Rear Left Txt Mint";
        items[125] = "1-Asset Rear Left Txt Nil Grey Dark";
        items[126] = "1-Asset Rear Left Txt Noun";
        items[127] = "1-Asset Rear Left Txt Noun F0f";
        items[128] = "1-Asset Rear Left Txt Noun Green";
        items[129] = "1-Asset Rear Left Txt Noun Multicolor";
        items[130] = "1-Asset Rear Left Txt Pi";
        items[131] = "1-Asset Rear Left Txt Pop";
        items[132] = "1-Asset Rear Left Txt Rofl";
        items[133] = "1-Asset Rear Left Txt We";
        items[134] = "1-Asset Rear Left Txt Yay";
        items[135] = "1-Asset Rear Left Txt Yolo";
        items[136] = "1-Asset Rear Left Wave";
        items[137] = "1-Asset Rear Left Wet Money";
        items[138] = "1-Asset Rear Left Ying Yang";
        items[139] = "2-Asset Rear Left 1n";
        items[140] = "2-Asset Rear Left Aardvark";
        items[141] = "2-Asset Rear Left Axe";
        items[142] = "2-Asset Rear Left Belly Chamaleon";
        items[143] = "2-Asset Rear Left Bird Flying";
        items[144] = "2-Asset Rear Left Bird Side";
        items[145] = "2-Asset Rear Left Bling Anchor";
        items[146] = "2-Asset Rear Left Bling Anvil";
        items[147] = "2-Asset Rear Left Bling Arrow";
        items[148] = "2-Asset Rear Left Bling Cheese";
        items[149] = "2-Asset Rear Left Bling Gold Ingot";
        items[150] = "2-Asset Rear Left Bling Love";
        items[151] = "2-Asset Rear Left Bling Mask";
        items[152] = "2-Asset Rear Left Bling Rings";
        items[153] = "2-Asset Rear Left Bling Scissors";
        items[154] = "2-Asset Rear Left Both Arms Up Bege Bsod";
        items[155] = "2-Asset Rear Left Both Arms Up Bigwalk Blue Prime";
        items[156] = "2-Asset Rear Left Both Arms Up Bigwalk Grey Light";
        items[157] = "2-Asset Rear Left Both Arms Up Bigwalk Rainbow";
        items[158] = "2-Asset Rear Left Both Arms Up Checker Disco";
        items[159] = "2-Asset Rear Left Both Arms Up Checker Rgb";
        items[160] = "2-Asset Rear Left Both Arms Up Checker Spaced Black";
        items[161] = "2-Asset Rear Left Both Arms Up Checker Spaced White";
        items[162] = "2-Asset Rear Left Both Arms Up Checker Vibrant";
        items[163] = "2-Asset Rear Left Both Arms Up Checkers Big Green";
        items[164] = "2-Asset Rear Left Both Arms Up Checkers Big Red Cold";
        items[165] = "2-Asset Rear Left Both Arms Up Checkers Black";
        items[166] = "2-Asset Rear Left Both Arms Up Checkers Blue";
        items[167] = "2-Asset Rear Left Both Arms Up Checkers Magenta";
        items[168] = "2-Asset Rear Left Both Arms Up Collar Sunset";
        items[169] = "2-Asset Rear Left Both Arms Up Decay Gray Dark";
        items[170] = "2-Asset Rear Left Both Arms Up Decay Pride";
        items[171] = "2-Asset Rear Left Both Arms Up Gradient Dawn";
        items[172] = "2-Asset Rear Left Both Arms Up Gradient Dusk";
        items[173] = "2-Asset Rear Left Both Arms Up Gradient Glacier";
        items[174] = "2-Asset Rear Left Both Arms Up Gradient Ice";
        items[175] = "2-Asset Rear Left Both Arms Up Gradient Pride";
        items[176] = "2-Asset Rear Left Both Arms Up Gradient Redpink";
        items[177] = "2-Asset Rear Left Both Arms Up Gradient Sunset";
        items[178] = "2-Asset Rear Left Both Arms Up Gray Scale 1";
        items[179] = "2-Asset Rear Left Both Arms Up Gray Scale 9";
        items[180] = "2-Asset Rear Left Both Arms Up Grid Simple Bege";
        items[181] = "2-Asset Rear Left Both Arms Up Ice Cold";
        items[182] = "2-Asset Rear Left Both Arms Up Lines 45 Greens";
        items[183] = "2-Asset Rear Left Both Arms Up Lines 45 Rose";
        items[184] = "2-Asset Rear Left Both Arms Up Old Shirt";
        items[185] = "2-Asset Rear Left Both Arms Up Rainbow Steps";
        items[186] = "2-Asset Rear Left Both Arms Up Robot";
        items[187] = "2-Asset Rear Left Both Arms Up Safety Vest";
        items[188] = "2-Asset Rear Left Both Arms Up Scarf Clown";
        items[189] = "2-Asset Rear Left Both Arms Up Shirt Black";
        items[190] = "2-Asset Rear Left Both Arms Up Stripes And Checks";
        items[191] = "2-Asset Rear Left Both Arms Up Stripes Big Red";
        items[192] = "2-Asset Rear Left Both Arms Up Stripes Blit";
        items[193] = "2-Asset Rear Left Both Arms Up Stripes Blue Med";
        items[194] = "2-Asset Rear Left Both Arms Up Stripes Brown";
        items[195] = "2-Asset Rear Left Both Arms Up Stripes Olive";
        items[196] = "2-Asset Rear Left Both Arms Up Stripes Red Cold";
        items[197] = "2-Asset Rear Left Both Arms Up Taxi Checkers";
        items[198] = "2-Asset Rear Left Both Arms Up Tee Yo";
        items[199] = "2-Asset Rear Left Both Arms Up Txt Ico";
        items[200] = "2-Asset Rear Left Both Arms Up Wall";
        items[201] = "2-Asset Rear Left Both Arms Up Woolweave Bicolor";
        items[202] = "2-Asset Rear Left Both Arms Up Woolweave Dirt";
        items[203] = "2-Asset Rear Left Carrot";
        items[204] = "2-Asset Rear Left Chain Logo";
        items[205] = "2-Asset Rear Left Chicken";
        items[206] = "2-Asset Rear Left Cloud";
        items[207] = "2-Asset Rear Left Clover";
        items[208] = "2-Asset Rear Left Cow";
        items[209] = "2-Asset Rear Left Dinosaur";
        items[210] = "2-Asset Rear Left Dollar Bling";
        items[211] = "2-Asset Rear Left Dragon";
        items[212] = "2-Asset Rear Left Ducky";
        items[213] = "2-Asset Rear Left Eth";
        items[214] = "2-Asset Rear Left Eye";
        items[215] = "2-Asset Rear Left Flash";
        items[216] = "2-Asset Rear Left Fries";
        items[217] = "2-Asset Rear Left Glasses";
        items[218] = "2-Asset Rear Left Glasses Logo";
        items[219] = "2-Asset Rear Left Glasses Logo Sun";
        items[220] = "2-Asset Rear Left Heart";
        items[221] = "2-Asset Rear Left Hoodiestrings Uneven";
        items[222] = "2-Asset Rear Left Id";
        items[223] = "2-Asset Rear Left Infinity";
        items[224] = "2-Asset Rear Left Insignia";
        items[225] = "2-Asset Rear Left Leaf";
        items[226] = "2-Asset Rear Left Light Bulb";
        items[227] = "2-Asset Rear Left Lp";
        items[228] = "2-Asset Rear Left Mars Face";
        items[229] = "2-Asset Rear Left Matrix White";
        items[230] = "2-Asset Rear Left Moon Block";
        items[231] = "2-Asset Rear Left None";
        items[232] = "2-Asset Rear Left Pizza Bling";
        items[233] = "2-Asset Rear Left Pocket Pencil";
        items[234] = "2-Asset Rear Left Rain";
        items[235] = "2-Asset Rear Left Rgb";
        items[236] = "2-Asset Rear Left Secret X";
        items[237] = "2-Asset Rear Left Shrimp";
        items[238] = "2-Asset Rear Left Slime Splat";
        items[239] = "2-Asset Rear Left Small Bling";
        items[240] = "2-Asset Rear Left Snowflake";
        items[241] = "2-Asset Rear Left Sparkles";
        items[242] = "2-Asset Rear Left Stains Blood";
        items[243] = "2-Asset Rear Left Stains Zombie";
        items[244] = "2-Asset Rear Left Sunset";
        items[245] = "2-Asset Rear Left Think";
        items[246] = "2-Asset Rear Left Tie Black On White";
        items[247] = "2-Asset Rear Left Tie Dye";
        items[248] = "2-Asset Rear Left Tie Purple";
        items[249] = "2-Asset Rear Left Tie Red";
        items[250] = "2-Asset Rear Left Txt A2+b2";
        items[251] = "2-Asset Rear Left Txt Cc";
        items[252] = "2-Asset Rear Left Txt Cc 2";
        items[253] = "2-Asset Rear Left Txt Copy";
        items[254] = "2-Asset Rear Left Txt Dao Black";
        items[255] = "2-Asset Rear Left Txt Doom";
        items[256] = "2-Asset Rear Left Txt Dope";
        items[257] = "2-Asset Rear Left Txt Foo Black";
        items[258] = "2-Asset Rear Left Txt Io";
        items[259] = "2-Asset Rear Left Txt Lmao";
        items[260] = "2-Asset Rear Left Txt Lol";
        items[261] = "2-Asset Rear Left Txt Mint";
        items[262] = "2-Asset Rear Left Txt Nil Grey Dark";
        items[263] = "2-Asset Rear Left Txt Noun";
        items[264] = "2-Asset Rear Left Txt Noun F0f";
        items[265] = "2-Asset Rear Left Txt Noun Green";
        items[266] = "2-Asset Rear Left Txt Noun Multicolor";
        items[267] = "2-Asset Rear Left Txt Pi";
        items[268] = "2-Asset Rear Left Txt Pop";
        items[269] = "2-Asset Rear Left Txt Rofl";
        items[270] = "2-Asset Rear Left Txt We";
        items[271] = "2-Asset Rear Left Txt Yay";
        items[272] = "2-Asset Rear Left Txt Yolo";
        items[273] = "2-Asset Rear Left Wave";
        items[274] = "2-Asset Rear Left Wet Money";
        items[275] = "2-Asset Rear Left Ying Yang";
        items[276] = "3-Asset Rear Left 1n";
        items[277] = "3-Asset Rear Left Aardvark";
        items[278] = "3-Asset Rear Left Axe";
        items[279] = "3-Asset Rear Left Belly Chamaleon";
        items[280] = "3-Asset Rear Left Bird Flying";
        items[281] = "3-Asset Rear Left Bird Side";
        items[282] = "3-Asset Rear Left Bling Anchor";
        items[283] = "3-Asset Rear Left Bling Anvil";
        items[284] = "3-Asset Rear Left Bling Arrow";
        items[285] = "3-Asset Rear Left Bling Cheese";
        items[286] = "3-Asset Rear Left Bling Gold Ingot";
        items[287] = "3-Asset Rear Left Bling Love";
        items[288] = "3-Asset Rear Left Bling Mask";
        items[289] = "3-Asset Rear Left Bling Rings";
        items[290] = "3-Asset Rear Left Bling Scissors";
        items[291] = "3-Asset Rear Left Carrot";
        items[292] = "3-Asset Rear Left Chain Logo";
        items[293] = "3-Asset Rear Left Chicken";
        items[294] = "3-Asset Rear Left Cloud";
        items[295] = "3-Asset Rear Left Clover";
        items[296] = "3-Asset Rear Left Cow";
        items[297] = "3-Asset Rear Left Dinosaur";
        items[298] = "3-Asset Rear Left Dollar Bling";
        items[299] = "3-Asset Rear Left Dragon";
        items[300] = "3-Asset Rear Left Ducky";
        items[301] = "3-Asset Rear Left Eth";
        items[302] = "3-Asset Rear Left Eye";
        items[303] = "3-Asset Rear Left Flash";
        items[304] = "3-Asset Rear Left Fries";
        items[305] = "3-Asset Rear Left Glasses";
        items[306] = "3-Asset Rear Left Glasses Logo";
        items[307] = "3-Asset Rear Left Glasses Logo Sun";
        items[308] = "3-Asset Rear Left Heart";
        items[309] = "3-Asset Rear Left Hoodiestrings Uneven";
        items[310] = "3-Asset Rear Left Id";
        items[311] = "3-Asset Rear Left Infinity";
        items[312] = "3-Asset Rear Left Insignia";
        items[313] = "3-Asset Rear Left Leaf";
        items[314] = "3-Asset Rear Left Left Arm Up Bege Bsod";
        items[315] = "3-Asset Rear Left Left Arm Up Bigwalk Blue Prime";
        items[316] = "3-Asset Rear Left Left Arm Up Bigwalk Grey Light";
        items[317] = "3-Asset Rear Left Left Arm Up Bigwalk Rainbow";
        items[318] = "3-Asset Rear Left Left Arm Up Checker Disco";
        items[319] = "3-Asset Rear Left Left Arm Up Checker Rgb";
        items[320] = "3-Asset Rear Left Left Arm Up Checker Spaced Black";
        items[321] = "3-Asset Rear Left Left Arm Up Checker Spaced White";
        items[322] = "3-Asset Rear Left Left Arm Up Checker Vibrant";
        items[323] = "3-Asset Rear Left Left Arm Up Checkers Big Green";
        items[324] = "3-Asset Rear Left Left Arm Up Checkers Big Red Cold";
        items[325] = "3-Asset Rear Left Left Arm Up Checkers Black";
        items[326] = "3-Asset Rear Left Left Arm Up Checkers Blue";
        items[327] = "3-Asset Rear Left Left Arm Up Checkers Magenta";
        items[328] = "3-Asset Rear Left Left Arm Up Collar Sunset";
        items[329] = "3-Asset Rear Left Left Arm Up Decay Gray Dark";
        items[330] = "3-Asset Rear Left Left Arm Up Decay Pride";
        items[331] = "3-Asset Rear Left Left Arm Up Gradient Dawn";
        items[332] = "3-Asset Rear Left Left Arm Up Gradient Dusk";
        items[333] = "3-Asset Rear Left Left Arm Up Gradient Glacier";
        items[334] = "3-Asset Rear Left Left Arm Up Gradient Ice";
        items[335] = "3-Asset Rear Left Left Arm Up Gradient Pride";
        items[336] = "3-Asset Rear Left Left Arm Up Gradient Redpink";
        items[337] = "3-Asset Rear Left Left Arm Up Gradient Sunset";
        items[338] = "3-Asset Rear Left Left Arm Up Gray Scale 1";
        items[339] = "3-Asset Rear Left Left Arm Up Gray Scale 9";
        items[340] = "3-Asset Rear Left Left Arm Up Grid Simple Bege";
        items[341] = "3-Asset Rear Left Left Arm Up Ice Cold";
        items[342] = "3-Asset Rear Left Left Arm Up Lines 45 Greens";
        items[343] = "3-Asset Rear Left Left Arm Up Lines 45 Rose";
        items[344] = "3-Asset Rear Left Left Arm Up Old Shirt";
        items[345] = "3-Asset Rear Left Left Arm Up Rainbow Steps";
        items[346] = "3-Asset Rear Left Left Arm Up Robot";
        items[347] = "3-Asset Rear Left Left Arm Up Safety Vest";
        items[348] = "3-Asset Rear Left Left Arm Up Scarf Clown";
        items[349] = "3-Asset Rear Left Left Arm Up Shirt Black";
        items[350] = "3-Asset Rear Left Left Arm Up Stripes And Checks";
        items[351] = "3-Asset Rear Left Left Arm Up Stripes Big Red";
        items[352] = "3-Asset Rear Left Left Arm Up Stripes Blit";
        items[353] = "3-Asset Rear Left Left Arm Up Stripes Blue Med";
        items[354] = "3-Asset Rear Left Left Arm Up Stripes Brown";
        items[355] = "3-Asset Rear Left Left Arm Up Stripes Olive";
        items[356] = "3-Asset Rear Left Left Arm Up Stripes Red Cold";
        items[357] = "3-Asset Rear Left Left Arm Up Taxi Checkers";
        items[358] = "3-Asset Rear Left Left Arm Up Tee Yo";
        items[359] = "3-Asset Rear Left Left Arm Up Txt Ico";
        items[360] = "3-Asset Rear Left Left Arm Up Wall";
        items[361] = "3-Asset Rear Left Left Arm Up Woolweave Bicolor";
        items[362] = "3-Asset Rear Left Left Arm Up Woolweave Dirt";
        items[363] = "3-Asset Rear Left Light Bulb";
        items[364] = "3-Asset Rear Left Lp";
        items[365] = "3-Asset Rear Left Mars Face";
        items[366] = "3-Asset Rear Left Matrix White";
        items[367] = "3-Asset Rear Left Moon Block";
        items[368] = "3-Asset Rear Left None";
        items[369] = "3-Asset Rear Left Pizza Bling";
        items[370] = "3-Asset Rear Left Pocket Pencil";
        items[371] = "3-Asset Rear Left Rain";
        items[372] = "3-Asset Rear Left Rgb";
        items[373] = "3-Asset Rear Left Secret X";
        items[374] = "3-Asset Rear Left Shrimp";
        items[375] = "3-Asset Rear Left Slime Splat";
        items[376] = "3-Asset Rear Left Small Bling";
        items[377] = "3-Asset Rear Left Snowflake";
        items[378] = "3-Asset Rear Left Sparkles";
        items[379] = "3-Asset Rear Left Stains Blood";
        items[380] = "3-Asset Rear Left Stains Zombie";
        items[381] = "3-Asset Rear Left Sunset";
        items[382] = "3-Asset Rear Left Think";
        items[383] = "3-Asset Rear Left Tie Black On White";
        items[384] = "3-Asset Rear Left Tie Dye";
        items[385] = "3-Asset Rear Left Tie Purple";
        items[386] = "3-Asset Rear Left Tie Red";
        items[387] = "3-Asset Rear Left Txt A2+b2";
        items[388] = "3-Asset Rear Left Txt Cc";
        items[389] = "3-Asset Rear Left Txt Cc 2";
        items[390] = "3-Asset Rear Left Txt Copy";
        items[391] = "3-Asset Rear Left Txt Dao Black";
        items[392] = "3-Asset Rear Left Txt Doom";
        items[393] = "3-Asset Rear Left Txt Dope";
        items[394] = "3-Asset Rear Left Txt Foo Black";
        items[395] = "3-Asset Rear Left Txt Io";
        items[396] = "3-Asset Rear Left Txt Lmao";
        items[397] = "3-Asset Rear Left Txt Lol";
        items[398] = "3-Asset Rear Left Txt Mint";
        items[399] = "3-Asset Rear Left Txt Nil Grey Dark";
        items[400] = "3-Asset Rear Left Txt Noun";
        items[401] = "3-Asset Rear Left Txt Noun F0f";
        items[402] = "3-Asset Rear Left Txt Noun Green";
        items[403] = "3-Asset Rear Left Txt Noun Multicolor";
        items[404] = "3-Asset Rear Left Txt Pi";
        items[405] = "3-Asset Rear Left Txt Pop";
        items[406] = "3-Asset Rear Left Txt Rofl";
        items[407] = "3-Asset Rear Left Txt We";
        items[408] = "3-Asset Rear Left Txt Yay";
        items[409] = "3-Asset Rear Left Txt Yolo";
        items[410] = "3-Asset Rear Left Wave";
        items[411] = "3-Asset Rear Left Wet Money";
        items[412] = "3-Asset Rear Left Ying Yang";
        items[413] = "4-Asset Rear Left 1n";
        items[414] = "4-Asset Rear Left Aardvark";
        items[415] = "4-Asset Rear Left Axe";
        items[416] = "4-Asset Rear Left Belly Chamaleon";
        items[417] = "4-Asset Rear Left Bird Flying";
        items[418] = "4-Asset Rear Left Bird Side";
        items[419] = "4-Asset Rear Left Bling Anchor";
        items[420] = "4-Asset Rear Left Bling Anvil";
        items[421] = "4-Asset Rear Left Bling Arrow";
        items[422] = "4-Asset Rear Left Bling Cheese";
        items[423] = "4-Asset Rear Left Bling Gold Ingot";
        items[424] = "4-Asset Rear Left Bling Love";
        items[425] = "4-Asset Rear Left Bling Mask";
        items[426] = "4-Asset Rear Left Bling Rings";
        items[427] = "4-Asset Rear Left Bling Scissors";
        items[428] = "4-Asset Rear Left Carrot";
        items[429] = "4-Asset Rear Left Chain Logo";
        items[430] = "4-Asset Rear Left Chicken";
        items[431] = "4-Asset Rear Left Cloud";
        items[432] = "4-Asset Rear Left Clover";
        items[433] = "4-Asset Rear Left Cow";
        items[434] = "4-Asset Rear Left Dinosaur";
        items[435] = "4-Asset Rear Left Dollar Bling";
        items[436] = "4-Asset Rear Left Dragon";
        items[437] = "4-Asset Rear Left Ducky";
        items[438] = "4-Asset Rear Left Eth";
        items[439] = "4-Asset Rear Left Eye";
        items[440] = "4-Asset Rear Left Flash";
        items[441] = "4-Asset Rear Left Fries";
        items[442] = "4-Asset Rear Left Glasses";
        items[443] = "4-Asset Rear Left Glasses Logo";
        items[444] = "4-Asset Rear Left Glasses Logo Sun";
        items[445] = "4-Asset Rear Left Heart";
        items[446] = "4-Asset Rear Left Hoodiestrings Uneven";
        items[447] = "4-Asset Rear Left Id";
        items[448] = "4-Asset Rear Left Infinity";
        items[449] = "4-Asset Rear Left Insignia";
        items[450] = "4-Asset Rear Left Leaf";
        items[451] = "4-Asset Rear Left Light Bulb";
        items[452] = "4-Asset Rear Left Lp";
        items[453] = "4-Asset Rear Left Mars Face";
        items[454] = "4-Asset Rear Left Matrix White";
        items[455] = "4-Asset Rear Left Moon Block";
        items[456] = "4-Asset Rear Left None";
        items[457] = "4-Asset Rear Left Pizza Bling";
        items[458] = "4-Asset Rear Left Pocket Pencil";
        items[459] = "4-Asset Rear Left Rain";
        items[460] = "4-Asset Rear Left Rgb";
        items[461] = "4-Asset Rear Left Right Arm Up Bege Bsod";
        items[462] = "4-Asset Rear Left Right Arm Up Bigwalk Blue Prime";
        items[463] = "4-Asset Rear Left Right Arm Up Bigwalk Grey Light";
        items[464] = "4-Asset Rear Left Right Arm Up Bigwalk Rainbow";
        items[465] = "4-Asset Rear Left Right Arm Up Checker Disco";
        items[466] = "4-Asset Rear Left Right Arm Up Checker Rgb";
        items[467] = "4-Asset Rear Left Right Arm Up Checker Spaced Black";
        items[468] = "4-Asset Rear Left Right Arm Up Checker Spaced White";
        items[469] = "4-Asset Rear Left Right Arm Up Checkers Big Green";
        items[470] = "4-Asset Rear Left Right Arm Up Checkers Big Red Cold";
        items[471] = "4-Asset Rear Left Right Arm Up Checkers Black";
        items[472] = "4-Asset Rear Left Right Arm Up Checkers Blue";
        items[473] = "4-Asset Rear Left Right Arm Up Checkers Magenta";
        items[474] = "4-Asset Rear Left Right Arm Up Checkers Vibrant";
        items[475] = "4-Asset Rear Left Right Arm Up Collar Sunset";
        items[476] = "4-Asset Rear Left Right Arm Up Decay Gray Dark";
        items[477] = "4-Asset Rear Left Right Arm Up Decay Pride";
        items[478] = "4-Asset Rear Left Right Arm Up Gradient Dawn";
        items[479] = "4-Asset Rear Left Right Arm Up Gradient Dusk";
        items[480] = "4-Asset Rear Left Right Arm Up Gradient Glacier";
        items[481] = "4-Asset Rear Left Right Arm Up Gradient Ice";
        items[482] = "4-Asset Rear Left Right Arm Up Gradient Pride";
        items[483] = "4-Asset Rear Left Right Arm Up Gradient Redpink";
        items[484] = "4-Asset Rear Left Right Arm Up Gradient Sunset";
        items[485] = "4-Asset Rear Left Right Arm Up Gray Scale 1";
        items[486] = "4-Asset Rear Left Right Arm Up Gray Scale 9";
        items[487] = "4-Asset Rear Left Right Arm Up Grid Simple Bege";
        items[488] = "4-Asset Rear Left Right Arm Up Ice Cold";
        items[489] = "4-Asset Rear Left Right Arm Up Lines 45 Greens";
        items[490] = "4-Asset Rear Left Right Arm Up Lines 45 Rose";
        items[491] = "4-Asset Rear Left Right Arm Up Old Shirt";
        items[492] = "4-Asset Rear Left Right Arm Up Rainbow Steps";
        items[493] = "4-Asset Rear Left Right Arm Up Robot";
        items[494] = "4-Asset Rear Left Right Arm Up Safety Vest";
        items[495] = "4-Asset Rear Left Right Arm Up Scarf Clown";
        items[496] = "4-Asset Rear Left Right Arm Up Shirt Black";
        items[497] = "4-Asset Rear Left Right Arm Up Stripes And Checks";
        items[498] = "4-Asset Rear Left Right Arm Up Stripes Big Red";
        items[499] = "4-Asset Rear Left Right Arm Up Stripes Blit";
        items[500] = "4-Asset Rear Left Right Arm Up Stripes Blue Med";
        items[501] = "4-Asset Rear Left Right Arm Up Stripes Brown";
        items[502] = "4-Asset Rear Left Right Arm Up Stripes Olive";
        items[503] = "4-Asset Rear Left Right Arm Up Stripes Red Cold";
        items[504] = "4-Asset Rear Left Right Arm Up Taxi Checkers";
        items[505] = "4-Asset Rear Left Right Arm Up Tee Yo";
        items[506] = "4-Asset Rear Left Right Arm Up Txt Ico";
        items[507] = "4-Asset Rear Left Right Arm Up Wall";
        items[508] = "4-Asset Rear Left Right Arm Up Woolweave Bicolor";
        items[509] = "4-Asset Rear Left Right Arm Up Woolweave Dirt";
        items[510] = "4-Asset Rear Left Secret X";
        items[511] = "4-Asset Rear Left Shrimp";
        items[512] = "4-Asset Rear Left Slime Splat";
        items[513] = "4-Asset Rear Left Small Bling";
        items[514] = "4-Asset Rear Left Snowflake";
        items[515] = "4-Asset Rear Left Sparkles";
        items[516] = "4-Asset Rear Left Stains Blood";
        items[517] = "4-Asset Rear Left Stains Zombie";
        items[518] = "4-Asset Rear Left Sunset";
        items[519] = "4-Asset Rear Left Think";
        items[520] = "4-Asset Rear Left Tie Black On White";
        items[521] = "4-Asset Rear Left Tie Dye";
        items[522] = "4-Asset Rear Left Tie Purple";
        items[523] = "4-Asset Rear Left Tie Red";
        items[524] = "4-Asset Rear Left Txt A2+b2";
        items[525] = "4-Asset Rear Left Txt Cc";
        items[526] = "4-Asset Rear Left Txt Cc 2";
        items[527] = "4-Asset Rear Left Txt Copy";
        items[528] = "4-Asset Rear Left Txt Dao Black";
        items[529] = "4-Asset Rear Left Txt Doom";
        items[530] = "4-Asset Rear Left Txt Dope";
        items[531] = "4-Asset Rear Left Txt Foo Black";
        items[532] = "4-Asset Rear Left Txt Io";
        items[533] = "4-Asset Rear Left Txt Lmao";
        items[534] = "4-Asset Rear Left Txt Lol";
        items[535] = "4-Asset Rear Left Txt Mint";
        items[536] = "4-Asset Rear Left Txt Nil Grey Dark";
        items[537] = "4-Asset Rear Left Txt Noun";
        items[538] = "4-Asset Rear Left Txt Noun F0f";
        items[539] = "4-Asset Rear Left Txt Noun Green";
        items[540] = "4-Asset Rear Left Txt Noun Multicolor";
        items[541] = "4-Asset Rear Left Txt Pi";
        items[542] = "4-Asset Rear Left Txt Pop";
        items[543] = "4-Asset Rear Left Txt Rofl";
        items[544] = "4-Asset Rear Left Txt We";
        items[545] = "4-Asset Rear Left Txt Yay";
        items[546] = "4-Asset Rear Left Txt Yolo";
        items[547] = "4-Asset Rear Left Wave";
        items[548] = "4-Asset Rear Left Wet Money";
        items[549] = "4-Asset Rear Left Ying Yang";

        bytes memory data = abi.encode(items);

        VmSafe vm = VmSafe(
            address(uint160(uint256(keccak256("hevm cheat code"))))
        );

        string[] memory inputs = new string[](3);
        inputs[0] = "node";
        inputs[1] = "script/nouns-coasters/deflate.js";
        inputs[2] = vm.toString(data);

        bytes memory compressedData = vm.ffi(inputs);

        // address result = SSTORE2.write(compressedData);

        renderer.addLayer({
            target: target,
            ipfs: INounsCoasterMetadataRendererTypes.IPFSGroup({
                baseUri: "ipfs://bafybeidmllp5rev4k2na7t34bmwxjjp2dt4w6papy4aicynmmshgojny2e/",
                extension: ".png"
            }),
            decompressedSize: data.length,
            compressedData: compressedData,
            count: items.length,
            property: "6 Accessories rear left",
            variantProperty: variantPropertyParameters
        });
    }

    function addLayer7(NounsCoasterMetadataRenderer renderer, address target)
        internal
    {
        // 7 Head rear left
        INounsCoasterMetadataRendererTypes.VariantPropertyParameters
            memory variantPropertyParameters;
        variantPropertyParameters
            .offsets = new INounsCoasterMetadataRendererTypes.VariantOffset[](
            0
        );
        variantPropertyParameters.id = 0;
        variantPropertyParameters.count = 0;

        string[] memory items = new string[](205);
        items[0] = "Bag Happy";
        items[1] = "Bagpipe Bored";
        items[2] = "Bagpipe Happy";
        items[3] = "Bank Happy";
        items[4] = "Baseball Gameball Happy";
        items[5] = "Bear Scared";
        items[6] = "Beet Scared";
        items[7] = "Bell Sick";
        items[8] = "Bigfoot Yeti Happy";
        items[9] = "Blackhole Sick";
        items[10] = "Blueberry Sick";
        items[11] = "Bomb Happy";
        items[12] = "Bonsai Sick";
        items[13] = "Boot Bored";
        items[14] = "Boot Happy";
        items[15] = "Box Happy";
        items[16] = "Box Scared";
        items[17] = "Boxingglove Happy";
        items[18] = "Boxingglove Scared";
        items[19] = "Boxingglove Sick";
        items[20] = "Brain Bored";
        items[21] = "Cake Happy";
        items[22] = "Candy Bar Happy";
        items[23] = "Candy Bar Sick";
        items[24] = "Cannedham Bored";
        items[25] = "Cannedham Scared";
        items[26] = "Car Bored";
        items[27] = "Car Happy";
        items[28] = "Car Scared";
        items[29] = "Cash Register Sick";
        items[30] = "Cassettetape Scared";
        items[31] = "Cassettetape Sick";
        items[32] = "Cat Scared";
        items[33] = "Cd Scared";
        items[34] = "Cd Sick";
        items[35] = "Chain Scared";
        items[36] = "Chart Bars Bored";
        items[37] = "Chart Bars Scared";
        items[38] = "Cheese Happy";
        items[39] = "Chefhat Bored";
        items[40] = "Cherry Bored";
        items[41] = "Cherry Scared";
        items[42] = "Chipboard Sick";
        items[43] = "Chips Bored";
        items[44] = "Chips Sick";
        items[45] = "Cloud Bored";
        items[46] = "Coffeebean Happy";
        items[47] = "Cordlessphone Bored";
        items[48] = "Cordlessphone Sick";
        items[49] = "Couch Bored";
        items[50] = "Couch Happy";
        items[51] = "Crane Bored";
        items[52] = "Croc Hat Sick";
        items[53] = "Crystallball Bored";
        items[54] = "Diamond Blue Bored";
        items[55] = "Diamond Blue Happy";
        items[56] = "Diamond Blue Sick";
        items[57] = "Diamond Red Bored";
        items[58] = "Dog Happy";
        items[59] = "Dog Sick";
        items[60] = "Doughnut Happy";
        items[61] = "Doughnut Sick";
        items[62] = "Duck Bored";
        items[63] = "Duck Happy";
        items[64] = "Duck Sick";
        items[65] = "Ducky Sick";
        items[66] = "Egg Bored";
        items[67] = "Fan Scared";
        items[68] = "Film Strip Bored";
        items[69] = "Fir Bored";
        items[70] = "Firehydrant Happy";
        items[71] = "Fox Scared";
        items[72] = "Fox Sick";
        items[73] = "Glasses Big Happy";
        items[74] = "Gnomes Bored";
        items[75] = "Gnomes Happy";
        items[76] = "Goldcoin Happy";
        items[77] = "Goldcoin Scared";
        items[78] = "Goldfish Happy";
        items[79] = "Grouper Bored";
        items[80] = "Hair Bored";
        items[81] = "Hair Sick";
        items[82] = "Hardhat Sick";
        items[83] = "Heart Happy";
        items[84] = "Heart Scared";
        items[85] = "Helicopter Happy";
        items[86] = "Highheel Bored";
        items[87] = "Highheel Scared";
        items[88] = "Hockeypuck Happy";
        items[89] = "House Sick";
        items[90] = "Icepop B Scared";
        items[91] = "Island Happy";
        items[92] = "Jellyfish Bored";
        items[93] = "Jellyfish Scared";
        items[94] = "Jupiter Scared";
        items[95] = "Ketchup Happy";
        items[96] = "Lightning Bolt Bored";
        items[97] = "Lint Scared";
        items[98] = "Lint Sick";
        items[99] = "Lips Happy";
        items[100] = "Lipstick2 Happy";
        items[101] = "Lock Sick";
        items[102] = "Macaroni Bored";
        items[103] = "Mailbox Sick";
        items[104] = "Maze Bored";
        items[105] = "Microwave Happy";
        items[106] = "Microwave Scared";
        items[107] = "Mixer Bored";
        items[108] = "Mosquito Happy";
        items[109] = "Mountain Snowcap Happy";
        items[110] = "Mug Happy";
        items[111] = "Mug Scared";
        items[112] = "Mushroom Bored";
        items[113] = "Mustard Happy";
        items[114] = "Mustard Sick";
        items[115] = "Nigiri Sick";
        items[116] = "Noodles Bored";
        items[117] = "Onion Scared";
        items[118] = "Orangutan Happy";
        items[119] = "Orangutan Scared";
        items[120] = "Orca Scared";
        items[121] = "Outlet Bored";
        items[122] = "Owl Scared";
        items[123] = "Oyster Happy";
        items[124] = "Oyster Scared";
        items[125] = "Paperclip Sick";
        items[126] = "Peanut Bored";
        items[127] = "Peanut Happy";
        items[128] = "Pencil Tip Happy";
        items[129] = "Pickle Sick";
        items[130] = "Pie Bored";
        items[131] = "Piggybank Bored";
        items[132] = "Pill Happy";
        items[133] = "Pipe Happy";
        items[134] = "Pirateship Happy";
        items[135] = "Pirateship Scared";
        items[136] = "Pizza Sick";
        items[137] = "Plane Bored";
        items[138] = "Porkbao Happy";
        items[139] = "Pufferfish Happy";
        items[140] = "Pufferfish Scared";
        items[141] = "Pumpkin Bored";
        items[142] = "Pumpkin Happy";
        items[143] = "Pumpkin Sick";
        items[144] = "Pyramid Bored";
        items[145] = "Rabbit Bored";
        items[146] = "Rainbow Happy";
        items[147] = "Rangefinder Happy";
        items[148] = "Rangefinder Scared";
        items[149] = "Rgb Sick";
        items[150] = "Rock Happy";
        items[151] = "Rosebud Happy";
        items[152] = "Safe Scared";
        items[153] = "Saguaro Bored";
        items[154] = "Saguaro Scared";
        items[155] = "Sandwich Bored";
        items[156] = "Sandwich Sick";
        items[157] = "Saturn Sick";
        items[158] = "Saw Sick";
        items[159] = "Shark Bored";
        items[160] = "Shower Bored";
        items[161] = "Skeleton Hat Bored";
        items[162] = "Skilift Scared";
        items[163] = "Skilift Sick";
        items[164] = "Snowglobe Happy";
        items[165] = "Snowman Scared";
        items[166] = "Snowmobile Scared";
        items[167] = "Spaghetti Happy";
        items[168] = "Spaghetti Scared";
        items[169] = "Sponge Happy";
        items[170] = "Sponge Sick";
        items[171] = "Squid Bored";
        items[172] = "Star Sparkles Bored";
        items[173] = "Steak Scared";
        items[174] = "Taco Happy";
        items[175] = "Thumbsup Bored";
        items[176] = "Toaster Happy";
        items[177] = "Tooth Scared";
        items[178] = "Tornado Sick";
        items[179] = "Trashcan Happy";
        items[180] = "Treasurechest Bored";
        items[181] = "Turing Bored";
        items[182] = "Turing Happy";
        items[183] = "Ufo Bored";
        items[184] = "Undead Sick";
        items[185] = "Vending Machine Scared";
        items[186] = "Vending Machine Scared(1)";
        items[187] = "Void Bored";
        items[188] = "Void Sick";
        items[189] = "Volcano Scared";
        items[190] = "Volleyball Bored";
        items[191] = "Volleyball Scared";
        items[192] = "Wall Scared";
        items[193] = "Wallet Scared";
        items[194] = "Watch Happy";
        items[195] = "Wave Scared";
        items[196] = "Weed Happy";
        items[197] = "Weight Bored";
        items[198] = "Weight Sick";
        items[199] = "Werewolf Sick";
        items[200] = "Whale Alive Sick";
        items[201] = "Whale Sick";
        items[202] = "Wine Barrel Happy";
        items[203] = "Wine Sick";
        items[204] = "Wizardhat Happy";

        bytes memory data = abi.encode(items);

        VmSafe vm = VmSafe(
            address(uint160(uint256(keccak256("hevm cheat code"))))
        );

        string[] memory inputs = new string[](3);
        inputs[0] = "node";
        inputs[1] = "script/nouns-coasters/deflate.js";
        inputs[2] = vm.toString(data);

        bytes memory compressedData = vm.ffi(inputs);

        // address result = SSTORE2.write(compressedData);

        renderer.addLayer({
            target: target,
            ipfs: INounsCoasterMetadataRendererTypes.IPFSGroup({
                baseUri: "ipfs://bafybeidmllp5rev4k2na7t34bmwxjjp2dt4w6papy4aicynmmshgojny2e/",
                extension: ".png"
            }),
            decompressedSize: data.length,
            compressedData: compressedData,
            count: items.length,
            property: "7 Head rear left",
            variantProperty: variantPropertyParameters
        });
    }

    function addLayer8(NounsCoasterMetadataRenderer renderer, address target)
        internal
    {
        // 8 Expression rear left
        INounsCoasterMetadataRendererTypes.VariantPropertyParameters
            memory variantPropertyParameters;
        variantPropertyParameters
            .offsets = new INounsCoasterMetadataRendererTypes.VariantOffset[](
            0
        );
        variantPropertyParameters.id = 0;
        variantPropertyParameters.count = 0;

        string[] memory items = new string[](4);
        items[0] = "Bored";
        items[1] = "Happy";
        items[2] = "Scared";
        items[3] = "Sick";

        bytes memory data = abi.encode(items);

        VmSafe vm = VmSafe(
            address(uint160(uint256(keccak256("hevm cheat code"))))
        );

        string[] memory inputs = new string[](3);
        inputs[0] = "node";
        inputs[1] = "script/nouns-coasters/deflate.js";
        inputs[2] = vm.toString(data);

        bytes memory compressedData = vm.ffi(inputs);

        // address result = SSTORE2.write(compressedData);

        renderer.addLayer({
            target: target,
            ipfs: INounsCoasterMetadataRendererTypes.IPFSGroup({
                baseUri: "ipfs://bafybeidmllp5rev4k2na7t34bmwxjjp2dt4w6papy4aicynmmshgojny2e/",
                extension: ".png"
            }),
            decompressedSize: data.length,
            compressedData: compressedData,
            count: items.length,
            property: "8 Expression rear left",
            variantProperty: variantPropertyParameters
        });
    }

    function addLayer9(NounsCoasterMetadataRenderer renderer, address target)
        internal
    {
        // 9 Glasses rear left
        INounsCoasterMetadataRendererTypes.VariantPropertyParameters
            memory variantPropertyParameters;
        variantPropertyParameters
            .offsets = new INounsCoasterMetadataRendererTypes.VariantOffset[](
            0
        );
        variantPropertyParameters.id = 0;
        variantPropertyParameters.count = 0;

        string[] memory items = new string[](21);
        items[0] = "Black";
        items[1] = "Black Red Eyes";
        items[2] = "Black Rgb";
        items[3] = "Blue";
        items[4] = "Blue Med Saturated";
        items[5] = "Frog Green";
        items[6] = "Full Black";
        items[7] = "Green Blue Multi";
        items[8] = "Grey Light";
        items[9] = "Guava";
        items[10] = "Hip Rose";
        items[11] = "Honey";
        items[12] = "Magenta";
        items[13] = "Orange";
        items[14] = "Pink Purple Multi";
        items[15] = "Red";
        items[16] = "Smoke";
        items[17] = "Teal";
        items[18] = "Watermelon";
        items[19] = "Yellow Orange Multi";
        items[20] = "Yellow Saturated";

        bytes memory data = abi.encode(items);

        VmSafe vm = VmSafe(
            address(uint160(uint256(keccak256("hevm cheat code"))))
        );

        string[] memory inputs = new string[](3);
        inputs[0] = "node";
        inputs[1] = "script/nouns-coasters/deflate.js";
        inputs[2] = vm.toString(data);

        bytes memory compressedData = vm.ffi(inputs);

        // address result = SSTORE2.write(compressedData);

        renderer.addLayer({
            target: target,
            ipfs: INounsCoasterMetadataRendererTypes.IPFSGroup({
                baseUri: "ipfs://bafybeidmllp5rev4k2na7t34bmwxjjp2dt4w6papy4aicynmmshgojny2e/",
                extension: ".png"
            }),
            decompressedSize: data.length,
            compressedData: compressedData,
            count: items.length,
            property: "9 Glasses rear left",
            variantProperty: variantPropertyParameters
        });
    }

    function addLayer10(NounsCoasterMetadataRenderer renderer, address target)
        internal
    {
        // 10 Body rear right
        INounsCoasterMetadataRendererTypes.VariantPropertyParameters
            memory variantPropertyParameters;
        variantPropertyParameters
            .offsets = new INounsCoasterMetadataRendererTypes.VariantOffset[](
            4
        );
        variantPropertyParameters.id = 1;
        variantPropertyParameters.count = 4;
        variantPropertyParameters.offsets[
            0
        ] = INounsCoasterMetadataRendererTypes.VariantOffset({
            startAt: 0,
            count: 30
        });
        variantPropertyParameters.offsets[
            1
        ] = INounsCoasterMetadataRendererTypes.VariantOffset({
            startAt: 30,
            count: 30
        });
        variantPropertyParameters.offsets[
            2
        ] = INounsCoasterMetadataRendererTypes.VariantOffset({
            startAt: 60,
            count: 30
        });
        variantPropertyParameters.offsets[
            3
        ] = INounsCoasterMetadataRendererTypes.VariantOffset({
            startAt: 90,
            count: 30
        });

        string[] memory items = new string[](120);
        items[0] = "1-Both Arms Down Bege Bsod";
        items[1] = "1-Both Arms Down Bege Crt";
        items[2] = "1-Both Arms Down Blue Grey";
        items[3] = "1-Both Arms Down Blue Sky";
        items[4] = "1-Both Arms Down Cold";
        items[5] = "1-Both Arms Down Computer Blue";
        items[6] = "1-Both Arms Down Dark Brown";
        items[7] = "1-Both Arms Down Dark Pink";
        items[8] = "1-Both Arms Down Foggrey";
        items[9] = "1-Both Arms Down Gold";
        items[10] = "1-Both Arms Down Gray Scale 1";
        items[11] = "1-Both Arms Down Gray Scale 7";
        items[12] = "1-Both Arms Down Gray Scale 8";
        items[13] = "1-Both Arms Down Gray Scale 9";
        items[14] = "1-Both Arms Down Green";
        items[15] = "1-Both Arms Down Gunk";
        items[16] = "1-Both Arms Down Hotbrown";
        items[17] = "1-Both Arms Down Magenta";
        items[18] = "1-Both Arms Down Orange";
        items[19] = "1-Both Arms Down Orange Yellow";
        items[20] = "1-Both Arms Down Peachy A";
        items[21] = "1-Both Arms Down Peachy B";
        items[22] = "1-Both Arms Down Purple";
        items[23] = "1-Both Arms Down Red";
        items[24] = "1-Both Arms Down Redpinkish";
        items[25] = "1-Both Arms Down Rust";
        items[26] = "1-Both Arms Down Slime Green";
        items[27] = "1-Both Arms Down Teal";
        items[28] = "1-Both Arms Down Teal Light";
        items[29] = "1-Both Arms Down Yellow";
        items[30] = "2-Both Arms Up Bege Bsod";
        items[31] = "2-Both Arms Up Bege Crt";
        items[32] = "2-Both Arms Up Blue Grey";
        items[33] = "2-Both Arms Up Blue Sky";
        items[34] = "2-Both Arms Up Cold";
        items[35] = "2-Both Arms Up Computer Blue";
        items[36] = "2-Both Arms Up Dark Brown";
        items[37] = "2-Both Arms Up Dark Pink";
        items[38] = "2-Both Arms Up Foggrey";
        items[39] = "2-Both Arms Up Gold";
        items[40] = "2-Both Arms Up Gray Scale 1";
        items[41] = "2-Both Arms Up Gray Scale 7";
        items[42] = "2-Both Arms Up Gray Scale 8";
        items[43] = "2-Both Arms Up Gray Scale 9";
        items[44] = "2-Both Arms Up Green";
        items[45] = "2-Both Arms Up Gunk";
        items[46] = "2-Both Arms Up Hotbrown";
        items[47] = "2-Both Arms Up Magenta";
        items[48] = "2-Both Arms Up Orange";
        items[49] = "2-Both Arms Up Orange Yellow";
        items[50] = "2-Both Arms Up Peachy A";
        items[51] = "2-Both Arms Up Peachy B";
        items[52] = "2-Both Arms Up Purple";
        items[53] = "2-Both Arms Up Red";
        items[54] = "2-Both Arms Up Red Pinkish";
        items[55] = "2-Both Arms Up Rust";
        items[56] = "2-Both Arms Up Slime Green";
        items[57] = "2-Both Arms Up Teal";
        items[58] = "2-Both Arms Up Teal Light";
        items[59] = "2-Both Arms Up Yellow";
        items[60] = "3-Left Arm Up Bege Bsod";
        items[61] = "3-Left Arm Up Bege Crt";
        items[62] = "3-Left Arm Up Blue Grey";
        items[63] = "3-Left Arm Up Blue Sky";
        items[64] = "3-Left Arm Up Cold";
        items[65] = "3-Left Arm Up Computer Blue";
        items[66] = "3-Left Arm Up Dark Brown";
        items[67] = "3-Left Arm Up Dark Pink";
        items[68] = "3-Left Arm Up Foggrey";
        items[69] = "3-Left Arm Up Gold";
        items[70] = "3-Left Arm Up Gray Scale 1";
        items[71] = "3-Left Arm Up Gray Scale 7";
        items[72] = "3-Left Arm Up Gray Scale 8";
        items[73] = "3-Left Arm Up Gray Scale 9";
        items[74] = "3-Left Arm Up Green";
        items[75] = "3-Left Arm Up Gunk";
        items[76] = "3-Left Arm Up Hotbrown";
        items[77] = "3-Left Arm Up Magenta";
        items[78] = "3-Left Arm Up Orange";
        items[79] = "3-Left Arm Up Orange Yellow";
        items[80] = "3-Left Arm Up Peachy A";
        items[81] = "3-Left Arm Up Peachy B";
        items[82] = "3-Left Arm Up Purple";
        items[83] = "3-Left Arm Up Red";
        items[84] = "3-Left Arm Up Redpinkish";
        items[85] = "3-Left Arm Up Rust";
        items[86] = "3-Left Arm Up Slime Green";
        items[87] = "3-Left Arm Up Teal";
        items[88] = "3-Left Arm Up Teal Light";
        items[89] = "3-Left Arm Up Yellow";
        items[90] = "4-Right Arm Up Bege Bsod";
        items[91] = "4-Right Arm Up Bege Crt";
        items[92] = "4-Right Arm Up Blue Grey";
        items[93] = "4-Right Arm Up Blue Sky";
        items[94] = "4-Right Arm Up Cold";
        items[95] = "4-Right Arm Up Computer Blue";
        items[96] = "4-Right Arm Up Dark Brown";
        items[97] = "4-Right Arm Up Dark Pink";
        items[98] = "4-Right Arm Up Foggrey";
        items[99] = "4-Right Arm Up Gold";
        items[100] = "4-Right Arm Up Gray Scale 1";
        items[101] = "4-Right Arm Up Gray Scale 7";
        items[102] = "4-Right Arm Up Gray Scale 8";
        items[103] = "4-Right Arm Up Gray Scale 9";
        items[104] = "4-Right Arm Up Green";
        items[105] = "4-Right Arm Up Gunk";
        items[106] = "4-Right Arm Up Hotbrown";
        items[107] = "4-Right Arm Up Magenta";
        items[108] = "4-Right Arm Up Orange";
        items[109] = "4-Right Arm Up Orange Yellow";
        items[110] = "4-Right Arm Up Peachy A";
        items[111] = "4-Right Arm Up Peachy B";
        items[112] = "4-Right Arm Up Purple";
        items[113] = "4-Right Arm Up Red";
        items[114] = "4-Right Arm Up Red Pinkish";
        items[115] = "4-Right Arm Up Rust";
        items[116] = "4-Right Arm Up Slime Green";
        items[117] = "4-Right Arm Up Teal";
        items[118] = "4-Right Arm Up Teal Light";
        items[119] = "4-Right Arm Up Yellow";

        bytes memory data = abi.encode(items);

        VmSafe vm = VmSafe(
            address(uint160(uint256(keccak256("hevm cheat code"))))
        );

        string[] memory inputs = new string[](3);
        inputs[0] = "node";
        inputs[1] = "script/nouns-coasters/deflate.js";
        inputs[2] = vm.toString(data);

        bytes memory compressedData = vm.ffi(inputs);

        // address result = SSTORE2.write(compressedData);

        renderer.addLayer({
            target: target,
            ipfs: INounsCoasterMetadataRendererTypes.IPFSGroup({
                baseUri: "ipfs://bafybeidmllp5rev4k2na7t34bmwxjjp2dt4w6papy4aicynmmshgojny2e/",
                extension: ".png"
            }),
            decompressedSize: data.length,
            compressedData: compressedData,
            count: items.length,
            property: "10 Body rear right",
            variantProperty: variantPropertyParameters
        });
    }

    function addLayer11(NounsCoasterMetadataRenderer renderer, address target)
        internal
    {
        // 11 Accessories rear right
        INounsCoasterMetadataRendererTypes.VariantPropertyParameters
            memory variantPropertyParameters;
        variantPropertyParameters
            .offsets = new INounsCoasterMetadataRendererTypes.VariantOffset[](
            4
        );
        variantPropertyParameters.id = 1;
        variantPropertyParameters.count = 4;
        variantPropertyParameters.offsets[
            0
        ] = INounsCoasterMetadataRendererTypes.VariantOffset({
            startAt: 0,
            count: 149
        });
        variantPropertyParameters.offsets[
            1
        ] = INounsCoasterMetadataRendererTypes.VariantOffset({
            startAt: 149,
            count: 137
        });
        variantPropertyParameters.offsets[
            2
        ] = INounsCoasterMetadataRendererTypes.VariantOffset({
            startAt: 286,
            count: 137
        });
        variantPropertyParameters.offsets[
            3
        ] = INounsCoasterMetadataRendererTypes.VariantOffset({
            startAt: 423,
            count: 137
        });

        string[] memory items = new string[](560);
        items[0] = "1-Asset Rear Right 1n";
        items[1] = "1-Asset Rear Right Aardvark";
        items[2] = "1-Asset Rear Right Axe";
        items[3] = "1-Asset Rear Right Belly Chamaleon";
        items[4] = "1-Asset Rear Right Bird Flying";
        items[5] = "1-Asset Rear Right Bird Side";
        items[6] = "1-Asset Rear Right Bling Anchor";
        items[7] = "1-Asset Rear Right Bling Anvil";
        items[8] = "1-Asset Rear Right Bling Arrow";
        items[9] = "1-Asset Rear Right Bling Cheese";
        items[10] = "1-Asset Rear Right Bling Gold Ingot";
        items[11] = "1-Asset Rear Right Bling Love";
        items[12] = "1-Asset Rear Right Bling Mask";
        items[13] = "1-Asset Rear Right Bling Rings";
        items[14] = "1-Asset Rear Right Bling Scissors";
        items[15] = "1-Asset Rear Right Bling Scissors(1)";
        items[16] = "1-Asset Rear Right Bling Sparkles";
        items[17] = "1-Asset Rear Right Both Arms Down Bege Bsod";
        items[18] = "1-Asset Rear Right Both Arms Down Belly Chamaleon";
        items[19] = "1-Asset Rear Right Both Arms Down Big Walk Blue Prime";
        items[20] = "1-Asset Rear Right Both Arms Down Big Walk Grey Light";
        items[21] = "1-Asset Rear Right Both Arms Down Big Walk Rainbow";
        items[22] = "1-Asset Rear Right Both Arms Down Black";
        items[23] = "1-Asset Rear Right Both Arms Down Chain Logo";
        items[24] = "1-Asset Rear Right Both Arms Down Checker Disco";
        items[25] = "1-Asset Rear Right Both Arms Down Checker Rgb";
        items[26] = "1-Asset Rear Right Both Arms Down Checker Spaced Black";
        items[27] = "1-Asset Rear Right Both Arms Down Checker Spaced White";
        items[28] = "1-Asset Rear Right Both Arms Down Checker Vibrant";
        items[29] = "1-Asset Rear Right Both Arms Down Checkers Big Green";
        items[30] = "1-Asset Rear Right Both Arms Down Checkers Big Red Cold";
        items[31] = "1-Asset Rear Right Both Arms Down Checkers Blue";
        items[32] = "1-Asset Rear Right Both Arms Down Checkers Magenta";
        items[33] = "1-Asset Rear Right Both Arms Down Collar Sunset";
        items[34] = "1-Asset Rear Right Both Arms Down Decay Gray Dark";
        items[35] = "1-Asset Rear Right Both Arms Down Decay Pride";
        items[36] = "1-Asset Rear Right Both Arms Down Gradient Dawn";
        items[37] = "1-Asset Rear Right Both Arms Down Gradient Dawn(1)";
        items[38] = "1-Asset Rear Right Both Arms Down Gradient Dusk";
        items[39] = "1-Asset Rear Right Both Arms Down Gradient Dusk(1)";
        items[40] = "1-Asset Rear Right Both Arms Down Gradient Glacier";
        items[41] = "1-Asset Rear Right Both Arms Down Gradient Ice";
        items[42] = "1-Asset Rear Right Both Arms Down Gradient Pride";
        items[43] = "1-Asset Rear Right Both Arms Down Gradient Redpink";
        items[44] = "1-Asset Rear Right Both Arms Down Gradient Sunset";
        items[45] = "1-Asset Rear Right Both Arms Down Gray Scale 1";
        items[46] = "1-Asset Rear Right Both Arms Down Gray Scale 1(1)";
        items[47] = "1-Asset Rear Right Both Arms Down Gray Scale 9";
        items[48] = "1-Asset Rear Right Both Arms Down Grid Simple Bege";
        items[49] = "1-Asset Rear Right Both Arms Down Ice Cold";
        items[50] = "1-Asset Rear Right Both Arms Down Lines 45 Greens";
        items[51] = "1-Asset Rear Right Both Arms Down Lines 45 Rose";
        items[52] = "1-Asset Rear Right Both Arms Down Old Shirt";
        items[53] = "1-Asset Rear Right Both Arms Down Rainbow Steps";
        items[54] = "1-Asset Rear Right Both Arms Down Robot";
        items[55] = "1-Asset Rear Right Both Arms Down Safety Vest";
        items[56] = "1-Asset Rear Right Both Arms Down Scarf Clown";
        items[57] = "1-Asset Rear Right Both Arms Down Shirt Black";
        items[58] = "1-Asset Rear Right Both Arms Down Shirt Black(1)";
        items[59] = "1-Asset Rear Right Both Arms Down Stripes And Checks";
        items[60] = "1-Asset Rear Right Both Arms Down Stripes Big Red";
        items[61] = "1-Asset Rear Right Both Arms Down Stripes Blit";
        items[62] = "1-Asset Rear Right Both Arms Down Stripes Blue Med";
        items[63] = "1-Asset Rear Right Both Arms Down Stripes Brown";
        items[64] = "1-Asset Rear Right Both Arms Down Stripes Olive";
        items[65] = "1-Asset Rear Right Both Arms Down Stripes Red Cold";
        items[66] = "1-Asset Rear Right Both Arms Down Taxi Checkers";
        items[67] = "1-Asset Rear Right Both Arms Down Tee Yo";
        items[68] = "1-Asset Rear Right Both Arms Down Tee Yo(1)";
        items[69] = "1-Asset Rear Right Both Arms Down Txt Ico";
        items[70] = "1-Asset Rear Right Both Arms Down Wall";
        items[71] = "1-Asset Rear Right Both Arms Down Woolweave Bicolor";
        items[72] = "1-Asset Rear Right Both Arms Down Woolweave Dirt";
        items[73] = "1-Asset Rear Right Carrot";
        items[74] = "1-Asset Rear Right Chain Logo";
        items[75] = "1-Asset Rear Right Chicken";
        items[76] = "1-Asset Rear Right Cloud";
        items[77] = "1-Asset Rear Right Clover";
        items[78] = "1-Asset Rear Right Cow";
        items[79] = "1-Asset Rear Right Cow(1)";
        items[80] = "1-Asset Rear Right Dinosaur";
        items[81] = "1-Asset Rear Right Dollar Bling";
        items[82] = "1-Asset Rear Right Dragon";
        items[83] = "1-Asset Rear Right Ducky";
        items[84] = "1-Asset Rear Right Eth";
        items[85] = "1-Asset Rear Right Eye";
        items[86] = "1-Asset Rear Right Flash";
        items[87] = "1-Asset Rear Right Fries";
        items[88] = "1-Asset Rear Right Glasses";
        items[89] = "1-Asset Rear Right Glasses Logo";
        items[90] = "1-Asset Rear Right Glasses Logo Sun";
        items[91] = "1-Asset Rear Right Glasses(1)";
        items[92] = "1-Asset Rear Right Heart";
        items[93] = "1-Asset Rear Right Hoodiestrings Uneven";
        items[94] = "1-Asset Rear Right Id";
        items[95] = "1-Asset Rear Right Infinity";
        items[96] = "1-Asset Rear Right Insignia";
        items[97] = "1-Asset Rear Right Leaf";
        items[98] = "1-Asset Rear Right Light Bulb";
        items[99] = "1-Asset Rear Right Lp";
        items[100] = "1-Asset Rear Right Mars Face";
        items[101] = "1-Asset Rear Right Matrix White";
        items[102] = "1-Asset Rear Right Moon Block";
        items[103] = "1-Asset Rear Right None";
        items[104] = "1-Asset Rear Right Pizza Bling";
        items[105] = "1-Asset Rear Right Pocket Pencil";
        items[106] = "1-Asset Rear Right Rain";
        items[107] = "1-Asset Rear Right Rgb";
        items[108] = "1-Asset Rear Right Secret X";
        items[109] = "1-Asset Rear Right Shrimp";
        items[110] = "1-Asset Rear Right Slime Splat";
        items[111] = "1-Asset Rear Right Small Bling";
        items[112] = "1-Asset Rear Right Snow Flake";
        items[113] = "1-Asset Rear Right Stains Blood";
        items[114] = "1-Asset Rear Right Stains Zombie";
        items[115] = "1-Asset Rear Right Sunset";
        items[116] = "1-Asset Rear Right Think";
        items[117] = "1-Asset Rear Right Tie Black On White";
        items[118] = "1-Asset Rear Right Tie Black On White(1)";
        items[119] = "1-Asset Rear Right Tie Dye";
        items[120] = "1-Asset Rear Right Tie Purple";
        items[121] = "1-Asset Rear Right Tie Red";
        items[122] = "1-Asset Rear Right Txt A2+b2";
        items[123] = "1-Asset Rear Right Txt Cc";
        items[124] = "1-Asset Rear Right Txt Cc 2";
        items[125] = "1-Asset Rear Right Txt Copy";
        items[126] = "1-Asset Rear Right Txt Dao Black";
        items[127] = "1-Asset Rear Right Txt Doom";
        items[128] = "1-Asset Rear Right Txt Dope";
        items[129] = "1-Asset Rear Right Txt Foo Black";
        items[130] = "1-Asset Rear Right Txt Io";
        items[131] = "1-Asset Rear Right Txt Lmao";
        items[132] = "1-Asset Rear Right Txt Lol";
        items[133] = "1-Asset Rear Right Txt Mint";
        items[134] = "1-Asset Rear Right Txt Nil Grey Dark";
        items[135] = "1-Asset Rear Right Txt Noun";
        items[136] = "1-Asset Rear Right Txt Noun F0f";
        items[137] = "1-Asset Rear Right Txt Noun Green";
        items[138] = "1-Asset Rear Right Txt Noun Multicolor";
        items[139] = "1-Asset Rear Right Txt Pi";
        items[140] = "1-Asset Rear Right Txt Pop";
        items[141] = "1-Asset Rear Right Txt Rofl";
        items[142] = "1-Asset Rear Right Txt We";
        items[143] = "1-Asset Rear Right Txt Yay";
        items[144] = "1-Asset Rear Right Txt Yay(1)";
        items[145] = "1-Asset Rear Right Txt Yolo";
        items[146] = "1-Asset Rear Right Wave";
        items[147] = "1-Asset Rear Right Wet Money";
        items[148] = "1-Asset Rear Right Ying Yang";
        items[149] = "2-Asset Rear Right 1n";
        items[150] = "2-Asset Rear Right Aardvark";
        items[151] = "2-Asset Rear Right Axe";
        items[152] = "2-Asset Rear Right Belly Chamaleon";
        items[153] = "2-Asset Rear Right Bird Flying";
        items[154] = "2-Asset Rear Right Bird Side";
        items[155] = "2-Asset Rear Right Bling Anchor";
        items[156] = "2-Asset Rear Right Bling Anvil";
        items[157] = "2-Asset Rear Right Bling Arrow";
        items[158] = "2-Asset Rear Right Bling Cheese";
        items[159] = "2-Asset Rear Right Bling Gold Ingot";
        items[160] = "2-Asset Rear Right Bling Love";
        items[161] = "2-Asset Rear Right Bling Mask";
        items[162] = "2-Asset Rear Right Bling Rings";
        items[163] = "2-Asset Rear Right Bling Scissors";
        items[164] = "2-Asset Rear Right Bling Sparkles";
        items[165] = "2-Asset Rear Right Both Arms Up Bege Bsod";
        items[166] = "2-Asset Rear Right Both Arms Up Big Walk Blue Prime";
        items[167] = "2-Asset Rear Right Both Arms Up Big Walk Grey Light";
        items[168] = "2-Asset Rear Right Both Arms Up Big Walk Rainbow";
        items[169] = "2-Asset Rear Right Both Arms Up Checker Disco";
        items[170] = "2-Asset Rear Right Both Arms Up Checker Rgb";
        items[171] = "2-Asset Rear Right Both Arms Up Checker Spaced Black";
        items[172] = "2-Asset Rear Right Both Arms Up Checker Spaced White";
        items[173] = "2-Asset Rear Right Both Arms Up Checker Vibrant";
        items[174] = "2-Asset Rear Right Both Arms Up Checkers Big Green";
        items[175] = "2-Asset Rear Right Both Arms Up Checkers Big Red Cold";
        items[176] = "2-Asset Rear Right Both Arms Up Checkers Black";
        items[177] = "2-Asset Rear Right Both Arms Up Checkers Blue";
        items[178] = "2-Asset Rear Right Both Arms Up Checkers Magenta";
        items[179] = "2-Asset Rear Right Both Arms Up Collar Sunset";
        items[180] = "2-Asset Rear Right Both Arms Up Decay Gray Dark";
        items[181] = "2-Asset Rear Right Both Arms Up Decay Gray Pride";
        items[182] = "2-Asset Rear Right Both Arms Up Gradient Dawn";
        items[183] = "2-Asset Rear Right Both Arms Up Gradient Dusk";
        items[184] = "2-Asset Rear Right Both Arms Up Gradient Glacier";
        items[185] = "2-Asset Rear Right Both Arms Up Gradient Ice";
        items[186] = "2-Asset Rear Right Both Arms Up Gradient Pride";
        items[187] = "2-Asset Rear Right Both Arms Up Gradient Redpink";
        items[188] = "2-Asset Rear Right Both Arms Up Gradient Sunset";
        items[189] = "2-Asset Rear Right Both Arms Up Gray Scale 1";
        items[190] = "2-Asset Rear Right Both Arms Up Gray Scale 9";
        items[191] = "2-Asset Rear Right Both Arms Up Grid Simple Bege";
        items[192] = "2-Asset Rear Right Both Arms Up Ice Cold";
        items[193] = "2-Asset Rear Right Both Arms Up Lines 45 Greens";
        items[194] = "2-Asset Rear Right Both Arms Up Lines 45 Rose";
        items[195] = "2-Asset Rear Right Both Arms Up Old Shirt";
        items[196] = "2-Asset Rear Right Both Arms Up Rainbow Steps";
        items[197] = "2-Asset Rear Right Both Arms Up Robot";
        items[198] = "2-Asset Rear Right Both Arms Up Safety Vest";
        items[199] = "2-Asset Rear Right Both Arms Up Scarf Clown";
        items[200] = "2-Asset Rear Right Both Arms Up Shirt Black";
        items[201] = "2-Asset Rear Right Both Arms Up Stripes And Checks";
        items[202] = "2-Asset Rear Right Both Arms Up Stripes Big Red";
        items[203] = "2-Asset Rear Right Both Arms Up Stripes Blit";
        items[204] = "2-Asset Rear Right Both Arms Up Stripes Blue Med";
        items[205] = "2-Asset Rear Right Both Arms Up Stripes Brown";
        items[206] = "2-Asset Rear Right Both Arms Up Stripes Olive";
        items[207] = "2-Asset Rear Right Both Arms Up Stripes Red Cold";
        items[208] = "2-Asset Rear Right Both Arms Up Taxi Checkers";
        items[209] = "2-Asset Rear Right Both Arms Up Tee Yo";
        items[210] = "2-Asset Rear Right Both Arms Up Txt Ico";
        items[211] = "2-Asset Rear Right Both Arms Up Wall";
        items[212] = "2-Asset Rear Right Both Arms Up Woolweave Bicolor";
        items[213] = "2-Asset Rear Right Both Arms Up Woolweave Dirt";
        items[214] = "2-Asset Rear Right Carrot";
        items[215] = "2-Asset Rear Right Chain Logo";
        items[216] = "2-Asset Rear Right Chicken";
        items[217] = "2-Asset Rear Right Cloud";
        items[218] = "2-Asset Rear Right Clover";
        items[219] = "2-Asset Rear Right Cow";
        items[220] = "2-Asset Rear Right Dinosaur";
        items[221] = "2-Asset Rear Right Dollar Bling";
        items[222] = "2-Asset Rear Right Dragon";
        items[223] = "2-Asset Rear Right Ducky";
        items[224] = "2-Asset Rear Right Eth";
        items[225] = "2-Asset Rear Right Eye";
        items[226] = "2-Asset Rear Right Flash";
        items[227] = "2-Asset Rear Right Fries";
        items[228] = "2-Asset Rear Right Glasses";
        items[229] = "2-Asset Rear Right Glasses Logo";
        items[230] = "2-Asset Rear Right Glasses Logo Sun";
        items[231] = "2-Asset Rear Right Heart";
        items[232] = "2-Asset Rear Right Hoodiestrings Uneven";
        items[233] = "2-Asset Rear Right Id";
        items[234] = "2-Asset Rear Right Infinity";
        items[235] = "2-Asset Rear Right Insignia";
        items[236] = "2-Asset Rear Right Leaf";
        items[237] = "2-Asset Rear Right Light Bulb";
        items[238] = "2-Asset Rear Right Lp";
        items[239] = "2-Asset Rear Right Mars Face";
        items[240] = "2-Asset Rear Right Matrix White";
        items[241] = "2-Asset Rear Right Moon Block";
        items[242] = "2-Asset Rear Right None";
        items[243] = "2-Asset Rear Right Pizza Bling";
        items[244] = "2-Asset Rear Right Pocket Pencil";
        items[245] = "2-Asset Rear Right Rain";
        items[246] = "2-Asset Rear Right Rgb";
        items[247] = "2-Asset Rear Right Secret X";
        items[248] = "2-Asset Rear Right Shrimp";
        items[249] = "2-Asset Rear Right Slime Splat";
        items[250] = "2-Asset Rear Right Small Bling";
        items[251] = "2-Asset Rear Right Snow Flake";
        items[252] = "2-Asset Rear Right Stains Blood";
        items[253] = "2-Asset Rear Right Stains Zombie";
        items[254] = "2-Asset Rear Right Sunset";
        items[255] = "2-Asset Rear Right Think";
        items[256] = "2-Asset Rear Right Tie Black On White";
        items[257] = "2-Asset Rear Right Tie Dye";
        items[258] = "2-Asset Rear Right Tie Purple";
        items[259] = "2-Asset Rear Right Tie Red";
        items[260] = "2-Asset Rear Right Txt A2+b2";
        items[261] = "2-Asset Rear Right Txt Cc";
        items[262] = "2-Asset Rear Right Txt Cc 2";
        items[263] = "2-Asset Rear Right Txt Copy";
        items[264] = "2-Asset Rear Right Txt Dao Black";
        items[265] = "2-Asset Rear Right Txt Doom";
        items[266] = "2-Asset Rear Right Txt Dope";
        items[267] = "2-Asset Rear Right Txt Foo Black";
        items[268] = "2-Asset Rear Right Txt Io";
        items[269] = "2-Asset Rear Right Txt Lmao";
        items[270] = "2-Asset Rear Right Txt Lol";
        items[271] = "2-Asset Rear Right Txt Mint";
        items[272] = "2-Asset Rear Right Txt Nil Grey Dark";
        items[273] = "2-Asset Rear Right Txt Noun";
        items[274] = "2-Asset Rear Right Txt Noun F0f";
        items[275] = "2-Asset Rear Right Txt Noun Green";
        items[276] = "2-Asset Rear Right Txt Noun Multicolor";
        items[277] = "2-Asset Rear Right Txt Pi";
        items[278] = "2-Asset Rear Right Txt Pop";
        items[279] = "2-Asset Rear Right Txt Rofl";
        items[280] = "2-Asset Rear Right Txt We";
        items[281] = "2-Asset Rear Right Txt Yay";
        items[282] = "2-Asset Rear Right Txt Yolo";
        items[283] = "2-Asset Rear Right Wave";
        items[284] = "2-Asset Rear Right Wet Money";
        items[285] = "2-Asset Rear Right Ying Yang";
        items[286] = "3-Asset Rear Right 1n";
        items[287] = "3-Asset Rear Right Aardvark";
        items[288] = "3-Asset Rear Right Axe";
        items[289] = "3-Asset Rear Right Belly Chamaleon";
        items[290] = "3-Asset Rear Right Bird Flying";
        items[291] = "3-Asset Rear Right Bird Side";
        items[292] = "3-Asset Rear Right Bling Anchor";
        items[293] = "3-Asset Rear Right Bling Anvil";
        items[294] = "3-Asset Rear Right Bling Arrow";
        items[295] = "3-Asset Rear Right Bling Cheese";
        items[296] = "3-Asset Rear Right Bling Gold Ingot";
        items[297] = "3-Asset Rear Right Bling Love";
        items[298] = "3-Asset Rear Right Bling Mask";
        items[299] = "3-Asset Rear Right Bling Rings";
        items[300] = "3-Asset Rear Right Bling Scissors";
        items[301] = "3-Asset Rear Right Bling Sparkles";
        items[302] = "3-Asset Rear Right Carrot";
        items[303] = "3-Asset Rear Right Chain Logo";
        items[304] = "3-Asset Rear Right Chicken";
        items[305] = "3-Asset Rear Right Cloud";
        items[306] = "3-Asset Rear Right Clover";
        items[307] = "3-Asset Rear Right Cow";
        items[308] = "3-Asset Rear Right Dinosaur";
        items[309] = "3-Asset Rear Right Dollar Bling";
        items[310] = "3-Asset Rear Right Dragon";
        items[311] = "3-Asset Rear Right Ducky";
        items[312] = "3-Asset Rear Right Eth";
        items[313] = "3-Asset Rear Right Eye";
        items[314] = "3-Asset Rear Right Flash";
        items[315] = "3-Asset Rear Right Fries";
        items[316] = "3-Asset Rear Right Glasses";
        items[317] = "3-Asset Rear Right Glasses Logo";
        items[318] = "3-Asset Rear Right Glasses Logo Sun";
        items[319] = "3-Asset Rear Right Heart";
        items[320] = "3-Asset Rear Right Hoodiestrings Uneven";
        items[321] = "3-Asset Rear Right Id";
        items[322] = "3-Asset Rear Right Infinity";
        items[323] = "3-Asset Rear Right Insignia";
        items[324] = "3-Asset Rear Right Leaf";
        items[325] = "3-Asset Rear Right Left Arm Up Bege Bsod";
        items[326] = "3-Asset Rear Right Left Arm Up Bigwalk Blue Prime";
        items[327] = "3-Asset Rear Right Left Arm Up Bigwalk Grey Light";
        items[328] = "3-Asset Rear Right Left Arm Up Bigwalk Rainbow";
        items[329] = "3-Asset Rear Right Left Arm Up Checker Disco";
        items[330] = "3-Asset Rear Right Left Arm Up Checker Rgb";
        items[331] = "3-Asset Rear Right Left Arm Up Checker Spaced Black";
        items[332] = "3-Asset Rear Right Left Arm Up Checker Spaced White";
        items[333] = "3-Asset Rear Right Left Arm Up Checker Vibrant";
        items[334] = "3-Asset Rear Right Left Arm Up Checkers Big Green";
        items[335] = "3-Asset Rear Right Left Arm Up Checkers Big Red Cold";
        items[336] = "3-Asset Rear Right Left Arm Up Checkers Black";
        items[337] = "3-Asset Rear Right Left Arm Up Checkers Blue";
        items[338] = "3-Asset Rear Right Left Arm Up Checkers Magenta";
        items[339] = "3-Asset Rear Right Left Arm Up Collar Sunset";
        items[340] = "3-Asset Rear Right Left Arm Up Decay Gray Dark";
        items[341] = "3-Asset Rear Right Left Arm Up Decay Pride";
        items[342] = "3-Asset Rear Right Left Arm Up Gradient Dawn";
        items[343] = "3-Asset Rear Right Left Arm Up Gradient Dusk";
        items[344] = "3-Asset Rear Right Left Arm Up Gradient Glacier";
        items[345] = "3-Asset Rear Right Left Arm Up Gradient Ice";
        items[346] = "3-Asset Rear Right Left Arm Up Gradient Pride";
        items[347] = "3-Asset Rear Right Left Arm Up Gradient Redpink";
        items[348] = "3-Asset Rear Right Left Arm Up Gradient Sunset";
        items[349] = "3-Asset Rear Right Left Arm Up Gray Scale 1";
        items[350] = "3-Asset Rear Right Left Arm Up Gray Scale 9";
        items[351] = "3-Asset Rear Right Left Arm Up Grid Simple Bege";
        items[352] = "3-Asset Rear Right Left Arm Up Ice Cold";
        items[353] = "3-Asset Rear Right Left Arm Up Lines 45 Greens";
        items[354] = "3-Asset Rear Right Left Arm Up Lines 45 Rose";
        items[355] = "3-Asset Rear Right Left Arm Up Old Shirt";
        items[356] = "3-Asset Rear Right Left Arm Up Rainbow Steps";
        items[357] = "3-Asset Rear Right Left Arm Up Robot";
        items[358] = "3-Asset Rear Right Left Arm Up Safety Vest";
        items[359] = "3-Asset Rear Right Left Arm Up Scarf Clown";
        items[360] = "3-Asset Rear Right Left Arm Up Shirt Black";
        items[361] = "3-Asset Rear Right Left Arm Up Stripes And Checks";
        items[362] = "3-Asset Rear Right Left Arm Up Stripes Big Red";
        items[363] = "3-Asset Rear Right Left Arm Up Stripes Blit";
        items[364] = "3-Asset Rear Right Left Arm Up Stripes Blue Med";
        items[365] = "3-Asset Rear Right Left Arm Up Stripes Brown";
        items[366] = "3-Asset Rear Right Left Arm Up Stripes Olive";
        items[367] = "3-Asset Rear Right Left Arm Up Stripes Red Cold";
        items[368] = "3-Asset Rear Right Left Arm Up Taxi Checkers";
        items[369] = "3-Asset Rear Right Left Arm Up Tee Yo";
        items[370] = "3-Asset Rear Right Left Arm Up Txt Ico";
        items[371] = "3-Asset Rear Right Left Arm Up Wall";
        items[372] = "3-Asset Rear Right Left Arm Up Woolweave Bicolor";
        items[373] = "3-Asset Rear Right Left Arm Up Woolweave Dirt";
        items[374] = "3-Asset Rear Right Light Bulb";
        items[375] = "3-Asset Rear Right Lp";
        items[376] = "3-Asset Rear Right Mars Face";
        items[377] = "3-Asset Rear Right Matrix White";
        items[378] = "3-Asset Rear Right Moon Block";
        items[379] = "3-Asset Rear Right None";
        items[380] = "3-Asset Rear Right Pizza Bling";
        items[381] = "3-Asset Rear Right Pocket Pencil";
        items[382] = "3-Asset Rear Right Rain";
        items[383] = "3-Asset Rear Right Rgb";
        items[384] = "3-Asset Rear Right Secret X";
        items[385] = "3-Asset Rear Right Shrimp";
        items[386] = "3-Asset Rear Right Slime Splat";
        items[387] = "3-Asset Rear Right Small Bling";
        items[388] = "3-Asset Rear Right Snow Flake";
        items[389] = "3-Asset Rear Right Stains Blood";
        items[390] = "3-Asset Rear Right Stains Zombie";
        items[391] = "3-Asset Rear Right Sunset";
        items[392] = "3-Asset Rear Right Think";
        items[393] = "3-Asset Rear Right Tie Black On White";
        items[394] = "3-Asset Rear Right Tie Dye";
        items[395] = "3-Asset Rear Right Tie Purple";
        items[396] = "3-Asset Rear Right Tie Red";
        items[397] = "3-Asset Rear Right Txt A2+b2";
        items[398] = "3-Asset Rear Right Txt Cc";
        items[399] = "3-Asset Rear Right Txt Cc 2";
        items[400] = "3-Asset Rear Right Txt Copy";
        items[401] = "3-Asset Rear Right Txt Dao Black";
        items[402] = "3-Asset Rear Right Txt Doom";
        items[403] = "3-Asset Rear Right Txt Dope";
        items[404] = "3-Asset Rear Right Txt Foo Black";
        items[405] = "3-Asset Rear Right Txt Io";
        items[406] = "3-Asset Rear Right Txt Lmao";
        items[407] = "3-Asset Rear Right Txt Lol";
        items[408] = "3-Asset Rear Right Txt Mint";
        items[409] = "3-Asset Rear Right Txt Nil Grey Dark";
        items[410] = "3-Asset Rear Right Txt Noun";
        items[411] = "3-Asset Rear Right Txt Noun F0f";
        items[412] = "3-Asset Rear Right Txt Noun Green";
        items[413] = "3-Asset Rear Right Txt Noun Multicolor";
        items[414] = "3-Asset Rear Right Txt Pi";
        items[415] = "3-Asset Rear Right Txt Pop";
        items[416] = "3-Asset Rear Right Txt Rofl";
        items[417] = "3-Asset Rear Right Txt We";
        items[418] = "3-Asset Rear Right Txt Yay";
        items[419] = "3-Asset Rear Right Txt Yolo";
        items[420] = "3-Asset Rear Right Wave";
        items[421] = "3-Asset Rear Right Wet Money";
        items[422] = "3-Asset Rear Right Ying Yang";
        items[423] = "4-Asset Rear Right 1n";
        items[424] = "4-Asset Rear Right Aardvark";
        items[425] = "4-Asset Rear Right Axe";
        items[426] = "4-Asset Rear Right Belly Chamaleon";
        items[427] = "4-Asset Rear Right Bird Flying";
        items[428] = "4-Asset Rear Right Bird Side";
        items[429] = "4-Asset Rear Right Bling Anchor";
        items[430] = "4-Asset Rear Right Bling Anvil";
        items[431] = "4-Asset Rear Right Bling Arrow";
        items[432] = "4-Asset Rear Right Bling Cheese";
        items[433] = "4-Asset Rear Right Bling Gold Ingot";
        items[434] = "4-Asset Rear Right Bling Love";
        items[435] = "4-Asset Rear Right Bling Mask";
        items[436] = "4-Asset Rear Right Bling Rings";
        items[437] = "4-Asset Rear Right Bling Scissors";
        items[438] = "4-Asset Rear Right Bling Sparkles";
        items[439] = "4-Asset Rear Right Carrot";
        items[440] = "4-Asset Rear Right Chain Logo";
        items[441] = "4-Asset Rear Right Chicken";
        items[442] = "4-Asset Rear Right Cloud";
        items[443] = "4-Asset Rear Right Clover";
        items[444] = "4-Asset Rear Right Cow";
        items[445] = "4-Asset Rear Right Dinosaur";
        items[446] = "4-Asset Rear Right Dollar Bling";
        items[447] = "4-Asset Rear Right Dragon";
        items[448] = "4-Asset Rear Right Ducky";
        items[449] = "4-Asset Rear Right Eth";
        items[450] = "4-Asset Rear Right Eye";
        items[451] = "4-Asset Rear Right Flash";
        items[452] = "4-Asset Rear Right Fries";
        items[453] = "4-Asset Rear Right Glasses";
        items[454] = "4-Asset Rear Right Glasses Logo";
        items[455] = "4-Asset Rear Right Glasses Logo Sun";
        items[456] = "4-Asset Rear Right Heart";
        items[457] = "4-Asset Rear Right Hoodiestrings Uneven";
        items[458] = "4-Asset Rear Right Id";
        items[459] = "4-Asset Rear Right Infinity";
        items[460] = "4-Asset Rear Right Insignia";
        items[461] = "4-Asset Rear Right Leaf";
        items[462] = "4-Asset Rear Right Light Bulb";
        items[463] = "4-Asset Rear Right Lp";
        items[464] = "4-Asset Rear Right Mars Face";
        items[465] = "4-Asset Rear Right Matrix White";
        items[466] = "4-Asset Rear Right Moon Block";
        items[467] = "4-Asset Rear Right None";
        items[468] = "4-Asset Rear Right Pizza Bling";
        items[469] = "4-Asset Rear Right Pocket Pencil";
        items[470] = "4-Asset Rear Right Rain";
        items[471] = "4-Asset Rear Right Rgb";
        items[472] = "4-Asset Rear Right Right Arm Up Bege Bsod";
        items[473] = "4-Asset Rear Right Right Arm Up Big Walk Blue Prime";
        items[474] = "4-Asset Rear Right Right Arm Up Big Walk Grey Light";
        items[475] = "4-Asset Rear Right Right Arm Up Big Walk Rainbow";
        items[476] = "4-Asset Rear Right Right Arm Up Checker Disco";
        items[477] = "4-Asset Rear Right Right Arm Up Checker Rgb";
        items[478] = "4-Asset Rear Right Right Arm Up Checker Spaced Black";
        items[479] = "4-Asset Rear Right Right Arm Up Checker Spaced White";
        items[480] = "4-Asset Rear Right Right Arm Up Checker Vibrant";
        items[481] = "4-Asset Rear Right Right Arm Up Checkers Big Green";
        items[482] = "4-Asset Rear Right Right Arm Up Checkers Big Red Cold";
        items[483] = "4-Asset Rear Right Right Arm Up Checkers Black";
        items[484] = "4-Asset Rear Right Right Arm Up Checkers Blue";
        items[485] = "4-Asset Rear Right Right Arm Up Checkers Magenta";
        items[486] = "4-Asset Rear Right Right Arm Up Collar Sunset";
        items[487] = "4-Asset Rear Right Right Arm Up Decay Gray Dark";
        items[488] = "4-Asset Rear Right Right Arm Up Decay Pride";
        items[489] = "4-Asset Rear Right Right Arm Up Gradient Dawn";
        items[490] = "4-Asset Rear Right Right Arm Up Gradient Dusk";
        items[491] = "4-Asset Rear Right Right Arm Up Gradient Glacier";
        items[492] = "4-Asset Rear Right Right Arm Up Gradient Ice";
        items[493] = "4-Asset Rear Right Right Arm Up Gradient Pride";
        items[494] = "4-Asset Rear Right Right Arm Up Gradient Redpink";
        items[495] = "4-Asset Rear Right Right Arm Up Gradient Sunset";
        items[496] = "4-Asset Rear Right Right Arm Up Gray Scale 1";
        items[497] = "4-Asset Rear Right Right Arm Up Gray Scale 9";
        items[498] = "4-Asset Rear Right Right Arm Up Grid Simple Bege";
        items[499] = "4-Asset Rear Right Right Arm Up Ice Cold";
        items[500] = "4-Asset Rear Right Right Arm Up Lines 45 Greens";
        items[501] = "4-Asset Rear Right Right Arm Up Lines 45 Rose";
        items[502] = "4-Asset Rear Right Right Arm Up Old Shirt";
        items[503] = "4-Asset Rear Right Right Arm Up Rainbow Steps";
        items[504] = "4-Asset Rear Right Right Arm Up Robot";
        items[505] = "4-Asset Rear Right Right Arm Up Safety Vest";
        items[506] = "4-Asset Rear Right Right Arm Up Scarf Clown";
        items[507] = "4-Asset Rear Right Right Arm Up Shirt Black";
        items[508] = "4-Asset Rear Right Right Arm Up Stripes And Checks";
        items[509] = "4-Asset Rear Right Right Arm Up Stripes Big Red";
        items[510] = "4-Asset Rear Right Right Arm Up Stripes Blit";
        items[511] = "4-Asset Rear Right Right Arm Up Stripes Blue Med";
        items[512] = "4-Asset Rear Right Right Arm Up Stripes Brown";
        items[513] = "4-Asset Rear Right Right Arm Up Stripes Olive";
        items[514] = "4-Asset Rear Right Right Arm Up Stripes Red Cold";
        items[515] = "4-Asset Rear Right Right Arm Up Taxi Checkers";
        items[516] = "4-Asset Rear Right Right Arm Up Tee Yo";
        items[517] = "4-Asset Rear Right Right Arm Up Txt Ico";
        items[518] = "4-Asset Rear Right Right Arm Up Wall";
        items[519] = "4-Asset Rear Right Right Arm Up Woolweave Bicolor";
        items[520] = "4-Asset Rear Right Right Arm Up Woolweave Dirt";
        items[521] = "4-Asset Rear Right Secret X";
        items[522] = "4-Asset Rear Right Shrimp";
        items[523] = "4-Asset Rear Right Slime Splat";
        items[524] = "4-Asset Rear Right Small Bling";
        items[525] = "4-Asset Rear Right Snow Flake";
        items[526] = "4-Asset Rear Right Stains Blood";
        items[527] = "4-Asset Rear Right Stains Zombie";
        items[528] = "4-Asset Rear Right Sunset";
        items[529] = "4-Asset Rear Right Think";
        items[530] = "4-Asset Rear Right Tie Black On White";
        items[531] = "4-Asset Rear Right Tie Dye";
        items[532] = "4-Asset Rear Right Tie Purple";
        items[533] = "4-Asset Rear Right Tie Red";
        items[534] = "4-Asset Rear Right Txt A2+b2";
        items[535] = "4-Asset Rear Right Txt Cc";
        items[536] = "4-Asset Rear Right Txt Cc 2";
        items[537] = "4-Asset Rear Right Txt Copy";
        items[538] = "4-Asset Rear Right Txt Dao Black";
        items[539] = "4-Asset Rear Right Txt Doom";
        items[540] = "4-Asset Rear Right Txt Dope";
        items[541] = "4-Asset Rear Right Txt Foo Black";
        items[542] = "4-Asset Rear Right Txt Io";
        items[543] = "4-Asset Rear Right Txt Lmao";
        items[544] = "4-Asset Rear Right Txt Lol";
        items[545] = "4-Asset Rear Right Txt Mint";
        items[546] = "4-Asset Rear Right Txt Nil Grey Dark";
        items[547] = "4-Asset Rear Right Txt Noun";
        items[548] = "4-Asset Rear Right Txt Noun F0f";
        items[549] = "4-Asset Rear Right Txt Noun Green";
        items[550] = "4-Asset Rear Right Txt Noun Multicolor";
        items[551] = "4-Asset Rear Right Txt Pi";
        items[552] = "4-Asset Rear Right Txt Pop";
        items[553] = "4-Asset Rear Right Txt Rofl";
        items[554] = "4-Asset Rear Right Txt We";
        items[555] = "4-Asset Rear Right Txt Yay";
        items[556] = "4-Asset Rear Right Txt Yolo";
        items[557] = "4-Asset Rear Right Wave";
        items[558] = "4-Asset Rear Right Wet Money";
        items[559] = "4-Asset Rear Right Ying Yang";

        bytes memory data = abi.encode(items);

        VmSafe vm = VmSafe(
            address(uint160(uint256(keccak256("hevm cheat code"))))
        );

        string[] memory inputs = new string[](3);
        inputs[0] = "node";
        inputs[1] = "script/nouns-coasters/deflate.js";
        inputs[2] = vm.toString(data);

        bytes memory compressedData = vm.ffi(inputs);

        // address result = SSTORE2.write(compressedData);

        renderer.addLayer({
            target: target,
            ipfs: INounsCoasterMetadataRendererTypes.IPFSGroup({
                baseUri: "ipfs://bafybeidmllp5rev4k2na7t34bmwxjjp2dt4w6papy4aicynmmshgojny2e/",
                extension: ".png"
            }),
            decompressedSize: data.length,
            compressedData: compressedData,
            count: items.length,
            property: "11 Accessories rear right",
            variantProperty: variantPropertyParameters
        });
    }

    function addLayer12(NounsCoasterMetadataRenderer renderer, address target)
        internal
    {
        // 12 Head rear right
        INounsCoasterMetadataRendererTypes.VariantPropertyParameters
            memory variantPropertyParameters;
        variantPropertyParameters
            .offsets = new INounsCoasterMetadataRendererTypes.VariantOffset[](
            0
        );
        variantPropertyParameters.id = 0;
        variantPropertyParameters.count = 0;

        string[] memory items = new string[](103);
        items[0] = "Ape Happy";
        items[1] = "Ape Sick";
        items[2] = "Bag Happy";
        items[3] = "Bag Scared";
        items[4] = "Bear Sick";
        items[5] = "Beet Scared";
        items[6] = "Blackhole Scared";
        items[7] = "Bomb Happy";
        items[8] = "Boot Bored";
        items[9] = "Boot Sick";
        items[10] = "Brain Scared";
        items[11] = "Calendar Bored";
        items[12] = "Camcorder Scared";
        items[13] = "Car Happy";
        items[14] = "Car Sick";
        items[15] = "Cash Register Bored";
        items[16] = "Cassettetape Scared";
        items[17] = "Chain Scared";
        items[18] = "Chart Bars Sick";
        items[19] = "Chefhat Scared";
        items[20] = "Chicken Bored";
        items[21] = "Cloud Happy";
        items[22] = "Cone Scared";
        items[23] = "Cottonball Bored";
        items[24] = "Cow Scared";
        items[25] = "Crown Happy";
        items[26] = "Crown Scared";
        items[27] = "Crown Sick";
        items[28] = "Crt Bsod Scared";
        items[29] = "Diamond Red Sick";
        items[30] = "Dog Happy";
        items[31] = "Dog Sick";
        items[32] = "Ducky Scared";
        items[33] = "Ducky Sick";
        items[34] = "Faberge Scared";
        items[35] = "Faberge Sick";
        items[36] = "Fence Happy";
        items[37] = "Fence Scared";
        items[38] = "Fox Scared";
        items[39] = "Frog Bored";
        items[40] = "Gavel Happy";
        items[41] = "Glasses Big Sick";
        items[42] = "Goldcoin Happy";
        items[43] = "Goldfish Bored";
        items[44] = "Hair Happy";
        items[45] = "Hair Scared";
        items[46] = "Hair Sick";
        items[47] = "Heart Scared";
        items[48] = "Heart Sick";
        items[49] = "Helicopter Sick";
        items[50] = "Highheel Bored";
        items[51] = "Highheel Happy";
        items[52] = "Hockeypuck Scared";
        items[53] = "Island Happy";
        items[54] = "Jupiter Sick";
        items[55] = "Ketchup Bored";
        items[56] = "Macaroni Bored";
        items[57] = "Maze Happy";
        items[58] = "Microwave Sick";
        items[59] = "Mosquito Bored";
        items[60] = "Mountain Snowcap Happy";
        items[61] = "Mountain Snowcap Scared";
        items[62] = "Noodles Scared";
        items[63] = "Orangutan Scared";
        items[64] = "Otter Scared";
        items[65] = "Outlet Bored";
        items[66] = "Outlet Happy";
        items[67] = "Oyster Happy";
        items[68] = "Panda Sick";
        items[69] = "Paperclip Bored";
        items[70] = "Pickle Bored";
        items[71] = "Pie Sick";
        items[72] = "Pineapple Sick";
        items[73] = "Pirateship Scared";
        items[74] = "Plane Sick";
        items[75] = "Porkbao Scared";
        items[76] = "Pumpkin Scared";
        items[77] = "Rabbit Scared";
        items[78] = "Raven Sick";
        items[79] = "Rgb Happy";
        items[80] = "Rgb Scared";
        items[81] = "Ruler Triangular Scared";
        items[82] = "Safe Sick";
        items[83] = "Sandwich Happy";
        items[84] = "Shower Sick";
        items[85] = "Skeleton Hat Bored";
        items[86] = "Snowglobe Happy";
        items[87] = "Snowglobe Sick";
        items[88] = "Snowman Happy";
        items[89] = "Snowmobile Bored";
        items[90] = "Spaghetti Bored";
        items[91] = "Stapler Scared";
        items[92] = "Steak Scared";
        items[93] = "Sunset Bored";
        items[94] = "Taco Sick";
        items[95] = "Thumbsup Sick";
        items[96] = "Turing Happy";
        items[97] = "Turing Sick";
        items[98] = "Vending Machine Bored";
        items[99] = "Wallet Bored";
        items[100] = "Wave Scared";
        items[101] = "Weed Scared";
        items[102] = "Weed Sick";

        bytes memory data = abi.encode(items);

        VmSafe vm = VmSafe(
            address(uint160(uint256(keccak256("hevm cheat code"))))
        );

        string[] memory inputs = new string[](3);
        inputs[0] = "node";
        inputs[1] = "script/nouns-coasters/deflate.js";
        inputs[2] = vm.toString(data);

        bytes memory compressedData = vm.ffi(inputs);

        // address result = SSTORE2.write(compressedData);

        renderer.addLayer({
            target: target,
            ipfs: INounsCoasterMetadataRendererTypes.IPFSGroup({
                baseUri: "ipfs://bafybeidmllp5rev4k2na7t34bmwxjjp2dt4w6papy4aicynmmshgojny2e/",
                extension: ".png"
            }),
            decompressedSize: data.length,
            compressedData: compressedData,
            count: items.length,
            property: "12 Head rear right",
            variantProperty: variantPropertyParameters
        });
    }

    function addLayer13(NounsCoasterMetadataRenderer renderer, address target)
        internal
    {
        // 13 Expression rear right
        INounsCoasterMetadataRendererTypes.VariantPropertyParameters
            memory variantPropertyParameters;
        variantPropertyParameters
            .offsets = new INounsCoasterMetadataRendererTypes.VariantOffset[](
            0
        );
        variantPropertyParameters.id = 0;
        variantPropertyParameters.count = 0;

        string[] memory items = new string[](4);
        items[0] = "Bored";
        items[1] = "Happy";
        items[2] = "Scared";
        items[3] = "Sick";

        bytes memory data = abi.encode(items);

        VmSafe vm = VmSafe(
            address(uint160(uint256(keccak256("hevm cheat code"))))
        );

        string[] memory inputs = new string[](3);
        inputs[0] = "node";
        inputs[1] = "script/nouns-coasters/deflate.js";
        inputs[2] = vm.toString(data);

        bytes memory compressedData = vm.ffi(inputs);

        // address result = SSTORE2.write(compressedData);

        renderer.addLayer({
            target: target,
            ipfs: INounsCoasterMetadataRendererTypes.IPFSGroup({
                baseUri: "ipfs://bafybeidmllp5rev4k2na7t34bmwxjjp2dt4w6papy4aicynmmshgojny2e/",
                extension: ".png"
            }),
            decompressedSize: data.length,
            compressedData: compressedData,
            count: items.length,
            property: "13 Expression rear right",
            variantProperty: variantPropertyParameters
        });
    }

    function addLayer14(NounsCoasterMetadataRenderer renderer, address target)
        internal
    {
        // 14 Glasses rear right
        INounsCoasterMetadataRendererTypes.VariantPropertyParameters
            memory variantPropertyParameters;
        variantPropertyParameters
            .offsets = new INounsCoasterMetadataRendererTypes.VariantOffset[](
            0
        );
        variantPropertyParameters.id = 0;
        variantPropertyParameters.count = 0;

        string[] memory items = new string[](21);
        items[0] = "Black";
        items[1] = "Black Red Eyes";
        items[2] = "Black Rgb";
        items[3] = "Blue";
        items[4] = "Blue Med Saturated";
        items[5] = "Frog Green";
        items[6] = "Full Black";
        items[7] = "Green Blue Multi";
        items[8] = "Grey Light";
        items[9] = "Guava";
        items[10] = "Hip Rose";
        items[11] = "Honey";
        items[12] = "Magenta";
        items[13] = "Orange";
        items[14] = "Pink Purple Multi";
        items[15] = "Red";
        items[16] = "Smoke";
        items[17] = "Teal";
        items[18] = "Watermelon";
        items[19] = "Yellow Orange Multi";
        items[20] = "Yellow Saturated";

        bytes memory data = abi.encode(items);

        VmSafe vm = VmSafe(
            address(uint160(uint256(keccak256("hevm cheat code"))))
        );

        string[] memory inputs = new string[](3);
        inputs[0] = "node";
        inputs[1] = "script/nouns-coasters/deflate.js";
        inputs[2] = vm.toString(data);

        bytes memory compressedData = vm.ffi(inputs);

        // address result = SSTORE2.write(compressedData);

        renderer.addLayer({
            target: target,
            ipfs: INounsCoasterMetadataRendererTypes.IPFSGroup({
                baseUri: "ipfs://bafybeidmllp5rev4k2na7t34bmwxjjp2dt4w6papy4aicynmmshgojny2e/",
                extension: ".png"
            }),
            decompressedSize: data.length,
            compressedData: compressedData,
            count: items.length,
            property: "14 Glasses rear right",
            variantProperty: variantPropertyParameters
        });
    }

    function addLayer15(NounsCoasterMetadataRenderer renderer, address target)
        internal
    {
        // 15 Body front left
        INounsCoasterMetadataRendererTypes.VariantPropertyParameters
            memory variantPropertyParameters;
        variantPropertyParameters
            .offsets = new INounsCoasterMetadataRendererTypes.VariantOffset[](
            4
        );
        variantPropertyParameters.id = 2;
        variantPropertyParameters.count = 4;
        variantPropertyParameters.offsets[
            0
        ] = INounsCoasterMetadataRendererTypes.VariantOffset({
            startAt: 0,
            count: 30
        });
        variantPropertyParameters.offsets[
            1
        ] = INounsCoasterMetadataRendererTypes.VariantOffset({
            startAt: 30,
            count: 30
        });
        variantPropertyParameters.offsets[
            2
        ] = INounsCoasterMetadataRendererTypes.VariantOffset({
            startAt: 60,
            count: 30
        });
        variantPropertyParameters.offsets[
            3
        ] = INounsCoasterMetadataRendererTypes.VariantOffset({
            startAt: 90,
            count: 30
        });

        string[] memory items = new string[](120);
        items[0] = "1-Both Arms Down Bege Bsod";
        items[1] = "1-Both Arms Down Bege Crt";
        items[2] = "1-Both Arms Down Blue Grey";
        items[3] = "1-Both Arms Down Blue Sky";
        items[4] = "1-Both Arms Down Cold";
        items[5] = "1-Both Arms Down Computer Blue";
        items[6] = "1-Both Arms Down Dark Brown";
        items[7] = "1-Both Arms Down Dark Pink";
        items[8] = "1-Both Arms Down Foggrey";
        items[9] = "1-Both Arms Down Gold";
        items[10] = "1-Both Arms Down Gray Scale 1";
        items[11] = "1-Both Arms Down Gray Scale 7";
        items[12] = "1-Both Arms Down Gray Scale 8";
        items[13] = "1-Both Arms Down Gray Scale 9";
        items[14] = "1-Both Arms Down Green";
        items[15] = "1-Both Arms Down Gunk";
        items[16] = "1-Both Arms Down Hotbrown";
        items[17] = "1-Both Arms Down Magenta";
        items[18] = "1-Both Arms Down Orange";
        items[19] = "1-Both Arms Down Orange Yellow";
        items[20] = "1-Both Arms Down Peachy A";
        items[21] = "1-Both Arms Down Peachy B";
        items[22] = "1-Both Arms Down Purple";
        items[23] = "1-Both Arms Down Red";
        items[24] = "1-Both Arms Down Red Pinkish";
        items[25] = "1-Both Arms Down Rust";
        items[26] = "1-Both Arms Down Slime Green";
        items[27] = "1-Both Arms Down Teal";
        items[28] = "1-Both Arms Down Teal Light";
        items[29] = "1-Both Arms Down Yellow";
        items[30] = "2-Both Arms Up Bege Bsod";
        items[31] = "2-Both Arms Up Bege Crt";
        items[32] = "2-Both Arms Up Blue Grey";
        items[33] = "2-Both Arms Up Blue Sky";
        items[34] = "2-Both Arms Up Cold";
        items[35] = "2-Both Arms Up Computer Blue";
        items[36] = "2-Both Arms Up Dark Brown";
        items[37] = "2-Both Arms Up Dark Pink";
        items[38] = "2-Both Arms Up Foggrey";
        items[39] = "2-Both Arms Up Gold";
        items[40] = "2-Both Arms Up Gray Scale 1";
        items[41] = "2-Both Arms Up Gray Scale 7";
        items[42] = "2-Both Arms Up Gray Scale 8";
        items[43] = "2-Both Arms Up Gray Scale 9";
        items[44] = "2-Both Arms Up Green";
        items[45] = "2-Both Arms Up Gunk";
        items[46] = "2-Both Arms Up Hotbrown";
        items[47] = "2-Both Arms Up Magenta";
        items[48] = "2-Both Arms Up Orange";
        items[49] = "2-Both Arms Up Orange Yellow";
        items[50] = "2-Both Arms Up Peachy A";
        items[51] = "2-Both Arms Up Peachy B";
        items[52] = "2-Both Arms Up Purple";
        items[53] = "2-Both Arms Up Red";
        items[54] = "2-Both Arms Up Redpinkish";
        items[55] = "2-Both Arms Up Rust";
        items[56] = "2-Both Arms Up Slime Green";
        items[57] = "2-Both Arms Up Teal";
        items[58] = "2-Both Arms Up Teal Light";
        items[59] = "2-Both Arms Up Yellow";
        items[60] = "3-Left Arm Up Bege Bsod";
        items[61] = "3-Left Arm Up Bege Crt";
        items[62] = "3-Left Arm Up Blue Grey";
        items[63] = "3-Left Arm Up Blue Sky";
        items[64] = "3-Left Arm Up Cold";
        items[65] = "3-Left Arm Up Computer Blue";
        items[66] = "3-Left Arm Up Dark Brown";
        items[67] = "3-Left Arm Up Dark Pink";
        items[68] = "3-Left Arm Up Foggrey";
        items[69] = "3-Left Arm Up Gold";
        items[70] = "3-Left Arm Up Gray Scale 1";
        items[71] = "3-Left Arm Up Gray Scale 7";
        items[72] = "3-Left Arm Up Gray Scale 8";
        items[73] = "3-Left Arm Up Gray Scale 9";
        items[74] = "3-Left Arm Up Green";
        items[75] = "3-Left Arm Up Gunk";
        items[76] = "3-Left Arm Up Hotbrown";
        items[77] = "3-Left Arm Up Magenta";
        items[78] = "3-Left Arm Up Orange";
        items[79] = "3-Left Arm Up Orange Yellow";
        items[80] = "3-Left Arm Up Peachy A";
        items[81] = "3-Left Arm Up Peachy B";
        items[82] = "3-Left Arm Up Purple";
        items[83] = "3-Left Arm Up Red";
        items[84] = "3-Left Arm Up Redpinkish";
        items[85] = "3-Left Arm Up Rust";
        items[86] = "3-Left Arm Up Slime Green";
        items[87] = "3-Left Arm Up Teal";
        items[88] = "3-Left Arm Up Teal Light";
        items[89] = "3-Left Arm Up Yellow";
        items[90] = "4-Right Arm Up Bege Bsod";
        items[91] = "4-Right Arm Up Bege Crt";
        items[92] = "4-Right Arm Up Blue Grey";
        items[93] = "4-Right Arm Up Blue Sky";
        items[94] = "4-Right Arm Up Cold";
        items[95] = "4-Right Arm Up Computer Blue";
        items[96] = "4-Right Arm Up Dark Brown";
        items[97] = "4-Right Arm Up Dark Pink";
        items[98] = "4-Right Arm Up Foggrey";
        items[99] = "4-Right Arm Up Gold";
        items[100] = "4-Right Arm Up Gray Scale 1";
        items[101] = "4-Right Arm Up Gray Scale 8";
        items[102] = "4-Right Arm Up Gray Scale 9";
        items[103] = "4-Right Arm Up Green";
        items[104] = "4-Right Arm Up Gunk";
        items[105] = "4-Right Arm Up Hotbrown";
        items[106] = "4-Right Arm Up Magenta";
        items[107] = "4-Right Arm Up Orange";
        items[108] = "4-Right Arm Up Orange Yellow";
        items[109] = "4-Right Arm Up Peachy A";
        items[110] = "4-Right Arm Up Peachy B";
        items[111] = "4-Right Arm Up Purple";
        items[112] = "4-Right Arm Up Red";
        items[113] = "4-Right Arm Up Red Pinkish";
        items[114] = "4-Right Arm Up Rust";
        items[115] = "4-Right Arm Up Scale 7";
        items[116] = "4-Right Arm Up Slime Green";
        items[117] = "4-Right Arm Up Teal";
        items[118] = "4-Right Arm Up Teal Light";
        items[119] = "4-Right Arm Up Yellow";

        bytes memory data = abi.encode(items);

        VmSafe vm = VmSafe(
            address(uint160(uint256(keccak256("hevm cheat code"))))
        );

        string[] memory inputs = new string[](3);
        inputs[0] = "node";
        inputs[1] = "script/nouns-coasters/deflate.js";
        inputs[2] = vm.toString(data);

        bytes memory compressedData = vm.ffi(inputs);

        // address result = SSTORE2.write(compressedData);

        renderer.addLayer({
            target: target,
            ipfs: INounsCoasterMetadataRendererTypes.IPFSGroup({
                baseUri: "ipfs://bafybeidmllp5rev4k2na7t34bmwxjjp2dt4w6papy4aicynmmshgojny2e/",
                extension: ".png"
            }),
            decompressedSize: data.length,
            compressedData: compressedData,
            count: items.length,
            property: "15 Body front left",
            variantProperty: variantPropertyParameters
        });
    }

    function addLayer16(NounsCoasterMetadataRenderer renderer, address target)
        internal
    {
        // 16 Accessories front left
        INounsCoasterMetadataRendererTypes.VariantPropertyParameters
            memory variantPropertyParameters;
        variantPropertyParameters
            .offsets = new INounsCoasterMetadataRendererTypes.VariantOffset[](
            4
        );
        variantPropertyParameters.id = 2;
        variantPropertyParameters.count = 4;
        variantPropertyParameters.offsets[
            0
        ] = INounsCoasterMetadataRendererTypes.VariantOffset({
            startAt: 0,
            count: 130
        });
        variantPropertyParameters.offsets[
            1
        ] = INounsCoasterMetadataRendererTypes.VariantOffset({
            startAt: 130,
            count: 137
        });
        variantPropertyParameters.offsets[
            2
        ] = INounsCoasterMetadataRendererTypes.VariantOffset({
            startAt: 267,
            count: 137
        });
        variantPropertyParameters.offsets[
            3
        ] = INounsCoasterMetadataRendererTypes.VariantOffset({
            startAt: 404,
            count: 137
        });

        string[] memory items = new string[](541);
        items[0] = "1-Asset Front Left 1n";
        items[1] = "1-Asset Front Left Aardvark";
        items[2] = "1-Asset Front Left Axe";
        items[3] = "1-Asset Front Left Bird Flying";
        items[4] = "1-Asset Front Left Bird Side";
        items[5] = "1-Asset Front Left Bling Anchor";
        items[6] = "1-Asset Front Left Bling Anvil";
        items[7] = "1-Asset Front Left Bling Arrow";
        items[8] = "1-Asset Front Left Bling Gold Ingot";
        items[9] = "1-Asset Front Left Bling Love";
        items[10] = "1-Asset Front Left Bling Mask";
        items[11] = "1-Asset Front Left Bling Rings";
        items[12] = "1-Asset Front Left Bling Scissors";
        items[13] = "1-Asset Front Left Both Arms Down Belly Chamaleon";
        items[14] = "1-Asset Front Left Both Arms Down Bigwalk Blue Prime";
        items[15] = "1-Asset Front Left Both Arms Down Bigwalk Rainbow";
        items[16] = "1-Asset Front Left Both Arms Down Chain Logo";
        items[17] = "1-Asset Front Left Both Arms Down Checker Disco";
        items[18] = "1-Asset Front Left Both Arms Down Checker Rgb";
        items[19] = "1-Asset Front Left Both Arms Down Checker Spaced Black";
        items[20] = "1-Asset Front Left Both Arms Down Checker Spaced White";
        items[21] = "1-Asset Front Left Both Arms Down Checkers Big Red Cold";
        items[22] = "1-Asset Front Left Both Arms Down Checkers Black";
        items[23] = "1-Asset Front Left Both Arms Down Checkers Blue";
        items[24] = "1-Asset Front Left Both Arms Down Checkers Magenta";
        items[25] = "1-Asset Front Left Both Arms Down Checkers Vibrant";
        items[26] = "1-Asset Front Left Both Arms Down Collar Sunset";
        items[27] = "1-Asset Front Left Both Arms Down Decay Gray Dark";
        items[28] = "1-Asset Front Left Both Arms Down Decay Pride";
        items[29] = "1-Asset Front Left Both Arms Down Gradient Dawn";
        items[30] = "1-Asset Front Left Both Arms Down Gradient Dusk";
        items[31] = "1-Asset Front Left Both Arms Down Gradient Glacier";
        items[32] = "1-Asset Front Left Both Arms Down Gradient Ice";
        items[33] = "1-Asset Front Left Both Arms Down Gradient Pride";
        items[34] = "1-Asset Front Left Both Arms Down Gradient Redpink";
        items[35] = "1-Asset Front Left Both Arms Down Gradient Sunset";
        items[36] = "1-Asset Front Left Both Arms Down Gray Scale 1";
        items[37] = "1-Asset Front Left Both Arms Down Gray Scale 9";
        items[38] = "1-Asset Front Left Both Arms Down Grid Simple Bege";
        items[39] = "1-Asset Front Left Both Arms Down Ice Cold";
        items[40] = "1-Asset Front Left Both Arms Down Lines 45 Greens";
        items[41] = "1-Asset Front Left Both Arms Down Lines 45 Rose";
        items[42] = "1-Asset Front Left Both Arms Down Old Shirt";
        items[43] = "1-Asset Front Left Both Arms Down Rainbow Steps";
        items[44] = "1-Asset Front Left Both Arms Down Robot";
        items[45] = "1-Asset Front Left Both Arms Down Safety Vest";
        items[46] = "1-Asset Front Left Both Arms Down Scarf Clown";
        items[47] = "1-Asset Front Left Both Arms Down Shirt Black";
        items[48] = "1-Asset Front Left Both Arms Down Stripes And Checks";
        items[49] = "1-Asset Front Left Both Arms Down Stripes Big Red";
        items[50] = "1-Asset Front Left Both Arms Down Stripes Blit";
        items[51] = "1-Asset Front Left Both Arms Down Stripes Blue Med";
        items[52] = "1-Asset Front Left Both Arms Down Stripes Brown";
        items[53] = "1-Asset Front Left Both Arms Down Stripes Olive";
        items[54] = "1-Asset Front Left Both Arms Down Stripes Red Cold";
        items[55] = "1-Asset Front Left Both Arms Down Taxi Checkers";
        items[56] = "1-Asset Front Left Both Arms Down Txt Ico";
        items[57] = "1-Asset Front Left Both Arms Down Wall";
        items[58] = "1-Asset Front Left Both Arms Down Woolweave Bicolor";
        items[59] = "1-Asset Front Left Carrot";
        items[60] = "1-Asset Front Left Chain Logo";
        items[61] = "1-Asset Front Left Chicken";
        items[62] = "1-Asset Front Left Cloud";
        items[63] = "1-Asset Front Left Clover";
        items[64] = "1-Asset Front Left Cow";
        items[65] = "1-Asset Front Left Dinosaur";
        items[66] = "1-Asset Front Left Dragon";
        items[67] = "1-Asset Front Left Ducky";
        items[68] = "1-Asset Front Left Eth";
        items[69] = "1-Asset Front Left Eye";
        items[70] = "1-Asset Front Left Flash";
        items[71] = "1-Asset Front Left Fries";
        items[72] = "1-Asset Front Left Glasses";
        items[73] = "1-Asset Front Left Glasses Logo";
        items[74] = "1-Asset Front Left Glasses Logo Sun";
        items[75] = "1-Asset Front Left Heart";
        items[76] = "1-Asset Front Left Id";
        items[77] = "1-Asset Front Left Infinity";
        items[78] = "1-Asset Front Left Insignia";
        items[79] = "1-Asset Front Left Leaf";
        items[80] = "1-Asset Front Left Light Bulb";
        items[81] = "1-Asset Front Left Lp";
        items[82] = "1-Asset Front Left Mars Face";
        items[83] = "1-Asset Front Left Matrix White";
        items[84] = "1-Asset Front Left Moon Block";
        items[85] = "1-Asset Front Left None";
        items[86] = "1-Asset Front Left Pizza Bling";
        items[87] = "1-Asset Front Left Pocket Pencil";
        items[88] = "1-Asset Front Left Rain";
        items[89] = "1-Asset Front Left Rgb";
        items[90] = "1-Asset Front Left Secret X";
        items[91] = "1-Asset Front Left Shrimp";
        items[92] = "1-Asset Front Left Slime Splat";
        items[93] = "1-Asset Front Left Small Bling";
        items[94] = "1-Asset Front Left Snowflake";
        items[95] = "1-Asset Front Left Sparkles";
        items[96] = "1-Asset Front Left Stains Blood";
        items[97] = "1-Asset Front Left Stains Zombie";
        items[98] = "1-Asset Front Left Sunset";
        items[99] = "1-Asset Front Left Think";
        items[100] = "1-Asset Front Left Tie Black On White";
        items[101] = "1-Asset Front Left Tie Dye";
        items[102] = "1-Asset Front Left Tie Purple On White";
        items[103] = "1-Asset Front Left Tie Red";
        items[104] = "1-Asset Front Left Txt A2+b2";
        items[105] = "1-Asset Front Left Txt Cc";
        items[106] = "1-Asset Front Left Txt Cc2";
        items[107] = "1-Asset Front Left Txt Copy";
        items[108] = "1-Asset Front Left Txt Dao Black";
        items[109] = "1-Asset Front Left Txt Doom";
        items[110] = "1-Asset Front Left Txt Dope";
        items[111] = "1-Asset Front Left Txt Foo Black";
        items[112] = "1-Asset Front Left Txt Green";
        items[113] = "1-Asset Front Left Txt Io";
        items[114] = "1-Asset Front Left Txt Lmao";
        items[115] = "1-Asset Front Left Txt Lol";
        items[116] = "1-Asset Front Left Txt Mint";
        items[117] = "1-Asset Front Left Txt Nil Grey Dark";
        items[118] = "1-Asset Front Left Txt Noun";
        items[119] = "1-Asset Front Left Txt Noun F0f";
        items[120] = "1-Asset Front Left Txt Noun Multicolor";
        items[121] = "1-Asset Front Left Txt Pi";
        items[122] = "1-Asset Front Left Txt Pop";
        items[123] = "1-Asset Front Left Txt Rofl";
        items[124] = "1-Asset Front Left Txt We";
        items[125] = "1-Asset Front Left Txt Yay";
        items[126] = "1-Asset Front Left Txt Yolo";
        items[127] = "1-Asset Front Left Wave";
        items[128] = "1-Asset Front Left Wet Money";
        items[129] = "1-Asset Front Left Ying Yang";
        items[130] = "2-Asset Front Left 1n";
        items[131] = "2-Asset Front Left Aardvark";
        items[132] = "2-Asset Front Left Axe";
        items[133] = "2-Asset Front Left Belly Chamaleon";
        items[134] = "2-Asset Front Left Bird Flying";
        items[135] = "2-Asset Front Left Bird Side";
        items[136] = "2-Asset Front Left Bling Anchor";
        items[137] = "2-Asset Front Left Bling Anvil";
        items[138] = "2-Asset Front Left Bling Arrow";
        items[139] = "2-Asset Front Left Bling Cheese";
        items[140] = "2-Asset Front Left Bling Gold Ingot";
        items[141] = "2-Asset Front Left Bling Love";
        items[142] = "2-Asset Front Left Bling Mask";
        items[143] = "2-Asset Front Left Bling Rings";
        items[144] = "2-Asset Front Left Bling Scissors";
        items[145] = "2-Asset Front Left Both Arms Up Bege Bsod";
        items[146] = "2-Asset Front Left Both Arms Up Bigwalk Blue Prime";
        items[147] = "2-Asset Front Left Both Arms Up Bigwalk Greylight";
        items[148] = "2-Asset Front Left Both Arms Up Bigwalk Rainbow";
        items[149] = "2-Asset Front Left Both Arms Up Checker Disco";
        items[150] = "2-Asset Front Left Both Arms Up Checker Rgb";
        items[151] = "2-Asset Front Left Both Arms Up Checker Spaced Black";
        items[152] = "2-Asset Front Left Both Arms Up Checker Spaced White";
        items[153] = "2-Asset Front Left Both Arms Up Checkers Big Green";
        items[154] = "2-Asset Front Left Both Arms Up Checkers Big Red Cold";
        items[155] = "2-Asset Front Left Both Arms Up Checkers Black";
        items[156] = "2-Asset Front Left Both Arms Up Checkers Blue";
        items[157] = "2-Asset Front Left Both Arms Up Checkers Magenta";
        items[158] = "2-Asset Front Left Both Arms Up Checkers Vibrant";
        items[159] = "2-Asset Front Left Both Arms Up Collar Sunset";
        items[160] = "2-Asset Front Left Both Arms Up Decay Gray Dark";
        items[161] = "2-Asset Front Left Both Arms Up Decay Pride";
        items[162] = "2-Asset Front Left Both Arms Up Gradient Dawn";
        items[163] = "2-Asset Front Left Both Arms Up Gradient Dusk";
        items[164] = "2-Asset Front Left Both Arms Up Gradient Glacier";
        items[165] = "2-Asset Front Left Both Arms Up Gradient Ice";
        items[166] = "2-Asset Front Left Both Arms Up Gradient Pride";
        items[167] = "2-Asset Front Left Both Arms Up Gradient Redpink";
        items[168] = "2-Asset Front Left Both Arms Up Gradient Sunset";
        items[169] = "2-Asset Front Left Both Arms Up Gray Scale 1";
        items[170] = "2-Asset Front Left Both Arms Up Gray Scale 9";
        items[171] = "2-Asset Front Left Both Arms Up Grid Simple Bege";
        items[172] = "2-Asset Front Left Both Arms Up Ice Cold";
        items[173] = "2-Asset Front Left Both Arms Up Lines 45 Greens";
        items[174] = "2-Asset Front Left Both Arms Up Lines 45 Rose";
        items[175] = "2-Asset Front Left Both Arms Up Old Shirt";
        items[176] = "2-Asset Front Left Both Arms Up Rainbow Steps";
        items[177] = "2-Asset Front Left Both Arms Up Robot";
        items[178] = "2-Asset Front Left Both Arms Up Safety Vest";
        items[179] = "2-Asset Front Left Both Arms Up Scarf Clown";
        items[180] = "2-Asset Front Left Both Arms Up Shirt Black";
        items[181] = "2-Asset Front Left Both Arms Up Stripes And Checks";
        items[182] = "2-Asset Front Left Both Arms Up Stripes Big Red";
        items[183] = "2-Asset Front Left Both Arms Up Stripes Blit";
        items[184] = "2-Asset Front Left Both Arms Up Stripes Blue Med";
        items[185] = "2-Asset Front Left Both Arms Up Stripes Brown";
        items[186] = "2-Asset Front Left Both Arms Up Stripes Olive";
        items[187] = "2-Asset Front Left Both Arms Up Stripes Red Cold";
        items[188] = "2-Asset Front Left Both Arms Up Taxi Checkers";
        items[189] = "2-Asset Front Left Both Arms Up Tee Yo";
        items[190] = "2-Asset Front Left Both Arms Up Txt Ico";
        items[191] = "2-Asset Front Left Both Arms Up Wall";
        items[192] = "2-Asset Front Left Both Arms Up Woolweave Bicolor";
        items[193] = "2-Asset Front Left Both Arms Up Woolweave Dirt";
        items[194] = "2-Asset Front Left Carrot";
        items[195] = "2-Asset Front Left Chain Logo";
        items[196] = "2-Asset Front Left Chicken";
        items[197] = "2-Asset Front Left Cloud";
        items[198] = "2-Asset Front Left Clover";
        items[199] = "2-Asset Front Left Cow";
        items[200] = "2-Asset Front Left Dinosaur";
        items[201] = "2-Asset Front Left Dollar Bling";
        items[202] = "2-Asset Front Left Dragon";
        items[203] = "2-Asset Front Left Ducky";
        items[204] = "2-Asset Front Left Eth";
        items[205] = "2-Asset Front Left Eye";
        items[206] = "2-Asset Front Left Flash";
        items[207] = "2-Asset Front Left Fries";
        items[208] = "2-Asset Front Left Glasses";
        items[209] = "2-Asset Front Left Glasses Logo";
        items[210] = "2-Asset Front Left Glasses Logo Sun";
        items[211] = "2-Asset Front Left Heart";
        items[212] = "2-Asset Front Left Hoodiestrings Uneven";
        items[213] = "2-Asset Front Left Id";
        items[214] = "2-Asset Front Left Infinity";
        items[215] = "2-Asset Front Left Insignia";
        items[216] = "2-Asset Front Left Leaf";
        items[217] = "2-Asset Front Left Light Bulb";
        items[218] = "2-Asset Front Left Lp";
        items[219] = "2-Asset Front Left Mars Face";
        items[220] = "2-Asset Front Left Matrix White";
        items[221] = "2-Asset Front Left Moon Block";
        items[222] = "2-Asset Front Left None";
        items[223] = "2-Asset Front Left Pizza Bling";
        items[224] = "2-Asset Front Left Pocket Pencil";
        items[225] = "2-Asset Front Left Rain";
        items[226] = "2-Asset Front Left Rgb";
        items[227] = "2-Asset Front Left Secret X";
        items[228] = "2-Asset Front Left Shrimp";
        items[229] = "2-Asset Front Left Slime Splat";
        items[230] = "2-Asset Front Left Small Bling";
        items[231] = "2-Asset Front Left Snowflake";
        items[232] = "2-Asset Front Left Sparkles";
        items[233] = "2-Asset Front Left Stains Blood";
        items[234] = "2-Asset Front Left Stains Zombie";
        items[235] = "2-Asset Front Left Sunset";
        items[236] = "2-Asset Front Left Think";
        items[237] = "2-Asset Front Left Tie Black On White";
        items[238] = "2-Asset Front Left Tie Dye";
        items[239] = "2-Asset Front Left Tie Purple On White";
        items[240] = "2-Asset Front Left Tie Red";
        items[241] = "2-Asset Front Left Txt A2+b2";
        items[242] = "2-Asset Front Left Txt Cc";
        items[243] = "2-Asset Front Left Txt Cc2";
        items[244] = "2-Asset Front Left Txt Copy";
        items[245] = "2-Asset Front Left Txt Dao Black";
        items[246] = "2-Asset Front Left Txt Doom";
        items[247] = "2-Asset Front Left Txt Dope";
        items[248] = "2-Asset Front Left Txt Foo Black";
        items[249] = "2-Asset Front Left Txt Green";
        items[250] = "2-Asset Front Left Txt Io";
        items[251] = "2-Asset Front Left Txt Lmao";
        items[252] = "2-Asset Front Left Txt Lol";
        items[253] = "2-Asset Front Left Txt Mint";
        items[254] = "2-Asset Front Left Txt Nil Grey Dark";
        items[255] = "2-Asset Front Left Txt Noun";
        items[256] = "2-Asset Front Left Txt Noun F0f";
        items[257] = "2-Asset Front Left Txt Noun Multicolor";
        items[258] = "2-Asset Front Left Txt Pi";
        items[259] = "2-Asset Front Left Txt Pop";
        items[260] = "2-Asset Front Left Txt Rofl";
        items[261] = "2-Asset Front Left Txt We";
        items[262] = "2-Asset Front Left Txt Yay";
        items[263] = "2-Asset Front Left Txt Yolo";
        items[264] = "2-Asset Front Left Wave";
        items[265] = "2-Asset Front Left Wet Money";
        items[266] = "2-Asset Front Left Ying Yang";
        items[267] = "3-Asset Front Left 1n";
        items[268] = "3-Asset Front Left Aardvark";
        items[269] = "3-Asset Front Left Axe";
        items[270] = "3-Asset Front Left Belly Chamaleon";
        items[271] = "3-Asset Front Left Bird Flying";
        items[272] = "3-Asset Front Left Bird Side";
        items[273] = "3-Asset Front Left Bling Anchor";
        items[274] = "3-Asset Front Left Bling Anvil";
        items[275] = "3-Asset Front Left Bling Arrow";
        items[276] = "3-Asset Front Left Bling Cheese";
        items[277] = "3-Asset Front Left Bling Gold Ingot";
        items[278] = "3-Asset Front Left Bling Love";
        items[279] = "3-Asset Front Left Bling Mask";
        items[280] = "3-Asset Front Left Bling Rings";
        items[281] = "3-Asset Front Left Bling Scissors";
        items[282] = "3-Asset Front Left Carrot";
        items[283] = "3-Asset Front Left Chain Logo";
        items[284] = "3-Asset Front Left Chicken";
        items[285] = "3-Asset Front Left Cloud";
        items[286] = "3-Asset Front Left Clover";
        items[287] = "3-Asset Front Left Cow";
        items[288] = "3-Asset Front Left Dinosaur";
        items[289] = "3-Asset Front Left Dollar Bling";
        items[290] = "3-Asset Front Left Dragon";
        items[291] = "3-Asset Front Left Ducky";
        items[292] = "3-Asset Front Left Eth";
        items[293] = "3-Asset Front Left Eye";
        items[294] = "3-Asset Front Left Flash";
        items[295] = "3-Asset Front Left Fries";
        items[296] = "3-Asset Front Left Glasses";
        items[297] = "3-Asset Front Left Glasses Logo";
        items[298] = "3-Asset Front Left Glasses Logo Sun";
        items[299] = "3-Asset Front Left Heart";
        items[300] = "3-Asset Front Left Hoodiestrings Uneven";
        items[301] = "3-Asset Front Left Id";
        items[302] = "3-Asset Front Left Infinity";
        items[303] = "3-Asset Front Left Insignia";
        items[304] = "3-Asset Front Left Leaf";
        items[305] = "3-Asset Front Left Left Arm Up Bege Bsod";
        items[306] = "3-Asset Front Left Left Arm Up Bigwalk Blue Prime";
        items[307] = "3-Asset Front Left Left Arm Up Bigwalk Greylight";
        items[308] = "3-Asset Front Left Left Arm Up Bigwalk Rainbow";
        items[309] = "3-Asset Front Left Left Arm Up Checker Disco";
        items[310] = "3-Asset Front Left Left Arm Up Checker Rgb";
        items[311] = "3-Asset Front Left Left Arm Up Checker Spaced Black";
        items[312] = "3-Asset Front Left Left Arm Up Checker Spaced White";
        items[313] = "3-Asset Front Left Left Arm Up Checker Vibrant";
        items[314] = "3-Asset Front Left Left Arm Up Checkers Big Green";
        items[315] = "3-Asset Front Left Left Arm Up Checkers Big Red Cold";
        items[316] = "3-Asset Front Left Left Arm Up Checkers Black";
        items[317] = "3-Asset Front Left Left Arm Up Checkers Blue";
        items[318] = "3-Asset Front Left Left Arm Up Checkers Magenta";
        items[319] = "3-Asset Front Left Left Arm Up Collar Sunset";
        items[320] = "3-Asset Front Left Left Arm Up Decay Gray Dark";
        items[321] = "3-Asset Front Left Left Arm Up Decay Pride";
        items[322] = "3-Asset Front Left Left Arm Up Gradient Dawn";
        items[323] = "3-Asset Front Left Left Arm Up Gradient Dusk";
        items[324] = "3-Asset Front Left Left Arm Up Gradient Glacier";
        items[325] = "3-Asset Front Left Left Arm Up Gradient Ice";
        items[326] = "3-Asset Front Left Left Arm Up Gradient Pride";
        items[327] = "3-Asset Front Left Left Arm Up Gradient Redpink";
        items[328] = "3-Asset Front Left Left Arm Up Gradient Sunset";
        items[329] = "3-Asset Front Left Left Arm Up Gray Scale 1";
        items[330] = "3-Asset Front Left Left Arm Up Gray Scale 9";
        items[331] = "3-Asset Front Left Left Arm Up Grid Simple Bege";
        items[332] = "3-Asset Front Left Left Arm Up Ice Cold";
        items[333] = "3-Asset Front Left Left Arm Up Lines 45 Greens";
        items[334] = "3-Asset Front Left Left Arm Up Lines 45 Rose";
        items[335] = "3-Asset Front Left Left Arm Up Old Shirt";
        items[336] = "3-Asset Front Left Left Arm Up Rainbow Steps";
        items[337] = "3-Asset Front Left Left Arm Up Robot";
        items[338] = "3-Asset Front Left Left Arm Up Safety Vest";
        items[339] = "3-Asset Front Left Left Arm Up Scarf Clown";
        items[340] = "3-Asset Front Left Left Arm Up Shirt Black";
        items[341] = "3-Asset Front Left Left Arm Up Stripes And Checks";
        items[342] = "3-Asset Front Left Left Arm Up Stripes Big Red";
        items[343] = "3-Asset Front Left Left Arm Up Stripes Blit";
        items[344] = "3-Asset Front Left Left Arm Up Stripes Blue Med";
        items[345] = "3-Asset Front Left Left Arm Up Stripes Brown";
        items[346] = "3-Asset Front Left Left Arm Up Stripes Olive";
        items[347] = "3-Asset Front Left Left Arm Up Stripes Red Cold";
        items[348] = "3-Asset Front Left Left Arm Up Taxi Checkers";
        items[349] = "3-Asset Front Left Left Arm Up Tee Yo";
        items[350] = "3-Asset Front Left Left Arm Up Txt Ico";
        items[351] = "3-Asset Front Left Left Arm Up Wall";
        items[352] = "3-Asset Front Left Left Arm Up Woolweave Bicolor";
        items[353] = "3-Asset Front Left Left Arm Up Woolweave Dirt";
        items[354] = "3-Asset Front Left Light Bulb";
        items[355] = "3-Asset Front Left Lp";
        items[356] = "3-Asset Front Left Mars Face";
        items[357] = "3-Asset Front Left Matrix White";
        items[358] = "3-Asset Front Left Moon Block";
        items[359] = "3-Asset Front Left None";
        items[360] = "3-Asset Front Left Pizza Bling";
        items[361] = "3-Asset Front Left Pocket Pencil";
        items[362] = "3-Asset Front Left Rain";
        items[363] = "3-Asset Front Left Rgb";
        items[364] = "3-Asset Front Left Secret X";
        items[365] = "3-Asset Front Left Shrimp";
        items[366] = "3-Asset Front Left Slime Splat";
        items[367] = "3-Asset Front Left Small Bling";
        items[368] = "3-Asset Front Left Snowflake";
        items[369] = "3-Asset Front Left Sparkles";
        items[370] = "3-Asset Front Left Stains Blood";
        items[371] = "3-Asset Front Left Stains Zombie";
        items[372] = "3-Asset Front Left Sunset";
        items[373] = "3-Asset Front Left Think";
        items[374] = "3-Asset Front Left Tie Black On White";
        items[375] = "3-Asset Front Left Tie Dye";
        items[376] = "3-Asset Front Left Tie Purple On White";
        items[377] = "3-Asset Front Left Tie Red";
        items[378] = "3-Asset Front Left Txt A2+b2";
        items[379] = "3-Asset Front Left Txt Cc";
        items[380] = "3-Asset Front Left Txt Cc2";
        items[381] = "3-Asset Front Left Txt Copy";
        items[382] = "3-Asset Front Left Txt Dao Black";
        items[383] = "3-Asset Front Left Txt Doom";
        items[384] = "3-Asset Front Left Txt Dope";
        items[385] = "3-Asset Front Left Txt Foo Black";
        items[386] = "3-Asset Front Left Txt Green";
        items[387] = "3-Asset Front Left Txt Io";
        items[388] = "3-Asset Front Left Txt Lmao";
        items[389] = "3-Asset Front Left Txt Lol";
        items[390] = "3-Asset Front Left Txt Mint";
        items[391] = "3-Asset Front Left Txt Nil Grey Dark";
        items[392] = "3-Asset Front Left Txt Noun";
        items[393] = "3-Asset Front Left Txt Noun F0f";
        items[394] = "3-Asset Front Left Txt Noun Multicolor";
        items[395] = "3-Asset Front Left Txt Pi";
        items[396] = "3-Asset Front Left Txt Pop";
        items[397] = "3-Asset Front Left Txt Rofl";
        items[398] = "3-Asset Front Left Txt We";
        items[399] = "3-Asset Front Left Txt Yay";
        items[400] = "3-Asset Front Left Txt Yolo";
        items[401] = "3-Asset Front Left Wave";
        items[402] = "3-Asset Front Left Wet Money";
        items[403] = "3-Asset Front Left Ying Yang";
        items[404] = "4-Asset Front Left 1n";
        items[405] = "4-Asset Front Left Aardvark";
        items[406] = "4-Asset Front Left Axe";
        items[407] = "4-Asset Front Left Belly Chamaleon";
        items[408] = "4-Asset Front Left Bird Flying";
        items[409] = "4-Asset Front Left Bird Side";
        items[410] = "4-Asset Front Left Bling Anchor";
        items[411] = "4-Asset Front Left Bling Anvil";
        items[412] = "4-Asset Front Left Bling Arrow";
        items[413] = "4-Asset Front Left Bling Cheese";
        items[414] = "4-Asset Front Left Bling Gold Ingot";
        items[415] = "4-Asset Front Left Bling Love";
        items[416] = "4-Asset Front Left Bling Mask";
        items[417] = "4-Asset Front Left Bling Rings";
        items[418] = "4-Asset Front Left Bling Scissors";
        items[419] = "4-Asset Front Left Carrot";
        items[420] = "4-Asset Front Left Chain Logo";
        items[421] = "4-Asset Front Left Chicken";
        items[422] = "4-Asset Front Left Cloud";
        items[423] = "4-Asset Front Left Clover";
        items[424] = "4-Asset Front Left Cow";
        items[425] = "4-Asset Front Left Dinosaur";
        items[426] = "4-Asset Front Left Dollar Bling";
        items[427] = "4-Asset Front Left Dragon";
        items[428] = "4-Asset Front Left Ducky";
        items[429] = "4-Asset Front Left Eth";
        items[430] = "4-Asset Front Left Eye";
        items[431] = "4-Asset Front Left Flash";
        items[432] = "4-Asset Front Left Fries";
        items[433] = "4-Asset Front Left Glasses";
        items[434] = "4-Asset Front Left Glasses Logo";
        items[435] = "4-Asset Front Left Glasses Logo Sun";
        items[436] = "4-Asset Front Left Heart";
        items[437] = "4-Asset Front Left Hoodiestrings Uneven";
        items[438] = "4-Asset Front Left Id";
        items[439] = "4-Asset Front Left Infinity";
        items[440] = "4-Asset Front Left Insignia";
        items[441] = "4-Asset Front Left Leaf";
        items[442] = "4-Asset Front Left Light Bulb";
        items[443] = "4-Asset Front Left Lp";
        items[444] = "4-Asset Front Left Mars Face";
        items[445] = "4-Asset Front Left Matrix White";
        items[446] = "4-Asset Front Left Moon Block";
        items[447] = "4-Asset Front Left None";
        items[448] = "4-Asset Front Left Pizza Bling";
        items[449] = "4-Asset Front Left Pocket Pencil";
        items[450] = "4-Asset Front Left Rain";
        items[451] = "4-Asset Front Left Rgb";
        items[452] = "4-Asset Front Left Right Arm Up Bege Bsod";
        items[453] = "4-Asset Front Left Right Arm Up Big Walk Greylight";
        items[454] = "4-Asset Front Left Right Arm Up Bigwalk Blue Prime";
        items[455] = "4-Asset Front Left Right Arm Up Bigwalk Rainbow";
        items[456] = "4-Asset Front Left Right Arm Up Checker Disco";
        items[457] = "4-Asset Front Left Right Arm Up Checker Rgb";
        items[458] = "4-Asset Front Left Right Arm Up Checkers Big Green";
        items[459] = "4-Asset Front Left Right Arm Up Checkers Big Red Cold";
        items[460] = "4-Asset Front Left Right Arm Up Checkers Black";
        items[461] = "4-Asset Front Left Right Arm Up Checkers Blue";
        items[462] = "4-Asset Front Left Right Arm Up Checkers Magenta";
        items[463] = "4-Asset Front Left Right Arm Up Checkers Spaced Black";
        items[464] = "4-Asset Front Left Right Arm Up Checkers Spaced White";
        items[465] = "4-Asset Front Left Right Arm Up Checkers Vibrant";
        items[466] = "4-Asset Front Left Right Arm Up Collar Sunset";
        items[467] = "4-Asset Front Left Right Arm Up Decay Gray Dark";
        items[468] = "4-Asset Front Left Right Arm Up Decay Pride";
        items[469] = "4-Asset Front Left Right Arm Up Gradient Dawn";
        items[470] = "4-Asset Front Left Right Arm Up Gradient Dusk";
        items[471] = "4-Asset Front Left Right Arm Up Gradient Glacier";
        items[472] = "4-Asset Front Left Right Arm Up Gradient Ice";
        items[473] = "4-Asset Front Left Right Arm Up Gradient Pride";
        items[474] = "4-Asset Front Left Right Arm Up Gradient Redpink";
        items[475] = "4-Asset Front Left Right Arm Up Gradient Sunset";
        items[476] = "4-Asset Front Left Right Arm Up Gray Scale 1";
        items[477] = "4-Asset Front Left Right Arm Up Gray Scale 9";
        items[478] = "4-Asset Front Left Right Arm Up Grid Simple Bege";
        items[479] = "4-Asset Front Left Right Arm Up Ice Cold";
        items[480] = "4-Asset Front Left Right Arm Up Lines 45 Greens";
        items[481] = "4-Asset Front Left Right Arm Up Lines 45 Rose";
        items[482] = "4-Asset Front Left Right Arm Up Old Shirt";
        items[483] = "4-Asset Front Left Right Arm Up Olive";
        items[484] = "4-Asset Front Left Right Arm Up Rainbow Steps";
        items[485] = "4-Asset Front Left Right Arm Up Robot";
        items[486] = "4-Asset Front Left Right Arm Up Safety Vest";
        items[487] = "4-Asset Front Left Right Arm Up Scarf Clown";
        items[488] = "4-Asset Front Left Right Arm Up Shirt Black";
        items[489] = "4-Asset Front Left Right Arm Up Stripes And Checks";
        items[490] = "4-Asset Front Left Right Arm Up Stripes Big Red";
        items[491] = "4-Asset Front Left Right Arm Up Stripes Blit";
        items[492] = "4-Asset Front Left Right Arm Up Stripes Blue Med";
        items[493] = "4-Asset Front Left Right Arm Up Stripes Brown";
        items[494] = "4-Asset Front Left Right Arm Up Stripes Red Cold";
        items[495] = "4-Asset Front Left Right Arm Up Taxi Checkers";
        items[496] = "4-Asset Front Left Right Arm Up Tee Yo";
        items[497] = "4-Asset Front Left Right Arm Up Txt Ico";
        items[498] = "4-Asset Front Left Right Arm Up Wall";
        items[499] = "4-Asset Front Left Right Arm Up Woolweave Bicolor";
        items[500] = "4-Asset Front Left Right Arm Up Woolweave Dirt";
        items[501] = "4-Asset Front Left Secret X";
        items[502] = "4-Asset Front Left Shrimp";
        items[503] = "4-Asset Front Left Slime Splat";
        items[504] = "4-Asset Front Left Small Bling";
        items[505] = "4-Asset Front Left Snowflake";
        items[506] = "4-Asset Front Left Sparkles";
        items[507] = "4-Asset Front Left Stains Blood";
        items[508] = "4-Asset Front Left Stains Zombie";
        items[509] = "4-Asset Front Left Sunset";
        items[510] = "4-Asset Front Left Think";
        items[511] = "4-Asset Front Left Tie Black On White";
        items[512] = "4-Asset Front Left Tie Dye";
        items[513] = "4-Asset Front Left Tie Purple On White";
        items[514] = "4-Asset Front Left Tie Red";
        items[515] = "4-Asset Front Left Txt A2+b2";
        items[516] = "4-Asset Front Left Txt Cc";
        items[517] = "4-Asset Front Left Txt Cc2";
        items[518] = "4-Asset Front Left Txt Copy";
        items[519] = "4-Asset Front Left Txt Dao Black";
        items[520] = "4-Asset Front Left Txt Doom";
        items[521] = "4-Asset Front Left Txt Dope";
        items[522] = "4-Asset Front Left Txt Foo Black";
        items[523] = "4-Asset Front Left Txt Green";
        items[524] = "4-Asset Front Left Txt Io";
        items[525] = "4-Asset Front Left Txt Lmao";
        items[526] = "4-Asset Front Left Txt Lol";
        items[527] = "4-Asset Front Left Txt Mint";
        items[528] = "4-Asset Front Left Txt Nil Grey Dark";
        items[529] = "4-Asset Front Left Txt Noun";
        items[530] = "4-Asset Front Left Txt Noun F0f";
        items[531] = "4-Asset Front Left Txt Noun Multicolor";
        items[532] = "4-Asset Front Left Txt Pi";
        items[533] = "4-Asset Front Left Txt Pop";
        items[534] = "4-Asset Front Left Txt Rofl";
        items[535] = "4-Asset Front Left Txt We";
        items[536] = "4-Asset Front Left Txt Yay";
        items[537] = "4-Asset Front Left Txt Yolo";
        items[538] = "4-Asset Front Left Wave";
        items[539] = "4-Asset Front Left Wet Money";
        items[540] = "4-Asset Front Left Ying Yang";

        bytes memory data = abi.encode(items);

        VmSafe vm = VmSafe(
            address(uint160(uint256(keccak256("hevm cheat code"))))
        );

        string[] memory inputs = new string[](3);
        inputs[0] = "node";
        inputs[1] = "script/nouns-coasters/deflate.js";
        inputs[2] = vm.toString(data);

        bytes memory compressedData = vm.ffi(inputs);

        // address result = SSTORE2.write(compressedData);

        renderer.addLayer({
            target: target,
            ipfs: INounsCoasterMetadataRendererTypes.IPFSGroup({
                baseUri: "ipfs://bafybeidmllp5rev4k2na7t34bmwxjjp2dt4w6papy4aicynmmshgojny2e/",
                extension: ".png"
            }),
            decompressedSize: data.length,
            compressedData: compressedData,
            count: items.length,
            property: "16 Accessories front left",
            variantProperty: variantPropertyParameters
        });
    }

    function addLayer17(NounsCoasterMetadataRenderer renderer, address target)
        internal
    {
        // 17 Head front left
        INounsCoasterMetadataRendererTypes.VariantPropertyParameters
            memory variantPropertyParameters;
        variantPropertyParameters
            .offsets = new INounsCoasterMetadataRendererTypes.VariantOffset[](
            0
        );
        variantPropertyParameters.id = 0;
        variantPropertyParameters.count = 0;

        string[] memory items = new string[](443);
        items[0] = "Aardvark Scared";
        items[1] = "Abstract Scared";
        items[2] = "Ape Scared";
        items[3] = "Bag Bored";
        items[4] = "Bag Happy";
        items[5] = "Bag Scared";
        items[6] = "Bagpipe Bored";
        items[7] = "Bagpipe Scared";
        items[8] = "Banana Bored";
        items[9] = "Banana Happy";
        items[10] = "Banana Sick";
        items[11] = "Bank Bored";
        items[12] = "Bank Sick";
        items[13] = "Baseball Gameball Bored";
        items[14] = "Baseball Gameball Scared";
        items[15] = "Bat Bored";
        items[16] = "Bat Happy";
        items[17] = "Bat Sick";
        items[18] = "Bear Bored";
        items[19] = "Bear Happy";
        items[20] = "Bear Scared";
        items[21] = "Beet Bored";
        items[22] = "Beet Scared";
        items[23] = "Beet Sick";
        items[24] = "Bell Bored";
        items[25] = "Bell Happy";
        items[26] = "Bell Sick";
        items[27] = "Bigfoot Yeti Scared";
        items[28] = "Blackhole Bored";
        items[29] = "Blueberry Sick";
        items[30] = "Bomb Scared";
        items[31] = "Bomb Sick";
        items[32] = "Bonsai Bored";
        items[33] = "Bonsai Scared";
        items[34] = "Bonsai Sick";
        items[35] = "Boombox Bored";
        items[36] = "Boombox Happy";
        items[37] = "Boombox Scared";
        items[38] = "Boot Bored";
        items[39] = "Boot Happy";
        items[40] = "Boot Scared";
        items[41] = "Boot Sick";
        items[42] = "Box Scared";
        items[43] = "Boxingglove Bored";
        items[44] = "Brain Happy";
        items[45] = "Brain Sick";
        items[46] = "Bubble Speech Happy";
        items[47] = "Bubble Speech Scared";
        items[48] = "Bubblegum Bored";
        items[49] = "Bubblegum Happy";
        items[50] = "Bubblegum Scared";
        items[51] = "Burger Dollarmenu Bored";
        items[52] = "Burger Dollarmenu Happy";
        items[53] = "Burger Dollarmenu Scared";
        items[54] = "Burger Dollarmenu Sick";
        items[55] = "Cake Bored";
        items[56] = "Cake Sick";
        items[57] = "Calculator Happy";
        items[58] = "Calculator Scared";
        items[59] = "Calendar Scared";
        items[60] = "Candy Bar Sick";
        items[61] = "Cannedham Bored";
        items[62] = "Cannedham Happy";
        items[63] = "Cannedham Scared";
        items[64] = "Cash Register Bored";
        items[65] = "Cash Register Scared";
        items[66] = "Cash Register Sick";
        items[67] = "Cassettetape Happy";
        items[68] = "Cat Scared";
        items[69] = "Cd Happy";
        items[70] = "Cd Scared";
        items[71] = "Chain Happy";
        items[72] = "Chain Scared";
        items[73] = "Chain Sick";
        items[74] = "Chainsaw Bored";
        items[75] = "Chainsaw Sick";
        items[76] = "Chameleon Scared";
        items[77] = "Chameleon Sick";
        items[78] = "Chart Bars Bored";
        items[79] = "Chart Bars Scared";
        items[80] = "Chefhat Bored";
        items[81] = "Chefhat Scared";
        items[82] = "Cherry Bored";
        items[83] = "Cherry Scared";
        items[84] = "Cherry Sick";
        items[85] = "Chicken Bored";
        items[86] = "Chicken Scared";
        items[87] = "Chipboard Happy";
        items[88] = "Chips Bored";
        items[89] = "Chips Scared";
        items[90] = "Chips Sick";
        items[91] = "Cloud Bored";
        items[92] = "Cloud Happy";
        items[93] = "Clover Happy";
        items[94] = "Clutch Bored";
        items[95] = "Clutch Scared";
        items[96] = "Coffeebean Bored";
        items[97] = "Coffeebean Happy";
        items[98] = "Cone Sick";
        items[99] = "Console Handheld Bored";
        items[100] = "Console Handheld Happy";
        items[101] = "Console Handheld Scared";
        items[102] = "Console Handheld Sick";
        items[103] = "Cookie Bored";
        items[104] = "Cookie Happy";
        items[105] = "Cottonball Happy";
        items[106] = "Cottonball Scared";
        items[107] = "Cottonball Sick";
        items[108] = "Couch Happy";
        items[109] = "Cow Happy";
        items[110] = "Crab Bored";
        items[111] = "Crab Happy";
        items[112] = "Crab Scared";
        items[113] = "Crab Sick";
        items[114] = "Crane Bored";
        items[115] = "Crown Happy";
        items[116] = "Crt Bsod Scared";
        items[117] = "Crystallball Happy";
        items[118] = "Diamond Blue Bored";
        items[119] = "Diamond Blue Scared";
        items[120] = "Diamond Blue Sick";
        items[121] = "Diamond Red Scared";
        items[122] = "Dictionary Bored";
        items[123] = "Dictonary Sick";
        items[124] = "Dino Bored";
        items[125] = "Dna Happy";
        items[126] = "Dna Scared";
        items[127] = "Dna Sick";
        items[128] = "Dog Bored";
        items[129] = "Dog Scared";
        items[130] = "Doughnut Sick";
        items[131] = "Duck Happy";
        items[132] = "Duck Scared";
        items[133] = "Duck Sick";
        items[134] = "Ducky Bored";
        items[135] = "Ducky Scared";
        items[136] = "Earth Happy";
        items[137] = "Earth Sick";
        items[138] = "Egg Scared";
        items[139] = "Egg Sick";
        items[140] = "Faberge Happy";
        items[141] = "Factory Dark Happy";
        items[142] = "Factory Dark Sick";
        items[143] = "Fan Bored";
        items[144] = "Fan Happy";
        items[145] = "Fan Scared";
        items[146] = "Fan Sick";
        items[147] = "Fence Scared";
        items[148] = "Fence Sick";
        items[149] = "Film 35mm Bored";
        items[150] = "Film 35mm Happy";
        items[151] = "Film 35mm Scared";
        items[152] = "Film Strip Scared";
        items[153] = "Film Strip Sick";
        items[154] = "Fir Bored";
        items[155] = "Fir Scared";
        items[156] = "Firehydrant Bored";
        items[157] = "Firehydrant Happy";
        items[158] = "Flamingo Bored";
        items[159] = "Flamingo Happy";
        items[160] = "Flamingo Sick";
        items[161] = "Flower Bored";
        items[162] = "Flower Happy";
        items[163] = "Flower Scared";
        items[164] = "Fox Happy";
        items[165] = "Fox Scared";
        items[166] = "Fox Sick";
        items[167] = "Frog Sick";
        items[168] = "Garlic Bored";
        items[169] = "Garlic Happy";
        items[170] = "Gavel Bored";
        items[171] = "Ghost B Bored";
        items[172] = "Ghost B Happy";
        items[173] = "Ghost B Scared";
        items[174] = "Ghost B Sick";
        items[175] = "Glasses Big Bored";
        items[176] = "Glasses Big Scared";
        items[177] = "Glasses Big Sick";
        items[178] = "Gnomes Happy";
        items[179] = "Gnomes Scared";
        items[180] = "Goat Happy";
        items[181] = "Goat Sick";
        items[182] = "Goldcoin Scared";
        items[183] = "Goldcoin Sick";
        items[184] = "Goldfish Bored";
        items[185] = "Hair Bored";
        items[186] = "Hair Scared";
        items[187] = "Hanger Scared";
        items[188] = "Hardhat Bored";
        items[189] = "Hardhat Happy";
        items[190] = "Hardhat Sick";
        items[191] = "Heart Bored";
        items[192] = "Helicopter Bored";
        items[193] = "Helicopter Scared";
        items[194] = "Helicopter Sick";
        items[195] = "Highheel Happy";
        items[196] = "Horse Deepfried Happy";
        items[197] = "Horse Deepfried Scared";
        items[198] = "House Bored";
        items[199] = "House Happy";
        items[200] = "House Scared";
        items[201] = "Icepop B Bored";
        items[202] = "Icepop B Scared";
        items[203] = "Icepop B Sick";
        items[204] = "Igloo Bored";
        items[205] = "Igloo Happy";
        items[206] = "Igloo Scared";
        items[207] = "Igloo Sick";
        items[208] = "Island Bored";
        items[209] = "Jellyfish Happy";
        items[210] = "Jupiter Scared";
        items[211] = "Jupiter Sick";
        items[212] = "Kangaroo Bored";
        items[213] = "Kangaroo Scared";
        items[214] = "Kangaroo Sick";
        items[215] = "Ketchup Bored";
        items[216] = "Ketchup Happy";
        items[217] = "Ketchup Scared";
        items[218] = "Ketchup Sick";
        items[219] = "Lightning Bolt Happy";
        items[220] = "Lightning Bolt Sick";
        items[221] = "Lint Happy";
        items[222] = "Lips Bored";
        items[223] = "Lips Sick";
        items[224] = "Lipstick2 Bored";
        items[225] = "Lipstick2 Happy";
        items[226] = "Lipstick2 Sick";
        items[227] = "Lock Happy";
        items[228] = "Macaroni Happy";
        items[229] = "Macaroni Scared";
        items[230] = "Macaroni Sick";
        items[231] = "Mailbox Bored";
        items[232] = "Mailbox Scared";
        items[233] = "Maze Happy";
        items[234] = "Microwave Sick";
        items[235] = "Milk Bored";
        items[236] = "Milk Scared";
        items[237] = "Mirror Bored";
        items[238] = "Mirror Happy";
        items[239] = "Mirror Sick";
        items[240] = "Mixer Bored";
        items[241] = "Mixer Happy";
        items[242] = "Mixer Sick";
        items[243] = "Moon Scared";
        items[244] = "Moose Scared";
        items[245] = "Mosquito Bored";
        items[246] = "Mosquito Happy";
        items[247] = "Mosquito Sick";
        items[248] = "Mountain Snowcap Bored";
        items[249] = "Mountain Snowcap Happy";
        items[250] = "Mountain Snowcap Sick";
        items[251] = "Mouse Happy";
        items[252] = "Mouse Scared";
        items[253] = "Mouse Sick";
        items[254] = "Mug Bored";
        items[255] = "Mug Happy";
        items[256] = "Mushroom Happy";
        items[257] = "Mushroom Scared";
        items[258] = "Mustard Bored";
        items[259] = "Mustard Happy";
        items[260] = "Mustard Scared";
        items[261] = "Noodles Bored";
        items[262] = "Onion Bored";
        items[263] = "Orangutan Bored";
        items[264] = "Orangutan Happy";
        items[265] = "Orca Sick";
        items[266] = "Otter Bored";
        items[267] = "Otter Happy";
        items[268] = "Otter Sick";
        items[269] = "Outlet Bored";
        items[270] = "Outlet Happy";
        items[271] = "Owl Bored";
        items[272] = "Owl Sick";
        items[273] = "Oyster Bored";
        items[274] = "Oyster Happy";
        items[275] = "Paintbrush Bored";
        items[276] = "Paintbrush Happy";
        items[277] = "Paintbrush Sick";
        items[278] = "Panda Bored";
        items[279] = "Panda Scared";
        items[280] = "Panda Sick";
        items[281] = "Paperclip Happy";
        items[282] = "Paperclip Sick";
        items[283] = "Peanut Scared";
        items[284] = "Peanut Sick";
        items[285] = "Peyote Bored";
        items[286] = "Peyote Happy";
        items[287] = "Peyote Scared";
        items[288] = "Peyote Sick";
        items[289] = "Piano Happy";
        items[290] = "Piano Scared";
        items[291] = "Pickle Happy";
        items[292] = "Pickle Sick";
        items[293] = "Pie Scared";
        items[294] = "Piggybank Happy";
        items[295] = "Piggybank Scared";
        items[296] = "Pill Bored";
        items[297] = "Pill Scared";
        items[298] = "Pill Sick";
        items[299] = "Pillow Bored";
        items[300] = "Pillow Sick";
        items[301] = "Pineapple Scared";
        items[302] = "Pineapple Sick";
        items[303] = "Pirateship Happy";
        items[304] = "Pizza Bored";
        items[305] = "Pizza Happy";
        items[306] = "Pizza Scared";
        items[307] = "Plane Bored";
        items[308] = "Plane Happy";
        items[309] = "Plane Sick";
        items[310] = "Porkbao Happy";
        items[311] = "Porkbao Scared";
        items[312] = "Pumpkin Bored";
        items[313] = "Pumpkin Sick";
        items[314] = "Pyramid Bored";
        items[315] = "Pyramid Happy";
        items[316] = "Pyramid Scared";
        items[317] = "Pyramid Sick";
        items[318] = "Queencrown Bored";
        items[319] = "Queencrown Happy";
        items[320] = "Queencrown Scared";
        items[321] = "Rabbit Bored";
        items[322] = "Rabbit Happy";
        items[323] = "Rabbit Scared";
        items[324] = "Rabbit Sick";
        items[325] = "Rainbow Scared";
        items[326] = "Rainbow Sick";
        items[327] = "Rangefinder Scared";
        items[328] = "Rangefinder Sick";
        items[329] = "Raven Happy";
        items[330] = "Raven Scared";
        items[331] = "Raven Sick";
        items[332] = "Retainer Bored";
        items[333] = "Retainer Scared";
        items[334] = "Rgb Bored";
        items[335] = "Rgb Sick";
        items[336] = "Ring Happy";
        items[337] = "Ring Scared";
        items[338] = "Ring Sick";
        items[339] = "Road Happy";
        items[340] = "Robot Scared";
        items[341] = "Robot Sick";
        items[342] = "Rock Bored";
        items[343] = "Rock Happy";
        items[344] = "Rock Sick";
        items[345] = "Rosebud Happy";
        items[346] = "Ruler Triangular Scared";
        items[347] = "Safe Happy";
        items[348] = "Safe Scared";
        items[349] = "Saguaro Happy";
        items[350] = "Saguaro Sick";
        items[351] = "Sailboat Happy";
        items[352] = "Sailboat Scared";
        items[353] = "Sandwich Bored";
        items[354] = "Sandwich Sick";
        items[355] = "Saw Bored";
        items[356] = "Saw Sick";
        items[357] = "Scorpion Bored";
        items[358] = "Shark Bored";
        items[359] = "Shark Happy";
        items[360] = "Shower Bored";
        items[361] = "Shower Scared";
        items[362] = "Shower Sick";
        items[363] = "Skateboard Bored";
        items[364] = "Skateboard Happy";
        items[365] = "Skateboard Scared";
        items[366] = "Skeleton Hat Bored";
        items[367] = "Skilift Bored";
        items[368] = "Skilift Scared";
        items[369] = "Snowglobe Scared";
        items[370] = "Snowglobe Sick";
        items[371] = "Snowmobile Bored";
        items[372] = "Snowmobile Happy";
        items[373] = "Snowmobile Scared";
        items[374] = "Snowmobile Sick";
        items[375] = "Spaghetti Bored";
        items[376] = "Sponge Bored";
        items[377] = "Sponge Sick";
        items[378] = "Stapler Happy";
        items[379] = "Star Sparkles Scared";
        items[380] = "Star Sparkles Sick";
        items[381] = "Steak Sick";
        items[382] = "Sunset Bored";
        items[383] = "Sunset Happy";
        items[384] = "Sunset Scared";
        items[385] = "Taco Classic Bored";
        items[386] = "Taco Classic Scared";
        items[387] = "Taxi Bored";
        items[388] = "Thumbsup Happy";
        items[389] = "Thumbsup Scared";
        items[390] = "Thumbsup Sick";
        items[391] = "Tooth Bored";
        items[392] = "Tooth Scared";
        items[393] = "Toothbrush Bored";
        items[394] = "Toothbrush Scared";
        items[395] = "Tornado Bored";
        items[396] = "Tornado Scared";
        items[397] = "Trashcan Scared";
        items[398] = "Treasurechest Bored";
        items[399] = "Treasurechest Happy";
        items[400] = "Treasurechest Scared";
        items[401] = "Ufo Happy";
        items[402] = "Ufo Scared";
        items[403] = "Ufo Sick";
        items[404] = "Undead Happy";
        items[405] = "Undead Sick";
        items[406] = "Vending Machine Scared";
        items[407] = "Vent Happy";
        items[408] = "Vent Scared";
        items[409] = "Void Bored";
        items[410] = "Void Sick";
        items[411] = "Volcano Bored";
        items[412] = "Volcano Happy";
        items[413] = "Volcano Sick";
        items[414] = "Volleyball Bored";
        items[415] = "Volleyball Scared";
        items[416] = "Wall Sick";
        items[417] = "Washingmachine Happy";
        items[418] = "Watch Bored";
        items[419] = "Watermelon Bored";
        items[420] = "Watermelon Happy";
        items[421] = "Watermelon Scared";
        items[422] = "Watermelon Sick";
        items[423] = "Wave Bored";
        items[424] = "Weed Scared";
        items[425] = "Weight Bored";
        items[426] = "Weight Happy";
        items[427] = "Weight Sick";
        items[428] = "Werewolf Happy";
        items[429] = "Werewolf Scared";
        items[430] = "Werewolf Sick";
        items[431] = "Whale Alive Sick";
        items[432] = "Whale Happy";
        items[433] = "Whale Scared";
        items[434] = "Whale Sick";
        items[435] = "Wine Barrel Bored";
        items[436] = "Wine Barrel Happy";
        items[437] = "Wine Barrel Scared";
        items[438] = "Wine Barrel Sick";
        items[439] = "Wine Bored";
        items[440] = "Wine Happy";
        items[441] = "Wine Scared";
        items[442] = "Wizardhat Happy";

        bytes memory data = abi.encode(items);

        VmSafe vm = VmSafe(
            address(uint160(uint256(keccak256("hevm cheat code"))))
        );

        string[] memory inputs = new string[](3);
        inputs[0] = "node";
        inputs[1] = "script/nouns-coasters/deflate.js";
        inputs[2] = vm.toString(data);

        bytes memory compressedData = vm.ffi(inputs);

        // address result = SSTORE2.write(compressedData);

        renderer.addLayer({
            target: target,
            ipfs: INounsCoasterMetadataRendererTypes.IPFSGroup({
                baseUri: "ipfs://bafybeidmllp5rev4k2na7t34bmwxjjp2dt4w6papy4aicynmmshgojny2e/",
                extension: ".png"
            }),
            decompressedSize: data.length,
            compressedData: compressedData,
            count: items.length,
            property: "17 Head front left",
            variantProperty: variantPropertyParameters
        });
    }

    function addLayer18(NounsCoasterMetadataRenderer renderer, address target)
        internal
    {
        // 18 Expression front left
        INounsCoasterMetadataRendererTypes.VariantPropertyParameters
            memory variantPropertyParameters;
        variantPropertyParameters
            .offsets = new INounsCoasterMetadataRendererTypes.VariantOffset[](
            0
        );
        variantPropertyParameters.id = 0;
        variantPropertyParameters.count = 0;

        string[] memory items = new string[](4);
        items[0] = "Bored";
        items[1] = "Happy";
        items[2] = "Scared";
        items[3] = "Sick";

        bytes memory data = abi.encode(items);

        VmSafe vm = VmSafe(
            address(uint160(uint256(keccak256("hevm cheat code"))))
        );

        string[] memory inputs = new string[](3);
        inputs[0] = "node";
        inputs[1] = "script/nouns-coasters/deflate.js";
        inputs[2] = vm.toString(data);

        bytes memory compressedData = vm.ffi(inputs);

        // address result = SSTORE2.write(compressedData);

        renderer.addLayer({
            target: target,
            ipfs: INounsCoasterMetadataRendererTypes.IPFSGroup({
                baseUri: "ipfs://bafybeidmllp5rev4k2na7t34bmwxjjp2dt4w6papy4aicynmmshgojny2e/",
                extension: ".png"
            }),
            decompressedSize: data.length,
            compressedData: compressedData,
            count: items.length,
            property: "18 Expression front left",
            variantProperty: variantPropertyParameters
        });
    }

    function addLayer19(NounsCoasterMetadataRenderer renderer, address target)
        internal
    {
        // 19 Glasses front left
        INounsCoasterMetadataRendererTypes.VariantPropertyParameters
            memory variantPropertyParameters;
        variantPropertyParameters
            .offsets = new INounsCoasterMetadataRendererTypes.VariantOffset[](
            0
        );
        variantPropertyParameters.id = 0;
        variantPropertyParameters.count = 0;

        string[] memory items = new string[](21);
        items[0] = "Black";
        items[1] = "Black Red Eyes";
        items[2] = "Black Rgb";
        items[3] = "Blue";
        items[4] = "Blue Med Saturated";
        items[5] = "Frog Green";
        items[6] = "Full Black";
        items[7] = "Green Blue Multi";
        items[8] = "Grey Light";
        items[9] = "Guava";
        items[10] = "Hip Rose";
        items[11] = "Honey";
        items[12] = "Magenta";
        items[13] = "Orange";
        items[14] = "Pink Purple Multi";
        items[15] = "Red";
        items[16] = "Smoke";
        items[17] = "Teal";
        items[18] = "Watermelon";
        items[19] = "Yellow Orange Multi";
        items[20] = "Yellow Saturated";

        bytes memory data = abi.encode(items);

        VmSafe vm = VmSafe(
            address(uint160(uint256(keccak256("hevm cheat code"))))
        );

        string[] memory inputs = new string[](3);
        inputs[0] = "node";
        inputs[1] = "script/nouns-coasters/deflate.js";
        inputs[2] = vm.toString(data);

        bytes memory compressedData = vm.ffi(inputs);

        // address result = SSTORE2.write(compressedData);

        renderer.addLayer({
            target: target,
            ipfs: INounsCoasterMetadataRendererTypes.IPFSGroup({
                baseUri: "ipfs://bafybeidmllp5rev4k2na7t34bmwxjjp2dt4w6papy4aicynmmshgojny2e/",
                extension: ".png"
            }),
            decompressedSize: data.length,
            compressedData: compressedData,
            count: items.length,
            property: "19 Glasses front left",
            variantProperty: variantPropertyParameters
        });
    }

    function addLayer20(NounsCoasterMetadataRenderer renderer, address target)
        internal
    {
        // 20 Body front right
        INounsCoasterMetadataRendererTypes.VariantPropertyParameters
            memory variantPropertyParameters;
        variantPropertyParameters
            .offsets = new INounsCoasterMetadataRendererTypes.VariantOffset[](
            4
        );
        variantPropertyParameters.id = 3;
        variantPropertyParameters.count = 4;
        variantPropertyParameters.offsets[
            0
        ] = INounsCoasterMetadataRendererTypes.VariantOffset({
            startAt: 0,
            count: 30
        });
        variantPropertyParameters.offsets[
            1
        ] = INounsCoasterMetadataRendererTypes.VariantOffset({
            startAt: 30,
            count: 20
        });
        variantPropertyParameters.offsets[
            2
        ] = INounsCoasterMetadataRendererTypes.VariantOffset({
            startAt: 50,
            count: 30
        });
        variantPropertyParameters.offsets[
            3
        ] = INounsCoasterMetadataRendererTypes.VariantOffset({
            startAt: 80,
            count: 30
        });

        string[] memory items = new string[](110);
        items[0] = "1-Both Arms Down Bege Bsod";
        items[1] = "1-Both Arms Down Bege Crt";
        items[2] = "1-Both Arms Down Blue Grey";
        items[3] = "1-Both Arms Down Blue Sky";
        items[4] = "1-Both Arms Down Cold";
        items[5] = "1-Both Arms Down Computer Blue";
        items[6] = "1-Both Arms Down Dark Brown";
        items[7] = "1-Both Arms Down Dark Pink";
        items[8] = "1-Both Arms Down Foggrey";
        items[9] = "1-Both Arms Down Gold";
        items[10] = "1-Both Arms Down Gray Scale 1";
        items[11] = "1-Both Arms Down Gray Scale 7";
        items[12] = "1-Both Arms Down Gray Scale 8";
        items[13] = "1-Both Arms Down Gray Scale 9";
        items[14] = "1-Both Arms Down Green";
        items[15] = "1-Both Arms Down Gunk";
        items[16] = "1-Both Arms Down Hotbrown";
        items[17] = "1-Both Arms Down Magenta";
        items[18] = "1-Both Arms Down Orange";
        items[19] = "1-Both Arms Down Orange Yellow";
        items[20] = "1-Both Arms Down Peachy A";
        items[21] = "1-Both Arms Down Peachy B";
        items[22] = "1-Both Arms Down Purple";
        items[23] = "1-Both Arms Down Red";
        items[24] = "1-Both Arms Down Red Pinkish";
        items[25] = "1-Both Arms Down Rust";
        items[26] = "1-Both Arms Down Slime Green";
        items[27] = "1-Both Arms Down Teal";
        items[28] = "1-Both Arms Down Teal Light";
        items[29] = "1-Both Arms Down Yellow";
        items[30] = "2-Both Arms Up Bege Bsod";
        items[31] = "2-Both Arms Up Blue Grey";
        items[32] = "2-Both Arms Up Blue Sky";
        items[33] = "2-Both Arms Up Cold";
        items[34] = "2-Both Arms Up Dark Brown";
        items[35] = "2-Both Arms Up Gold";
        items[36] = "2-Both Arms Up Gray Scale 1";
        items[37] = "2-Both Arms Up Gray Scale 7";
        items[38] = "2-Both Arms Up Gray Scale 9";
        items[39] = "2-Both Arms Up Gunk";
        items[40] = "2-Both Arms Up Orange";
        items[41] = "2-Both Arms Up Orange Yellow";
        items[42] = "2-Both Arms Up Peachy A";
        items[43] = "2-Both Arms Up Peachy B";
        items[44] = "2-Both Arms Up Purple";
        items[45] = "2-Both Arms Up Red Pinkish";
        items[46] = "2-Both Arms Up Rust";
        items[47] = "2-Both Arms Up Slime Green";
        items[48] = "2-Both Arms Up Teal Light";
        items[49] = "2-Both Arms Up Yellow";
        items[50] = "3-Left Arm Up Bege Bsod";
        items[51] = "3-Left Arm Up Bege Crt";
        items[52] = "3-Left Arm Up Blue Grey";
        items[53] = "3-Left Arm Up Blue Sky";
        items[54] = "3-Left Arm Up Cold";
        items[55] = "3-Left Arm Up Computer Blue";
        items[56] = "3-Left Arm Up Dark Brown";
        items[57] = "3-Left Arm Up Dark Pink";
        items[58] = "3-Left Arm Up Foggrey";
        items[59] = "3-Left Arm Up Gold";
        items[60] = "3-Left Arm Up Gray Scale 1";
        items[61] = "3-Left Arm Up Gray Scale 7";
        items[62] = "3-Left Arm Up Gray Scale 8";
        items[63] = "3-Left Arm Up Gray Scale 9";
        items[64] = "3-Left Arm Up Green";
        items[65] = "3-Left Arm Up Gunk";
        items[66] = "3-Left Arm Up Hotbrown";
        items[67] = "3-Left Arm Up Magenta";
        items[68] = "3-Left Arm Up Orange";
        items[69] = "3-Left Arm Up Orange Yellow";
        items[70] = "3-Left Arm Up Peachy A";
        items[71] = "3-Left Arm Up Peachy B";
        items[72] = "3-Left Arm Up Purple";
        items[73] = "3-Left Arm Up Red";
        items[74] = "3-Left Arm Up Red Pinkish";
        items[75] = "3-Left Arm Up Rust";
        items[76] = "3-Left Arm Up Slime Green";
        items[77] = "3-Left Arm Up Teal";
        items[78] = "3-Left Arm Up Teal Light";
        items[79] = "3-Left Arm Up Yellow";
        items[80] = "4-Right Arm Up Bege Bsod";
        items[81] = "4-Right Arm Up Bege Crt";
        items[82] = "4-Right Arm Up Blue Grey";
        items[83] = "4-Right Arm Up Blue Sky";
        items[84] = "4-Right Arm Up Cold";
        items[85] = "4-Right Arm Up Computer Blue";
        items[86] = "4-Right Arm Up Dark Brown";
        items[87] = "4-Right Arm Up Dark Pink";
        items[88] = "4-Right Arm Up Foggrey";
        items[89] = "4-Right Arm Up Gold";
        items[90] = "4-Right Arm Up Gray Scale 1";
        items[91] = "4-Right Arm Up Gray Scale 7";
        items[92] = "4-Right Arm Up Gray Scale 8";
        items[93] = "4-Right Arm Up Gray Scale 9";
        items[94] = "4-Right Arm Up Green";
        items[95] = "4-Right Arm Up Gunk";
        items[96] = "4-Right Arm Up Hotbrown";
        items[97] = "4-Right Arm Up Magenta";
        items[98] = "4-Right Arm Up Orange";
        items[99] = "4-Right Arm Up Orange Yellow";
        items[100] = "4-Right Arm Up Peachy A";
        items[101] = "4-Right Arm Up Peachy B";
        items[102] = "4-Right Arm Up Purple";
        items[103] = "4-Right Arm Up Red";
        items[104] = "4-Right Arm Up Red Pinkish";
        items[105] = "4-Right Arm Up Rust";
        items[106] = "4-Right Arm Up Slime Green";
        items[107] = "4-Right Arm Up Teal";
        items[108] = "4-Right Arm Up Teal Light";
        items[109] = "4-Right Arm Up Yellow";

        bytes memory data = abi.encode(items);

        VmSafe vm = VmSafe(
            address(uint160(uint256(keccak256("hevm cheat code"))))
        );

        string[] memory inputs = new string[](3);
        inputs[0] = "node";
        inputs[1] = "script/nouns-coasters/deflate.js";
        inputs[2] = vm.toString(data);

        bytes memory compressedData = vm.ffi(inputs);

        // address result = SSTORE2.write(compressedData);

        renderer.addLayer({
            target: target,
            ipfs: INounsCoasterMetadataRendererTypes.IPFSGroup({
                baseUri: "ipfs://bafybeidmllp5rev4k2na7t34bmwxjjp2dt4w6papy4aicynmmshgojny2e/",
                extension: ".png"
            }),
            decompressedSize: data.length,
            compressedData: compressedData,
            count: items.length,
            property: "20 Body front right",
            variantProperty: variantPropertyParameters
        });
    }

    function addLayer21(NounsCoasterMetadataRenderer renderer, address target)
        internal
    {
        // 21 Accessories front right
        INounsCoasterMetadataRendererTypes.VariantPropertyParameters
            memory variantPropertyParameters;
        variantPropertyParameters
            .offsets = new INounsCoasterMetadataRendererTypes.VariantOffset[](
            4
        );
        variantPropertyParameters.id = 3;
        variantPropertyParameters.count = 4;
        variantPropertyParameters.offsets[
            0
        ] = INounsCoasterMetadataRendererTypes.VariantOffset({
            startAt: 0,
            count: 119
        });
        variantPropertyParameters.offsets[
            1
        ] = INounsCoasterMetadataRendererTypes.VariantOffset({
            startAt: 119,
            count: 130
        });
        variantPropertyParameters.offsets[
            2
        ] = INounsCoasterMetadataRendererTypes.VariantOffset({
            startAt: 249,
            count: 137
        });
        variantPropertyParameters.offsets[
            3
        ] = INounsCoasterMetadataRendererTypes.VariantOffset({
            startAt: 386,
            count: 137
        });

        string[] memory items = new string[](523);
        items[0] = "1-Asset Front Right 1n";
        items[1] = "1-Asset Front Right Aardvark";
        items[2] = "1-Asset Front Right Axe";
        items[3] = "1-Asset Front Right Belly Chamaleon";
        items[4] = "1-Asset Front Right Bird Flying";
        items[5] = "1-Asset Front Right Bird Side";
        items[6] = "1-Asset Front Right Bling Anchor";
        items[7] = "1-Asset Front Right Bling Anvil";
        items[8] = "1-Asset Front Right Bling Arrow";
        items[9] = "1-Asset Front Right Bling Gold Ingot";
        items[10] = "1-Asset Front Right Bling Love";
        items[11] = "1-Asset Front Right Bling Mask";
        items[12] = "1-Asset Front Right Bling Rings";
        items[13] = "1-Asset Front Right Bling Sparkles";
        items[14] = "1-Asset Front Right Both Arms Down Bege Bsod";
        items[15] = "1-Asset Front Right Both Arms Down Belly Chamaleon";
        items[16] = "1-Asset Front Right Both Arms Down Big Walk Blue Prime";
        items[17] = "1-Asset Front Right Both Arms Down Big Walk Rainbow";
        items[18] = "1-Asset Front Right Both Arms Down Chain Logo";
        items[19] = "1-Asset Front Right Both Arms Down Checker Disco";
        items[20] = "1-Asset Front Right Both Arms Down Checker Rgb";
        items[21] = "1-Asset Front Right Both Arms Down Checker Spaced Black";
        items[22] = "1-Asset Front Right Both Arms Down Checker Spaced White";
        items[23] = "1-Asset Front Right Both Arms Down Checker Vibrant";
        items[24] = "1-Asset Front Right Both Arms Down Checkers Big Green";
        items[25] = "1-Asset Front Right Both Arms Down Checkers Big Red Cold";
        items[26] = "1-Asset Front Right Both Arms Down Checkers Blue";
        items[27] = "1-Asset Front Right Both Arms Down Collar Sunset";
        items[28] = "1-Asset Front Right Both Arms Down Decay Gray Dark";
        items[29] = "1-Asset Front Right Both Arms Down Decay Pride";
        items[30] = "1-Asset Front Right Both Arms Down Gradient Dawn";
        items[31] = "1-Asset Front Right Both Arms Down Gradient Dusk";
        items[32] = "1-Asset Front Right Both Arms Down Gradient Ice";
        items[33] = "1-Asset Front Right Both Arms Down Gradient Pride";
        items[34] = "1-Asset Front Right Both Arms Down Gradient Redpink";
        items[35] = "1-Asset Front Right Both Arms Down Gradient Sunset";
        items[36] = "1-Asset Front Right Both Arms Down Gray Scale 1";
        items[37] = "1-Asset Front Right Both Arms Down Gray Scale 9";
        items[38] = "1-Asset Front Right Both Arms Down Ice Cold";
        items[39] = "1-Asset Front Right Both Arms Down Lines 45 Greens";
        items[40] = "1-Asset Front Right Both Arms Down Lines 45 Rose";
        items[41] = "1-Asset Front Right Both Arms Down Old Shirt";
        items[42] = "1-Asset Front Right Both Arms Down Rainbow Steps";
        items[43] = "1-Asset Front Right Both Arms Down Robot";
        items[44] = "1-Asset Front Right Both Arms Down Safety Vest";
        items[45] = "1-Asset Front Right Both Arms Down Scarf Clown";
        items[46] = "1-Asset Front Right Both Arms Down Shirt Black";
        items[47] = "1-Asset Front Right Both Arms Down Stripes And Checks";
        items[48] = "1-Asset Front Right Both Arms Down Stripes Big Red";
        items[49] = "1-Asset Front Right Both Arms Down Stripes Blit";
        items[50] = "1-Asset Front Right Both Arms Down Stripes Blue Med";
        items[51] = "1-Asset Front Right Both Arms Down Stripes Brown";
        items[52] = "1-Asset Front Right Both Arms Down Stripes Olive";
        items[53] = "1-Asset Front Right Both Arms Down Stripes Red Cold";
        items[54] = "1-Asset Front Right Both Arms Down Taxi Checkers";
        items[55] = "1-Asset Front Right Both Arms Down Txt Ico";
        items[56] = "1-Asset Front Right Both Arms Down Wall";
        items[57] = "1-Asset Front Right Both Arms Down Woolweave Bicolor";
        items[58] = "1-Asset Front Right Both Arms Down Woolweave Dirt";
        items[59] = "1-Asset Front Right Carrot";
        items[60] = "1-Asset Front Right Chain Logo";
        items[61] = "1-Asset Front Right Clover";
        items[62] = "1-Asset Front Right Doom";
        items[63] = "1-Asset Front Right Dragon";
        items[64] = "1-Asset Front Right Ducky";
        items[65] = "1-Asset Front Right Eth";
        items[66] = "1-Asset Front Right Eye";
        items[67] = "1-Asset Front Right Foo Black";
        items[68] = "1-Asset Front Right Fries";
        items[69] = "1-Asset Front Right Glasses";
        items[70] = "1-Asset Front Right Glasses Logo";
        items[71] = "1-Asset Front Right Glasses Logo Sun";
        items[72] = "1-Asset Front Right Heart";
        items[73] = "1-Asset Front Right Id";
        items[74] = "1-Asset Front Right Insignia";
        items[75] = "1-Asset Front Right Leaf";
        items[76] = "1-Asset Front Right Light Bulb";
        items[77] = "1-Asset Front Right Lp";
        items[78] = "1-Asset Front Right Mars Face";
        items[79] = "1-Asset Front Right Matrix White";
        items[80] = "1-Asset Front Right Moon Block";
        items[81] = "1-Asset Front Right None";
        items[82] = "1-Asset Front Right Noun Txt Multicolor";
        items[83] = "1-Asset Front Right Pizza Bling";
        items[84] = "1-Asset Front Right Pocket Pencil";
        items[85] = "1-Asset Front Right Rain";
        items[86] = "1-Asset Front Right Rgb";
        items[87] = "1-Asset Front Right Scissors";
        items[88] = "1-Asset Front Right Secret X";
        items[89] = "1-Asset Front Right Shrimp";
        items[90] = "1-Asset Front Right Slime Splat";
        items[91] = "1-Asset Front Right Small Bling";
        items[92] = "1-Asset Front Right Snowflake";
        items[93] = "1-Asset Front Right Stains Blood";
        items[94] = "1-Asset Front Right Stains Zombie";
        items[95] = "1-Asset Front Right Sunset";
        items[96] = "1-Asset Front Right Think";
        items[97] = "1-Asset Front Right Tie Black On White";
        items[98] = "1-Asset Front Right Tie Purple";
        items[99] = "1-Asset Front Right Tie Red";
        items[100] = "1-Asset Front Right Txt A2+b2";
        items[101] = "1-Asset Front Right Txt Cc";
        items[102] = "1-Asset Front Right Txt Copy";
        items[103] = "1-Asset Front Right Txt Dao Black";
        items[104] = "1-Asset Front Right Txt Dope";
        items[105] = "1-Asset Front Right Txt Io";
        items[106] = "1-Asset Front Right Txt Lmao";
        items[107] = "1-Asset Front Right Txt Lol";
        items[108] = "1-Asset Front Right Txt Nil Grey Dark";
        items[109] = "1-Asset Front Right Txt Noun F0f";
        items[110] = "1-Asset Front Right Txt Noun Green";
        items[111] = "1-Asset Front Right Txt Pi";
        items[112] = "1-Asset Front Right Txt Pop";
        items[113] = "1-Asset Front Right Txt Rofl";
        items[114] = "1-Asset Front Right Txt We";
        items[115] = "1-Asset Front Right Txt Yay";
        items[116] = "1-Asset Front Right Txt Yolo";
        items[117] = "1-Asset Front Right Wave";
        items[118] = "1-Asset Front Right Wet Money";
        items[119] = "2-Asset Front Right 1n";
        items[120] = "2-Asset Front Right Aardvark";
        items[121] = "2-Asset Front Right Axe";
        items[122] = "2-Asset Front Right Belly Chamaleon";
        items[123] = "2-Asset Front Right Bird Flying";
        items[124] = "2-Asset Front Right Bird Side";
        items[125] = "2-Asset Front Right Bling Anchor";
        items[126] = "2-Asset Front Right Bling Anvil";
        items[127] = "2-Asset Front Right Bling Arrow";
        items[128] = "2-Asset Front Right Bling Cheese";
        items[129] = "2-Asset Front Right Bling Gold Ingot";
        items[130] = "2-Asset Front Right Bling Love";
        items[131] = "2-Asset Front Right Bling Mask";
        items[132] = "2-Asset Front Right Bling Rings";
        items[133] = "2-Asset Front Right Bling Sparkles";
        items[134] = "2-Asset Front Right Both Arms Up Bege Bsod";
        items[135] = "2-Asset Front Right Both Arms Up Bigwalk Blue Prime";
        items[136] = "2-Asset Front Right Both Arms Up Bigwalk Grey Light";
        items[137] = "2-Asset Front Right Both Arms Up Brown";
        items[138] = "2-Asset Front Right Both Arms Up Checker Disco";
        items[139] = "2-Asset Front Right Both Arms Up Checker Rgb";
        items[140] = "2-Asset Front Right Both Arms Up Checker Spaced Black";
        items[141] = "2-Asset Front Right Both Arms Up Checker Spaced White";
        items[142] = "2-Asset Front Right Both Arms Up Checker Vibrant";
        items[143] = "2-Asset Front Right Both Arms Up Checkers Big Green";
        items[144] = "2-Asset Front Right Both Arms Up Checkers Big Red Cold";
        items[145] = "2-Asset Front Right Both Arms Up Checkers Black";
        items[146] = "2-Asset Front Right Both Arms Up Checkers Blue";
        items[147] = "2-Asset Front Right Both Arms Up Checkers Magenta";
        items[148] = "2-Asset Front Right Both Arms Up Collar Sunset";
        items[149] = "2-Asset Front Right Both Arms Up Decay Gray Dark";
        items[150] = "2-Asset Front Right Both Arms Up Decay Pride";
        items[151] = "2-Asset Front Right Both Arms Up Gradient Dawn";
        items[152] = "2-Asset Front Right Both Arms Up Gradient Glacier";
        items[153] = "2-Asset Front Right Both Arms Up Gradient Ice";
        items[154] = "2-Asset Front Right Both Arms Up Gradient Pride";
        items[155] = "2-Asset Front Right Both Arms Up Gradient Redpink";
        items[156] = "2-Asset Front Right Both Arms Up Gradient Sunset";
        items[157] = "2-Asset Front Right Both Arms Up Gray Scale 1";
        items[158] = "2-Asset Front Right Both Arms Up Gray Scale 9";
        items[159] = "2-Asset Front Right Both Arms Up Grid Simple Bege";
        items[160] = "2-Asset Front Right Both Arms Up Lines 45 Greens";
        items[161] = "2-Asset Front Right Both Arms Up Lines 45 Rose";
        items[162] = "2-Asset Front Right Both Arms Up Old Shirt";
        items[163] = "2-Asset Front Right Both Arms Up Rainbow Steps";
        items[164] = "2-Asset Front Right Both Arms Up Robot";
        items[165] = "2-Asset Front Right Both Arms Up Safety Vest";
        items[166] = "2-Asset Front Right Both Arms Up Scarf Clown";
        items[167] = "2-Asset Front Right Both Arms Up Shirt Black";
        items[168] = "2-Asset Front Right Both Arms Up Stripes And Checks";
        items[169] = "2-Asset Front Right Both Arms Up Stripes Big Red";
        items[170] = "2-Asset Front Right Both Arms Up Stripes Blit";
        items[171] = "2-Asset Front Right Both Arms Up Stripes Blue Med";
        items[172] = "2-Asset Front Right Both Arms Up Stripes Olive";
        items[173] = "2-Asset Front Right Both Arms Up Stripes Red Cold";
        items[174] = "2-Asset Front Right Both Arms Up Taxi Checkers";
        items[175] = "2-Asset Front Right Both Arms Up Tee Yo";
        items[176] = "2-Asset Front Right Both Arms Up Txt Ico";
        items[177] = "2-Asset Front Right Both Arms Up Wall";
        items[178] = "2-Asset Front Right Both Arms Up Woolweave Bicolor";
        items[179] = "2-Asset Front Right Both Arms Up Woolweave Dirt";
        items[180] = "2-Asset Front Right Carrot";
        items[181] = "2-Asset Front Right Chain Logo";
        items[182] = "2-Asset Front Right Chicken";
        items[183] = "2-Asset Front Right Clover";
        items[184] = "2-Asset Front Right Dinosaur";
        items[185] = "2-Asset Front Right Dollar Bling";
        items[186] = "2-Asset Front Right Dragon";
        items[187] = "2-Asset Front Right Ducky";
        items[188] = "2-Asset Front Right Eth";
        items[189] = "2-Asset Front Right Eye";
        items[190] = "2-Asset Front Right Flash";
        items[191] = "2-Asset Front Right Foo Black";
        items[192] = "2-Asset Front Right Fries";
        items[193] = "2-Asset Front Right Glasses";
        items[194] = "2-Asset Front Right Glasses Logo Sun";
        items[195] = "2-Asset Front Right Heart";
        items[196] = "2-Asset Front Right Hoodiestrings Uneven";
        items[197] = "2-Asset Front Right Id";
        items[198] = "2-Asset Front Right Infinity";
        items[199] = "2-Asset Front Right Insignia";
        items[200] = "2-Asset Front Right Leaf";
        items[201] = "2-Asset Front Right Light Bulb";
        items[202] = "2-Asset Front Right Lp";
        items[203] = "2-Asset Front Right Mars Face";
        items[204] = "2-Asset Front Right Matrix White";
        items[205] = "2-Asset Front Right Moon Block";
        items[206] = "2-Asset Front Right None";
        items[207] = "2-Asset Front Right Noun Txt Multicolor";
        items[208] = "2-Asset Front Right Pizza Bling";
        items[209] = "2-Asset Front Right Pocket Pencil";
        items[210] = "2-Asset Front Right Rain";
        items[211] = "2-Asset Front Right Rgb";
        items[212] = "2-Asset Front Right Scissors";
        items[213] = "2-Asset Front Right Secret X";
        items[214] = "2-Asset Front Right Shrimp";
        items[215] = "2-Asset Front Right Slime Splat";
        items[216] = "2-Asset Front Right Small Bling";
        items[217] = "2-Asset Front Right Snowflake";
        items[218] = "2-Asset Front Right Stains Blood";
        items[219] = "2-Asset Front Right Stains Zombie";
        items[220] = "2-Asset Front Right Sunset";
        items[221] = "2-Asset Front Right Think";
        items[222] = "2-Asset Front Right Tie Black On White";
        items[223] = "2-Asset Front Right Tie Dye";
        items[224] = "2-Asset Front Right Tie Purple";
        items[225] = "2-Asset Front Right Tie Red";
        items[226] = "2-Asset Front Right Txt A2+b2";
        items[227] = "2-Asset Front Right Txt Cc";
        items[228] = "2-Asset Front Right Txt Cc 2";
        items[229] = "2-Asset Front Right Txt Copy";
        items[230] = "2-Asset Front Right Txt Dao Black";
        items[231] = "2-Asset Front Right Txt Dope";
        items[232] = "2-Asset Front Right Txt Io";
        items[233] = "2-Asset Front Right Txt Lmao";
        items[234] = "2-Asset Front Right Txt Lol";
        items[235] = "2-Asset Front Right Txt Mint";
        items[236] = "2-Asset Front Right Txt Nil Grey Dark";
        items[237] = "2-Asset Front Right Txt Noun";
        items[238] = "2-Asset Front Right Txt Noun F0f";
        items[239] = "2-Asset Front Right Txt Noun Green";
        items[240] = "2-Asset Front Right Txt Pi";
        items[241] = "2-Asset Front Right Txt Pop";
        items[242] = "2-Asset Front Right Txt Rofl";
        items[243] = "2-Asset Front Right Txt We";
        items[244] = "2-Asset Front Right Txt Yay";
        items[245] = "2-Asset Front Right Txt Yolo";
        items[246] = "2-Asset Front Right Wave";
        items[247] = "2-Asset Front Right Wet Money";
        items[248] = "2-Asset Front Right Ying Yang";
        items[249] = "3-Asset Front Right 1n";
        items[250] = "3-Asset Front Right Aardvark";
        items[251] = "3-Asset Front Right Axe";
        items[252] = "3-Asset Front Right Belly Chamaleon";
        items[253] = "3-Asset Front Right Bird Flying";
        items[254] = "3-Asset Front Right Bird Side";
        items[255] = "3-Asset Front Right Bling Anchor";
        items[256] = "3-Asset Front Right Bling Anvil";
        items[257] = "3-Asset Front Right Bling Arrow";
        items[258] = "3-Asset Front Right Bling Cheese";
        items[259] = "3-Asset Front Right Bling Gold Ingot";
        items[260] = "3-Asset Front Right Bling Love";
        items[261] = "3-Asset Front Right Bling Mask";
        items[262] = "3-Asset Front Right Bling Rings";
        items[263] = "3-Asset Front Right Bling Sparkles";
        items[264] = "3-Asset Front Right Carrot";
        items[265] = "3-Asset Front Right Chain Logo";
        items[266] = "3-Asset Front Right Chicken";
        items[267] = "3-Asset Front Right Cloud";
        items[268] = "3-Asset Front Right Clover";
        items[269] = "3-Asset Front Right Cow";
        items[270] = "3-Asset Front Right Dinosaur";
        items[271] = "3-Asset Front Right Dollar Bling";
        items[272] = "3-Asset Front Right Doom";
        items[273] = "3-Asset Front Right Dragon";
        items[274] = "3-Asset Front Right Ducky";
        items[275] = "3-Asset Front Right Eth";
        items[276] = "3-Asset Front Right Eye";
        items[277] = "3-Asset Front Right Flash";
        items[278] = "3-Asset Front Right Foo Black";
        items[279] = "3-Asset Front Right Fries";
        items[280] = "3-Asset Front Right Glasses";
        items[281] = "3-Asset Front Right Glasses Logo";
        items[282] = "3-Asset Front Right Glasses Logo Sun";
        items[283] = "3-Asset Front Right Heart";
        items[284] = "3-Asset Front Right Hoodiestrings Uneven";
        items[285] = "3-Asset Front Right Id";
        items[286] = "3-Asset Front Right Infinity";
        items[287] = "3-Asset Front Right Insignia";
        items[288] = "3-Asset Front Right Leaf";
        items[289] = "3-Asset Front Right Left Arm Up Bege Bsod";
        items[290] = "3-Asset Front Right Left Arm Up Bigwalk Blue Prime";
        items[291] = "3-Asset Front Right Left Arm Up Bigwalk Grey Light";
        items[292] = "3-Asset Front Right Left Arm Up Bigwalk Rainbow";
        items[293] = "3-Asset Front Right Left Arm Up Checker Disco";
        items[294] = "3-Asset Front Right Left Arm Up Checker Rgb";
        items[295] = "3-Asset Front Right Left Arm Up Checker Spaced Black";
        items[296] = "3-Asset Front Right Left Arm Up Checker Spaced White";
        items[297] = "3-Asset Front Right Left Arm Up Checker Vibrant";
        items[298] = "3-Asset Front Right Left Arm Up Checkers Big Black";
        items[299] = "3-Asset Front Right Left Arm Up Checkers Big Green";
        items[300] = "3-Asset Front Right Left Arm Up Checkers Big Red Cold";
        items[301] = "3-Asset Front Right Left Arm Up Checkers Blue";
        items[302] = "3-Asset Front Right Left Arm Up Checkers Magenta";
        items[303] = "3-Asset Front Right Left Arm Up Collar Sunset";
        items[304] = "3-Asset Front Right Left Arm Up Decay Gray Dark";
        items[305] = "3-Asset Front Right Left Arm Up Decay Pride";
        items[306] = "3-Asset Front Right Left Arm Up Gradient Dawn";
        items[307] = "3-Asset Front Right Left Arm Up Gradient Dusk";
        items[308] = "3-Asset Front Right Left Arm Up Gradient Glacier";
        items[309] = "3-Asset Front Right Left Arm Up Gradient Ice";
        items[310] = "3-Asset Front Right Left Arm Up Gradient Pride";
        items[311] = "3-Asset Front Right Left Arm Up Gradient Redpink";
        items[312] = "3-Asset Front Right Left Arm Up Gradient Sunset";
        items[313] = "3-Asset Front Right Left Arm Up Gray Scale 1";
        items[314] = "3-Asset Front Right Left Arm Up Gray Scale 9";
        items[315] = "3-Asset Front Right Left Arm Up Grid Simple Bege";
        items[316] = "3-Asset Front Right Left Arm Up Ice Cold";
        items[317] = "3-Asset Front Right Left Arm Up Lines 45 Greens";
        items[318] = "3-Asset Front Right Left Arm Up Lines 45 Rose";
        items[319] = "3-Asset Front Right Left Arm Up Old Shirt";
        items[320] = "3-Asset Front Right Left Arm Up Rainbow Steps";
        items[321] = "3-Asset Front Right Left Arm Up Robot";
        items[322] = "3-Asset Front Right Left Arm Up Safety Vest";
        items[323] = "3-Asset Front Right Left Arm Up Scarf Clown";
        items[324] = "3-Asset Front Right Left Arm Up Shirt Black";
        items[325] = "3-Asset Front Right Left Arm Up Stripes And Checks";
        items[326] = "3-Asset Front Right Left Arm Up Stripes Big Red";
        items[327] = "3-Asset Front Right Left Arm Up Stripes Blit";
        items[328] = "3-Asset Front Right Left Arm Up Stripes Blue Med";
        items[329] = "3-Asset Front Right Left Arm Up Stripes Brown";
        items[330] = "3-Asset Front Right Left Arm Up Stripes Olive";
        items[331] = "3-Asset Front Right Left Arm Up Stripes Red Cold";
        items[332] = "3-Asset Front Right Left Arm Up Taxi Checkers";
        items[333] = "3-Asset Front Right Left Arm Up Tee Yo";
        items[334] = "3-Asset Front Right Left Arm Up Txt Ico";
        items[335] = "3-Asset Front Right Left Arm Up Wall";
        items[336] = "3-Asset Front Right Left Arm Up Woolweave Bicolor";
        items[337] = "3-Asset Front Right Left Arm Up Woolweave Dirt";
        items[338] = "3-Asset Front Right Light Bulb";
        items[339] = "3-Asset Front Right Lp";
        items[340] = "3-Asset Front Right Mars Face";
        items[341] = "3-Asset Front Right Matrix White";
        items[342] = "3-Asset Front Right Moon Block";
        items[343] = "3-Asset Front Right None";
        items[344] = "3-Asset Front Right Noun Txt Multicolor";
        items[345] = "3-Asset Front Right Pizza Bling";
        items[346] = "3-Asset Front Right Pocket Pencil";
        items[347] = "3-Asset Front Right Rain";
        items[348] = "3-Asset Front Right Rgb";
        items[349] = "3-Asset Front Right Scissors";
        items[350] = "3-Asset Front Right Secret X";
        items[351] = "3-Asset Front Right Shrimp";
        items[352] = "3-Asset Front Right Slime Splat";
        items[353] = "3-Asset Front Right Small Bling";
        items[354] = "3-Asset Front Right Snowflake";
        items[355] = "3-Asset Front Right Stains Blood";
        items[356] = "3-Asset Front Right Stains Zombie";
        items[357] = "3-Asset Front Right Sunset";
        items[358] = "3-Asset Front Right Think";
        items[359] = "3-Asset Front Right Tie Black On White";
        items[360] = "3-Asset Front Right Tie Dye";
        items[361] = "3-Asset Front Right Tie Purple";
        items[362] = "3-Asset Front Right Tie Red";
        items[363] = "3-Asset Front Right Txt A2+b2";
        items[364] = "3-Asset Front Right Txt Cc";
        items[365] = "3-Asset Front Right Txt Cc 2";
        items[366] = "3-Asset Front Right Txt Copy";
        items[367] = "3-Asset Front Right Txt Dao Black";
        items[368] = "3-Asset Front Right Txt Dope";
        items[369] = "3-Asset Front Right Txt Io";
        items[370] = "3-Asset Front Right Txt Lmao";
        items[371] = "3-Asset Front Right Txt Lol";
        items[372] = "3-Asset Front Right Txt Mint";
        items[373] = "3-Asset Front Right Txt Nil Grey Dark";
        items[374] = "3-Asset Front Right Txt Noun";
        items[375] = "3-Asset Front Right Txt Noun F0f";
        items[376] = "3-Asset Front Right Txt Noun Green";
        items[377] = "3-Asset Front Right Txt Pi";
        items[378] = "3-Asset Front Right Txt Pop";
        items[379] = "3-Asset Front Right Txt Rofl";
        items[380] = "3-Asset Front Right Txt We";
        items[381] = "3-Asset Front Right Txt Yay";
        items[382] = "3-Asset Front Right Txt Yolo";
        items[383] = "3-Asset Front Right Wave";
        items[384] = "3-Asset Front Right Wet Money";
        items[385] = "3-Asset Front Right Ying Yang";
        items[386] = "4-Asset Front Right 1n";
        items[387] = "4-Asset Front Right Aardvark";
        items[388] = "4-Asset Front Right Axe";
        items[389] = "4-Asset Front Right Belly Chamaleon";
        items[390] = "4-Asset Front Right Bird Flying";
        items[391] = "4-Asset Front Right Bird Side";
        items[392] = "4-Asset Front Right Bling Anchor";
        items[393] = "4-Asset Front Right Bling Anvil";
        items[394] = "4-Asset Front Right Bling Arrow";
        items[395] = "4-Asset Front Right Bling Cheese";
        items[396] = "4-Asset Front Right Bling Gold Ingot";
        items[397] = "4-Asset Front Right Bling Love";
        items[398] = "4-Asset Front Right Bling Mask";
        items[399] = "4-Asset Front Right Bling Rings";
        items[400] = "4-Asset Front Right Bling Sparkles";
        items[401] = "4-Asset Front Right Carrot";
        items[402] = "4-Asset Front Right Chain Logo";
        items[403] = "4-Asset Front Right Chicken";
        items[404] = "4-Asset Front Right Cloud";
        items[405] = "4-Asset Front Right Clover";
        items[406] = "4-Asset Front Right Cow";
        items[407] = "4-Asset Front Right Dinosaur";
        items[408] = "4-Asset Front Right Dollar Bling";
        items[409] = "4-Asset Front Right Doom";
        items[410] = "4-Asset Front Right Dragon";
        items[411] = "4-Asset Front Right Ducky";
        items[412] = "4-Asset Front Right Eth";
        items[413] = "4-Asset Front Right Eye";
        items[414] = "4-Asset Front Right Flash";
        items[415] = "4-Asset Front Right Foo Black";
        items[416] = "4-Asset Front Right Fries";
        items[417] = "4-Asset Front Right Glasses";
        items[418] = "4-Asset Front Right Glasses Logo";
        items[419] = "4-Asset Front Right Glasses Logo Sun";
        items[420] = "4-Asset Front Right Heart";
        items[421] = "4-Asset Front Right Hoodiestrings Uneven";
        items[422] = "4-Asset Front Right Id";
        items[423] = "4-Asset Front Right Infinity";
        items[424] = "4-Asset Front Right Insignia";
        items[425] = "4-Asset Front Right Leaf";
        items[426] = "4-Asset Front Right Light Bulb";
        items[427] = "4-Asset Front Right Lp";
        items[428] = "4-Asset Front Right Mars Face";
        items[429] = "4-Asset Front Right Matrix White";
        items[430] = "4-Asset Front Right Moon Block";
        items[431] = "4-Asset Front Right None";
        items[432] = "4-Asset Front Right Noun Txt Multicolor";
        items[433] = "4-Asset Front Right Pizza Bling";
        items[434] = "4-Asset Front Right Pocket Pencil";
        items[435] = "4-Asset Front Right Rain";
        items[436] = "4-Asset Front Right Rgb";
        items[437] = "4-Asset Front Right Right Arm Up Bege Bsod";
        items[438] = "4-Asset Front Right Right Arm Up Bigwalk Blue Prime";
        items[439] = "4-Asset Front Right Right Arm Up Bigwalk Grey Light";
        items[440] = "4-Asset Front Right Right Arm Up Bigwalk Rainbow";
        items[441] = "4-Asset Front Right Right Arm Up Checker Disco";
        items[442] = "4-Asset Front Right Right Arm Up Checker Rgb";
        items[443] = "4-Asset Front Right Right Arm Up Checker Spaced Black";
        items[444] = "4-Asset Front Right Right Arm Up Checker Spaced White";
        items[445] = "4-Asset Front Right Right Arm Up Checker Vibrant";
        items[446] = "4-Asset Front Right Right Arm Up Checkers Big Green";
        items[447] = "4-Asset Front Right Right Arm Up Checkers Big Red Cold";
        items[448] = "4-Asset Front Right Right Arm Up Checkers Black";
        items[449] = "4-Asset Front Right Right Arm Up Checkers Blue";
        items[450] = "4-Asset Front Right Right Arm Up Checkers Magenta";
        items[451] = "4-Asset Front Right Right Arm Up Collar Sunset";
        items[452] = "4-Asset Front Right Right Arm Up Decay Gray Dark";
        items[453] = "4-Asset Front Right Right Arm Up Decay Pride";
        items[454] = "4-Asset Front Right Right Arm Up Gradient Dawn";
        items[455] = "4-Asset Front Right Right Arm Up Gradient Dusk";
        items[456] = "4-Asset Front Right Right Arm Up Gradient Glacier";
        items[457] = "4-Asset Front Right Right Arm Up Gradient Ice";
        items[458] = "4-Asset Front Right Right Arm Up Gradient Pride";
        items[459] = "4-Asset Front Right Right Arm Up Gradient Redpink";
        items[460] = "4-Asset Front Right Right Arm Up Gradient Sunset";
        items[461] = "4-Asset Front Right Right Arm Up Gray Scale 1";
        items[462] = "4-Asset Front Right Right Arm Up Gray Scale 9";
        items[463] = "4-Asset Front Right Right Arm Up Grid Simple Bege";
        items[464] = "4-Asset Front Right Right Arm Up Ice Cold";
        items[465] = "4-Asset Front Right Right Arm Up Lines 45 Greens";
        items[466] = "4-Asset Front Right Right Arm Up Lines 45 Rose";
        items[467] = "4-Asset Front Right Right Arm Up Old Shirt";
        items[468] = "4-Asset Front Right Right Arm Up Rainbow Steps";
        items[469] = "4-Asset Front Right Right Arm Up Robot";
        items[470] = "4-Asset Front Right Right Arm Up Safety Vest";
        items[471] = "4-Asset Front Right Right Arm Up Scarf Clown";
        items[472] = "4-Asset Front Right Right Arm Up Shirt Black";
        items[473] = "4-Asset Front Right Right Arm Up Stripes And Checks";
        items[474] = "4-Asset Front Right Right Arm Up Stripes Big Red";
        items[475] = "4-Asset Front Right Right Arm Up Stripes Blit";
        items[476] = "4-Asset Front Right Right Arm Up Stripes Blue Med";
        items[477] = "4-Asset Front Right Right Arm Up Stripes Brown";
        items[478] = "4-Asset Front Right Right Arm Up Stripes Olive";
        items[479] = "4-Asset Front Right Right Arm Up Stripes Red Cold";
        items[480] = "4-Asset Front Right Right Arm Up Taxi Checkers";
        items[481] = "4-Asset Front Right Right Arm Up Tee Yo";
        items[482] = "4-Asset Front Right Right Arm Up Txt Ico";
        items[483] = "4-Asset Front Right Right Arm Up Wall";
        items[484] = "4-Asset Front Right Right Arm Up Woolweave Bicolor";
        items[485] = "4-Asset Front Right Right Arm Up Woolweave Dirt";
        items[486] = "4-Asset Front Right Scissors";
        items[487] = "4-Asset Front Right Secret X";
        items[488] = "4-Asset Front Right Shrimp";
        items[489] = "4-Asset Front Right Slime Splat";
        items[490] = "4-Asset Front Right Small Bling";
        items[491] = "4-Asset Front Right Snowflake";
        items[492] = "4-Asset Front Right Stains Blood";
        items[493] = "4-Asset Front Right Stains Zombie";
        items[494] = "4-Asset Front Right Sunset";
        items[495] = "4-Asset Front Right Think";
        items[496] = "4-Asset Front Right Tie Black On White";
        items[497] = "4-Asset Front Right Tie Dye";
        items[498] = "4-Asset Front Right Tie Purple";
        items[499] = "4-Asset Front Right Tie Red";
        items[500] = "4-Asset Front Right Txt A2+b2";
        items[501] = "4-Asset Front Right Txt Cc";
        items[502] = "4-Asset Front Right Txt Cc 2";
        items[503] = "4-Asset Front Right Txt Copy";
        items[504] = "4-Asset Front Right Txt Dao Black";
        items[505] = "4-Asset Front Right Txt Dope";
        items[506] = "4-Asset Front Right Txt Io";
        items[507] = "4-Asset Front Right Txt Lmao";
        items[508] = "4-Asset Front Right Txt Lol";
        items[509] = "4-Asset Front Right Txt Mint";
        items[510] = "4-Asset Front Right Txt Nil Grey Dark";
        items[511] = "4-Asset Front Right Txt Noun";
        items[512] = "4-Asset Front Right Txt Noun F0f";
        items[513] = "4-Asset Front Right Txt Noun Green";
        items[514] = "4-Asset Front Right Txt Pi";
        items[515] = "4-Asset Front Right Txt Pop";
        items[516] = "4-Asset Front Right Txt Rofl";
        items[517] = "4-Asset Front Right Txt We";
        items[518] = "4-Asset Front Right Txt Yay";
        items[519] = "4-Asset Front Right Txt Yolo";
        items[520] = "4-Asset Front Right Wave";
        items[521] = "4-Asset Front Right Wet Money";
        items[522] = "4-Asset Front Right Ying Yang";

        bytes memory data = abi.encode(items);

        VmSafe vm = VmSafe(
            address(uint160(uint256(keccak256("hevm cheat code"))))
        );

        string[] memory inputs = new string[](3);
        inputs[0] = "node";
        inputs[1] = "script/nouns-coasters/deflate.js";
        inputs[2] = vm.toString(data);

        bytes memory compressedData = vm.ffi(inputs);

        // address result = SSTORE2.write(compressedData);

        renderer.addLayer({
            target: target,
            ipfs: INounsCoasterMetadataRendererTypes.IPFSGroup({
                baseUri: "ipfs://bafybeidmllp5rev4k2na7t34bmwxjjp2dt4w6papy4aicynmmshgojny2e/",
                extension: ".png"
            }),
            decompressedSize: data.length,
            compressedData: compressedData,
            count: items.length,
            property: "21 Accessories front right",
            variantProperty: variantPropertyParameters
        });
    }

    function addLayer22(NounsCoasterMetadataRenderer renderer, address target)
        internal
    {
        // 22 Head front right
        INounsCoasterMetadataRendererTypes.VariantPropertyParameters
            memory variantPropertyParameters;
        variantPropertyParameters
            .offsets = new INounsCoasterMetadataRendererTypes.VariantOffset[](
            0
        );
        variantPropertyParameters.id = 0;
        variantPropertyParameters.count = 0;

        string[] memory items = new string[](519);
        items[0] = "Aardvark Bored";
        items[1] = "Aardvark Happy";
        items[2] = "Aardvark Scared";
        items[3] = "Abstract Bored";
        items[4] = "Abstract Scared";
        items[5] = "Abstract Sick";
        items[6] = "Ape Sick";
        items[7] = "Bag Bored";
        items[8] = "Bag Happy";
        items[9] = "Bag Scared";
        items[10] = "Bag Sick";
        items[11] = "Bagpipe Scared";
        items[12] = "Banana Bored";
        items[13] = "Banana Scared";
        items[14] = "Bank Happy";
        items[15] = "Bank Sick";
        items[16] = "Baseball Gameball Bored";
        items[17] = "Baseball Gameball Happy";
        items[18] = "Baseball Gameball Scared";
        items[19] = "Baseball Gameball Sick";
        items[20] = "Bat Bored";
        items[21] = "Bat Happy";
        items[22] = "Bear Scared";
        items[23] = "Bear Sick";
        items[24] = "Beer Happy";
        items[25] = "Beet Bored";
        items[26] = "Beet Happy";
        items[27] = "Bell Happy";
        items[28] = "Bigfoot Bored";
        items[29] = "Bigfoot Yeti Bored";
        items[30] = "Bigfoot Yeti Scared";
        items[31] = "Bigfoot Yeti Sick";
        items[32] = "Blackhole Bored";
        items[33] = "Blackhole Happy";
        items[34] = "Blackhole Scared";
        items[35] = "Blackhole Sick";
        items[36] = "Blueberry Scared";
        items[37] = "Blueblerry Bored";
        items[38] = "Bomb Bored";
        items[39] = "Bomb Scared";
        items[40] = "Bonsai Bored";
        items[41] = "Bonsai Scared";
        items[42] = "Boombox Bored";
        items[43] = "Boombox Sick";
        items[44] = "Boot Bored";
        items[45] = "Boot Happy";
        items[46] = "Boot Scared";
        items[47] = "Boot Sick";
        items[48] = "Box Happy";
        items[49] = "Box Scared";
        items[50] = "Boxingglove Bored";
        items[51] = "Boxingglove Happy";
        items[52] = "Brain Bored";
        items[53] = "Brain Happy";
        items[54] = "Bubble Speech Bored";
        items[55] = "Bubble Speech Scared";
        items[56] = "Bubblegum Happy";
        items[57] = "Bubblegum Scared";
        items[58] = "Burger Dollarmenu Bored";
        items[59] = "Burger Dollarmenu Happy";
        items[60] = "Cake Bored";
        items[61] = "Cake Sick";
        items[62] = "Calculator Bored";
        items[63] = "Calculator Scared";
        items[64] = "Calculator Sick";
        items[65] = "Calendar Bored";
        items[66] = "Calendar Happy";
        items[67] = "Calendar Sick";
        items[68] = "Camcorder Bored";
        items[69] = "Camcorder Sick";
        items[70] = "Candy Bar Bored";
        items[71] = "Candy Bar Happy";
        items[72] = "Candy Bar Sick";
        items[73] = "Cannedham Happy";
        items[74] = "Cannedham Sick";
        items[75] = "Car Bored";
        items[76] = "Car Scared";
        items[77] = "Cash Register Bored";
        items[78] = "Cash Register Happy";
        items[79] = "Cassettetape Bored";
        items[80] = "Cassettetape Scared";
        items[81] = "Cat Happy";
        items[82] = "Cd Scared";
        items[83] = "Chain Happy";
        items[84] = "Chain Scared";
        items[85] = "Chain Sick";
        items[86] = "Chainsaw Happy";
        items[87] = "Chameleon Bored";
        items[88] = "Chameleon Scared";
        items[89] = "Chameleon Sick";
        items[90] = "Chart Bars Scared";
        items[91] = "Chart Bars Sick";
        items[92] = "Cheese Scared";
        items[93] = "Chefhat Bored";
        items[94] = "Chefhat Happy";
        items[95] = "Chefhat Sick";
        items[96] = "Cherry Happy";
        items[97] = "Chicken Bored";
        items[98] = "Chicken Happy";
        items[99] = "Chicken Scared";
        items[100] = "Chipboard Bored";
        items[101] = "Chipboard Happy";
        items[102] = "Chipboard Scared";
        items[103] = "Chipboard Sick";
        items[104] = "Chips Happy";
        items[105] = "Chips Scared";
        items[106] = "Chips Sick";
        items[107] = "Cloud Bored";
        items[108] = "Clover Happy";
        items[109] = "Clover Sick";
        items[110] = "Clutch Bored";
        items[111] = "Clutch Scared";
        items[112] = "Coffeebean Bored";
        items[113] = "Coffeebean Happy";
        items[114] = "Coffeebean Sick";
        items[115] = "Console Handheld Happy";
        items[116] = "Cordlessphone Bored";
        items[117] = "Cordlessphone Happy";
        items[118] = "Cordlessphone Scared";
        items[119] = "Couch Sick";
        items[120] = "Cow Happy";
        items[121] = "Crab Bored";
        items[122] = "Crab Scared";
        items[123] = "Crane Happy";
        items[124] = "Croc Hat Bored";
        items[125] = "Croc Hat Sick";
        items[126] = "Crown Sick";
        items[127] = "Crt Bsod Bored";
        items[128] = "Crt Bsod Sick";
        items[129] = "Crystallball Bored";
        items[130] = "Crystallball Happy";
        items[131] = "Crystallball Scared";
        items[132] = "Crystallball Sick";
        items[133] = "Diamond Blue Happy";
        items[134] = "Diamond Blue Scared";
        items[135] = "Dictionary Happy";
        items[136] = "Dictionary Sick";
        items[137] = "Dino Bored";
        items[138] = "Dino Sick";
        items[139] = "Dna Happy";
        items[140] = "Dna Sick";
        items[141] = "Drill Bored";
        items[142] = "Drill Happy";
        items[143] = "Duck Happy";
        items[144] = "Duck Scared";
        items[145] = "Duck Sick";
        items[146] = "Ducky Bored";
        items[147] = "Ducky Happy";
        items[148] = "Earth Bored";
        items[149] = "Earth Sick";
        items[150] = "Egg Scared";
        items[151] = "Egg Sick";
        items[152] = "Faberge Bored";
        items[153] = "Faberge Sick";
        items[154] = "Factory Dark Bored";
        items[155] = "Fan Happy";
        items[156] = "Fence Bored";
        items[157] = "Fence Happy";
        items[158] = "Fence Sick";
        items[159] = "Film 35mm Happy";
        items[160] = "Film 35mm Sick";
        items[161] = "Film Strip Bored";
        items[162] = "Film Strip Happy";
        items[163] = "Film Strip Sick";
        items[164] = "Fir Scared";
        items[165] = "Firehydrant Bored";
        items[166] = "Firehydrant Happy";
        items[167] = "Firehydrant Sick";
        items[168] = "Flamingo Happy";
        items[169] = "Flamingo Scared";
        items[170] = "Flower Happy";
        items[171] = "Flower Scared";
        items[172] = "Flower Sick";
        items[173] = "Fox Bored";
        items[174] = "Fox Happy";
        items[175] = "Fox Scared";
        items[176] = "Fox Sick";
        items[177] = "Frog Bored";
        items[178] = "Frog Happy";
        items[179] = "Garlic Happy";
        items[180] = "Garlic Sick";
        items[181] = "Gavel Bored";
        items[182] = "Gavel Happy";
        items[183] = "Gavel Sick";
        items[184] = "Ghost B Bored";
        items[185] = "Ghost B Happy";
        items[186] = "Glasses Big Happy";
        items[187] = "Glasses Big Scared";
        items[188] = "Glasses Big Sick";
        items[189] = "Gnomes Bored";
        items[190] = "Gnomes Scared";
        items[191] = "Gnomes Sick";
        items[192] = "Goat Scared";
        items[193] = "Goat Sick";
        items[194] = "Goldcoin Bored";
        items[195] = "Goldcoin Happy";
        items[196] = "Goldfish Sick";
        items[197] = "Grouper Sick";
        items[198] = "Hair Happy";
        items[199] = "Hair Scared";
        items[200] = "Hair Sick";
        items[201] = "Hanger Bored";
        items[202] = "Hanger Sick";
        items[203] = "Hardhat Bored";
        items[204] = "Hardhat Scared";
        items[205] = "Heart Bored";
        items[206] = "Heart Scared";
        items[207] = "Heart Sick";
        items[208] = "Helicopter Bored";
        items[209] = "Helicopter Happy";
        items[210] = "Helicopter Sick";
        items[211] = "Highheel Bored";
        items[212] = "Highheel Happy";
        items[213] = "Highheel Sick";
        items[214] = "Hockeypuck Bored";
        items[215] = "Hockeypuck Happy";
        items[216] = "Hockeypuck Sick";
        items[217] = "Horse Deepfried Bored";
        items[218] = "Horse Deepfried Happy";
        items[219] = "Horse Deepfried Sick";
        items[220] = "Hotdog Bored";
        items[221] = "Hotdog Scared";
        items[222] = "House Bored";
        items[223] = "Icepop B Bored";
        items[224] = "Icepop B Happy";
        items[225] = "Icepop B Sick";
        items[226] = "Igloo Bored";
        items[227] = "Igloo Happy";
        items[228] = "Igloo Scared";
        items[229] = "Igloo Sick";
        items[230] = "Island Bored";
        items[231] = "Island Happy";
        items[232] = "Island Scared";
        items[233] = "Island Sick";
        items[234] = "Jellyfish Happy";
        items[235] = "Jellyfish Sick";
        items[236] = "Jupiter Bored";
        items[237] = "Jupiter Happy";
        items[238] = "Jupiter Scared";
        items[239] = "Kangaroo Bored";
        items[240] = "Kangaroo Happy";
        items[241] = "Ketchup Happy";
        items[242] = "Ketchup Sick";
        items[243] = "Laptop Bored";
        items[244] = "Laptop Happy";
        items[245] = "Laptop Scared";
        items[246] = "Laptop Sick";
        items[247] = "Lightning Bolt Scared";
        items[248] = "Lint Bored";
        items[249] = "Lint Scared";
        items[250] = "Lint Sick";
        items[251] = "Lips Scared";
        items[252] = "Lipstick2 Bored";
        items[253] = "Lipstick2 Happy";
        items[254] = "Lipstick2 Sick";
        items[255] = "Lock Happy";
        items[256] = "Lock Sick";
        items[257] = "Macaroni Happy";
        items[258] = "Macaroni Scared";
        items[259] = "Mailbox Bored";
        items[260] = "Mailbox Happy";
        items[261] = "Mailbox Scared";
        items[262] = "Maze Happy";
        items[263] = "Maze Scared";
        items[264] = "Maze Sick";
        items[265] = "Microwave Bored";
        items[266] = "Microwave Scared";
        items[267] = "Microwave Sick";
        items[268] = "Milk Happy";
        items[269] = "Milk Scared";
        items[270] = "Mirror Bored";
        items[271] = "Mirror Scared";
        items[272] = "Moon Scared";
        items[273] = "Moose Scared";
        items[274] = "Moose Sick";
        items[275] = "Mosquito Happy";
        items[276] = "Mosquito Scared";
        items[277] = "Mountain Snowcap Bored";
        items[278] = "Mountain Snowcap Happy";
        items[279] = "Mouse Bored";
        items[280] = "Mug Bored";
        items[281] = "Mug Sick";
        items[282] = "Mushroom Bored";
        items[283] = "Mushroom Sick";
        items[284] = "Mustard Bored";
        items[285] = "Mustard Happy";
        items[286] = "Mustard Scared";
        items[287] = "Mustard Sick";
        items[288] = "Nigiri Bored";
        items[289] = "Nigiri Scared";
        items[290] = "Nigiri Sick";
        items[291] = "Noodles Happy";
        items[292] = "Noodles Scared";
        items[293] = "Noodles Sick";
        items[294] = "Onion Bored";
        items[295] = "Onion Happy";
        items[296] = "Onion Scared";
        items[297] = "Orangutan Happy";
        items[298] = "Orangutan Scared";
        items[299] = "Orca Bored";
        items[300] = "Orca Happy";
        items[301] = "Otter Bored";
        items[302] = "Otter Happy";
        items[303] = "Otter Sick";
        items[304] = "Outlet Happy";
        items[305] = "Outlet Scared";
        items[306] = "Owl Bored";
        items[307] = "Owl Happy";
        items[308] = "Owl Scared";
        items[309] = "Owl Sick";
        items[310] = "Oyster Bored";
        items[311] = "Oyster Sick";
        items[312] = "Paintbrush Scared";
        items[313] = "Paperclip Sick";
        items[314] = "Peanut Bored";
        items[315] = "Peanut Happy";
        items[316] = "Peanut Scared";
        items[317] = "Peanut Sick";
        items[318] = "Pencil Tip Bored";
        items[319] = "Pencil Tip Happy";
        items[320] = "Pencil Tip Scared";
        items[321] = "Pencil Tip Sick";
        items[322] = "Peyote Bored";
        items[323] = "Peyote Sick";
        items[324] = "Piano Bored";
        items[325] = "Piano Sick";
        items[326] = "Pickle Bored";
        items[327] = "Pickle Scared";
        items[328] = "Pie Scared";
        items[329] = "Pie Sick";
        items[330] = "Piggybank Happy";
        items[331] = "Pill Bored";
        items[332] = "Pill Happy";
        items[333] = "Pill Sick";
        items[334] = "Pillow Scared";
        items[335] = "Pillow Sick";
        items[336] = "Pineapple Scared";
        items[337] = "Pineapple Sick";
        items[338] = "Pipe Scared";
        items[339] = "Pipe Sick";
        items[340] = "Pirateship Happy";
        items[341] = "Pirateship Sick";
        items[342] = "Pizza Bored";
        items[343] = "Pizza Scared";
        items[344] = "Pizza Sick";
        items[345] = "Plane Bored";
        items[346] = "Plane Happy";
        items[347] = "Plane Scared";
        items[348] = "Pop Happy";
        items[349] = "Pop Scared";
        items[350] = "Pop Sick";
        items[351] = "Porkbao Bored";
        items[352] = "Porkbao Happy";
        items[353] = "Porkbao Scared";
        items[354] = "Porkbao Sick";
        items[355] = "Pufferfish Bored";
        items[356] = "Pufferfish Happy";
        items[357] = "Pufferfish Scared";
        items[358] = "Pumpkin Bored";
        items[359] = "Pumpkin Happy";
        items[360] = "Pumpkin Scared";
        items[361] = "Pumpkin Sick";
        items[362] = "Pyramid Bored";
        items[363] = "Pyramid Sick";
        items[364] = "Queencrown Happy";
        items[365] = "Queencrown Sick";
        items[366] = "Rabbit Happy";
        items[367] = "Rabbit Scared";
        items[368] = "Rabbit Sick";
        items[369] = "Rainbow Scared";
        items[370] = "Rainbow Sick";
        items[371] = "Rangefinder Happy";
        items[372] = "Rangefinder Scared";
        items[373] = "Rangefinder Sick";
        items[374] = "Raven Bored";
        items[375] = "Raven Scared";
        items[376] = "Retainer Happy";
        items[377] = "Retainer Sick";
        items[378] = "Rgb Scared";
        items[379] = "Ring Bored";
        items[380] = "Ring Happy";
        items[381] = "Ring Sick";
        items[382] = "Road Bored";
        items[383] = "Road Scared";
        items[384] = "Road Sick";
        items[385] = "Robot Bored";
        items[386] = "Robot Scared";
        items[387] = "Robot Sick";
        items[388] = "Rock Bored";
        items[389] = "Rock Scared";
        items[390] = "Rock Sick";
        items[391] = "Rosebud Scared";
        items[392] = "Rosebud Sick";
        items[393] = "Ruler Triangular Happy";
        items[394] = "Ruler Triangular Scared";
        items[395] = "Safe Happy";
        items[396] = "Safe Scared";
        items[397] = "Safe Sick";
        items[398] = "Saguaro Bored";
        items[399] = "Saguaro Scared";
        items[400] = "Saguaro Sick";
        items[401] = "Sailboat Bored";
        items[402] = "Sandwich Bored";
        items[403] = "Sandwich Scared";
        items[404] = "Saturn Happy";
        items[405] = "Saw Bored";
        items[406] = "Scorpion Bored";
        items[407] = "Scorpion Happy";
        items[408] = "Scorpion Scared";
        items[409] = "Shark Bored";
        items[410] = "Shark Scared";
        items[411] = "Shark Sick";
        items[412] = "Shower Bored";
        items[413] = "Shower Happy";
        items[414] = "Shower Scared";
        items[415] = "Shower Sick";
        items[416] = "Skateboard Bored";
        items[417] = "Skateboard Happy";
        items[418] = "Skateboard Scared";
        items[419] = "Skeleton Hat Sick";
        items[420] = "Skilift Scared";
        items[421] = "Snowglobe Bored";
        items[422] = "Snowglobe Scared";
        items[423] = "Snowman Happy";
        items[424] = "Snowman Sick";
        items[425] = "Snowmobile Scared";
        items[426] = "Snowmobile Sick";
        items[427] = "Spaghetti Bored";
        items[428] = "Spaghetti Happy";
        items[429] = "Spaghetti Scared";
        items[430] = "Sponge Bored";
        items[431] = "Sponge Scared";
        items[432] = "Squid Bored";
        items[433] = "Squid Scared";
        items[434] = "Squid Sick";
        items[435] = "Stapler Bored";
        items[436] = "Stapler Scared";
        items[437] = "Stapler Sick";
        items[438] = "Star Sparkles Bored";
        items[439] = "Star Sparkles Sick";
        items[440] = "Steak Bored";
        items[441] = "Sunset Sick";
        items[442] = "Taco Happy";
        items[443] = "Taco Scared";
        items[444] = "Taco Sick";
        items[445] = "Taxi Bored";
        items[446] = "Taxi Scared";
        items[447] = "Taxi Sick";
        items[448] = "Thumbsup Scared";
        items[449] = "Toaster Happy";
        items[450] = "Toaster Scared";
        items[451] = "Tooth Bored";
        items[452] = "Tooth Happy";
        items[453] = "Toothbrush Fresh Bored";
        items[454] = "Toothbrush Fresh Scared";
        items[455] = "Tornado Scared";
        items[456] = "Tornado Sick";
        items[457] = "Trashcan Happy";
        items[458] = "Trashcan Scared";
        items[459] = "Trashcan Sick";
        items[460] = "Treasurechest Bored";
        items[461] = "Treasurechest Happy";
        items[462] = "Treasurechest Sick";
        items[463] = "Turing Happy";
        items[464] = "Turing Sick";
        items[465] = "Ufo Bored";
        items[466] = "Ufo Scared";
        items[467] = "Ufo Sick";
        items[468] = "Undead Happy";
        items[469] = "Undead Scared";
        items[470] = "Unicorn Bored";
        items[471] = "Vending Machine Happy";
        items[472] = "Vending Machine Scared";
        items[473] = "Vending Machine Sick";
        items[474] = "Vent Bored";
        items[475] = "Vent Scared";
        items[476] = "Void Bored";
        items[477] = "Void Scared";
        items[478] = "Void Sick";
        items[479] = "Volcano Bored";
        items[480] = "Volcano Happy";
        items[481] = "Volcano Scared";
        items[482] = "Volcano Sick";
        items[483] = "Volleyball Bored";
        items[484] = "Volleyball Scared";
        items[485] = "Volleyball Sick";
        items[486] = "Wall Sick";
        items[487] = "Wallet Happy";
        items[488] = "Wallet Sick";
        items[489] = "Washingmachine Bored";
        items[490] = "Washingmachine Happy";
        items[491] = "Watch Happy";
        items[492] = "Watch Scared";
        items[493] = "Watch Sick";
        items[494] = "Watermelon Happy";
        items[495] = "Watermelon Scared";
        items[496] = "Wave Happy";
        items[497] = "Wave Scared";
        items[498] = "Wave Sick";
        items[499] = "Weed Happy";
        items[500] = "Weed Scared";
        items[501] = "Weight Happy";
        items[502] = "Weight Scared";
        items[503] = "Werewolf Sick";
        items[504] = "Whale Alive Happy";
        items[505] = "Whale Alive Scared";
        items[506] = "Whale Alive Sick";
        items[507] = "Whale Happy";
        items[508] = "Whale Scared";
        items[509] = "Wine Barrel Bored";
        items[510] = "Wine Barrel Scared";
        items[511] = "Wine Barrel Sick";
        items[512] = "Wine Happy";
        items[513] = "Wine Scared";
        items[514] = "Wine Sick";
        items[515] = "Wizardhat Bored";
        items[516] = "Zebra Bored";
        items[517] = "Zebra Happy";
        items[518] = "Zebra Sick";

        bytes memory data = abi.encode(items);

        VmSafe vm = VmSafe(
            address(uint160(uint256(keccak256("hevm cheat code"))))
        );

        string[] memory inputs = new string[](3);
        inputs[0] = "node";
        inputs[1] = "script/nouns-coasters/deflate.js";
        inputs[2] = vm.toString(data);

        bytes memory compressedData = vm.ffi(inputs);

        // address result = SSTORE2.write(compressedData);

        renderer.addLayer({
            target: target,
            ipfs: INounsCoasterMetadataRendererTypes.IPFSGroup({
                baseUri: "ipfs://bafybeidmllp5rev4k2na7t34bmwxjjp2dt4w6papy4aicynmmshgojny2e/",
                extension: ".png"
            }),
            decompressedSize: data.length,
            compressedData: compressedData,
            count: items.length,
            property: "22 Head front right",
            variantProperty: variantPropertyParameters
        });
    }

    function addLayer23(NounsCoasterMetadataRenderer renderer, address target)
        internal
    {
        // 23 Expression front right
        INounsCoasterMetadataRendererTypes.VariantPropertyParameters
            memory variantPropertyParameters;
        variantPropertyParameters
            .offsets = new INounsCoasterMetadataRendererTypes.VariantOffset[](
            0
        );
        variantPropertyParameters.id = 0;
        variantPropertyParameters.count = 0;

        string[] memory items = new string[](4);
        items[0] = "Bored";
        items[1] = "Happy";
        items[2] = "Scared";
        items[3] = "Sick";

        bytes memory data = abi.encode(items);

        VmSafe vm = VmSafe(
            address(uint160(uint256(keccak256("hevm cheat code"))))
        );

        string[] memory inputs = new string[](3);
        inputs[0] = "node";
        inputs[1] = "script/nouns-coasters/deflate.js";
        inputs[2] = vm.toString(data);

        bytes memory compressedData = vm.ffi(inputs);

        // address result = SSTORE2.write(compressedData);

        renderer.addLayer({
            target: target,
            ipfs: INounsCoasterMetadataRendererTypes.IPFSGroup({
                baseUri: "ipfs://bafybeidmllp5rev4k2na7t34bmwxjjp2dt4w6papy4aicynmmshgojny2e/",
                extension: ".png"
            }),
            decompressedSize: data.length,
            compressedData: compressedData,
            count: items.length,
            property: "23 Expression front right",
            variantProperty: variantPropertyParameters
        });
    }

    function addLayer24(NounsCoasterMetadataRenderer renderer, address target)
        internal
    {
        // 24 Glasses front right
        INounsCoasterMetadataRendererTypes.VariantPropertyParameters
            memory variantPropertyParameters;
        variantPropertyParameters
            .offsets = new INounsCoasterMetadataRendererTypes.VariantOffset[](
            0
        );
        variantPropertyParameters.id = 0;
        variantPropertyParameters.count = 0;

        string[] memory items = new string[](21);
        items[0] = "Black";
        items[1] = "Black Red Eyes";
        items[2] = "Black Rgb";
        items[3] = "Blue";
        items[4] = "Blue Med Saturated";
        items[5] = "Frog Green";
        items[6] = "Full Black";
        items[7] = "Green Blue Multi";
        items[8] = "Grey Light";
        items[9] = "Guava";
        items[10] = "Hip Rose";
        items[11] = "Honey";
        items[12] = "Magenta";
        items[13] = "Orange";
        items[14] = "Pink Purple Multi";
        items[15] = "Red";
        items[16] = "Smoke";
        items[17] = "Teal";
        items[18] = "Watermelon";
        items[19] = "Yellow Orange Multi";
        items[20] = "Yellow Saturated";

        bytes memory data = abi.encode(items);

        VmSafe vm = VmSafe(
            address(uint160(uint256(keccak256("hevm cheat code"))))
        );

        string[] memory inputs = new string[](3);
        inputs[0] = "node";
        inputs[1] = "script/nouns-coasters/deflate.js";
        inputs[2] = vm.toString(data);

        bytes memory compressedData = vm.ffi(inputs);

        // address result = SSTORE2.write(compressedData);

        renderer.addLayer({
            target: target,
            ipfs: INounsCoasterMetadataRendererTypes.IPFSGroup({
                baseUri: "ipfs://bafybeidmllp5rev4k2na7t34bmwxjjp2dt4w6papy4aicynmmshgojny2e/",
                extension: ".png"
            }),
            decompressedSize: data.length,
            compressedData: compressedData,
            count: items.length,
            property: "24 Glasses front right",
            variantProperty: variantPropertyParameters
        });
    }
}
