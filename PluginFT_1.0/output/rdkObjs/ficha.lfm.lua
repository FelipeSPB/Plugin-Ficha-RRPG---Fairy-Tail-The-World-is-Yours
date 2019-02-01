require("firecast.lua");
local __o_rrpgObjs = require("rrpgObjs.lua");
require("rrpgGUI.lua");
require("rrpgDialogs.lua");
require("rrpgLFM.lua");
require("ndb.lua");
require("locale.lua");
local __o_Utils = require("utils.lua");

local function constructNew_frmFTTWY()
    local obj = GUI.fromHandle(_obj_newObject("form"));
    local self = obj;
    local sheet = nil;

    rawset(obj, "_oldSetNodeObjectFunction", rawget(obj, "setNodeObject"));

    function obj:setNodeObject(nodeObject)
        sheet = nodeObject;
        self.sheet = nodeObject;
        self:_oldSetNodeObjectFunction(nodeObject);
    end;

    function obj:setNodeDatabase(nodeObject)
        self:setNodeObject(nodeObject);
    end;

    _gui_assignInitialParentForForm(obj.handle);
    obj:beginUpdate();
    obj:setFormType("sheetTemplate");
    obj:setDataType("br.com.rrpg.FairyTailTheWorldIsYours");
    obj:setTitle("FairyTail - The World Is Yours/D20");
    obj:setName("frmFTTWY");

    obj.tabControl1 = GUI.fromHandle(_obj_newObject("tabControl"));
    obj.tabControl1:setParent(obj);
    obj.tabControl1:setLeft(2);
    obj.tabControl1:setTop(2);
    obj.tabControl1:setWidth(1200);
    obj.tabControl1:setHeight(3000);
    obj.tabControl1:setName("tabControl1");

    obj.tab1 = GUI.fromHandle(_obj_newObject("tab"));
    obj.tab1:setParent(obj.tabControl1);
    obj.tab1:setTitle("Geral");
    obj.tab1:setName("tab1");

    obj.flowLayout1 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout1:setParent(obj.tab1);
    obj.flowLayout1:setLeft(20);
    obj.flowLayout1:setTop(20);
    obj.flowLayout1:setWidth(1200);
    obj.flowLayout1:setHeight(3000);
    obj.flowLayout1:setName("flowLayout1");

    obj.image1 = GUI.fromHandle(_obj_newObject("image"));
    obj.image1:setParent(obj.flowLayout1);
    obj.image1:setAlign("client");
    obj.image1:setEditable(true);
    obj.image1:setField("campoURLImagem");
    obj.image1:setMargins({left=400;bottom=10});
    obj.image1:setWidth(200);
    obj.image1:setHeight(200);
    obj.image1:setStyle("autoFit");
    obj.image1:setName("image1");

    obj.flowLineBreak1 = GUI.fromHandle(_obj_newObject("flowLineBreak"));
    obj.flowLineBreak1:setParent(obj.flowLayout1);
    obj.flowLineBreak1:setName("flowLineBreak1");

    obj.label1 = GUI.fromHandle(_obj_newObject("label"));
    obj.label1:setParent(obj.flowLayout1);
    obj.label1:setLeft(0);
    obj.label1:setTop(0);
    obj.label1:setAlign("left");
    obj.label1:setFontFamily("Copperplate Gothic");
    obj.label1:setText("Link da Imagem: ");
    obj.label1:setMargins({left=250;bottom=10});
    obj.label1:setAutoSize(true);
    obj.label1:setName("label1");

    obj.edit1 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit1:setParent(obj.flowLayout1);
    obj.edit1:setLeft(0);
    obj.edit1:setTop(0);
    obj.edit1:setAlign("client");
    obj.edit1:setFontFamily("Copperplate Gothic");
    obj.edit1:setHorzTextAlign("leading");
    obj.edit1:setWidth(250);
    obj.edit1:setHeight(25);
    obj.edit1:setField("linkimg");
    obj.edit1:setName("edit1");

    obj.flowLineBreak2 = GUI.fromHandle(_obj_newObject("flowLineBreak"));
    obj.flowLineBreak2:setParent(obj.flowLayout1);
    obj.flowLineBreak2:setName("flowLineBreak2");

    obj.label2 = GUI.fromHandle(_obj_newObject("label"));
    obj.label2:setParent(obj.flowLayout1);
    obj.label2:setLeft(0);
    obj.label2:setTop(0);
    obj.label2:setAlign("left");
    obj.label2:setFontSize(12);
    obj.label2:setFontFamily("Copperplate Gothic");
    obj.label2:setMargins({left=125;top=20});
    obj.label2:setText("Nome: ");
    obj.label2:setAutoSize(true);
    obj.label2:setName("label2");

    obj.edit2 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit2:setParent(obj.flowLayout1);
    obj.edit2:setLeft(0);
    obj.edit2:setTop(0);
    obj.edit2:setAlign("client");
    obj.edit2:setFontFamily("Copperplate Gothic");
    obj.edit2:setHorzTextAlign("leading");
    obj.edit2:setMargins({top=20});
    obj.edit2:setWidth(150);
    obj.edit2:setHeight(25);
    obj.edit2:setField("nomepg");
    obj.edit2:setName("edit2");

    obj.label3 = GUI.fromHandle(_obj_newObject("label"));
    obj.label3:setParent(obj.flowLayout1);
    obj.label3:setLeft(0);
    obj.label3:setTop(10);
    obj.label3:setAlign("left");
    obj.label3:setFontFamily("Copperplate Gothic");
    obj.label3:setText("Tipo de Mago:  ");
    obj.label3:setMargins({left=125;top=20});
    obj.label3:setAutoSize(true);
    obj.label3:setName("label3");

    obj.comboBox1 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox1:setParent(obj.flowLayout1);
    obj.comboBox1:setAlign("client");
    obj.comboBox1:setLeft(20);
    obj.comboBox1:setTop(20);
    obj.comboBox1:setFontFamily("Copperplate Gothic");
    obj.comboBox1:setMargins({top=20});
    obj.comboBox1:setItems({'Criador', 'Moldador', 'Emanador', 'Sustentador'});
    obj.comboBox1:setWidth(150);
    obj.comboBox1:setField("tipomago");
    obj.comboBox1:setName("comboBox1");

    obj.flowLineBreak3 = GUI.fromHandle(_obj_newObject("flowLineBreak"));
    obj.flowLineBreak3:setParent(obj.flowLayout1);
    obj.flowLineBreak3:setName("flowLineBreak3");

    obj.label4 = GUI.fromHandle(_obj_newObject("label"));
    obj.label4:setParent(obj.flowLayout1);
    obj.label4:setLeft(0);
    obj.label4:setTop(10);
    obj.label4:setAlign("left");
    obj.label4:setFontFamily("Copperplate Gothic");
    obj.label4:setText("Idade: ");
    obj.label4:setMargins({left=125;});
    obj.label4:setAutoSize(true);
    obj.label4:setName("label4");

    obj.edit3 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit3:setParent(obj.flowLayout1);
    obj.edit3:setLeft(0);
    obj.edit3:setTop(0);
    obj.edit3:setAlign("client");
    obj.edit3:setFontFamily("Copperplate Gothic");
    obj.edit3:setHorzTextAlign("leading");
    obj.edit3:setMargins({top=7});
    obj.edit3:setWidth(50);
    obj.edit3:setHeight(25);
    obj.edit3:setField("idade");
    obj.edit3:setName("edit3");

    obj.label5 = GUI.fromHandle(_obj_newObject("label"));
    obj.label5:setParent(obj.flowLayout1);
    obj.label5:setLeft(0);
    obj.label5:setTop(0);
    obj.label5:setAlign("left");
    obj.label5:setFontFamily("Copperplate Gothic");
    obj.label5:setMargins({left=225;top=7});
    obj.label5:setText("Nome da Magia: ");
    obj.label5:setAutoSize(true);
    obj.label5:setName("label5");

    obj.edit4 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit4:setParent(obj.flowLayout1);
    obj.edit4:setLeft(0);
    obj.edit4:setTop(0);
    obj.edit4:setAlign("client");
    obj.edit4:setFontFamily("Copperplate Gothic");
    obj.edit4:setTextPrompt("Ex. Dragon Slayer");
    obj.edit4:setHorzTextAlign("leading");
    obj.edit4:setWidth(150);
    obj.edit4:setHeight(25);
    obj.edit4:setField("nomemagia");
    obj.edit4:setName("edit4");

    obj.flowLineBreak4 = GUI.fromHandle(_obj_newObject("flowLineBreak"));
    obj.flowLineBreak4:setParent(obj.flowLayout1);
    obj.flowLineBreak4:setName("flowLineBreak4");

    obj.label6 = GUI.fromHandle(_obj_newObject("label"));
    obj.label6:setParent(obj.flowLayout1);
    obj.label6:setLeft(0);
    obj.label6:setTop(10);
    obj.label6:setAlign("left");
    obj.label6:setFontFamily("Copperplate Gothic");
    obj.label6:setText("Altura: ");
    obj.label6:setMargins({left=125;});
    obj.label6:setAutoSize(true);
    obj.label6:setName("label6");

    obj.edit5 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit5:setParent(obj.flowLayout1);
    obj.edit5:setLeft(0);
    obj.edit5:setTop(0);
    obj.edit5:setAlign("client");
    obj.edit5:setFontFamily("Copperplate Gothic");
    obj.edit5:setHorzTextAlign("leading");
    obj.edit5:setMargins({top=7});
    obj.edit5:setWidth(50);
    obj.edit5:setHeight(25);
    obj.edit5:setField("altura");
    obj.edit5:setName("edit5");

    obj.label7 = GUI.fromHandle(_obj_newObject("label"));
    obj.label7:setParent(obj.flowLayout1);
    obj.label7:setLeft(0);
    obj.label7:setTop(10);
    obj.label7:setAlign("left");
    obj.label7:setFontFamily("Copperplate Gothic");
    obj.label7:setText("Pontos de Vida: ");
    obj.label7:setMargins({left=225;});
    obj.label7:setAutoSize(true);
    obj.label7:setName("label7");

    obj.label8 = GUI.fromHandle(_obj_newObject("label"));
    obj.label8:setParent(obj.flowLayout1);
    obj.label8:setLeft(0);
    obj.label8:setTop(10);
    obj.label8:setAlign("left");
    obj.label8:setFontFamily("Copperplate Gothic");
    obj.label8:setFontColor("#7FFF00");
    obj.label8:setText("Peso: ");
    obj.label8:setAutoSize(true);
    obj.label8:setField("hp");
    obj.label8:setName("label8");

    obj.flowLineBreak5 = GUI.fromHandle(_obj_newObject("flowLineBreak"));
    obj.flowLineBreak5:setParent(obj.flowLayout1);
    obj.flowLineBreak5:setName("flowLineBreak5");

    obj.label9 = GUI.fromHandle(_obj_newObject("label"));
    obj.label9:setParent(obj.flowLayout1);
    obj.label9:setLeft(0);
    obj.label9:setTop(10);
    obj.label9:setAlign("left");
    obj.label9:setFontFamily("Copperplate Gothic");
    obj.label9:setText("Peso: ");
    obj.label9:setMargins({left=125;});
    obj.label9:setAutoSize(true);
    obj.label9:setName("label9");

    obj.edit6 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit6:setParent(obj.flowLayout1);
    obj.edit6:setLeft(0);
    obj.edit6:setTop(0);
    obj.edit6:setAlign("client");
    obj.edit6:setFontFamily("Copperplate Gothic");
    obj.edit6:setHorzTextAlign("leading");
    obj.edit6:setMargins({top=7});
    obj.edit6:setWidth(50);
    obj.edit6:setHeight(25);
    obj.edit6:setField("peso");
    obj.edit6:setName("edit6");

    obj.label10 = GUI.fromHandle(_obj_newObject("label"));
    obj.label10:setParent(obj.flowLayout1);
    obj.label10:setLeft(0);
    obj.label10:setTop(10);
    obj.label10:setAlign("left");
    obj.label10:setFontFamily("Copperplate Gothic");
    obj.label10:setText("Pontos de Mana: ");
    obj.label10:setMargins({left=225;});
    obj.label10:setAutoSize(true);
    obj.label10:setName("label10");

    obj.label11 = GUI.fromHandle(_obj_newObject("label"));
    obj.label11:setParent(obj.flowLayout1);
    obj.label11:setLeft(0);
    obj.label11:setTop(10);
    obj.label11:setAlign("left");
    obj.label11:setFontFamily("Copperplate Gothic");
    obj.label11:setFontColor("#00008B");
    obj.label11:setText("Peso: ");
    obj.label11:setAutoSize(true);
    obj.label11:setField("mana");
    obj.label11:setName("label11");

    obj.flowLineBreak6 = GUI.fromHandle(_obj_newObject("flowLineBreak"));
    obj.flowLineBreak6:setParent(obj.flowLayout1);
    obj.flowLineBreak6:setName("flowLineBreak6");

    obj.label12 = GUI.fromHandle(_obj_newObject("label"));
    obj.label12:setParent(obj.flowLayout1);
    obj.label12:setLeft(0);
    obj.label12:setTop(10);
    obj.label12:setAlign("left");
    obj.label12:setFontFamily("Copperplate Gothic");
    obj.label12:setMargins({left=125});
    obj.label12:setText("Raça: ");
    obj.label12:setAutoSize(true);
    obj.label12:setName("label12");

    obj.comboBox2 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox2:setParent(obj.flowLayout1);
    obj.comboBox2:setAlign("client");
    obj.comboBox2:setLeft(20);
    obj.comboBox2:setTop(20);
    obj.comboBox2:setMargins({top=7});
    obj.comboBox2:setFontFamily("Copperplate Gothic");
    obj.comboBox2:setItems({'Humanos', 'Demônios', 'Exceeds', 'Outros'});
    obj.comboBox2:setField("raca");
    obj.comboBox2:setName("comboBox2");

    obj.label13 = GUI.fromHandle(_obj_newObject("label"));
    obj.label13:setParent(obj.flowLayout1);
    obj.label13:setLeft(0);
    obj.label13:setTop(10);
    obj.label13:setAlign("left");
    obj.label13:setFontFamily("Copperplate Gothic");
    obj.label13:setText("CAF: ");
    obj.label13:setMargins({left=175;});
    obj.label13:setAutoSize(true);
    obj.label13:setName("label13");

    obj.label14 = GUI.fromHandle(_obj_newObject("label"));
    obj.label14:setParent(obj.flowLayout1);
    obj.label14:setLeft(0);
    obj.label14:setTop(10);
    obj.label14:setFontFamily("Copperplate Gothic");
    obj.label14:setAlign("client");
    obj.label14:setField("caf");
    obj.label14:setName("label14");

    obj.flowLineBreak7 = GUI.fromHandle(_obj_newObject("flowLineBreak"));
    obj.flowLineBreak7:setParent(obj.flowLayout1);
    obj.flowLineBreak7:setName("flowLineBreak7");

    obj.label15 = GUI.fromHandle(_obj_newObject("label"));
    obj.label15:setParent(obj.flowLayout1);
    obj.label15:setLeft(0);
    obj.label15:setTop(10);
    obj.label15:setAlign("left");
    obj.label15:setFontFamily("Copperplate Gothic");
    obj.label15:setText("Alinhamento: ");
    obj.label15:setMargins({left=125;});
    obj.label15:setAutoSize(true);
    obj.label15:setName("label15");

    obj.comboBox3 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox3:setParent(obj.flowLayout1);
    obj.comboBox3:setAlign("client");
    obj.comboBox3:setLeft(20);
    obj.comboBox3:setTop(20);
    obj.comboBox3:setWidth(150);
    obj.comboBox3:setMargins({top=7});
    obj.comboBox3:setFontFamily("Copperplate Gothic");
    obj.comboBox3:setItems({'Lawful Good', 'Neutral Good', 'Chaotic Good', 'Lawful Neutral', 'True Neutral', 'Chaotic Neutral', 'Lawful Evil'});
    obj.comboBox3:setField("alinhamento");
    obj.comboBox3:setName("comboBox3");

    obj.label16 = GUI.fromHandle(_obj_newObject("label"));
    obj.label16:setParent(obj.flowLayout1);
    obj.label16:setLeft(0);
    obj.label16:setTop(10);
    obj.label16:setAlign("left");
    obj.label16:setFontFamily("Copperplate Gothic");
    obj.label16:setMargins({left=125;});
    obj.label16:setText("CAM: ");
    obj.label16:setAutoSize(true);
    obj.label16:setName("label16");

    obj.label17 = GUI.fromHandle(_obj_newObject("label"));
    obj.label17:setParent(obj.flowLayout1);
    obj.label17:setLeft(0);
    obj.label17:setTop(10);
    obj.label17:setAlign("client");
    obj.label17:setFontFamily("Copperplate Gothic");
    obj.label17:setAutoSize(true);
    obj.label17:setField("cam");
    obj.label17:setName("label17");

    obj.flowLineBreak8 = GUI.fromHandle(_obj_newObject("flowLineBreak"));
    obj.flowLineBreak8:setParent(obj.flowLayout1);
    obj.flowLineBreak8:setName("flowLineBreak8");

    obj.label18 = GUI.fromHandle(_obj_newObject("label"));
    obj.label18:setParent(obj.flowLayout1);
    obj.label18:setLeft(0);
    obj.label18:setTop(10);
    obj.label18:setAlign("left");
    obj.label18:setText("Rank: ");
    obj.label18:setFontFamily("Copperplate Gothic");
    obj.label18:setMargins({left=125;});
    obj.label18:setAutoSize(true);
    obj.label18:setName("label18");

    obj.comboBox4 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox4:setParent(obj.flowLayout1);
    obj.comboBox4:setAlign("client");
    obj.comboBox4:setLeft(20);
    obj.comboBox4:setTop(20);
    obj.comboBox4:setMargins({top=7});
    obj.comboBox4:setFontFamily("Copperplate Gothic");
    obj.comboBox4:setItems({'SS', 'S','A','B','C','D'});
    obj.comboBox4:setField("rank");
    obj.comboBox4:setName("comboBox4");

    obj.label19 = GUI.fromHandle(_obj_newObject("label"));
    obj.label19:setParent(obj.flowLayout1);
    obj.label19:setLeft(0);
    obj.label19:setTop(10);
    obj.label19:setAlign("left");
    obj.label19:setText("Pontos Restantes:");
    obj.label19:setFontSize(10);
    obj.label19:setFontFamily("Copperplate Gothic");
    obj.label19:setMargins({left=175;});
    obj.label19:setAutoSize(true);
    obj.label19:setName("label19");

    obj.label20 = GUI.fromHandle(_obj_newObject("label"));
    obj.label20:setParent(obj.flowLayout1);
    obj.label20:setLeft(0);
    obj.label20:setTop(10);
    obj.label20:setText("Peso:");
    obj.label20:setAlign("left");
    obj.label20:setFontFamily("Copperplate Gothic");
    obj.label20:setAutoSize(true);
    obj.label20:setField("ptos");
    obj.label20:setName("label20");

    obj.flowLineBreak9 = GUI.fromHandle(_obj_newObject("flowLineBreak"));
    obj.flowLineBreak9:setParent(obj.flowLayout1);
    obj.flowLineBreak9:setName("flowLineBreak9");

    obj.label21 = GUI.fromHandle(_obj_newObject("label"));
    obj.label21:setParent(obj.flowLayout1);
    obj.label21:setLeft(0);
    obj.label21:setTop(10);
    obj.label21:setAlign("left");
    obj.label21:setText("Level: ");
    obj.label21:setFontFamily("Copperplate Gothic");
    obj.label21:setMargins({left=125;});
    obj.label21:setAutoSize(true);
    obj.label21:setName("label21");

    obj.edit7 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit7:setParent(obj.flowLayout1);
    obj.edit7:setLeft(0);
    obj.edit7:setTop(0);
    obj.edit7:setAlign("client");
    obj.edit7:setHorzTextAlign("leading");
    obj.edit7:setFontFamily("Copperplate Gothic");
    obj.edit7:setMargins({top=7});
    obj.edit7:setWidth(50);
    obj.edit7:setHeight(25);
    obj.edit7:setField("level");
    obj.edit7:setName("edit7");

    obj.label22 = GUI.fromHandle(_obj_newObject("label"));
    obj.label22:setParent(obj.flowLayout1);
    obj.label22:setLeft(0);
    obj.label22:setTop(10);
    obj.label22:setAlign("left");
    obj.label22:setText("Jewel: ");
    obj.label22:setFontFamily("Copperplate Gothic");
    obj.label22:setMargins({left=225;});
    obj.label22:setAutoSize(true);
    obj.label22:setName("label22");

    obj.label23 = GUI.fromHandle(_obj_newObject("label"));
    obj.label23:setParent(obj.flowLayout1);
    obj.label23:setLeft(0);
    obj.label23:setTop(10);
    obj.label23:setAlign("left");
    obj.label23:setText("Jewel:");
    obj.label23:setFontFamily("Copperplate Gothic");
    obj.label23:setAutoSize(true);
    obj.label23:setField("jewel");
    obj.label23:setName("label23");

    obj.flowLineBreak10 = GUI.fromHandle(_obj_newObject("flowLineBreak"));
    obj.flowLineBreak10:setParent(obj.flowLayout1);
    obj.flowLineBreak10:setName("flowLineBreak10");

    obj.tab2 = GUI.fromHandle(_obj_newObject("tab"));
    obj.tab2:setParent(obj.tabControl1);
    obj.tab2:setTitle("Atributos");
    obj.tab2:setName("tab2");

    obj.flowLayout2 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout2:setParent(obj.tab2);
    obj.flowLayout2:setLeft(20);
    obj.flowLayout2:setTop(20);
    obj.flowLayout2:setWidth(1200);
    obj.flowLayout2:setHeight(3000);
    obj.flowLayout2:setName("flowLayout2");

    obj.label24 = GUI.fromHandle(_obj_newObject("label"));
    obj.label24:setParent(obj.flowLayout2);
    obj.label24:setLeft(0);
    obj.label24:setTop(0);
    obj.label24:setAlign("left");
    obj.label24:setFontSize(20);
    obj.label24:setFontFamily("Copperplate Gothic");
    obj.label24:setText("ATRIBUTOS");
    obj.label24:setMargins({left=425;bottom=10});
    obj.label24:setWidth(150);
    obj.label24:setHeight(25);
    obj.label24:setName("label24");

    obj.flowLineBreak11 = GUI.fromHandle(_obj_newObject("flowLineBreak"));
    obj.flowLineBreak11:setParent(obj.flowLayout2);
    obj.flowLineBreak11:setName("flowLineBreak11");

    obj.label25 = GUI.fromHandle(_obj_newObject("label"));
    obj.label25:setParent(obj.flowLayout2);
    obj.label25:setLeft(0);
    obj.label25:setTop(0);
    obj.label25:setAlign("left");
    obj.label25:setText("Força Física: ");
    obj.label25:setMargins({top=40});
    obj.label25:setAutoSize(true);
    obj.label25:setName("label25");

    obj.edit8 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit8:setParent(obj.flowLayout2);
    obj.edit8:setLeft(0);
    obj.edit8:setTop(0);
    obj.edit8:setAlign("client");
    obj.edit8:setHorzTextAlign("leading");
    obj.edit8:setMargins({top=40});
    obj.edit8:setWidth(50);
    obj.edit8:setHeight(25);
    obj.edit8:setField("forcafisica");
    obj.edit8:setName("edit8");

    obj.label26 = GUI.fromHandle(_obj_newObject("label"));
    obj.label26:setParent(obj.flowLayout2);
    obj.label26:setLeft(0);
    obj.label26:setTop(0);
    obj.label26:setAlign("left");
    obj.label26:setText("Bonus Racial: ");
    obj.label26:setMargins({left=7;top=40});
    obj.label26:setWidth(80);
    obj.label26:setName("label26");

    obj.label27 = GUI.fromHandle(_obj_newObject("label"));
    obj.label27:setParent(obj.flowLayout2);
    obj.label27:setLeft(0);
    obj.label27:setTop(0);
    obj.label27:setAlign("left");
    obj.label27:setText("bonusff");
    obj.label27:setMargins({top=40});
    obj.label27:setWidth(20);
    obj.label27:setAutoSize(true);
    obj.label27:setField("bonusFF");
    obj.label27:setName("label27");

    obj.label28 = GUI.fromHandle(_obj_newObject("label"));
    obj.label28:setParent(obj.flowLayout2);
    obj.label28:setLeft(0);
    obj.label28:setTop(0);
    obj.label28:setAlign("left");
    obj.label28:setText("Outros Bonus: ");
    obj.label28:setMargins({left=7;top=40});
    obj.label28:setWidth(100);
    obj.label28:setName("label28");

    obj.edit9 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit9:setParent(obj.flowLayout2);
    obj.edit9:setLeft(0);
    obj.edit9:setTop(0);
    obj.edit9:setAlign("client");
    obj.edit9:setHorzTextAlign("leading");
    obj.edit9:setMargins({top=40});
    obj.edit9:setWidth(50);
    obj.edit9:setHeight(25);
    obj.edit9:setField("OBFF");
    obj.edit9:setName("edit9");

    obj.label29 = GUI.fromHandle(_obj_newObject("label"));
    obj.label29:setParent(obj.flowLayout2);
    obj.label29:setLeft(0);
    obj.label29:setTop(0);
    obj.label29:setAlign("left");
    obj.label29:setText("TOTAL: ");
    obj.label29:setMargins({left=7;top=40});
    obj.label29:setWidth(50);
    obj.label29:setName("label29");

    obj.label30 = GUI.fromHandle(_obj_newObject("label"));
    obj.label30:setParent(obj.flowLayout2);
    obj.label30:setLeft(0);
    obj.label30:setTop(0);
    obj.label30:setAlign("left");
    obj.label30:setText("total");
    obj.label30:setMargins({top=40});
    obj.label30:setWidth(20);
    obj.label30:setAutoSize(true);
    obj.label30:setField("totalFF");
    obj.label30:setName("label30");

    obj.label31 = GUI.fromHandle(_obj_newObject("label"));
    obj.label31:setParent(obj.flowLayout2);
    obj.label31:setLeft(0);
    obj.label31:setTop(10);
    obj.label31:setAlign("left");
    obj.label31:setText("Dificuldade:");
    obj.label31:setMargins({left=7;top=40});
    obj.label31:setWidth(75);
    obj.label31:setName("label31");

    obj.comboBox5 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox5:setParent(obj.flowLayout2);
    obj.comboBox5:setAlign("client");
    obj.comboBox5:setLeft(20);
    obj.comboBox5:setTop(20);
    obj.comboBox5:setMargins({top=40});
    obj.comboBox5:setWidth(100);
    obj.comboBox5:setItems({'Fácil', 'Médio', 'Difícil', 'Muito Difícil','Heroico'});
    obj.comboBox5:setField("dificuldadeFF");
    obj.comboBox5:setName("comboBox5");

    obj.button1 = GUI.fromHandle(_obj_newObject("button"));
    obj.button1:setParent(obj.flowLayout2);
    obj.button1:setMargins({left=10;top=40});
    obj.button1:setText("Rolar Teste");
    obj.button1:setWidth(100);
    obj.button1:setName("button1");

    obj.label32 = GUI.fromHandle(_obj_newObject("label"));
    obj.label32:setParent(obj.flowLayout2);
    obj.label32:setLeft(0);
    obj.label32:setTop(10);
    obj.label32:setAlign("left");
    obj.label32:setText("Pontos de Vida: ");
    obj.label32:setMargins({left=125;top=40});
    obj.label32:setWidth(100);
    obj.label32:setName("label32");

    obj.label33 = GUI.fromHandle(_obj_newObject("label"));
    obj.label33:setParent(obj.flowLayout2);
    obj.label33:setLeft(0);
    obj.label33:setTop(10);
    obj.label33:setAlign("left");
    obj.label33:setFontColor("#7FFF00");
    obj.label33:setText("Peso: ");
    obj.label33:setMargins({top=40});
    obj.label33:setAutoSize(true);
    obj.label33:setField("hp");
    obj.label33:setName("label33");

    obj.flowLineBreak12 = GUI.fromHandle(_obj_newObject("flowLineBreak"));
    obj.flowLineBreak12:setParent(obj.flowLayout2);
    obj.flowLineBreak12:setName("flowLineBreak12");

    obj.label34 = GUI.fromHandle(_obj_newObject("label"));
    obj.label34:setParent(obj.flowLayout2);
    obj.label34:setLeft(0);
    obj.label34:setTop(0);
    obj.label34:setAlign("left");
    obj.label34:setText("Força Mágica: ");
    obj.label34:setAutoSize(true);
    obj.label34:setName("label34");

    obj.edit10 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit10:setParent(obj.flowLayout2);
    obj.edit10:setLeft(0);
    obj.edit10:setTop(0);
    obj.edit10:setAlign("client");
    obj.edit10:setHorzTextAlign("leading");
    obj.edit10:setMargins({top=7});
    obj.edit10:setWidth(50);
    obj.edit10:setHeight(25);
    obj.edit10:setField("forcamagica");
    obj.edit10:setName("edit10");

    obj.label35 = GUI.fromHandle(_obj_newObject("label"));
    obj.label35:setParent(obj.flowLayout2);
    obj.label35:setLeft(0);
    obj.label35:setTop(0);
    obj.label35:setAlign("left");
    obj.label35:setText("Bonus Racial: ");
    obj.label35:setMargins({left=7;top=7});
    obj.label35:setWidth(80);
    obj.label35:setName("label35");

    obj.label36 = GUI.fromHandle(_obj_newObject("label"));
    obj.label36:setParent(obj.flowLayout2);
    obj.label36:setLeft(0);
    obj.label36:setTop(0);
    obj.label36:setAlign("left");
    obj.label36:setText("bonusfm");
    obj.label36:setMargins({top=7});
    obj.label36:setWidth(20);
    obj.label36:setAutoSize(true);
    obj.label36:setField("bonusFM");
    obj.label36:setName("label36");

    obj.label37 = GUI.fromHandle(_obj_newObject("label"));
    obj.label37:setParent(obj.flowLayout2);
    obj.label37:setLeft(0);
    obj.label37:setTop(0);
    obj.label37:setAlign("left");
    obj.label37:setText("Outros Bonus: ");
    obj.label37:setMargins({left=7;top=7});
    obj.label37:setWidth(100);
    obj.label37:setName("label37");

    obj.edit11 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit11:setParent(obj.flowLayout2);
    obj.edit11:setLeft(0);
    obj.edit11:setTop(0);
    obj.edit11:setAlign("client");
    obj.edit11:setHorzTextAlign("leading");
    obj.edit11:setMargins({top=7});
    obj.edit11:setWidth(50);
    obj.edit11:setHeight(25);
    obj.edit11:setField("OBFM");
    obj.edit11:setName("edit11");

    obj.label38 = GUI.fromHandle(_obj_newObject("label"));
    obj.label38:setParent(obj.flowLayout2);
    obj.label38:setLeft(0);
    obj.label38:setTop(0);
    obj.label38:setAlign("left");
    obj.label38:setText("TOTAL: ");
    obj.label38:setMargins({left=7;top=7});
    obj.label38:setWidth(50);
    obj.label38:setName("label38");

    obj.label39 = GUI.fromHandle(_obj_newObject("label"));
    obj.label39:setParent(obj.flowLayout2);
    obj.label39:setLeft(0);
    obj.label39:setTop(0);
    obj.label39:setAlign("left");
    obj.label39:setText("total");
    obj.label39:setMargins({top=7});
    obj.label39:setWidth(20);
    obj.label39:setAutoSize(true);
    obj.label39:setField("totalFM");
    obj.label39:setName("label39");

    obj.label40 = GUI.fromHandle(_obj_newObject("label"));
    obj.label40:setParent(obj.flowLayout2);
    obj.label40:setLeft(0);
    obj.label40:setTop(10);
    obj.label40:setAlign("left");
    obj.label40:setText("Dificuldade:");
    obj.label40:setMargins({left=7;top=7});
    obj.label40:setWidth(75);
    obj.label40:setName("label40");

    obj.comboBox6 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox6:setParent(obj.flowLayout2);
    obj.comboBox6:setAlign("client");
    obj.comboBox6:setLeft(20);
    obj.comboBox6:setTop(20);
    obj.comboBox6:setMargins({top=7});
    obj.comboBox6:setWidth(100);
    obj.comboBox6:setItems({'Fácil', 'Médio', 'Difícil', 'Muito Difícil','Heroico'});
    obj.comboBox6:setField("dificuldadeFM");
    obj.comboBox6:setName("comboBox6");

    obj.button2 = GUI.fromHandle(_obj_newObject("button"));
    obj.button2:setParent(obj.flowLayout2);
    obj.button2:setMargins({left=10;top=7});
    obj.button2:setText("Rolar Teste");
    obj.button2:setWidth(100);
    obj.button2:setName("button2");

    obj.label41 = GUI.fromHandle(_obj_newObject("label"));
    obj.label41:setParent(obj.flowLayout2);
    obj.label41:setLeft(0);
    obj.label41:setTop(10);
    obj.label41:setAlign("left");
    obj.label41:setText("Pontos de Mana: ");
    obj.label41:setMargins({left=125;});
    obj.label41:setWidth(100);
    obj.label41:setName("label41");

    obj.label42 = GUI.fromHandle(_obj_newObject("label"));
    obj.label42:setParent(obj.flowLayout2);
    obj.label42:setLeft(0);
    obj.label42:setTop(10);
    obj.label42:setAlign("left");
    obj.label42:setFontColor("#00008B");
    obj.label42:setText("Peso: ");
    obj.label42:setAutoSize(true);
    obj.label42:setField("mana");
    obj.label42:setName("label42");

    obj.flowLineBreak13 = GUI.fromHandle(_obj_newObject("flowLineBreak"));
    obj.flowLineBreak13:setParent(obj.flowLayout2);
    obj.flowLineBreak13:setName("flowLineBreak13");

    obj.label43 = GUI.fromHandle(_obj_newObject("label"));
    obj.label43:setParent(obj.flowLayout2);
    obj.label43:setLeft(0);
    obj.label43:setTop(0);
    obj.label43:setAlign("left");
    obj.label43:setText("Destreza: ");
    obj.label43:setAutoSize(true);
    obj.label43:setName("label43");

    obj.edit12 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit12:setParent(obj.flowLayout2);
    obj.edit12:setLeft(0);
    obj.edit12:setTop(0);
    obj.edit12:setAlign("client");
    obj.edit12:setHorzTextAlign("leading");
    obj.edit12:setMargins({top=7});
    obj.edit12:setWidth(50);
    obj.edit12:setHeight(25);
    obj.edit12:setField("destreza");
    obj.edit12:setName("edit12");

    obj.label44 = GUI.fromHandle(_obj_newObject("label"));
    obj.label44:setParent(obj.flowLayout2);
    obj.label44:setLeft(0);
    obj.label44:setTop(0);
    obj.label44:setAlign("left");
    obj.label44:setText("Bonus Racial: ");
    obj.label44:setMargins({left=7;top=7});
    obj.label44:setWidth(80);
    obj.label44:setName("label44");

    obj.label45 = GUI.fromHandle(_obj_newObject("label"));
    obj.label45:setParent(obj.flowLayout2);
    obj.label45:setLeft(0);
    obj.label45:setTop(0);
    obj.label45:setAlign("left");
    obj.label45:setText("bonusdes");
    obj.label45:setMargins({top=7});
    obj.label45:setWidth(20);
    obj.label45:setAutoSize(true);
    obj.label45:setField("bonusDES");
    obj.label45:setName("label45");

    obj.label46 = GUI.fromHandle(_obj_newObject("label"));
    obj.label46:setParent(obj.flowLayout2);
    obj.label46:setLeft(0);
    obj.label46:setTop(0);
    obj.label46:setAlign("left");
    obj.label46:setText("Outros Bonus: ");
    obj.label46:setMargins({left=7;top=7});
    obj.label46:setWidth(100);
    obj.label46:setName("label46");

    obj.edit13 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit13:setParent(obj.flowLayout2);
    obj.edit13:setLeft(0);
    obj.edit13:setTop(0);
    obj.edit13:setAlign("client");
    obj.edit13:setHorzTextAlign("leading");
    obj.edit13:setMargins({top=7});
    obj.edit13:setWidth(50);
    obj.edit13:setHeight(25);
    obj.edit13:setField("OBDES");
    obj.edit13:setName("edit13");

    obj.label47 = GUI.fromHandle(_obj_newObject("label"));
    obj.label47:setParent(obj.flowLayout2);
    obj.label47:setLeft(0);
    obj.label47:setTop(0);
    obj.label47:setAlign("left");
    obj.label47:setText("TOTAL: ");
    obj.label47:setMargins({left=7;top=7});
    obj.label47:setWidth(50);
    obj.label47:setName("label47");

    obj.label48 = GUI.fromHandle(_obj_newObject("label"));
    obj.label48:setParent(obj.flowLayout2);
    obj.label48:setLeft(0);
    obj.label48:setTop(0);
    obj.label48:setAlign("left");
    obj.label48:setText("total");
    obj.label48:setMargins({top=7});
    obj.label48:setWidth(20);
    obj.label48:setAutoSize(true);
    obj.label48:setField("totalDES");
    obj.label48:setName("label48");

    obj.label49 = GUI.fromHandle(_obj_newObject("label"));
    obj.label49:setParent(obj.flowLayout2);
    obj.label49:setLeft(0);
    obj.label49:setTop(10);
    obj.label49:setAlign("left");
    obj.label49:setText("Dificuldade:");
    obj.label49:setMargins({left=7;top=7});
    obj.label49:setWidth(75);
    obj.label49:setName("label49");

    obj.comboBox7 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox7:setParent(obj.flowLayout2);
    obj.comboBox7:setAlign("client");
    obj.comboBox7:setLeft(20);
    obj.comboBox7:setTop(20);
    obj.comboBox7:setMargins({top=7});
    obj.comboBox7:setWidth(100);
    obj.comboBox7:setItems({'Fácil', 'Médio', 'Difícil', 'Muito Difícil','Heroico'});
    obj.comboBox7:setField("dificuldadeDES");
    obj.comboBox7:setName("comboBox7");

    obj.button3 = GUI.fromHandle(_obj_newObject("button"));
    obj.button3:setParent(obj.flowLayout2);
    obj.button3:setMargins({left=10;top=7});
    obj.button3:setText("Rolar Teste");
    obj.button3:setWidth(100);
    obj.button3:setName("button3");

    obj.label50 = GUI.fromHandle(_obj_newObject("label"));
    obj.label50:setParent(obj.flowLayout2);
    obj.label50:setLeft(0);
    obj.label50:setTop(10);
    obj.label50:setAlign("left");
    obj.label50:setText("CAF: ");
    obj.label50:setMargins({left=125;});
    obj.label50:setWidth(30);
    obj.label50:setName("label50");

    obj.label51 = GUI.fromHandle(_obj_newObject("label"));
    obj.label51:setParent(obj.flowLayout2);
    obj.label51:setLeft(0);
    obj.label51:setTop(10);
    obj.label51:setAlign("client");
    obj.label51:setField("caf");
    obj.label51:setName("label51");

    obj.flowLineBreak14 = GUI.fromHandle(_obj_newObject("flowLineBreak"));
    obj.flowLineBreak14:setParent(obj.flowLayout2);
    obj.flowLineBreak14:setName("flowLineBreak14");

    obj.label52 = GUI.fromHandle(_obj_newObject("label"));
    obj.label52:setParent(obj.flowLayout2);
    obj.label52:setLeft(0);
    obj.label52:setTop(0);
    obj.label52:setAlign("left");
    obj.label52:setText("Inteligência: ");
    obj.label52:setAutoSize(true);
    obj.label52:setName("label52");

    obj.edit14 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit14:setParent(obj.flowLayout2);
    obj.edit14:setLeft(0);
    obj.edit14:setTop(0);
    obj.edit14:setAlign("client");
    obj.edit14:setHorzTextAlign("leading");
    obj.edit14:setMargins({top=7});
    obj.edit14:setWidth(50);
    obj.edit14:setHeight(25);
    obj.edit14:setField("inteligencia");
    obj.edit14:setName("edit14");

    obj.label53 = GUI.fromHandle(_obj_newObject("label"));
    obj.label53:setParent(obj.flowLayout2);
    obj.label53:setLeft(0);
    obj.label53:setTop(0);
    obj.label53:setAlign("left");
    obj.label53:setText("Bonus Racial: ");
    obj.label53:setMargins({left=7;top=7});
    obj.label53:setWidth(80);
    obj.label53:setName("label53");

    obj.label54 = GUI.fromHandle(_obj_newObject("label"));
    obj.label54:setParent(obj.flowLayout2);
    obj.label54:setLeft(0);
    obj.label54:setTop(0);
    obj.label54:setAlign("left");
    obj.label54:setText("bonusint");
    obj.label54:setMargins({top=7});
    obj.label54:setWidth(20);
    obj.label54:setAutoSize(true);
    obj.label54:setField("bonusINT");
    obj.label54:setName("label54");

    obj.label55 = GUI.fromHandle(_obj_newObject("label"));
    obj.label55:setParent(obj.flowLayout2);
    obj.label55:setLeft(0);
    obj.label55:setTop(0);
    obj.label55:setAlign("left");
    obj.label55:setText("Outros Bonus: ");
    obj.label55:setMargins({left=7;top=7});
    obj.label55:setWidth(100);
    obj.label55:setName("label55");

    obj.edit15 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit15:setParent(obj.flowLayout2);
    obj.edit15:setLeft(0);
    obj.edit15:setTop(0);
    obj.edit15:setAlign("client");
    obj.edit15:setHorzTextAlign("leading");
    obj.edit15:setMargins({top=7});
    obj.edit15:setWidth(50);
    obj.edit15:setHeight(25);
    obj.edit15:setField("OBINT");
    obj.edit15:setName("edit15");

    obj.label56 = GUI.fromHandle(_obj_newObject("label"));
    obj.label56:setParent(obj.flowLayout2);
    obj.label56:setLeft(0);
    obj.label56:setTop(0);
    obj.label56:setAlign("left");
    obj.label56:setText("TOTAL: ");
    obj.label56:setMargins({left=7;top=7});
    obj.label56:setWidth(50);
    obj.label56:setName("label56");

    obj.label57 = GUI.fromHandle(_obj_newObject("label"));
    obj.label57:setParent(obj.flowLayout2);
    obj.label57:setLeft(0);
    obj.label57:setTop(0);
    obj.label57:setAlign("left");
    obj.label57:setText("total");
    obj.label57:setMargins({top=7});
    obj.label57:setWidth(20);
    obj.label57:setAutoSize(true);
    obj.label57:setField("totalINT");
    obj.label57:setName("label57");

    obj.label58 = GUI.fromHandle(_obj_newObject("label"));
    obj.label58:setParent(obj.flowLayout2);
    obj.label58:setLeft(0);
    obj.label58:setTop(10);
    obj.label58:setAlign("left");
    obj.label58:setText("Dificuldade:");
    obj.label58:setMargins({left=7;top=7});
    obj.label58:setWidth(75);
    obj.label58:setName("label58");

    obj.comboBox8 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox8:setParent(obj.flowLayout2);
    obj.comboBox8:setAlign("client");
    obj.comboBox8:setLeft(20);
    obj.comboBox8:setTop(20);
    obj.comboBox8:setMargins({top=7});
    obj.comboBox8:setWidth(100);
    obj.comboBox8:setItems({'Fácil', 'Médio', 'Difícil', 'Muito Difícil','Heroico'});
    obj.comboBox8:setField("dificuldadeINT");
    obj.comboBox8:setName("comboBox8");

    obj.button4 = GUI.fromHandle(_obj_newObject("button"));
    obj.button4:setParent(obj.flowLayout2);
    obj.button4:setMargins({left=10;top=7});
    obj.button4:setText("Rolar Teste");
    obj.button4:setWidth(100);
    obj.button4:setName("button4");

    obj.label59 = GUI.fromHandle(_obj_newObject("label"));
    obj.label59:setParent(obj.flowLayout2);
    obj.label59:setLeft(0);
    obj.label59:setTop(10);
    obj.label59:setAlign("left");
    obj.label59:setMargins({left=125;});
    obj.label59:setText("CAM: ");
    obj.label59:setWidth(35);
    obj.label59:setName("label59");

    obj.label60 = GUI.fromHandle(_obj_newObject("label"));
    obj.label60:setParent(obj.flowLayout2);
    obj.label60:setLeft(0);
    obj.label60:setTop(10);
    obj.label60:setAlign("client");
    obj.label60:setAutoSize(true);
    obj.label60:setField("cam");
    obj.label60:setName("label60");

    obj.flowLineBreak15 = GUI.fromHandle(_obj_newObject("flowLineBreak"));
    obj.flowLineBreak15:setParent(obj.flowLayout2);
    obj.flowLineBreak15:setName("flowLineBreak15");

    obj.label61 = GUI.fromHandle(_obj_newObject("label"));
    obj.label61:setParent(obj.flowLayout2);
    obj.label61:setLeft(0);
    obj.label61:setTop(0);
    obj.label61:setAlign("left");
    obj.label61:setText("Resistência Física: ");
    obj.label61:setAutoSize(true);
    obj.label61:setName("label61");

    obj.edit16 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit16:setParent(obj.flowLayout2);
    obj.edit16:setLeft(0);
    obj.edit16:setTop(0);
    obj.edit16:setAlign("client");
    obj.edit16:setHorzTextAlign("leading");
    obj.edit16:setMargins({top=7});
    obj.edit16:setWidth(50);
    obj.edit16:setHeight(25);
    obj.edit16:setField("resfisica");
    obj.edit16:setName("edit16");

    obj.label62 = GUI.fromHandle(_obj_newObject("label"));
    obj.label62:setParent(obj.flowLayout2);
    obj.label62:setLeft(0);
    obj.label62:setTop(0);
    obj.label62:setAlign("left");
    obj.label62:setText("Bonus Racial: ");
    obj.label62:setMargins({left=7;top=7});
    obj.label62:setWidth(80);
    obj.label62:setName("label62");

    obj.label63 = GUI.fromHandle(_obj_newObject("label"));
    obj.label63:setParent(obj.flowLayout2);
    obj.label63:setLeft(0);
    obj.label63:setTop(0);
    obj.label63:setAlign("left");
    obj.label63:setText("bonusrf");
    obj.label63:setMargins({top=7});
    obj.label63:setWidth(20);
    obj.label63:setAutoSize(true);
    obj.label63:setField("bonusRF");
    obj.label63:setName("label63");

    obj.label64 = GUI.fromHandle(_obj_newObject("label"));
    obj.label64:setParent(obj.flowLayout2);
    obj.label64:setLeft(0);
    obj.label64:setTop(0);
    obj.label64:setAlign("left");
    obj.label64:setText("Outros Bonus: ");
    obj.label64:setMargins({left=7;top=7});
    obj.label64:setWidth(100);
    obj.label64:setName("label64");

    obj.edit17 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit17:setParent(obj.flowLayout2);
    obj.edit17:setLeft(0);
    obj.edit17:setTop(0);
    obj.edit17:setAlign("client");
    obj.edit17:setHorzTextAlign("leading");
    obj.edit17:setMargins({top=7});
    obj.edit17:setWidth(50);
    obj.edit17:setHeight(25);
    obj.edit17:setField("OBRF");
    obj.edit17:setName("edit17");

    obj.label65 = GUI.fromHandle(_obj_newObject("label"));
    obj.label65:setParent(obj.flowLayout2);
    obj.label65:setLeft(0);
    obj.label65:setTop(0);
    obj.label65:setAlign("left");
    obj.label65:setText("TOTAL: ");
    obj.label65:setMargins({left=7;top=7});
    obj.label65:setWidth(50);
    obj.label65:setName("label65");

    obj.label66 = GUI.fromHandle(_obj_newObject("label"));
    obj.label66:setParent(obj.flowLayout2);
    obj.label66:setLeft(0);
    obj.label66:setTop(0);
    obj.label66:setAlign("left");
    obj.label66:setText("total");
    obj.label66:setMargins({top=7});
    obj.label66:setWidth(20);
    obj.label66:setAutoSize(true);
    obj.label66:setField("totalRF");
    obj.label66:setName("label66");

    obj.label67 = GUI.fromHandle(_obj_newObject("label"));
    obj.label67:setParent(obj.flowLayout2);
    obj.label67:setLeft(0);
    obj.label67:setTop(10);
    obj.label67:setAlign("left");
    obj.label67:setText("Dificuldade:");
    obj.label67:setMargins({left=7;top=7});
    obj.label67:setWidth(75);
    obj.label67:setName("label67");

    obj.comboBox9 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox9:setParent(obj.flowLayout2);
    obj.comboBox9:setAlign("client");
    obj.comboBox9:setLeft(20);
    obj.comboBox9:setTop(20);
    obj.comboBox9:setMargins({top=7});
    obj.comboBox9:setWidth(100);
    obj.comboBox9:setItems({'Fácil', 'Médio', 'Difícil', 'Muito Difícil','Heroico'});
    obj.comboBox9:setField("dificuldadeRF");
    obj.comboBox9:setName("comboBox9");

    obj.button5 = GUI.fromHandle(_obj_newObject("button"));
    obj.button5:setParent(obj.flowLayout2);
    obj.button5:setMargins({left=10;top=7});
    obj.button5:setText("Rolar Teste");
    obj.button5:setWidth(100);
    obj.button5:setName("button5");

    obj.label68 = GUI.fromHandle(_obj_newObject("label"));
    obj.label68:setParent(obj.flowLayout2);
    obj.label68:setLeft(0);
    obj.label68:setTop(0);
    obj.label68:setAlign("left");
    obj.label68:setMargins({left=125;});
    obj.label68:setText("Bônus CAF: ");
    obj.label68:setWidth(75);
    obj.label68:setName("label68");

    obj.edit18 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit18:setParent(obj.flowLayout2);
    obj.edit18:setLeft(0);
    obj.edit18:setTop(0);
    obj.edit18:setAlign("client");
    obj.edit18:setHorzTextAlign("leading");
    obj.edit18:setMargins({left=4;});
    obj.edit18:setWidth(50);
    obj.edit18:setHeight(25);
    obj.edit18:setField("bonusCAF");
    obj.edit18:setName("edit18");

    obj.label69 = GUI.fromHandle(_obj_newObject("label"));
    obj.label69:setParent(obj.flowLayout2);
    obj.label69:setLeft(0);
    obj.label69:setTop(0);
    obj.label69:setAlign("left");
    obj.label69:setText("Total:");
    obj.label69:setMargins({left=7;});
    obj.label69:setWidth(40);
    obj.label69:setName("label69");

    obj.label70 = GUI.fromHandle(_obj_newObject("label"));
    obj.label70:setParent(obj.flowLayout2);
    obj.label70:setLeft(0);
    obj.label70:setTop(0);
    obj.label70:setAlign("left");
    obj.label70:setText("total");
    obj.label70:setWidth(20);
    obj.label70:setField("totalCAF");
    obj.label70:setName("label70");

    obj.flowLineBreak16 = GUI.fromHandle(_obj_newObject("flowLineBreak"));
    obj.flowLineBreak16:setParent(obj.flowLayout2);
    obj.flowLineBreak16:setName("flowLineBreak16");

    obj.label71 = GUI.fromHandle(_obj_newObject("label"));
    obj.label71:setParent(obj.flowLayout2);
    obj.label71:setLeft(0);
    obj.label71:setTop(0);
    obj.label71:setAlign("left");
    obj.label71:setText("Resistência Mágica: ");
    obj.label71:setAutoSize(true);
    obj.label71:setName("label71");

    obj.edit19 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit19:setParent(obj.flowLayout2);
    obj.edit19:setLeft(0);
    obj.edit19:setTop(0);
    obj.edit19:setAlign("client");
    obj.edit19:setHorzTextAlign("leading");
    obj.edit19:setMargins({top=7});
    obj.edit19:setWidth(50);
    obj.edit19:setHeight(25);
    obj.edit19:setField("resmagica");
    obj.edit19:setName("edit19");

    obj.label72 = GUI.fromHandle(_obj_newObject("label"));
    obj.label72:setParent(obj.flowLayout2);
    obj.label72:setLeft(0);
    obj.label72:setTop(0);
    obj.label72:setAlign("left");
    obj.label72:setText("Bonus Racial:");
    obj.label72:setMargins({left=7;top=7});
    obj.label72:setWidth(80);
    obj.label72:setName("label72");

    obj.label73 = GUI.fromHandle(_obj_newObject("label"));
    obj.label73:setParent(obj.flowLayout2);
    obj.label73:setLeft(0);
    obj.label73:setTop(0);
    obj.label73:setAlign("left");
    obj.label73:setText("bonusrm");
    obj.label73:setMargins({top=7});
    obj.label73:setWidth(20);
    obj.label73:setAutoSize(true);
    obj.label73:setField("bonusRM");
    obj.label73:setName("label73");

    obj.label74 = GUI.fromHandle(_obj_newObject("label"));
    obj.label74:setParent(obj.flowLayout2);
    obj.label74:setLeft(0);
    obj.label74:setTop(0);
    obj.label74:setAlign("left");
    obj.label74:setText("Outros Bonus:");
    obj.label74:setMargins({left=7;top=7});
    obj.label74:setWidth(100);
    obj.label74:setName("label74");

    obj.edit20 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit20:setParent(obj.flowLayout2);
    obj.edit20:setLeft(0);
    obj.edit20:setTop(0);
    obj.edit20:setAlign("client");
    obj.edit20:setHorzTextAlign("leading");
    obj.edit20:setMargins({top=7});
    obj.edit20:setWidth(50);
    obj.edit20:setHeight(25);
    obj.edit20:setField("OBRM");
    obj.edit20:setName("edit20");

    obj.label75 = GUI.fromHandle(_obj_newObject("label"));
    obj.label75:setParent(obj.flowLayout2);
    obj.label75:setLeft(0);
    obj.label75:setTop(0);
    obj.label75:setAlign("left");
    obj.label75:setText("TOTAL:");
    obj.label75:setMargins({left=7;top=7});
    obj.label75:setWidth(50);
    obj.label75:setName("label75");

    obj.label76 = GUI.fromHandle(_obj_newObject("label"));
    obj.label76:setParent(obj.flowLayout2);
    obj.label76:setLeft(0);
    obj.label76:setTop(0);
    obj.label76:setAlign("left");
    obj.label76:setText("total");
    obj.label76:setMargins({top=7});
    obj.label76:setWidth(20);
    obj.label76:setField("totalRM");
    obj.label76:setName("label76");

    obj.label77 = GUI.fromHandle(_obj_newObject("label"));
    obj.label77:setParent(obj.flowLayout2);
    obj.label77:setLeft(0);
    obj.label77:setTop(10);
    obj.label77:setAlign("left");
    obj.label77:setText("Dificuldade:");
    obj.label77:setMargins({left=7;top=7});
    obj.label77:setWidth(75);
    obj.label77:setName("label77");

    obj.comboBox10 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox10:setParent(obj.flowLayout2);
    obj.comboBox10:setAlign("client");
    obj.comboBox10:setLeft(20);
    obj.comboBox10:setTop(20);
    obj.comboBox10:setMargins({top=7});
    obj.comboBox10:setWidth(100);
    obj.comboBox10:setItems({'Fácil', 'Médio', 'Difícil', 'Muito Difícil','Heroico'});
    obj.comboBox10:setField("dificuldadeRM");
    obj.comboBox10:setName("comboBox10");

    obj.button6 = GUI.fromHandle(_obj_newObject("button"));
    obj.button6:setParent(obj.flowLayout2);
    obj.button6:setMargins({left=10;top=7});
    obj.button6:setText("Rolar Teste");
    obj.button6:setWidth(100);
    obj.button6:setName("button6");

    obj.label78 = GUI.fromHandle(_obj_newObject("label"));
    obj.label78:setParent(obj.flowLayout2);
    obj.label78:setLeft(0);
    obj.label78:setTop(0);
    obj.label78:setAlign("left");
    obj.label78:setMargins({left=125;});
    obj.label78:setText("Bônus CAM: ");
    obj.label78:setWidth(75);
    obj.label78:setName("label78");

    obj.edit21 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit21:setParent(obj.flowLayout2);
    obj.edit21:setLeft(0);
    obj.edit21:setTop(0);
    obj.edit21:setAlign("client");
    obj.edit21:setHorzTextAlign("leading");
    obj.edit21:setMargins({left=4;});
    obj.edit21:setWidth(50);
    obj.edit21:setHeight(25);
    obj.edit21:setField("bonusCAM");
    obj.edit21:setName("edit21");

    obj.label79 = GUI.fromHandle(_obj_newObject("label"));
    obj.label79:setParent(obj.flowLayout2);
    obj.label79:setLeft(0);
    obj.label79:setTop(0);
    obj.label79:setAlign("left");
    obj.label79:setText("Total:");
    obj.label79:setMargins({left=7;});
    obj.label79:setWidth(40);
    obj.label79:setName("label79");

    obj.label80 = GUI.fromHandle(_obj_newObject("label"));
    obj.label80:setParent(obj.flowLayout2);
    obj.label80:setLeft(0);
    obj.label80:setTop(0);
    obj.label80:setAlign("left");
    obj.label80:setText("total");
    obj.label80:setWidth(20);
    obj.label80:setField("totalCAM");
    obj.label80:setName("label80");

    obj.flowLineBreak17 = GUI.fromHandle(_obj_newObject("flowLineBreak"));
    obj.flowLineBreak17:setParent(obj.flowLayout2);
    obj.flowLineBreak17:setName("flowLineBreak17");

    obj.label81 = GUI.fromHandle(_obj_newObject("label"));
    obj.label81:setParent(obj.flowLayout2);
    obj.label81:setLeft(0);
    obj.label81:setTop(0);
    obj.label81:setAlign("left");
    obj.label81:setMargins({top=40});
    obj.label81:setText("Teste de Iniciativa - ");
    obj.label81:setWidth(150);
    obj.label81:setName("label81");

    obj.label82 = GUI.fromHandle(_obj_newObject("label"));
    obj.label82:setParent(obj.flowLayout2);
    obj.label82:setLeft(0);
    obj.label82:setTop(0);
    obj.label82:setAlign("left");
    obj.label82:setText("Bonus:");
    obj.label82:setMargins({left=7;top=40});
    obj.label82:setWidth(50);
    obj.label82:setName("label82");

    obj.edit22 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit22:setParent(obj.flowLayout2);
    obj.edit22:setLeft(0);
    obj.edit22:setTop(0);
    obj.edit22:setAlign("client");
    obj.edit22:setHorzTextAlign("leading");
    obj.edit22:setMargins({top=40; left=4});
    obj.edit22:setWidth(50);
    obj.edit22:setHeight(25);
    obj.edit22:setField("bonusIniciativa");
    obj.edit22:setName("edit22");

    obj.label83 = GUI.fromHandle(_obj_newObject("label"));
    obj.label83:setParent(obj.flowLayout2);
    obj.label83:setLeft(0);
    obj.label83:setTop(0);
    obj.label83:setAlign("left");
    obj.label83:setText("Total:");
    obj.label83:setMargins({left=7;top=40});
    obj.label83:setWidth(40);
    obj.label83:setName("label83");

    obj.label84 = GUI.fromHandle(_obj_newObject("label"));
    obj.label84:setParent(obj.flowLayout2);
    obj.label84:setLeft(0);
    obj.label84:setTop(0);
    obj.label84:setAlign("left");
    obj.label84:setText("total");
    obj.label84:setMargins({top=40});
    obj.label84:setWidth(20);
    obj.label84:setField("totalIniciativa");
    obj.label84:setName("label84");

    obj.button7 = GUI.fromHandle(_obj_newObject("button"));
    obj.button7:setParent(obj.flowLayout2);
    obj.button7:setMargins({left=10;top=40});
    obj.button7:setText("Rolar Dados");
    obj.button7:setWidth(175);
    obj.button7:setName("button7");

    obj.label85 = GUI.fromHandle(_obj_newObject("label"));
    obj.label85:setParent(obj.flowLayout2);
    obj.label85:setLeft(0);
    obj.label85:setTop(10);
    obj.label85:setAlign("left");
    obj.label85:setText("CALCULADORA");
    obj.label85:setMargins({left=125;});
    obj.label85:setWidth(100);
    obj.label85:setName("label85");

    obj.flowLineBreak18 = GUI.fromHandle(_obj_newObject("flowLineBreak"));
    obj.flowLineBreak18:setParent(obj.flowLayout2);
    obj.flowLineBreak18:setName("flowLineBreak18");

    obj.label86 = GUI.fromHandle(_obj_newObject("label"));
    obj.label86:setParent(obj.flowLayout2);
    obj.label86:setLeft(0);
    obj.label86:setTop(0);
    obj.label86:setAlign("left");
    obj.label86:setText("Teste de Acerto - ");
    obj.label86:setWidth(150);
    obj.label86:setName("label86");

    obj.label87 = GUI.fromHandle(_obj_newObject("label"));
    obj.label87:setParent(obj.flowLayout2);
    obj.label87:setLeft(0);
    obj.label87:setTop(0);
    obj.label87:setAlign("left");
    obj.label87:setText("Bonus:");
    obj.label87:setMargins({left=7});
    obj.label87:setWidth(50);
    obj.label87:setName("label87");

    obj.edit23 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit23:setParent(obj.flowLayout2);
    obj.edit23:setLeft(0);
    obj.edit23:setTop(0);
    obj.edit23:setAlign("client");
    obj.edit23:setHorzTextAlign("leading");
    obj.edit23:setMargins({left=4});
    obj.edit23:setWidth(50);
    obj.edit23:setHeight(25);
    obj.edit23:setField("bonusAcerto");
    obj.edit23:setName("edit23");

    obj.label88 = GUI.fromHandle(_obj_newObject("label"));
    obj.label88:setParent(obj.flowLayout2);
    obj.label88:setLeft(0);
    obj.label88:setTop(0);
    obj.label88:setAlign("left");
    obj.label88:setText("Total:");
    obj.label88:setMargins({left=7;});
    obj.label88:setWidth(40);
    obj.label88:setName("label88");

    obj.label89 = GUI.fromHandle(_obj_newObject("label"));
    obj.label89:setParent(obj.flowLayout2);
    obj.label89:setLeft(0);
    obj.label89:setTop(0);
    obj.label89:setAlign("left");
    obj.label89:setText("total");
    obj.label89:setWidth(20);
    obj.label89:setField("totalAcerto");
    obj.label89:setName("label89");

    obj.button8 = GUI.fromHandle(_obj_newObject("button"));
    obj.button8:setParent(obj.flowLayout2);
    obj.button8:setMargins({left=10});
    obj.button8:setText("Rolar Dados");
    obj.button8:setWidth(175);
    obj.button8:setName("button8");

    obj.edit24 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit24:setParent(obj.flowLayout2);
    obj.edit24:setLeft(0);
    obj.edit24:setTop(0);
    obj.edit24:setAlign("client");
    obj.edit24:setHorzTextAlign("leading");
    obj.edit24:setMargins({left=100});
    obj.edit24:setWidth(50);
    obj.edit24:setHeight(25);
    obj.edit24:setField("Calc1");
    obj.edit24:setName("edit24");

    obj.label90 = GUI.fromHandle(_obj_newObject("label"));
    obj.label90:setParent(obj.flowLayout2);
    obj.label90:setLeft(0);
    obj.label90:setTop(10);
    obj.label90:setAlign("left");
    obj.label90:setText("+");
    obj.label90:setMargins({left=7;});
    obj.label90:setWidth(10);
    obj.label90:setName("label90");

    obj.edit25 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit25:setParent(obj.flowLayout2);
    obj.edit25:setLeft(0);
    obj.edit25:setTop(0);
    obj.edit25:setAlign("client");
    obj.edit25:setHorzTextAlign("leading");
    obj.edit25:setMargins({left=7});
    obj.edit25:setWidth(50);
    obj.edit25:setHeight(25);
    obj.edit25:setField("Calc2");
    obj.edit25:setName("edit25");

    obj.label91 = GUI.fromHandle(_obj_newObject("label"));
    obj.label91:setParent(obj.flowLayout2);
    obj.label91:setLeft(0);
    obj.label91:setTop(10);
    obj.label91:setAlign("left");
    obj.label91:setText("=");
    obj.label91:setMargins({left=7;});
    obj.label91:setWidth(10);
    obj.label91:setName("label91");

    obj.label92 = GUI.fromHandle(_obj_newObject("label"));
    obj.label92:setParent(obj.flowLayout2);
    obj.label92:setLeft(0);
    obj.label92:setTop(10);
    obj.label92:setAlign("left");
    obj.label92:setText("N/A");
    obj.label92:setMargins({left=7;});
    obj.label92:setWidth(50);
    obj.label92:setField("result1");
    obj.label92:setName("label92");

    obj.button9 = GUI.fromHandle(_obj_newObject("button"));
    obj.button9:setParent(obj.flowLayout2);
    obj.button9:setMargins({left=10});
    obj.button9:setText("Calcular");
    obj.button9:setWidth(100);
    obj.button9:setName("button9");

    obj.flowLineBreak19 = GUI.fromHandle(_obj_newObject("flowLineBreak"));
    obj.flowLineBreak19:setParent(obj.flowLayout2);
    obj.flowLineBreak19:setName("flowLineBreak19");

    obj.label93 = GUI.fromHandle(_obj_newObject("label"));
    obj.label93:setParent(obj.flowLayout2);
    obj.label93:setLeft(0);
    obj.label93:setTop(0);
    obj.label93:setAlign("left");
    obj.label93:setText("Teste de Ataque Físico - ");
    obj.label93:setWidth(150);
    obj.label93:setName("label93");

    obj.label94 = GUI.fromHandle(_obj_newObject("label"));
    obj.label94:setParent(obj.flowLayout2);
    obj.label94:setLeft(0);
    obj.label94:setTop(0);
    obj.label94:setAlign("left");
    obj.label94:setText("Bonus:");
    obj.label94:setMargins({left=7});
    obj.label94:setWidth(50);
    obj.label94:setName("label94");

    obj.edit26 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit26:setParent(obj.flowLayout2);
    obj.edit26:setLeft(0);
    obj.edit26:setTop(0);
    obj.edit26:setAlign("client");
    obj.edit26:setHorzTextAlign("leading");
    obj.edit26:setMargins({left=4});
    obj.edit26:setWidth(50);
    obj.edit26:setHeight(25);
    obj.edit26:setField("bonusAtkFisico");
    obj.edit26:setName("edit26");

    obj.label95 = GUI.fromHandle(_obj_newObject("label"));
    obj.label95:setParent(obj.flowLayout2);
    obj.label95:setLeft(0);
    obj.label95:setTop(0);
    obj.label95:setAlign("left");
    obj.label95:setText("Total:");
    obj.label95:setMargins({left=7;});
    obj.label95:setWidth(40);
    obj.label95:setName("label95");

    obj.label96 = GUI.fromHandle(_obj_newObject("label"));
    obj.label96:setParent(obj.flowLayout2);
    obj.label96:setLeft(0);
    obj.label96:setTop(0);
    obj.label96:setAlign("left");
    obj.label96:setText("total");
    obj.label96:setWidth(20);
    obj.label96:setField("totalAtkFisico");
    obj.label96:setName("label96");

    obj.button10 = GUI.fromHandle(_obj_newObject("button"));
    obj.button10:setParent(obj.flowLayout2);
    obj.button10:setMargins({left=10});
    obj.button10:setText("Rolar Dados");
    obj.button10:setWidth(175);
    obj.button10:setName("button10");

    obj.edit27 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit27:setParent(obj.flowLayout2);
    obj.edit27:setLeft(0);
    obj.edit27:setTop(0);
    obj.edit27:setAlign("client");
    obj.edit27:setHorzTextAlign("leading");
    obj.edit27:setMargins({left=100});
    obj.edit27:setWidth(50);
    obj.edit27:setHeight(25);
    obj.edit27:setField("Calc3");
    obj.edit27:setName("edit27");

    obj.label97 = GUI.fromHandle(_obj_newObject("label"));
    obj.label97:setParent(obj.flowLayout2);
    obj.label97:setLeft(0);
    obj.label97:setTop(10);
    obj.label97:setAlign("left");
    obj.label97:setText("-");
    obj.label97:setMargins({left=7;});
    obj.label97:setWidth(10);
    obj.label97:setName("label97");

    obj.edit28 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit28:setParent(obj.flowLayout2);
    obj.edit28:setLeft(0);
    obj.edit28:setTop(0);
    obj.edit28:setAlign("client");
    obj.edit28:setHorzTextAlign("leading");
    obj.edit28:setMargins({left=7});
    obj.edit28:setWidth(50);
    obj.edit28:setHeight(25);
    obj.edit28:setField("Calc4");
    obj.edit28:setName("edit28");

    obj.label98 = GUI.fromHandle(_obj_newObject("label"));
    obj.label98:setParent(obj.flowLayout2);
    obj.label98:setLeft(0);
    obj.label98:setTop(10);
    obj.label98:setAlign("left");
    obj.label98:setText("=");
    obj.label98:setMargins({left=7;});
    obj.label98:setWidth(10);
    obj.label98:setName("label98");

    obj.label99 = GUI.fromHandle(_obj_newObject("label"));
    obj.label99:setParent(obj.flowLayout2);
    obj.label99:setLeft(0);
    obj.label99:setTop(10);
    obj.label99:setAlign("left");
    obj.label99:setText("N/A");
    obj.label99:setMargins({left=7;});
    obj.label99:setWidth(50);
    obj.label99:setField("result2");
    obj.label99:setName("label99");

    obj.button11 = GUI.fromHandle(_obj_newObject("button"));
    obj.button11:setParent(obj.flowLayout2);
    obj.button11:setMargins({left=10});
    obj.button11:setText("Calcular");
    obj.button11:setWidth(100);
    obj.button11:setName("button11");

    obj.flowLineBreak20 = GUI.fromHandle(_obj_newObject("flowLineBreak"));
    obj.flowLineBreak20:setParent(obj.flowLayout2);
    obj.flowLineBreak20:setName("flowLineBreak20");

    obj.label100 = GUI.fromHandle(_obj_newObject("label"));
    obj.label100:setParent(obj.flowLayout2);
    obj.label100:setLeft(0);
    obj.label100:setTop(0);
    obj.label100:setAlign("left");
    obj.label100:setText("Teste de Ataque Mágico - ");
    obj.label100:setWidth(150);
    obj.label100:setName("label100");

    obj.label101 = GUI.fromHandle(_obj_newObject("label"));
    obj.label101:setParent(obj.flowLayout2);
    obj.label101:setLeft(0);
    obj.label101:setTop(0);
    obj.label101:setAlign("left");
    obj.label101:setText("Bonus:");
    obj.label101:setMargins({left=7});
    obj.label101:setWidth(50);
    obj.label101:setName("label101");

    obj.edit29 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit29:setParent(obj.flowLayout2);
    obj.edit29:setLeft(0);
    obj.edit29:setTop(0);
    obj.edit29:setAlign("client");
    obj.edit29:setHorzTextAlign("leading");
    obj.edit29:setMargins({left=4});
    obj.edit29:setWidth(50);
    obj.edit29:setHeight(25);
    obj.edit29:setField("bonusAtkMagico");
    obj.edit29:setName("edit29");

    obj.label102 = GUI.fromHandle(_obj_newObject("label"));
    obj.label102:setParent(obj.flowLayout2);
    obj.label102:setLeft(0);
    obj.label102:setTop(0);
    obj.label102:setAlign("left");
    obj.label102:setText("Total:");
    obj.label102:setMargins({left=7;});
    obj.label102:setWidth(40);
    obj.label102:setName("label102");

    obj.label103 = GUI.fromHandle(_obj_newObject("label"));
    obj.label103:setParent(obj.flowLayout2);
    obj.label103:setLeft(0);
    obj.label103:setTop(0);
    obj.label103:setAlign("left");
    obj.label103:setText("total");
    obj.label103:setWidth(20);
    obj.label103:setField("totalAtkMagico");
    obj.label103:setName("label103");

    obj.button12 = GUI.fromHandle(_obj_newObject("button"));
    obj.button12:setParent(obj.flowLayout2);
    obj.button12:setMargins({left=10});
    obj.button12:setText("Rolar Dados");
    obj.button12:setWidth(175);
    obj.button12:setName("button12");

    obj.tab3 = GUI.fromHandle(_obj_newObject("tab"));
    obj.tab3:setParent(obj.tabControl1);
    obj.tab3:setTitle("Vantagens");
    obj.tab3:setName("tab3");

    obj.flowLayout3 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout3:setParent(obj.tab3);
    obj.flowLayout3:setLeft(10);
    obj.flowLayout3:setTop(10);
    obj.flowLayout3:setWidth(1500);
    obj.flowLayout3:setHeight(3000);
    obj.flowLayout3:setName("flowLayout3");

    obj.label104 = GUI.fromHandle(_obj_newObject("label"));
    obj.label104:setParent(obj.flowLayout3);
    obj.label104:setLeft(0);
    obj.label104:setTop(0);
    obj.label104:setAlign("left");
    obj.label104:setFontSize(20);
    obj.label104:setFontFamily("Copperplate Gothic");
    obj.label104:setText("VANTAGENS");
    obj.label104:setMargins({left=500;bottom=10});
    obj.label104:setWidth(150);
    obj.label104:setHeight(30);
    obj.label104:setName("label104");

    obj.label105 = GUI.fromHandle(_obj_newObject("label"));
    obj.label105:setParent(obj.flowLayout3);
    obj.label105:setLeft(0);
    obj.label105:setTop(0);
    obj.label105:setAlign("left");
    obj.label105:setFontSize(14);
    obj.label105:setText("Pontos Gastos: ");
    obj.label105:setMargins({left=200;bottom=10});
    obj.label105:setWidth(100);
    obj.label105:setName("label105");

    obj.label106 = GUI.fromHandle(_obj_newObject("label"));
    obj.label106:setParent(obj.flowLayout3);
    obj.label106:setLeft(0);
    obj.label106:setTop(0);
    obj.label106:setAlign("left");
    obj.label106:setFontSize(14);
    obj.label106:setText("totalPtos ");
    obj.label106:setMargins({left=5;bottom=10;});
    obj.label106:setField("TotalVant");
    obj.label106:setWidth(20);
    obj.label106:setName("label106");

    obj.flowLineBreak21 = GUI.fromHandle(_obj_newObject("flowLineBreak"));
    obj.flowLineBreak21:setParent(obj.flowLayout3);
    obj.flowLineBreak21:setName("flowLineBreak21");

    obj.label107 = GUI.fromHandle(_obj_newObject("label"));
    obj.label107:setParent(obj.flowLayout3);
    obj.label107:setLeft(0);
    obj.label107:setTop(0);
    obj.label107:setAlign("left");
    obj.label107:setText("Vantagem:");
    obj.label107:setMargins({top=20});
    obj.label107:setAutoSize(true);
    obj.label107:setName("label107");

    obj.comboBox11 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox11:setParent(obj.flowLayout3);
    obj.comboBox11:setAlign("left");
    obj.comboBox11:setWidth(250);
    obj.comboBox11:setMargins({top=20; right=10});
    obj.comboBox11:setItems({'N/A','Acerto', 'Alma Gêmea','Ambidestria', 'Ambiente Favorável 1',
                         'Ambiente Favorável 2',
                        'Ambiente Favorável 3','Amor Polígamo', 'Amor Verdadeiro', 'Aparência Inofensiva', 'Arma de Fogo 1',
                         'Arma de Fogo 2', 'Arma de Fogo 3','Bom Senso','Conhecimentos Arcanos', 'Contatos e Aliados 1', 'Contatos e Aliados 2',
                          'Contatos e Aliados 3', 'Contatos e Aliados 4', 'Coração de Pedra', 'Detectar Magia 1',
                           'Detectar Magia 2', 'Dívida de Gratidão 1', 'Dívida de Gratidão 2', 'Dívida de Gratidão 3',
                            'Empatia com Animais','Fama 1','Fama 2','Fama 3','Fama 4', 'Família ou Mentor Honrado', 'Identidade Secreta', 'Improvisador 1',
                             'Improvisador 2', 'Influência Política/Burocrática 1', 'Influência Política/Burocrática 2',
                              'Influência Política/Burocrática 3', 'Influência Política/Burocrática 4', 
                              'Influência Política/Burocrática 5', 'Influência Jurisprudente 1', 'Influência Jurisprudente 2','Influência Jurisprudente 3', 'Influência Jurisprudente 4', 'Influência Jurisprudente 5',
                              'Influência Eclesiástica 1', 'Influência Eclesiástica 2', 'Influência Eclesiástica 3',
                              'Influência Eclesiástica 4', 'Influência Eclesiástica 5', 'Influência Econômica 1',
                               'Influência Econômica 2', 'Influência Econômica 3', 'Influência Econômica 4', 
                               'Influência Econômica 5', 'Influência Midiática 1', 'Influência Midiática 2', 
                               'Influência Midiática 3', 'Influência Midiática 4', 'Influência Midiática 5', 'Infravisão',
                                'Iniciativa Aprimorada', 'Medicina', 'Patrono','Pechincheiro','Pontos de HP Extras', 'Pontos de Mana Extras',
                                 'Precognição', 'Resistência a Dor', 'Sentidos Aguçados (Visão)', 
                                 'Sentidos Aguçados (Tato)', 'Sentidos Aguçados (Olfato)', 'Sentidos Aguçados (Paladar)',
                                  'Sentidos Aguçados (Audição)','Sortudo 1','Sortudo 2', 'Torcida', 'Visão Noturna'});
    obj.comboBox11:setField("nomeVant");
    obj.comboBox11:setName("comboBox11");

    obj.label108 = GUI.fromHandle(_obj_newObject("label"));
    obj.label108:setParent(obj.flowLayout3);
    obj.label108:setLeft(0);
    obj.label108:setTop(0);
    obj.label108:setAlign("left");
    obj.label108:setText("Descrição: ");
    obj.label108:setMargins({left=10;top=20});
    obj.label108:setWidth(100);
    obj.label108:setAutoSize(true);
    obj.label108:setName("label108");

    obj.label109 = GUI.fromHandle(_obj_newObject("label"));
    obj.label109:setParent(obj.flowLayout3);
    obj.label109:setLeft(0);
    obj.label109:setTop(0);
    obj.label109:setAlign("left");
    obj.label109:setText("descricao");
    obj.label109:setMargins({top=20});
    obj.label109:setAutoSize(true);
    obj.label109:setWidth(500);
    obj.label109:setField("descricaoVant");
    obj.label109:setName("label109");

    obj.label110 = GUI.fromHandle(_obj_newObject("label"));
    obj.label110:setParent(obj.flowLayout3);
    obj.label110:setLeft(0);
    obj.label110:setTop(0);
    obj.label110:setAlign("left");
    obj.label110:setText("Custo: ");
    obj.label110:setMargins({top=20});
    obj.label110:setAutoSize(true);
    obj.label110:setWidth(50);
    obj.label110:setName("label110");

    obj.label111 = GUI.fromHandle(_obj_newObject("label"));
    obj.label111:setParent(obj.flowLayout3);
    obj.label111:setLeft(0);
    obj.label111:setTop(0);
    obj.label111:setAlign("left");
    obj.label111:setText("custo ");
    obj.label111:setMargins({top=20});
    obj.label111:setAutoSize(true);
    obj.label111:setWidth(10);
    obj.label111:setField("custoVant");
    obj.label111:setName("label111");

    obj.flowLineBreak22 = GUI.fromHandle(_obj_newObject("flowLineBreak"));
    obj.flowLineBreak22:setParent(obj.flowLayout3);
    obj.flowLineBreak22:setName("flowLineBreak22");

    obj.label112 = GUI.fromHandle(_obj_newObject("label"));
    obj.label112:setParent(obj.flowLayout3);
    obj.label112:setLeft(0);
    obj.label112:setTop(0);
    obj.label112:setAlign("left");
    obj.label112:setText("Vantagem:");
    obj.label112:setMargins({top=20});
    obj.label112:setAutoSize(true);
    obj.label112:setName("label112");

    obj.comboBox12 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox12:setParent(obj.flowLayout3);
    obj.comboBox12:setAlign("client");
    obj.comboBox12:setLeft(20);
    obj.comboBox12:setTop(20);
    obj.comboBox12:setWidth(250);
    obj.comboBox12:setMargins({top=20; right=10});
    obj.comboBox12:setItems({'N/A','Acerto', 'Alma Gêmea','Ambidestria', 'Ambiente Favorável 1', 'Ambiente Favorável 2',
                        'Ambiente Favorável 3','Amor Polígamo', 'Amor Verdadeiro', 'Aparência Inofensiva', 'Arma de Fogo 1',
                         'Arma de Fogo 2', 'Arma de Fogo 3','Bom Senso','Conhecimentos Arcanos', 'Contatos e Aliados 1', 'Contatos e Aliados 2',
                          'Contatos e Aliados 3', 'Contatos e Aliados 4', 'Coração de Pedra', 'Detectar Magia 1',
                           'Detectar Magia 2', 'Dívida de Gratidão 1', 'Dívida de Gratidão 2', 'Dívida de Gratidão 3',
                            'Empatia com Animais','Fama 1','Fama 2','Fama 3','Fama 4', 'Família ou Mentor Honrado', 'Identidade Secreta', 'Improvisador 1',
                             'Improvisador 2', 'Influência Política/Burocrática 1', 'Influência Política/Burocrática 2',
                              'Influência Política/Burocrática 3', 'Influência Política/Burocrática 4', 
                              'Influência Política/Burocrática 5', 'Influência Jurisprudente 1', 'Influência Jurisprudente 2','Influência Jurisprudente 3', 'Influência Jurisprudente 4', 'Influência Jurisprudente 5',
                              'Influência Eclesiástica 1', 'Influência Eclesiástica 2', 'Influência Eclesiástica 3',
                              'Influência Eclesiástica 4', 'Influência Eclesiástica 5', 'Influência Econômica 1',
                               'Influência Econômica 2', 'Influência Econômica 3', 'Influência Econômica 4', 
                               'Influência Econômica 5', 'Influência Midiática 1', 'Influência Midiática 2', 
                               'Influência Midiática 3', 'Influência Midiática 4', 'Influência Midiática 5', 'Infravisão',
                                'Iniciativa Aprimorada', 'Medicina', 'Patrono','Pechincheiro','Pontos de HP Extras', 'Pontos de Mana Extras',
                                 'Precognição', 'Resistência a Dor', 'Sentidos Aguçados (Visão)', 
                                 'Sentidos Aguçados (Tato)', 'Sentidos Aguçados (Olfato)', 'Sentidos Aguçados (Paladar)',
                                  'Sentidos Aguçados (Audição)','Sortudo 1','Sortudo 2', 'Torcida', 'Visão Noturna'});
    obj.comboBox12:setField("nomeVant2");
    obj.comboBox12:setName("comboBox12");

    obj.label113 = GUI.fromHandle(_obj_newObject("label"));
    obj.label113:setParent(obj.flowLayout3);
    obj.label113:setLeft(0);
    obj.label113:setTop(0);
    obj.label113:setAlign("left");
    obj.label113:setText("Descrição: ");
    obj.label113:setMargins({left=10;top=20});
    obj.label113:setWidth(100);
    obj.label113:setAutoSize(true);
    obj.label113:setName("label113");

    obj.label114 = GUI.fromHandle(_obj_newObject("label"));
    obj.label114:setParent(obj.flowLayout3);
    obj.label114:setLeft(0);
    obj.label114:setTop(0);
    obj.label114:setAlign("left");
    obj.label114:setText("descricao ");
    obj.label114:setMargins({top=20});
    obj.label114:setAutoSize(true);
    obj.label114:setWidth(500);
    obj.label114:setField("descricaoVant2");
    obj.label114:setName("label114");

    obj.label115 = GUI.fromHandle(_obj_newObject("label"));
    obj.label115:setParent(obj.flowLayout3);
    obj.label115:setLeft(0);
    obj.label115:setTop(0);
    obj.label115:setAlign("left");
    obj.label115:setText("Custo: ");
    obj.label115:setMargins({top=20});
    obj.label115:setAutoSize(true);
    obj.label115:setWidth(50);
    obj.label115:setName("label115");

    obj.label116 = GUI.fromHandle(_obj_newObject("label"));
    obj.label116:setParent(obj.flowLayout3);
    obj.label116:setLeft(0);
    obj.label116:setTop(0);
    obj.label116:setAlign("left");
    obj.label116:setText("custo ");
    obj.label116:setMargins({top=20});
    obj.label116:setAutoSize(true);
    obj.label116:setWidth(10);
    obj.label116:setField("custoVant2");
    obj.label116:setName("label116");

    obj.flowLineBreak23 = GUI.fromHandle(_obj_newObject("flowLineBreak"));
    obj.flowLineBreak23:setParent(obj.flowLayout3);
    obj.flowLineBreak23:setName("flowLineBreak23");

    obj.label117 = GUI.fromHandle(_obj_newObject("label"));
    obj.label117:setParent(obj.flowLayout3);
    obj.label117:setLeft(0);
    obj.label117:setTop(0);
    obj.label117:setAlign("left");
    obj.label117:setText("Vantagem:");
    obj.label117:setMargins({top=20});
    obj.label117:setAutoSize(true);
    obj.label117:setName("label117");

    obj.comboBox13 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox13:setParent(obj.flowLayout3);
    obj.comboBox13:setAlign("client");
    obj.comboBox13:setLeft(20);
    obj.comboBox13:setTop(20);
    obj.comboBox13:setWidth(250);
    obj.comboBox13:setMargins({top=20; right=10});
    obj.comboBox13:setItems({'N/A','Acerto', 'Alma Gêmea','Ambidestria', 'Ambiente Favorável 1', 'Ambiente Favorável 2',
                        'Ambiente Favorável 3','Amor Polígamo', 'Amor Verdadeiro', 'Aparência Inofensiva', 'Arma de Fogo 1',
                         'Arma de Fogo 2', 'Arma de Fogo 3','Bom Senso','Conhecimentos Arcanos', 'Contatos e Aliados 1', 'Contatos e Aliados 2',
                          'Contatos e Aliados 3', 'Contatos e Aliados 4', 'Coração de Pedra', 'Detectar Magia 1',
                           'Detectar Magia 2', 'Dívida de Gratidão 1', 'Dívida de Gratidão 2', 'Dívida de Gratidão 3',
                            'Empatia com Animais','Fama 1','Fama 2','Fama 3','Fama 4', 'Família ou Mentor Honrado', 'Identidade Secreta', 'Improvisador 1',
                             'Improvisador 2', 'Influência Política/Burocrática 1', 'Influência Política/Burocrática 2',
                              'Influência Política/Burocrática 3', 'Influência Política/Burocrática 4', 
                              'Influência Política/Burocrática 5', 'Influência Jurisprudente 1', 'Influência Jurisprudente 2','Influência Jurisprudente 3', 'Influência Jurisprudente 4', 'Influência Jurisprudente 5',
                              'Influência Eclesiástica 1', 'Influência Eclesiástica 2', 'Influência Eclesiástica 3',
                              'Influência Eclesiástica 4', 'Influência Eclesiástica 5', 'Influência Econômica 1',
                               'Influência Econômica 2', 'Influência Econômica 3', 'Influência Econômica 4', 
                               'Influência Econômica 5', 'Influência Midiática 1', 'Influência Midiática 2', 
                               'Influência Midiática 3', 'Influência Midiática 4', 'Influência Midiática 5', 'Infravisão',
                                'Iniciativa Aprimorada', 'Medicina', 'Patrono','Pechincheiro','Pontos de HP Extras', 'Pontos de Mana Extras',
                                 'Precognição', 'Resistência a Dor', 'Sentidos Aguçados (Visão)', 
                                 'Sentidos Aguçados (Tato)', 'Sentidos Aguçados (Olfato)', 'Sentidos Aguçados (Paladar)',
                                  'Sentidos Aguçados (Audição)','Sortudo 1','Sortudo 2', 'Torcida', 'Visão Noturna'});
    obj.comboBox13:setField("nomeVant3");
    obj.comboBox13:setName("comboBox13");

    obj.label118 = GUI.fromHandle(_obj_newObject("label"));
    obj.label118:setParent(obj.flowLayout3);
    obj.label118:setLeft(0);
    obj.label118:setTop(0);
    obj.label118:setAlign("left");
    obj.label118:setText("Descrição: ");
    obj.label118:setMargins({left=10;top=20});
    obj.label118:setWidth(100);
    obj.label118:setAutoSize(true);
    obj.label118:setName("label118");

    obj.label119 = GUI.fromHandle(_obj_newObject("label"));
    obj.label119:setParent(obj.flowLayout3);
    obj.label119:setLeft(0);
    obj.label119:setTop(0);
    obj.label119:setAlign("left");
    obj.label119:setText("descricao ");
    obj.label119:setMargins({top=20});
    obj.label119:setAutoSize(true);
    obj.label119:setWidth(500);
    obj.label119:setField("descricaoVant3");
    obj.label119:setName("label119");

    obj.label120 = GUI.fromHandle(_obj_newObject("label"));
    obj.label120:setParent(obj.flowLayout3);
    obj.label120:setLeft(0);
    obj.label120:setTop(0);
    obj.label120:setAlign("left");
    obj.label120:setText("Custo: ");
    obj.label120:setMargins({top=20});
    obj.label120:setAutoSize(true);
    obj.label120:setWidth(50);
    obj.label120:setName("label120");

    obj.label121 = GUI.fromHandle(_obj_newObject("label"));
    obj.label121:setParent(obj.flowLayout3);
    obj.label121:setLeft(0);
    obj.label121:setTop(0);
    obj.label121:setAlign("left");
    obj.label121:setText("custo ");
    obj.label121:setMargins({top=20});
    obj.label121:setAutoSize(true);
    obj.label121:setWidth(10);
    obj.label121:setField("custoVant3");
    obj.label121:setName("label121");

    obj.flowLineBreak24 = GUI.fromHandle(_obj_newObject("flowLineBreak"));
    obj.flowLineBreak24:setParent(obj.flowLayout3);
    obj.flowLineBreak24:setName("flowLineBreak24");

    obj.label122 = GUI.fromHandle(_obj_newObject("label"));
    obj.label122:setParent(obj.flowLayout3);
    obj.label122:setLeft(0);
    obj.label122:setTop(0);
    obj.label122:setAlign("left");
    obj.label122:setText("Vantagem:");
    obj.label122:setMargins({top=20});
    obj.label122:setAutoSize(true);
    obj.label122:setName("label122");

    obj.comboBox14 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox14:setParent(obj.flowLayout3);
    obj.comboBox14:setAlign("client");
    obj.comboBox14:setLeft(20);
    obj.comboBox14:setTop(20);
    obj.comboBox14:setWidth(250);
    obj.comboBox14:setMargins({top=20; right=10});
    obj.comboBox14:setItems({'N/A','Acerto', 'Alma Gêmea','Ambidestria', 'Ambiente Favorável 1', 'Ambiente Favorável 2',
                        'Ambiente Favorável 3','Amor Polígamo', 'Amor Verdadeiro', 'Aparência Inofensiva', 'Arma de Fogo 1',
                         'Arma de Fogo 2', 'Arma de Fogo 3','Bom Senso','Conhecimentos Arcanos', 'Contatos e Aliados 1', 'Contatos e Aliados 2',
                          'Contatos e Aliados 3', 'Contatos e Aliados 4', 'Coração de Pedra', 'Detectar Magia 1',
                           'Detectar Magia 2', 'Dívida de Gratidão 1', 'Dívida de Gratidão 2', 'Dívida de Gratidão 3',
                            'Empatia com Animais','Fama 1','Fama 2','Fama 3','Fama 4', 'Família ou Mentor Honrado', 'Identidade Secreta', 'Improvisador 1',
                             'Improvisador 2', 'Influência Política/Burocrática 1', 'Influência Política/Burocrática 2',
                              'Influência Política/Burocrática 3', 'Influência Política/Burocrática 4', 
                              'Influência Política/Burocrática 5', 'Influência Jurisprudente 1', 'Influência Jurisprudente 2','Influência Jurisprudente 3', 'Influência Jurisprudente 4', 'Influência Jurisprudente 5',
                              'Influência Eclesiástica 1', 'Influência Eclesiástica 2', 'Influência Eclesiástica 3',
                              'Influência Eclesiástica 4', 'Influência Eclesiástica 5', 'Influência Econômica 1',
                               'Influência Econômica 2', 'Influência Econômica 3', 'Influência Econômica 4', 
                               'Influência Econômica 5', 'Influência Midiática 1', 'Influência Midiática 2', 
                               'Influência Midiática 3', 'Influência Midiática 4', 'Influência Midiática 5', 'Infravisão',
                                'Iniciativa Aprimorada', 'Medicina', 'Patrono','Pechincheiro','Pontos de HP Extras', 'Pontos de Mana Extras',
                                 'Precognição', 'Resistência a Dor', 'Sentidos Aguçados (Visão)', 
                                 'Sentidos Aguçados (Tato)', 'Sentidos Aguçados (Olfato)', 'Sentidos Aguçados (Paladar)',
                                  'Sentidos Aguçados (Audição)','Sortudo 1','Sortudo 2', 'Torcida', 'Visão Noturna'});
    obj.comboBox14:setField("nomeVant4");
    obj.comboBox14:setName("comboBox14");

    obj.label123 = GUI.fromHandle(_obj_newObject("label"));
    obj.label123:setParent(obj.flowLayout3);
    obj.label123:setLeft(0);
    obj.label123:setTop(0);
    obj.label123:setAlign("left");
    obj.label123:setText("Descrição: ");
    obj.label123:setMargins({left=10;top=20});
    obj.label123:setWidth(100);
    obj.label123:setAutoSize(true);
    obj.label123:setName("label123");

    obj.label124 = GUI.fromHandle(_obj_newObject("label"));
    obj.label124:setParent(obj.flowLayout3);
    obj.label124:setLeft(0);
    obj.label124:setTop(0);
    obj.label124:setAlign("left");
    obj.label124:setText("descricao ");
    obj.label124:setMargins({top=20});
    obj.label124:setAutoSize(true);
    obj.label124:setWidth(500);
    obj.label124:setField("descricaoVant4");
    obj.label124:setName("label124");

    obj.label125 = GUI.fromHandle(_obj_newObject("label"));
    obj.label125:setParent(obj.flowLayout3);
    obj.label125:setLeft(0);
    obj.label125:setTop(0);
    obj.label125:setAlign("left");
    obj.label125:setText("Custo: ");
    obj.label125:setMargins({top=20});
    obj.label125:setAutoSize(true);
    obj.label125:setWidth(50);
    obj.label125:setName("label125");

    obj.label126 = GUI.fromHandle(_obj_newObject("label"));
    obj.label126:setParent(obj.flowLayout3);
    obj.label126:setLeft(0);
    obj.label126:setTop(0);
    obj.label126:setAlign("left");
    obj.label126:setText("custo ");
    obj.label126:setMargins({top=20});
    obj.label126:setAutoSize(true);
    obj.label126:setWidth(10);
    obj.label126:setField("custoVant4");
    obj.label126:setName("label126");

    obj.flowLineBreak25 = GUI.fromHandle(_obj_newObject("flowLineBreak"));
    obj.flowLineBreak25:setParent(obj.flowLayout3);
    obj.flowLineBreak25:setName("flowLineBreak25");

    obj.label127 = GUI.fromHandle(_obj_newObject("label"));
    obj.label127:setParent(obj.flowLayout3);
    obj.label127:setLeft(0);
    obj.label127:setTop(0);
    obj.label127:setAlign("left");
    obj.label127:setText("Vantagem:");
    obj.label127:setMargins({top=20});
    obj.label127:setAutoSize(true);
    obj.label127:setName("label127");

    obj.comboBox15 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox15:setParent(obj.flowLayout3);
    obj.comboBox15:setAlign("client");
    obj.comboBox15:setLeft(20);
    obj.comboBox15:setTop(20);
    obj.comboBox15:setWidth(250);
    obj.comboBox15:setMargins({top=20; right=10});
    obj.comboBox15:setItems({'N/A','Acerto', 'Alma Gêmea','Ambidestria', 'Ambiente Favorável 1', 'Ambiente Favorável 2',
                        'Ambiente Favorável 3','Amor Polígamo', 'Amor Verdadeiro', 'Aparência Inofensiva', 'Arma de Fogo 1',
                         'Arma de Fogo 2', 'Arma de Fogo 3','Bom Senso','Conhecimentos Arcanos', 'Contatos e Aliados 1', 'Contatos e Aliados 2',
                          'Contatos e Aliados 3', 'Contatos e Aliados 4', 'Coração de Pedra', 'Detectar Magia 1',
                           'Detectar Magia 2', 'Dívida de Gratidão 1', 'Dívida de Gratidão 2', 'Dívida de Gratidão 3',
                            'Empatia com Animais','Fama 1','Fama 2','Fama 3','Fama 4', 'Família ou Mentor Honrado', 'Identidade Secreta', 'Improvisador 1',
                             'Improvisador 2', 'Influência Política/Burocrática 1', 'Influência Política/Burocrática 2',
                              'Influência Política/Burocrática 3', 'Influência Política/Burocrática 4', 
                              'Influência Política/Burocrática 5', 'Influência Jurisprudente 1', 'Influência Jurisprudente 2','Influência Jurisprudente 3', 'Influência Jurisprudente 4', 'Influência Jurisprudente 5',
                              'Influência Eclesiástica 1', 'Influência Eclesiástica 2', 'Influência Eclesiástica 3',
                              'Influência Eclesiástica 4', 'Influência Eclesiástica 5', 'Influência Econômica 1',
                               'Influência Econômica 2', 'Influência Econômica 3', 'Influência Econômica 4', 
                               'Influência Econômica 5', 'Influência Midiática 1', 'Influência Midiática 2', 
                               'Influência Midiática 3', 'Influência Midiática 4', 'Influência Midiática 5', 'Infravisão',
                                'Iniciativa Aprimorada', 'Medicina', 'Patrono','Pechincheiro','Pontos de HP Extras', 'Pontos de Mana Extras',
                                 'Precognição', 'Resistência a Dor', 'Sentidos Aguçados (Visão)', 
                                 'Sentidos Aguçados (Tato)', 'Sentidos Aguçados (Olfato)', 'Sentidos Aguçados (Paladar)',
                                  'Sentidos Aguçados (Audição)','Sortudo 1','Sortudo 2', 'Torcida', 'Visão Noturna'});
    obj.comboBox15:setField("nomeVant5");
    obj.comboBox15:setName("comboBox15");

    obj.label128 = GUI.fromHandle(_obj_newObject("label"));
    obj.label128:setParent(obj.flowLayout3);
    obj.label128:setLeft(0);
    obj.label128:setTop(0);
    obj.label128:setAlign("left");
    obj.label128:setText("Descrição: ");
    obj.label128:setMargins({left=10;top=20});
    obj.label128:setWidth(100);
    obj.label128:setAutoSize(true);
    obj.label128:setName("label128");

    obj.label129 = GUI.fromHandle(_obj_newObject("label"));
    obj.label129:setParent(obj.flowLayout3);
    obj.label129:setLeft(0);
    obj.label129:setTop(0);
    obj.label129:setAlign("left");
    obj.label129:setText("descricao ");
    obj.label129:setMargins({top=20});
    obj.label129:setAutoSize(true);
    obj.label129:setWidth(500);
    obj.label129:setField("descricaoVant5");
    obj.label129:setName("label129");

    obj.label130 = GUI.fromHandle(_obj_newObject("label"));
    obj.label130:setParent(obj.flowLayout3);
    obj.label130:setLeft(0);
    obj.label130:setTop(0);
    obj.label130:setAlign("left");
    obj.label130:setText("Custo: ");
    obj.label130:setMargins({top=20});
    obj.label130:setAutoSize(true);
    obj.label130:setWidth(50);
    obj.label130:setName("label130");

    obj.label131 = GUI.fromHandle(_obj_newObject("label"));
    obj.label131:setParent(obj.flowLayout3);
    obj.label131:setLeft(0);
    obj.label131:setTop(0);
    obj.label131:setAlign("left");
    obj.label131:setText("custo ");
    obj.label131:setMargins({top=20});
    obj.label131:setAutoSize(true);
    obj.label131:setWidth(10);
    obj.label131:setField("custoVant5");
    obj.label131:setName("label131");

    obj.flowLineBreak26 = GUI.fromHandle(_obj_newObject("flowLineBreak"));
    obj.flowLineBreak26:setParent(obj.flowLayout3);
    obj.flowLineBreak26:setName("flowLineBreak26");

    obj.label132 = GUI.fromHandle(_obj_newObject("label"));
    obj.label132:setParent(obj.flowLayout3);
    obj.label132:setLeft(0);
    obj.label132:setTop(0);
    obj.label132:setAlign("left");
    obj.label132:setText("Vantagem:");
    obj.label132:setMargins({top=20});
    obj.label132:setAutoSize(true);
    obj.label132:setName("label132");

    obj.comboBox16 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox16:setParent(obj.flowLayout3);
    obj.comboBox16:setAlign("client");
    obj.comboBox16:setLeft(20);
    obj.comboBox16:setTop(20);
    obj.comboBox16:setWidth(250);
    obj.comboBox16:setMargins({top=20; right=10});
    obj.comboBox16:setItems({'N/A','Acerto', 'Alma Gêmea','Ambidestria', 'Ambiente Favorável 1', 'Ambiente Favorável 2',
                        'Ambiente Favorável 3','Amor Polígamo', 'Amor Verdadeiro', 'Aparência Inofensiva', 'Arma de Fogo 1',
                         'Arma de Fogo 2', 'Arma de Fogo 3','Bom Senso','Conhecimentos Arcanos', 'Contatos e Aliados 1', 'Contatos e Aliados 2',
                          'Contatos e Aliados 3', 'Contatos e Aliados 4', 'Coração de Pedra', 'Detectar Magia 1',
                           'Detectar Magia 2', 'Dívida de Gratidão 1', 'Dívida de Gratidão 2', 'Dívida de Gratidão 3',
                            'Empatia com Animais','Fama 1','Fama 2','Fama 3','Fama 4', 'Família ou Mentor Honrado', 'Identidade Secreta', 'Improvisador 1',
                             'Improvisador 2', 'Influência Política/Burocrática 1', 'Influência Política/Burocrática 2',
                              'Influência Política/Burocrática 3', 'Influência Política/Burocrática 4', 
                              'Influência Política/Burocrática 5', 'Influência Jurisprudente 1', 'Influência Jurisprudente 2','Influência Jurisprudente 3', 'Influência Jurisprudente 4', 'Influência Jurisprudente 5',
                              'Influência Eclesiástica 1', 'Influência Eclesiástica 2', 'Influência Eclesiástica 3',
                              'Influência Eclesiástica 4', 'Influência Eclesiástica 5', 'Influência Econômica 1',
                               'Influência Econômica 2', 'Influência Econômica 3', 'Influência Econômica 4', 
                               'Influência Econômica 5', 'Influência Midiática 1', 'Influência Midiática 2', 
                               'Influência Midiática 3', 'Influência Midiática 4', 'Influência Midiática 5', 'Infravisão',
                                'Iniciativa Aprimorada', 'Medicina', 'Patrono','Pechincheiro','Pontos de HP Extras', 'Pontos de Mana Extras',
                                 'Precognição', 'Resistência a Dor', 'Sentidos Aguçados (Visão)', 
                                 'Sentidos Aguçados (Tato)', 'Sentidos Aguçados (Olfato)', 'Sentidos Aguçados (Paladar)',
                                  'Sentidos Aguçados (Audição)','Sortudo 1','Sortudo 2', 'Torcida', 'Visão Noturna'});
    obj.comboBox16:setField("nomeVant6");
    obj.comboBox16:setName("comboBox16");

    obj.label133 = GUI.fromHandle(_obj_newObject("label"));
    obj.label133:setParent(obj.flowLayout3);
    obj.label133:setLeft(0);
    obj.label133:setTop(0);
    obj.label133:setAlign("left");
    obj.label133:setText("Descrição: ");
    obj.label133:setMargins({left=10;top=20});
    obj.label133:setWidth(100);
    obj.label133:setAutoSize(true);
    obj.label133:setName("label133");

    obj.label134 = GUI.fromHandle(_obj_newObject("label"));
    obj.label134:setParent(obj.flowLayout3);
    obj.label134:setLeft(0);
    obj.label134:setTop(0);
    obj.label134:setAlign("left");
    obj.label134:setText("descricao ");
    obj.label134:setMargins({top=20});
    obj.label134:setAutoSize(true);
    obj.label134:setWidth(500);
    obj.label134:setField("descricaoVant6");
    obj.label134:setName("label134");

    obj.label135 = GUI.fromHandle(_obj_newObject("label"));
    obj.label135:setParent(obj.flowLayout3);
    obj.label135:setLeft(0);
    obj.label135:setTop(0);
    obj.label135:setAlign("left");
    obj.label135:setText("Custo: ");
    obj.label135:setMargins({top=20});
    obj.label135:setAutoSize(true);
    obj.label135:setWidth(50);
    obj.label135:setName("label135");

    obj.label136 = GUI.fromHandle(_obj_newObject("label"));
    obj.label136:setParent(obj.flowLayout3);
    obj.label136:setLeft(0);
    obj.label136:setTop(0);
    obj.label136:setAlign("left");
    obj.label136:setText("custo ");
    obj.label136:setMargins({top=20});
    obj.label136:setAutoSize(true);
    obj.label136:setWidth(10);
    obj.label136:setField("custoVant6");
    obj.label136:setName("label136");

    obj.flowLineBreak27 = GUI.fromHandle(_obj_newObject("flowLineBreak"));
    obj.flowLineBreak27:setParent(obj.flowLayout3);
    obj.flowLineBreak27:setName("flowLineBreak27");

    obj.label137 = GUI.fromHandle(_obj_newObject("label"));
    obj.label137:setParent(obj.flowLayout3);
    obj.label137:setLeft(0);
    obj.label137:setTop(0);
    obj.label137:setAlign("left");
    obj.label137:setText("Vantagem:");
    obj.label137:setMargins({top=20});
    obj.label137:setAutoSize(true);
    obj.label137:setName("label137");

    obj.comboBox17 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox17:setParent(obj.flowLayout3);
    obj.comboBox17:setAlign("client");
    obj.comboBox17:setLeft(20);
    obj.comboBox17:setTop(20);
    obj.comboBox17:setWidth(250);
    obj.comboBox17:setMargins({top=20; right=10});
    obj.comboBox17:setItems({'N/A','Acerto', 'Alma Gêmea','Ambidestria', 'Ambiente Favorável 1', 'Ambiente Favorável 2',
                        'Ambiente Favorável 3','Amor Polígamo', 'Amor Verdadeiro', 'Aparência Inofensiva', 'Arma de Fogo 1',
                         'Arma de Fogo 2', 'Arma de Fogo 3','Bom Senso','Conhecimentos Arcanos', 'Contatos e Aliados 1', 'Contatos e Aliados 2',
                          'Contatos e Aliados 3', 'Contatos e Aliados 4', 'Coração de Pedra', 'Detectar Magia 1',
                           'Detectar Magia 2', 'Dívida de Gratidão 1', 'Dívida de Gratidão 2', 'Dívida de Gratidão 3',
                            'Empatia com Animais','Fama 1','Fama 2','Fama 3','Fama 4', 'Família ou Mentor Honrado', 'Identidade Secreta', 'Improvisador 1',
                             'Improvisador 2', 'Influência Política/Burocrática 1', 'Influência Política/Burocrática 2',
                              'Influência Política/Burocrática 3', 'Influência Política/Burocrática 4', 
                              'Influência Política/Burocrática 5', 'Influência Jurisprudente 1', 'Influência Jurisprudente 2','Influência Jurisprudente 3', 'Influência Jurisprudente 4', 'Influência Jurisprudente 5',
                              'Influência Eclesiástica 1', 'Influência Eclesiástica 2', 'Influência Eclesiástica 3',
                              'Influência Eclesiástica 4', 'Influência Eclesiástica 5', 'Influência Econômica 1',
                               'Influência Econômica 2', 'Influência Econômica 3', 'Influência Econômica 4', 
                               'Influência Econômica 5', 'Influência Midiática 1', 'Influência Midiática 2', 
                               'Influência Midiática 3', 'Influência Midiática 4', 'Influência Midiática 5', 'Infravisão',
                                'Iniciativa Aprimorada', 'Medicina', 'Patrono','Pechincheiro','Pontos de HP Extras', 'Pontos de Mana Extras',
                                 'Precognição', 'Resistência a Dor', 'Sentidos Aguçados (Visão)', 
                                 'Sentidos Aguçados (Tato)', 'Sentidos Aguçados (Olfato)', 'Sentidos Aguçados (Paladar)',
                                  'Sentidos Aguçados (Audição)','Sortudo 1','Sortudo 2', 'Torcida', 'Visão Noturna'});
    obj.comboBox17:setField("nomeVant7");
    obj.comboBox17:setName("comboBox17");

    obj.label138 = GUI.fromHandle(_obj_newObject("label"));
    obj.label138:setParent(obj.flowLayout3);
    obj.label138:setLeft(0);
    obj.label138:setTop(0);
    obj.label138:setAlign("left");
    obj.label138:setText("Descrição: ");
    obj.label138:setMargins({left=10;top=20});
    obj.label138:setWidth(100);
    obj.label138:setAutoSize(true);
    obj.label138:setName("label138");

    obj.label139 = GUI.fromHandle(_obj_newObject("label"));
    obj.label139:setParent(obj.flowLayout3);
    obj.label139:setLeft(0);
    obj.label139:setTop(0);
    obj.label139:setAlign("left");
    obj.label139:setText("descricao ");
    obj.label139:setMargins({top=20});
    obj.label139:setAutoSize(true);
    obj.label139:setWidth(500);
    obj.label139:setField("descricaoVant7");
    obj.label139:setName("label139");

    obj.label140 = GUI.fromHandle(_obj_newObject("label"));
    obj.label140:setParent(obj.flowLayout3);
    obj.label140:setLeft(0);
    obj.label140:setTop(0);
    obj.label140:setAlign("left");
    obj.label140:setText("Custo: ");
    obj.label140:setMargins({top=20});
    obj.label140:setAutoSize(true);
    obj.label140:setWidth(50);
    obj.label140:setName("label140");

    obj.label141 = GUI.fromHandle(_obj_newObject("label"));
    obj.label141:setParent(obj.flowLayout3);
    obj.label141:setLeft(0);
    obj.label141:setTop(0);
    obj.label141:setAlign("left");
    obj.label141:setText("custo ");
    obj.label141:setMargins({top=20});
    obj.label141:setAutoSize(true);
    obj.label141:setWidth(10);
    obj.label141:setField("custoVant7");
    obj.label141:setName("label141");

    obj.flowLineBreak28 = GUI.fromHandle(_obj_newObject("flowLineBreak"));
    obj.flowLineBreak28:setParent(obj.flowLayout3);
    obj.flowLineBreak28:setName("flowLineBreak28");

    obj.label142 = GUI.fromHandle(_obj_newObject("label"));
    obj.label142:setParent(obj.flowLayout3);
    obj.label142:setLeft(0);
    obj.label142:setTop(0);
    obj.label142:setAlign("left");
    obj.label142:setText("Vantagem:");
    obj.label142:setMargins({top=20});
    obj.label142:setAutoSize(true);
    obj.label142:setName("label142");

    obj.comboBox18 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox18:setParent(obj.flowLayout3);
    obj.comboBox18:setAlign("client");
    obj.comboBox18:setLeft(20);
    obj.comboBox18:setTop(20);
    obj.comboBox18:setWidth(250);
    obj.comboBox18:setMargins({top=20; right=10});
    obj.comboBox18:setItems({'N/A','Acerto', 'Alma Gêmea','Ambidestria', 'Ambiente Favorável 1', 'Ambiente Favorável 2',
                        'Ambiente Favorável 3','Amor Polígamo', 'Amor Verdadeiro', 'Aparência Inofensiva', 'Arma de Fogo 1',
                         'Arma de Fogo 2', 'Arma de Fogo 3','Bom Senso','Conhecimentos Arcanos', 'Contatos e Aliados 1', 'Contatos e Aliados 2',
                          'Contatos e Aliados 3', 'Contatos e Aliados 4', 'Coração de Pedra', 'Detectar Magia 1',
                           'Detectar Magia 2', 'Dívida de Gratidão 1', 'Dívida de Gratidão 2', 'Dívida de Gratidão 3',
                            'Empatia com Animais','Fama 1','Fama 2','Fama 3','Fama 4', 'Família ou Mentor Honrado', 'Identidade Secreta', 'Improvisador 1',
                             'Improvisador 2', 'Influência Política/Burocrática 1', 'Influência Política/Burocrática 2',
                              'Influência Política/Burocrática 3', 'Influência Política/Burocrática 4', 
                              'Influência Política/Burocrática 5', 'Influência Jurisprudente 1', 'Influência Jurisprudente 2','Influência Jurisprudente 3', 'Influência Jurisprudente 4', 'Influência Jurisprudente 5',
                              'Influência Eclesiástica 1', 'Influência Eclesiástica 2', 'Influência Eclesiástica 3',
                              'Influência Eclesiástica 4', 'Influência Eclesiástica 5', 'Influência Econômica 1',
                               'Influência Econômica 2', 'Influência Econômica 3', 'Influência Econômica 4', 
                               'Influência Econômica 5', 'Influência Midiática 1', 'Influência Midiática 2', 
                               'Influência Midiática 3', 'Influência Midiática 4', 'Influência Midiática 5', 'Infravisão',
                                'Iniciativa Aprimorada', 'Medicina', 'Patrono','Pechincheiro','Pontos de HP Extras', 'Pontos de Mana Extras',
                                 'Precognição', 'Resistência a Dor', 'Sentidos Aguçados (Visão)', 
                                 'Sentidos Aguçados (Tato)', 'Sentidos Aguçados (Olfato)', 'Sentidos Aguçados (Paladar)',
                                  'Sentidos Aguçados (Audição)','Sortudo 1','Sortudo 2', 'Torcida', 'Visão Noturna'});
    obj.comboBox18:setField("nomeVant8");
    obj.comboBox18:setName("comboBox18");

    obj.label143 = GUI.fromHandle(_obj_newObject("label"));
    obj.label143:setParent(obj.flowLayout3);
    obj.label143:setLeft(0);
    obj.label143:setTop(0);
    obj.label143:setAlign("left");
    obj.label143:setText("Descrição: ");
    obj.label143:setMargins({left=10;top=20});
    obj.label143:setWidth(100);
    obj.label143:setAutoSize(true);
    obj.label143:setName("label143");

    obj.label144 = GUI.fromHandle(_obj_newObject("label"));
    obj.label144:setParent(obj.flowLayout3);
    obj.label144:setLeft(0);
    obj.label144:setTop(0);
    obj.label144:setAlign("left");
    obj.label144:setText("descricao ");
    obj.label144:setMargins({top=20});
    obj.label144:setAutoSize(true);
    obj.label144:setWidth(500);
    obj.label144:setField("descricaoVant8");
    obj.label144:setName("label144");

    obj.label145 = GUI.fromHandle(_obj_newObject("label"));
    obj.label145:setParent(obj.flowLayout3);
    obj.label145:setLeft(0);
    obj.label145:setTop(0);
    obj.label145:setAlign("left");
    obj.label145:setText("Custo: ");
    obj.label145:setMargins({top=20});
    obj.label145:setAutoSize(true);
    obj.label145:setWidth(50);
    obj.label145:setName("label145");

    obj.label146 = GUI.fromHandle(_obj_newObject("label"));
    obj.label146:setParent(obj.flowLayout3);
    obj.label146:setLeft(0);
    obj.label146:setTop(0);
    obj.label146:setAlign("left");
    obj.label146:setText("custo ");
    obj.label146:setMargins({top=20});
    obj.label146:setAutoSize(true);
    obj.label146:setWidth(10);
    obj.label146:setField("custoVant8");
    obj.label146:setName("label146");

    obj.flowLineBreak29 = GUI.fromHandle(_obj_newObject("flowLineBreak"));
    obj.flowLineBreak29:setParent(obj.flowLayout3);
    obj.flowLineBreak29:setName("flowLineBreak29");

    obj.label147 = GUI.fromHandle(_obj_newObject("label"));
    obj.label147:setParent(obj.flowLayout3);
    obj.label147:setLeft(0);
    obj.label147:setTop(0);
    obj.label147:setAlign("left");
    obj.label147:setText("Vantagem:");
    obj.label147:setMargins({top=20});
    obj.label147:setAutoSize(true);
    obj.label147:setName("label147");

    obj.comboBox19 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox19:setParent(obj.flowLayout3);
    obj.comboBox19:setAlign("client");
    obj.comboBox19:setLeft(20);
    obj.comboBox19:setTop(20);
    obj.comboBox19:setWidth(250);
    obj.comboBox19:setMargins({top=20; right=10});
    obj.comboBox19:setItems({'N/A','Acerto', 'Alma Gêmea','Ambidestria', 'Ambiente Favorável 1', 'Ambiente Favorável 2',
                        'Ambiente Favorável 3','Amor Polígamo', 'Amor Verdadeiro', 'Aparência Inofensiva', 'Arma de Fogo 1',
                         'Arma de Fogo 2', 'Arma de Fogo 3','Bom Senso','Conhecimentos Arcanos', 'Contatos e Aliados 1', 'Contatos e Aliados 2',
                          'Contatos e Aliados 3', 'Contatos e Aliados 4', 'Coração de Pedra', 'Detectar Magia 1',
                           'Detectar Magia 2', 'Dívida de Gratidão 1', 'Dívida de Gratidão 2', 'Dívida de Gratidão 3',
                            'Empatia com Animais','Fama 1','Fama 2','Fama 3','Fama 4', 'Família ou Mentor Honrado', 'Identidade Secreta', 'Improvisador 1',
                             'Improvisador 2', 'Influência Política/Burocrática 1', 'Influência Política/Burocrática 2',
                              'Influência Política/Burocrática 3', 'Influência Política/Burocrática 4', 
                              'Influência Política/Burocrática 5', 'Influência Jurisprudente 1', 'Influência Jurisprudente 2','Influência Jurisprudente 3', 'Influência Jurisprudente 4', 'Influência Jurisprudente 5',
                              'Influência Eclesiástica 1', 'Influência Eclesiástica 2', 'Influência Eclesiástica 3',
                              'Influência Eclesiástica 4', 'Influência Eclesiástica 5', 'Influência Econômica 1',
                               'Influência Econômica 2', 'Influência Econômica 3', 'Influência Econômica 4', 
                               'Influência Econômica 5', 'Influência Midiática 1', 'Influência Midiática 2', 
                               'Influência Midiática 3', 'Influência Midiática 4', 'Influência Midiática 5', 'Infravisão',
                                'Iniciativa Aprimorada', 'Medicina', 'Patrono','Pechincheiro','Pontos de HP Extras', 'Pontos de Mana Extras',
                                 'Precognição', 'Resistência a Dor', 'Sentidos Aguçados (Visão)', 
                                 'Sentidos Aguçados (Tato)', 'Sentidos Aguçados (Olfato)', 'Sentidos Aguçados (Paladar)',
                                  'Sentidos Aguçados (Audição)','Sortudo 1','Sortudo 2', 'Torcida', 'Visão Noturna'});
    obj.comboBox19:setField("nomeVant9");
    obj.comboBox19:setName("comboBox19");

    obj.label148 = GUI.fromHandle(_obj_newObject("label"));
    obj.label148:setParent(obj.flowLayout3);
    obj.label148:setLeft(0);
    obj.label148:setTop(0);
    obj.label148:setAlign("left");
    obj.label148:setText("Descrição: ");
    obj.label148:setMargins({left=10;top=20});
    obj.label148:setWidth(100);
    obj.label148:setAutoSize(true);
    obj.label148:setName("label148");

    obj.label149 = GUI.fromHandle(_obj_newObject("label"));
    obj.label149:setParent(obj.flowLayout3);
    obj.label149:setLeft(0);
    obj.label149:setTop(0);
    obj.label149:setAlign("left");
    obj.label149:setText("descricao ");
    obj.label149:setMargins({top=20});
    obj.label149:setAutoSize(true);
    obj.label149:setWidth(500);
    obj.label149:setField("descricaoVant9");
    obj.label149:setName("label149");

    obj.label150 = GUI.fromHandle(_obj_newObject("label"));
    obj.label150:setParent(obj.flowLayout3);
    obj.label150:setLeft(0);
    obj.label150:setTop(0);
    obj.label150:setAlign("left");
    obj.label150:setText("Custo: ");
    obj.label150:setMargins({top=20});
    obj.label150:setAutoSize(true);
    obj.label150:setWidth(50);
    obj.label150:setName("label150");

    obj.label151 = GUI.fromHandle(_obj_newObject("label"));
    obj.label151:setParent(obj.flowLayout3);
    obj.label151:setLeft(0);
    obj.label151:setTop(0);
    obj.label151:setAlign("left");
    obj.label151:setText("custo ");
    obj.label151:setMargins({top=20});
    obj.label151:setAutoSize(true);
    obj.label151:setWidth(10);
    obj.label151:setField("custoVant9");
    obj.label151:setName("label151");

    obj.flowLineBreak30 = GUI.fromHandle(_obj_newObject("flowLineBreak"));
    obj.flowLineBreak30:setParent(obj.flowLayout3);
    obj.flowLineBreak30:setName("flowLineBreak30");

    obj.label152 = GUI.fromHandle(_obj_newObject("label"));
    obj.label152:setParent(obj.flowLayout3);
    obj.label152:setLeft(0);
    obj.label152:setTop(0);
    obj.label152:setAlign("left");
    obj.label152:setText("Vantagem:");
    obj.label152:setMargins({top=20});
    obj.label152:setAutoSize(true);
    obj.label152:setName("label152");

    obj.comboBox20 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox20:setParent(obj.flowLayout3);
    obj.comboBox20:setAlign("client");
    obj.comboBox20:setLeft(20);
    obj.comboBox20:setTop(20);
    obj.comboBox20:setWidth(250);
    obj.comboBox20:setMargins({top=20; right=10});
    obj.comboBox20:setItems({'N/A','Acerto', 'Alma Gêmea','Ambidestria', 'Ambiente Favorável 1', 'Ambiente Favorável 2',
                        'Ambiente Favorável 3','Amor Polígamo', 'Amor Verdadeiro', 'Aparência Inofensiva', 'Arma de Fogo 1',
                         'Arma de Fogo 2', 'Arma de Fogo 3','Bom Senso','Conhecimentos Arcanos', 'Contatos e Aliados 1', 'Contatos e Aliados 2',
                          'Contatos e Aliados 3', 'Contatos e Aliados 4', 'Coração de Pedra', 'Detectar Magia 1',
                           'Detectar Magia 2', 'Dívida de Gratidão 1', 'Dívida de Gratidão 2', 'Dívida de Gratidão 3',
                            'Empatia com Animais','Fama 1','Fama 2','Fama 3','Fama 4', 'Família ou Mentor Honrado', 'Identidade Secreta', 'Improvisador 1',
                             'Improvisador 2', 'Influência Política/Burocrática 1', 'Influência Política/Burocrática 2',
                              'Influência Política/Burocrática 3', 'Influência Política/Burocrática 4', 
                              'Influência Política/Burocrática 5', 'Influência Jurisprudente 1', 'Influência Jurisprudente 2','Influência Jurisprudente 3', 'Influência Jurisprudente 4', 'Influência Jurisprudente 5',
                              'Influência Eclesiástica 1', 'Influência Eclesiástica 2', 'Influência Eclesiástica 3',
                              'Influência Eclesiástica 4', 'Influência Eclesiástica 5', 'Influência Econômica 1',
                               'Influência Econômica 2', 'Influência Econômica 3', 'Influência Econômica 4', 
                               'Influência Econômica 5', 'Influência Midiática 1', 'Influência Midiática 2', 
                               'Influência Midiática 3', 'Influência Midiática 4', 'Influência Midiática 5', 'Infravisão',
                                'Iniciativa Aprimorada', 'Medicina', 'Patrono','Pechincheiro','Pontos de HP Extras', 'Pontos de Mana Extras',
                                 'Precognição', 'Resistência a Dor', 'Sentidos Aguçados (Visão)', 
                                 'Sentidos Aguçados (Tato)', 'Sentidos Aguçados (Olfato)', 'Sentidos Aguçados (Paladar)',
                                  'Sentidos Aguçados (Audição)','Sortudo 1','Sortudo 2', 'Torcida', 'Visão Noturna'});
    obj.comboBox20:setField("nomeVant10");
    obj.comboBox20:setName("comboBox20");

    obj.label153 = GUI.fromHandle(_obj_newObject("label"));
    obj.label153:setParent(obj.flowLayout3);
    obj.label153:setLeft(0);
    obj.label153:setTop(0);
    obj.label153:setAlign("left");
    obj.label153:setText("Descrição: ");
    obj.label153:setMargins({left=10;top=20});
    obj.label153:setWidth(100);
    obj.label153:setAutoSize(true);
    obj.label153:setName("label153");

    obj.label154 = GUI.fromHandle(_obj_newObject("label"));
    obj.label154:setParent(obj.flowLayout3);
    obj.label154:setLeft(0);
    obj.label154:setTop(0);
    obj.label154:setAlign("left");
    obj.label154:setText("descricao ");
    obj.label154:setMargins({top=20});
    obj.label154:setAutoSize(true);
    obj.label154:setWidth(500);
    obj.label154:setField("descricaoVant10");
    obj.label154:setName("label154");

    obj.label155 = GUI.fromHandle(_obj_newObject("label"));
    obj.label155:setParent(obj.flowLayout3);
    obj.label155:setLeft(0);
    obj.label155:setTop(0);
    obj.label155:setAlign("left");
    obj.label155:setText("Custo: ");
    obj.label155:setMargins({top=20});
    obj.label155:setAutoSize(true);
    obj.label155:setWidth(50);
    obj.label155:setName("label155");

    obj.label156 = GUI.fromHandle(_obj_newObject("label"));
    obj.label156:setParent(obj.flowLayout3);
    obj.label156:setLeft(0);
    obj.label156:setTop(0);
    obj.label156:setAlign("left");
    obj.label156:setText("custo ");
    obj.label156:setMargins({top=20});
    obj.label156:setAutoSize(true);
    obj.label156:setWidth(10);
    obj.label156:setField("custoVant10");
    obj.label156:setName("label156");

    obj.tab4 = GUI.fromHandle(_obj_newObject("tab"));
    obj.tab4:setParent(obj.tabControl1);
    obj.tab4:setTitle("Desvantagens");
    obj.tab4:setName("tab4");

    obj.flowLayout4 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout4:setParent(obj.tab4);
    obj.flowLayout4:setLeft(10);
    obj.flowLayout4:setTop(10);
    obj.flowLayout4:setWidth(1500);
    obj.flowLayout4:setHeight(3000);
    obj.flowLayout4:setName("flowLayout4");

    obj.label157 = GUI.fromHandle(_obj_newObject("label"));
    obj.label157:setParent(obj.flowLayout4);
    obj.label157:setLeft(0);
    obj.label157:setTop(0);
    obj.label157:setAlign("left");
    obj.label157:setFontSize(20);
    obj.label157:setFontFamily("Copperplate Gothic");
    obj.label157:setText("DESVANTAGENS");
    obj.label157:setMargins({left=500;bottom=10});
    obj.label157:setWidth(250);
    obj.label157:setHeight(30);
    obj.label157:setName("label157");

    obj.label158 = GUI.fromHandle(_obj_newObject("label"));
    obj.label158:setParent(obj.flowLayout4);
    obj.label158:setLeft(0);
    obj.label158:setTop(0);
    obj.label158:setAlign("left");
    obj.label158:setFontSize(14);
    obj.label158:setText("Pontos Ganhos: ");
    obj.label158:setMargins({left=200;bottom=10});
    obj.label158:setAutoSize(true);
    obj.label158:setName("label158");

    obj.label159 = GUI.fromHandle(_obj_newObject("label"));
    obj.label159:setParent(obj.flowLayout4);
    obj.label159:setLeft(0);
    obj.label159:setTop(0);
    obj.label159:setAlign("left");
    obj.label159:setFontSize(14);
    obj.label159:setText("totalPtos ");
    obj.label159:setMargins({left=5;bottom=10});
    obj.label159:setField("TotalDesvant");
    obj.label159:setWidth(20);
    obj.label159:setName("label159");

    obj.flowLineBreak31 = GUI.fromHandle(_obj_newObject("flowLineBreak"));
    obj.flowLineBreak31:setParent(obj.flowLayout4);
    obj.flowLineBreak31:setName("flowLineBreak31");

    obj.label160 = GUI.fromHandle(_obj_newObject("label"));
    obj.label160:setParent(obj.flowLayout4);
    obj.label160:setLeft(0);
    obj.label160:setTop(0);
    obj.label160:setAlign("left");
    obj.label160:setText("Desvantagem:");
    obj.label160:setMargins({top=20});
    obj.label160:setAutoSize(true);
    obj.label160:setName("label160");

    obj.comboBox21 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox21:setParent(obj.flowLayout4);
    obj.comboBox21:setAlign("client");
    obj.comboBox21:setLeft(20);
    obj.comboBox21:setTop(20);
    obj.comboBox21:setWidth(250);
    obj.comboBox21:setMargins({top=20; right=10});
    obj.comboBox21:setItems({'N/A','Alergia', 'Alcoólotra','Andrógino', 'Aparência Trocada', 'Azarado', 'Casto','Cleptomaníaco',
                         'Código dos Cavalheiros', 'Código de Combate', 'Código do Caçador', 'Código dos Herois',
                         'Compulsão','Complexo de Culpa','Complexo de Inferioridade', 'Coração Mole',
                          'Coração de Gado','Covarde', 'Crédulo', 'Curioso','Deficiente Físico 1', 
                           'Deficiente Físico 2', 'Deficiente Físico 3', 'Dificuldade de Fala','Distração',
                           'Dupla Personalidade','Estigma Social','Esquizofrênico', 'Família ou Mentor Desonrado',
                           'Fanático', 'Fanfarrão','Fobia 1', 'Fobia 2', 'Fúria','Ganância', 'Gula', 
                           'Hábitos Detestáveis', 'Hipocondria', 'Inimigo', 'Intolerância', 'Má Fama 1', 'Má Fama 2',
                            'Má Fama 3', 'Maldição 1', 'Maldição 2', 'Maldição 3', 'Mania', 'Maníaco Depressivo',
                             'Marca do Predador', 'Megalomaníaco', 'Mentiroso Compulsivo', 'Monstruoso', 'Pacifista 1',
                              'Pacifista 2', 'Pacifista 3', 'Paranoia 1', 'Paranoia 2','Perda Terrível', 'Pesadelos',
                              'Protegido Indefeso', 'Sanguinário', 'Sarcasmo','Sono Pesado', 'Supersticioso', 
                               'Suspeito 1', 'Suspeito 2', 'Teimosia', 'Timidez', 'Traumatizado', 'Viciado em Jogos',
                                'Visão Monocromática','Vontade Fraca'});
    obj.comboBox21:setField("nomeDesvant");
    obj.comboBox21:setName("comboBox21");

    obj.label161 = GUI.fromHandle(_obj_newObject("label"));
    obj.label161:setParent(obj.flowLayout4);
    obj.label161:setLeft(0);
    obj.label161:setTop(0);
    obj.label161:setAlign("left");
    obj.label161:setText("Descrição: ");
    obj.label161:setMargins({left=10;top=20});
    obj.label161:setWidth(100);
    obj.label161:setAutoSize(true);
    obj.label161:setName("label161");

    obj.label162 = GUI.fromHandle(_obj_newObject("label"));
    obj.label162:setParent(obj.flowLayout4);
    obj.label162:setLeft(0);
    obj.label162:setTop(0);
    obj.label162:setAlign("left");
    obj.label162:setText("descricao ");
    obj.label162:setMargins({top=20});
    obj.label162:setAutoSize(true);
    obj.label162:setWidth(500);
    obj.label162:setField("descricaoDesvant");
    obj.label162:setName("label162");

    obj.label163 = GUI.fromHandle(_obj_newObject("label"));
    obj.label163:setParent(obj.flowLayout4);
    obj.label163:setLeft(0);
    obj.label163:setTop(0);
    obj.label163:setAlign("left");
    obj.label163:setText("Custo: ");
    obj.label163:setMargins({top=20});
    obj.label163:setAutoSize(true);
    obj.label163:setWidth(50);
    obj.label163:setName("label163");

    obj.label164 = GUI.fromHandle(_obj_newObject("label"));
    obj.label164:setParent(obj.flowLayout4);
    obj.label164:setLeft(0);
    obj.label164:setTop(0);
    obj.label164:setAlign("left");
    obj.label164:setText("custo ");
    obj.label164:setMargins({top=20});
    obj.label164:setAutoSize(true);
    obj.label164:setWidth(20);
    obj.label164:setField("custoDesvant");
    obj.label164:setName("label164");

    obj.flowLineBreak32 = GUI.fromHandle(_obj_newObject("flowLineBreak"));
    obj.flowLineBreak32:setParent(obj.flowLayout4);
    obj.flowLineBreak32:setName("flowLineBreak32");

    obj.label165 = GUI.fromHandle(_obj_newObject("label"));
    obj.label165:setParent(obj.flowLayout4);
    obj.label165:setLeft(0);
    obj.label165:setTop(0);
    obj.label165:setAlign("left");
    obj.label165:setText("Desvantagem:");
    obj.label165:setMargins({top=20});
    obj.label165:setAutoSize(true);
    obj.label165:setName("label165");

    obj.comboBox22 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox22:setParent(obj.flowLayout4);
    obj.comboBox22:setAlign("client");
    obj.comboBox22:setLeft(20);
    obj.comboBox22:setTop(20);
    obj.comboBox22:setWidth(250);
    obj.comboBox22:setMargins({top=20; right=10});
    obj.comboBox22:setItems({'N/A','Alergia', 'Alcoólotra','Andrógino', 'Aparência Trocada', 'Azarado', 'Casto','Cleptomaníaco',
                         'Código dos Cavalheiros', 'Código de Combate', 'Código do Caçador', 'Código dos Herois',
                         'Compulsão','Complexo de Culpa','Complexo de Inferioridade', 'Coração Mole',
                          'Coração de Gado','Covarde', 'Crédulo', 'Curioso','Deficiente Físico 1', 
                           'Deficiente Físico 2', 'Deficiente Físico 3', 'Dificuldade de Fala','Distração',
                           'Dupla Personalidade','Estigma Social','Esquizofrênico', 'Família ou Mentor Desonrado',
                           'Fanático', 'Fanfarrão','Fobia 1', 'Fobia 2', 'Fúria','Ganância', 'Gula', 
                           'Hábitos Detestáveis', 'Hipocondria', 'Inimigo', 'Intolerância', 'Má Fama 1', 'Má Fama 2',
                            'Má Fama 3', 'Maldição 1', 'Maldição 2', 'Maldição 3', 'Mania', 'Maníaco Depressivo',
                             'Marca do Predador', 'Megalomaníaco', 'Mentiroso Compulsivo', 'Monstruoso', 'Pacifista 1',
                              'Pacifista 2', 'Pacifista 3', 'Paranoia 1', 'Paranoia 2','Perda Terrível', 'Pesadelos',
                              'Protegido Indefeso', 'Sanguinário', 'Sarcasmo','Sono Pesado', 'Supersticioso', 
                               'Suspeito 1', 'Suspeito 2', 'Teimosia', 'Timidez', 'Traumatizado', 'Viciado em Jogos',
                                'Visão Monocromática','Vontade Fraca'});
    obj.comboBox22:setField("nomeDesvant2");
    obj.comboBox22:setName("comboBox22");

    obj.label166 = GUI.fromHandle(_obj_newObject("label"));
    obj.label166:setParent(obj.flowLayout4);
    obj.label166:setLeft(0);
    obj.label166:setTop(0);
    obj.label166:setAlign("left");
    obj.label166:setText("Descrição: ");
    obj.label166:setMargins({left=10;top=20});
    obj.label166:setWidth(100);
    obj.label166:setAutoSize(true);
    obj.label166:setName("label166");

    obj.label167 = GUI.fromHandle(_obj_newObject("label"));
    obj.label167:setParent(obj.flowLayout4);
    obj.label167:setLeft(0);
    obj.label167:setTop(0);
    obj.label167:setAlign("left");
    obj.label167:setText("descricao ");
    obj.label167:setMargins({top=20});
    obj.label167:setAutoSize(true);
    obj.label167:setWidth(500);
    obj.label167:setField("descricaoDesvant2");
    obj.label167:setName("label167");

    obj.label168 = GUI.fromHandle(_obj_newObject("label"));
    obj.label168:setParent(obj.flowLayout4);
    obj.label168:setLeft(0);
    obj.label168:setTop(0);
    obj.label168:setAlign("left");
    obj.label168:setText("Custo: ");
    obj.label168:setMargins({top=20});
    obj.label168:setAutoSize(true);
    obj.label168:setWidth(50);
    obj.label168:setName("label168");

    obj.label169 = GUI.fromHandle(_obj_newObject("label"));
    obj.label169:setParent(obj.flowLayout4);
    obj.label169:setLeft(0);
    obj.label169:setTop(0);
    obj.label169:setAlign("left");
    obj.label169:setText("custo ");
    obj.label169:setMargins({top=20});
    obj.label169:setAutoSize(true);
    obj.label169:setWidth(20);
    obj.label169:setField("custoDesvant2");
    obj.label169:setName("label169");

    obj.flowLineBreak33 = GUI.fromHandle(_obj_newObject("flowLineBreak"));
    obj.flowLineBreak33:setParent(obj.flowLayout4);
    obj.flowLineBreak33:setName("flowLineBreak33");

    obj.label170 = GUI.fromHandle(_obj_newObject("label"));
    obj.label170:setParent(obj.flowLayout4);
    obj.label170:setLeft(0);
    obj.label170:setTop(0);
    obj.label170:setAlign("left");
    obj.label170:setText("Desvantagem:");
    obj.label170:setMargins({top=20});
    obj.label170:setAutoSize(true);
    obj.label170:setName("label170");

    obj.comboBox23 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox23:setParent(obj.flowLayout4);
    obj.comboBox23:setAlign("client");
    obj.comboBox23:setLeft(20);
    obj.comboBox23:setTop(20);
    obj.comboBox23:setWidth(250);
    obj.comboBox23:setMargins({top=20; right=10});
    obj.comboBox23:setItems({'N/A','Alergia', 'Alcoólotra','Andrógino', 'Aparência Trocada', 'Azarado', 'Casto','Cleptomaníaco',
                         'Código dos Cavalheiros', 'Código de Combate', 'Código do Caçador', 'Código dos Herois',
                         'Compulsão','Complexo de Culpa','Complexo de Inferioridade', 'Coração Mole',
                          'Coração de Gado','Covarde', 'Crédulo', 'Curioso','Deficiente Físico 1', 
                           'Deficiente Físico 2', 'Deficiente Físico 3', 'Dificuldade de Fala','Distração',
                           'Dupla Personalidade','Estigma Social','Esquizofrênico', 'Família ou Mentor Desonrado',
                           'Fanático', 'Fanfarrão','Fobia 1', 'Fobia 2', 'Fúria','Ganância', 'Gula', 
                           'Hábitos Detestáveis', 'Hipocondria', 'Inimigo', 'Intolerância', 'Má Fama 1', 'Má Fama 2',
                            'Má Fama 3', 'Maldição 1', 'Maldição 2', 'Maldição 3', 'Mania', 'Maníaco Depressivo',
                             'Marca do Predador', 'Megalomaníaco', 'Mentiroso Compulsivo', 'Monstruoso', 'Pacifista 1',
                              'Pacifista 2', 'Pacifista 3', 'Paranoia 1', 'Paranoia 2','Perda Terrível', 'Pesadelos',
                              'Protegido Indefeso', 'Sanguinário', 'Sarcasmo','Sono Pesado', 'Supersticioso', 
                               'Suspeito 1', 'Suspeito 2', 'Teimosia', 'Timidez', 'Traumatizado', 'Viciado em Jogos',
                                'Visão Monocromática','Vontade Fraca'});
    obj.comboBox23:setField("nomeDesvant3");
    obj.comboBox23:setName("comboBox23");

    obj.label171 = GUI.fromHandle(_obj_newObject("label"));
    obj.label171:setParent(obj.flowLayout4);
    obj.label171:setLeft(0);
    obj.label171:setTop(0);
    obj.label171:setAlign("left");
    obj.label171:setText("Descrição: ");
    obj.label171:setMargins({left=10;top=20});
    obj.label171:setWidth(100);
    obj.label171:setAutoSize(true);
    obj.label171:setName("label171");

    obj.label172 = GUI.fromHandle(_obj_newObject("label"));
    obj.label172:setParent(obj.flowLayout4);
    obj.label172:setLeft(0);
    obj.label172:setTop(0);
    obj.label172:setAlign("left");
    obj.label172:setText("descricao ");
    obj.label172:setMargins({top=20});
    obj.label172:setAutoSize(true);
    obj.label172:setWidth(500);
    obj.label172:setField("descricaoDesvant3");
    obj.label172:setName("label172");

    obj.label173 = GUI.fromHandle(_obj_newObject("label"));
    obj.label173:setParent(obj.flowLayout4);
    obj.label173:setLeft(0);
    obj.label173:setTop(0);
    obj.label173:setAlign("left");
    obj.label173:setText("Custo: ");
    obj.label173:setMargins({top=20});
    obj.label173:setAutoSize(true);
    obj.label173:setWidth(50);
    obj.label173:setName("label173");

    obj.label174 = GUI.fromHandle(_obj_newObject("label"));
    obj.label174:setParent(obj.flowLayout4);
    obj.label174:setLeft(0);
    obj.label174:setTop(0);
    obj.label174:setAlign("left");
    obj.label174:setText("custo ");
    obj.label174:setMargins({top=20});
    obj.label174:setAutoSize(true);
    obj.label174:setWidth(20);
    obj.label174:setField("custoDesvant3");
    obj.label174:setName("label174");

    obj.flowLineBreak34 = GUI.fromHandle(_obj_newObject("flowLineBreak"));
    obj.flowLineBreak34:setParent(obj.flowLayout4);
    obj.flowLineBreak34:setName("flowLineBreak34");

    obj.label175 = GUI.fromHandle(_obj_newObject("label"));
    obj.label175:setParent(obj.flowLayout4);
    obj.label175:setLeft(0);
    obj.label175:setTop(0);
    obj.label175:setAlign("left");
    obj.label175:setText("Desvantagem:");
    obj.label175:setMargins({top=20});
    obj.label175:setAutoSize(true);
    obj.label175:setName("label175");

    obj.comboBox24 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox24:setParent(obj.flowLayout4);
    obj.comboBox24:setAlign("client");
    obj.comboBox24:setLeft(20);
    obj.comboBox24:setTop(20);
    obj.comboBox24:setWidth(250);
    obj.comboBox24:setMargins({top=20; right=10});
    obj.comboBox24:setItems({'N/A','Alergia', 'Alcoólotra','Andrógino', 'Aparência Trocada', 'Azarado', 'Casto','Cleptomaníaco',
                         'Código dos Cavalheiros', 'Código de Combate', 'Código do Caçador', 'Código dos Herois',
                         'Compulsão','Complexo de Culpa','Complexo de Inferioridade', 'Coração Mole',
                          'Coração de Gado','Covarde', 'Crédulo', 'Curioso','Deficiente Físico 1', 
                           'Deficiente Físico 2', 'Deficiente Físico 3', 'Dificuldade de Fala','Distração',
                           'Dupla Personalidade','Estigma Social','Esquizofrênico', 'Família ou Mentor Desonrado',
                           'Fanático', 'Fanfarrão','Fobia 1', 'Fobia 2', 'Fúria','Ganância', 'Gula', 
                           'Hábitos Detestáveis', 'Hipocondria', 'Inimigo', 'Intolerância', 'Má Fama 1', 'Má Fama 2',
                            'Má Fama 3', 'Maldição 1', 'Maldição 2', 'Maldição 3', 'Mania', 'Maníaco Depressivo',
                             'Marca do Predador', 'Megalomaníaco', 'Mentiroso Compulsivo', 'Monstruoso', 'Pacifista 1',
                              'Pacifista 2', 'Pacifista 3', 'Paranoia 1', 'Paranoia 2','Perda Terrível', 'Pesadelos',
                              'Protegido Indefeso', 'Sanguinário', 'Sarcasmo','Sono Pesado', 'Supersticioso', 
                               'Suspeito 1', 'Suspeito 2', 'Teimosia', 'Timidez', 'Traumatizado', 'Viciado em Jogos',
                                'Visão Monocromática','Vontade Fraca'});
    obj.comboBox24:setField("nomeDesvant4");
    obj.comboBox24:setName("comboBox24");

    obj.label176 = GUI.fromHandle(_obj_newObject("label"));
    obj.label176:setParent(obj.flowLayout4);
    obj.label176:setLeft(0);
    obj.label176:setTop(0);
    obj.label176:setAlign("left");
    obj.label176:setText("Descrição: ");
    obj.label176:setMargins({left=10;top=20});
    obj.label176:setWidth(100);
    obj.label176:setAutoSize(true);
    obj.label176:setName("label176");

    obj.label177 = GUI.fromHandle(_obj_newObject("label"));
    obj.label177:setParent(obj.flowLayout4);
    obj.label177:setLeft(0);
    obj.label177:setTop(0);
    obj.label177:setAlign("left");
    obj.label177:setText("descricao ");
    obj.label177:setMargins({top=20});
    obj.label177:setAutoSize(true);
    obj.label177:setWidth(500);
    obj.label177:setField("descricaoDesvant4");
    obj.label177:setName("label177");

    obj.label178 = GUI.fromHandle(_obj_newObject("label"));
    obj.label178:setParent(obj.flowLayout4);
    obj.label178:setLeft(0);
    obj.label178:setTop(0);
    obj.label178:setAlign("left");
    obj.label178:setText("Custo: ");
    obj.label178:setMargins({top=20});
    obj.label178:setAutoSize(true);
    obj.label178:setWidth(50);
    obj.label178:setName("label178");

    obj.label179 = GUI.fromHandle(_obj_newObject("label"));
    obj.label179:setParent(obj.flowLayout4);
    obj.label179:setLeft(0);
    obj.label179:setTop(0);
    obj.label179:setAlign("left");
    obj.label179:setText("custo ");
    obj.label179:setMargins({top=20});
    obj.label179:setAutoSize(true);
    obj.label179:setWidth(20);
    obj.label179:setField("custoDesvant4");
    obj.label179:setName("label179");

    obj.flowLineBreak35 = GUI.fromHandle(_obj_newObject("flowLineBreak"));
    obj.flowLineBreak35:setParent(obj.flowLayout4);
    obj.flowLineBreak35:setName("flowLineBreak35");

    obj.label180 = GUI.fromHandle(_obj_newObject("label"));
    obj.label180:setParent(obj.flowLayout4);
    obj.label180:setLeft(0);
    obj.label180:setTop(0);
    obj.label180:setAlign("left");
    obj.label180:setText("Desvantagem:");
    obj.label180:setMargins({top=20});
    obj.label180:setAutoSize(true);
    obj.label180:setName("label180");

    obj.comboBox25 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox25:setParent(obj.flowLayout4);
    obj.comboBox25:setAlign("client");
    obj.comboBox25:setLeft(20);
    obj.comboBox25:setTop(20);
    obj.comboBox25:setWidth(250);
    obj.comboBox25:setMargins({top=20; right=10});
    obj.comboBox25:setItems({'N/A','Alergia', 'Alcoólotra','Andrógino', 'Aparência Trocada', 'Azarado', 'Casto','Cleptomaníaco',
                         'Código dos Cavalheiros', 'Código de Combate', 'Código do Caçador', 'Código dos Herois',
                         'Compulsão','Complexo de Culpa','Complexo de Inferioridade', 'Coração Mole',
                          'Coração de Gado','Covarde', 'Crédulo', 'Curioso','Deficiente Físico 1', 
                           'Deficiente Físico 2', 'Deficiente Físico 3', 'Dificuldade de Fala','Distração',
                           'Dupla Personalidade','Estigma Social','Esquizofrênico', 'Família ou Mentor Desonrado',
                           'Fanático', 'Fanfarrão','Fobia 1', 'Fobia 2', 'Fúria','Ganância', 'Gula', 
                           'Hábitos Detestáveis', 'Hipocondria', 'Inimigo', 'Intolerância', 'Má Fama 1', 'Má Fama 2',
                            'Má Fama 3', 'Maldição 1', 'Maldição 2', 'Maldição 3', 'Mania', 'Maníaco Depressivo',
                             'Marca do Predador', 'Megalomaníaco', 'Mentiroso Compulsivo', 'Monstruoso', 'Pacifista 1',
                              'Pacifista 2', 'Pacifista 3', 'Paranoia 1', 'Paranoia 2','Perda Terrível', 'Pesadelos',
                              'Protegido Indefeso', 'Sanguinário', 'Sarcasmo','Sono Pesado', 'Supersticioso', 
                               'Suspeito 1', 'Suspeito 2', 'Teimosia', 'Timidez', 'Traumatizado', 'Viciado em Jogos',
                                'Visão Monocromática','Vontade Fraca'});
    obj.comboBox25:setField("nomeDesvant5");
    obj.comboBox25:setName("comboBox25");

    obj.label181 = GUI.fromHandle(_obj_newObject("label"));
    obj.label181:setParent(obj.flowLayout4);
    obj.label181:setLeft(0);
    obj.label181:setTop(0);
    obj.label181:setAlign("left");
    obj.label181:setText("Descrição: ");
    obj.label181:setMargins({left=10;top=20});
    obj.label181:setWidth(100);
    obj.label181:setAutoSize(true);
    obj.label181:setName("label181");

    obj.label182 = GUI.fromHandle(_obj_newObject("label"));
    obj.label182:setParent(obj.flowLayout4);
    obj.label182:setLeft(0);
    obj.label182:setTop(0);
    obj.label182:setAlign("left");
    obj.label182:setText("descricao ");
    obj.label182:setMargins({top=20});
    obj.label182:setAutoSize(true);
    obj.label182:setWidth(500);
    obj.label182:setField("descricaoDesvant5");
    obj.label182:setName("label182");

    obj.label183 = GUI.fromHandle(_obj_newObject("label"));
    obj.label183:setParent(obj.flowLayout4);
    obj.label183:setLeft(0);
    obj.label183:setTop(0);
    obj.label183:setAlign("left");
    obj.label183:setText("Custo: ");
    obj.label183:setMargins({top=20});
    obj.label183:setAutoSize(true);
    obj.label183:setWidth(50);
    obj.label183:setName("label183");

    obj.label184 = GUI.fromHandle(_obj_newObject("label"));
    obj.label184:setParent(obj.flowLayout4);
    obj.label184:setLeft(0);
    obj.label184:setTop(0);
    obj.label184:setAlign("left");
    obj.label184:setText("custo ");
    obj.label184:setMargins({top=20});
    obj.label184:setAutoSize(true);
    obj.label184:setWidth(20);
    obj.label184:setField("custoDesvant5");
    obj.label184:setName("label184");

    obj.flowLineBreak36 = GUI.fromHandle(_obj_newObject("flowLineBreak"));
    obj.flowLineBreak36:setParent(obj.flowLayout4);
    obj.flowLineBreak36:setName("flowLineBreak36");

    obj.label185 = GUI.fromHandle(_obj_newObject("label"));
    obj.label185:setParent(obj.flowLayout4);
    obj.label185:setLeft(0);
    obj.label185:setTop(0);
    obj.label185:setAlign("left");
    obj.label185:setText("Desvantagem:");
    obj.label185:setMargins({top=20});
    obj.label185:setAutoSize(true);
    obj.label185:setName("label185");

    obj.comboBox26 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox26:setParent(obj.flowLayout4);
    obj.comboBox26:setAlign("client");
    obj.comboBox26:setLeft(20);
    obj.comboBox26:setTop(20);
    obj.comboBox26:setWidth(250);
    obj.comboBox26:setMargins({top=20; right=10});
    obj.comboBox26:setItems({'N/A','Alergia', 'Alcoólotra','Andrógino', 'Aparência Trocada', 'Azarado', 'Casto','Cleptomaníaco',
                         'Código dos Cavalheiros', 'Código de Combate', 'Código do Caçador', 'Código dos Herois',
                         'Compulsão','Complexo de Culpa','Complexo de Inferioridade', 'Coração Mole',
                          'Coração de Gado','Covarde', 'Crédulo', 'Curioso','Deficiente Físico 1', 
                           'Deficiente Físico 2', 'Deficiente Físico 3', 'Dificuldade de Fala','Distração',
                           'Dupla Personalidade','Estigma Social','Esquizofrênico', 'Família ou Mentor Desonrado',
                           'Fanático', 'Fanfarrão','Fobia 1', 'Fobia 2', 'Fúria','Ganância', 'Gula', 
                           'Hábitos Detestáveis', 'Hipocondria', 'Inimigo', 'Intolerância', 'Má Fama 1', 'Má Fama 2',
                            'Má Fama 3', 'Maldição 1', 'Maldição 2', 'Maldição 3', 'Mania', 'Maníaco Depressivo',
                             'Marca do Predador', 'Megalomaníaco', 'Mentiroso Compulsivo', 'Monstruoso', 'Pacifista 1',
                              'Pacifista 2', 'Pacifista 3', 'Paranoia 1', 'Paranoia 2','Perda Terrível', 'Pesadelos',
                              'Protegido Indefeso', 'Sanguinário', 'Sarcasmo','Sono Pesado', 'Supersticioso', 
                               'Suspeito 1', 'Suspeito 2', 'Teimosia', 'Timidez', 'Traumatizado', 'Viciado em Jogos',
                                'Visão Monocromática','Vontade Fraca'});
    obj.comboBox26:setField("nomeDesvant6");
    obj.comboBox26:setName("comboBox26");

    obj.label186 = GUI.fromHandle(_obj_newObject("label"));
    obj.label186:setParent(obj.flowLayout4);
    obj.label186:setLeft(0);
    obj.label186:setTop(0);
    obj.label186:setAlign("left");
    obj.label186:setText("Descrição: ");
    obj.label186:setMargins({left=10;top=20});
    obj.label186:setWidth(100);
    obj.label186:setAutoSize(true);
    obj.label186:setName("label186");

    obj.label187 = GUI.fromHandle(_obj_newObject("label"));
    obj.label187:setParent(obj.flowLayout4);
    obj.label187:setLeft(0);
    obj.label187:setTop(0);
    obj.label187:setAlign("left");
    obj.label187:setText("descricao ");
    obj.label187:setMargins({top=20});
    obj.label187:setAutoSize(true);
    obj.label187:setWidth(500);
    obj.label187:setField("descricaoDesvant6");
    obj.label187:setName("label187");

    obj.label188 = GUI.fromHandle(_obj_newObject("label"));
    obj.label188:setParent(obj.flowLayout4);
    obj.label188:setLeft(0);
    obj.label188:setTop(0);
    obj.label188:setAlign("left");
    obj.label188:setText("Custo: ");
    obj.label188:setMargins({top=20});
    obj.label188:setAutoSize(true);
    obj.label188:setWidth(50);
    obj.label188:setName("label188");

    obj.label189 = GUI.fromHandle(_obj_newObject("label"));
    obj.label189:setParent(obj.flowLayout4);
    obj.label189:setLeft(0);
    obj.label189:setTop(0);
    obj.label189:setAlign("left");
    obj.label189:setText("custo ");
    obj.label189:setMargins({top=20});
    obj.label189:setAutoSize(true);
    obj.label189:setWidth(20);
    obj.label189:setField("custoDesvant6");
    obj.label189:setName("label189");

    obj.flowLineBreak37 = GUI.fromHandle(_obj_newObject("flowLineBreak"));
    obj.flowLineBreak37:setParent(obj.flowLayout4);
    obj.flowLineBreak37:setName("flowLineBreak37");

    obj.label190 = GUI.fromHandle(_obj_newObject("label"));
    obj.label190:setParent(obj.flowLayout4);
    obj.label190:setLeft(0);
    obj.label190:setTop(0);
    obj.label190:setAlign("left");
    obj.label190:setText("Desvantagem:");
    obj.label190:setMargins({top=20});
    obj.label190:setAutoSize(true);
    obj.label190:setName("label190");

    obj.comboBox27 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox27:setParent(obj.flowLayout4);
    obj.comboBox27:setAlign("client");
    obj.comboBox27:setLeft(20);
    obj.comboBox27:setTop(20);
    obj.comboBox27:setWidth(250);
    obj.comboBox27:setMargins({top=20; right=10});
    obj.comboBox27:setItems({'N/A','Alergia', 'Alcoólotra','Andrógino', 'Aparência Trocada', 'Azarado', 'Casto','Cleptomaníaco',
                         'Código dos Cavalheiros', 'Código de Combate', 'Código do Caçador', 'Código dos Herois',
                         'Compulsão','Complexo de Culpa','Complexo de Inferioridade', 'Coração Mole',
                          'Coração de Gado','Covarde', 'Crédulo', 'Curioso','Deficiente Físico 1', 
                           'Deficiente Físico 2', 'Deficiente Físico 3', 'Dificuldade de Fala','Distração',
                           'Dupla Personalidade','Estigma Social','Esquizofrênico', 'Família ou Mentor Desonrado',
                           'Fanático', 'Fanfarrão','Fobia 1', 'Fobia 2', 'Fúria','Ganância', 'Gula', 
                           'Hábitos Detestáveis', 'Hipocondria', 'Inimigo', 'Intolerância', 'Má Fama 1', 'Má Fama 2',
                            'Má Fama 3', 'Maldição 1', 'Maldição 2', 'Maldição 3', 'Mania', 'Maníaco Depressivo',
                             'Marca do Predador', 'Megalomaníaco', 'Mentiroso Compulsivo', 'Monstruoso', 'Pacifista 1',
                              'Pacifista 2', 'Pacifista 3', 'Paranoia 1', 'Paranoia 2','Perda Terrível', 'Pesadelos',
                              'Protegido Indefeso', 'Sanguinário', 'Sarcasmo','Sono Pesado', 'Supersticioso', 
                               'Suspeito 1', 'Suspeito 2', 'Teimosia', 'Timidez', 'Traumatizado', 'Viciado em Jogos',
                                'Visão Monocromática','Vontade Fraca'});
    obj.comboBox27:setField("nomeDesvant7");
    obj.comboBox27:setName("comboBox27");

    obj.label191 = GUI.fromHandle(_obj_newObject("label"));
    obj.label191:setParent(obj.flowLayout4);
    obj.label191:setLeft(0);
    obj.label191:setTop(0);
    obj.label191:setAlign("left");
    obj.label191:setText("Descrição: ");
    obj.label191:setMargins({left=10;top=20});
    obj.label191:setWidth(100);
    obj.label191:setAutoSize(true);
    obj.label191:setName("label191");

    obj.label192 = GUI.fromHandle(_obj_newObject("label"));
    obj.label192:setParent(obj.flowLayout4);
    obj.label192:setLeft(0);
    obj.label192:setTop(0);
    obj.label192:setAlign("left");
    obj.label192:setText("descricao ");
    obj.label192:setMargins({top=20});
    obj.label192:setAutoSize(true);
    obj.label192:setWidth(500);
    obj.label192:setField("descricaoDesvant7");
    obj.label192:setName("label192");

    obj.label193 = GUI.fromHandle(_obj_newObject("label"));
    obj.label193:setParent(obj.flowLayout4);
    obj.label193:setLeft(0);
    obj.label193:setTop(0);
    obj.label193:setAlign("left");
    obj.label193:setText("Custo: ");
    obj.label193:setMargins({top=20});
    obj.label193:setAutoSize(true);
    obj.label193:setWidth(50);
    obj.label193:setName("label193");

    obj.label194 = GUI.fromHandle(_obj_newObject("label"));
    obj.label194:setParent(obj.flowLayout4);
    obj.label194:setLeft(0);
    obj.label194:setTop(0);
    obj.label194:setAlign("left");
    obj.label194:setText("custo ");
    obj.label194:setMargins({top=20});
    obj.label194:setAutoSize(true);
    obj.label194:setWidth(20);
    obj.label194:setField("custoDesvant7");
    obj.label194:setName("label194");

    obj.flowLineBreak38 = GUI.fromHandle(_obj_newObject("flowLineBreak"));
    obj.flowLineBreak38:setParent(obj.flowLayout4);
    obj.flowLineBreak38:setName("flowLineBreak38");

    obj.label195 = GUI.fromHandle(_obj_newObject("label"));
    obj.label195:setParent(obj.flowLayout4);
    obj.label195:setLeft(0);
    obj.label195:setTop(0);
    obj.label195:setAlign("left");
    obj.label195:setText("Desvantagem:");
    obj.label195:setMargins({top=20});
    obj.label195:setAutoSize(true);
    obj.label195:setName("label195");

    obj.comboBox28 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox28:setParent(obj.flowLayout4);
    obj.comboBox28:setAlign("client");
    obj.comboBox28:setLeft(20);
    obj.comboBox28:setTop(20);
    obj.comboBox28:setWidth(250);
    obj.comboBox28:setMargins({top=20; right=10});
    obj.comboBox28:setItems({'N/A','Alergia', 'Alcoólotra','Andrógino', 'Aparência Trocada', 'Azarado', 'Casto','Cleptomaníaco',
                         'Código dos Cavalheiros', 'Código de Combate', 'Código do Caçador', 'Código dos Herois',
                         'Compulsão','Complexo de Culpa','Complexo de Inferioridade', 'Coração Mole',
                          'Coração de Gado','Covarde', 'Crédulo', 'Curioso','Deficiente Físico 1', 
                           'Deficiente Físico 2', 'Deficiente Físico 3', 'Dificuldade de Fala','Distração',
                           'Dupla Personalidade','Estigma Social','Esquizofrênico', 'Família ou Mentor Desonrado',
                           'Fanático', 'Fanfarrão','Fobia 1', 'Fobia 2', 'Fúria','Ganância', 'Gula', 
                           'Hábitos Detestáveis', 'Hipocondria', 'Inimigo', 'Intolerância', 'Má Fama 1', 'Má Fama 2',
                            'Má Fama 3', 'Maldição 1', 'Maldição 2', 'Maldição 3', 'Mania', 'Maníaco Depressivo',
                             'Marca do Predador', 'Megalomaníaco', 'Mentiroso Compulsivo', 'Monstruoso', 'Pacifista 1',
                              'Pacifista 2', 'Pacifista 3', 'Paranoia 1', 'Paranoia 2','Perda Terrível', 'Pesadelos',
                              'Protegido Indefeso', 'Sanguinário', 'Sarcasmo','Sono Pesado', 'Supersticioso', 
                               'Suspeito 1', 'Suspeito 2', 'Teimosia', 'Timidez', 'Traumatizado', 'Viciado em Jogos',
                                'Visão Monocromática','Vontade Fraca'});
    obj.comboBox28:setField("nomeDesvant8");
    obj.comboBox28:setName("comboBox28");

    obj.label196 = GUI.fromHandle(_obj_newObject("label"));
    obj.label196:setParent(obj.flowLayout4);
    obj.label196:setLeft(0);
    obj.label196:setTop(0);
    obj.label196:setAlign("left");
    obj.label196:setText("Descrição: ");
    obj.label196:setMargins({left=10;top=20});
    obj.label196:setWidth(100);
    obj.label196:setAutoSize(true);
    obj.label196:setName("label196");

    obj.label197 = GUI.fromHandle(_obj_newObject("label"));
    obj.label197:setParent(obj.flowLayout4);
    obj.label197:setLeft(0);
    obj.label197:setTop(0);
    obj.label197:setAlign("left");
    obj.label197:setText("descricao ");
    obj.label197:setMargins({top=20});
    obj.label197:setAutoSize(true);
    obj.label197:setWidth(500);
    obj.label197:setField("descricaoDesvant8");
    obj.label197:setName("label197");

    obj.label198 = GUI.fromHandle(_obj_newObject("label"));
    obj.label198:setParent(obj.flowLayout4);
    obj.label198:setLeft(0);
    obj.label198:setTop(0);
    obj.label198:setAlign("left");
    obj.label198:setText("Custo: ");
    obj.label198:setMargins({top=20});
    obj.label198:setAutoSize(true);
    obj.label198:setWidth(50);
    obj.label198:setName("label198");

    obj.label199 = GUI.fromHandle(_obj_newObject("label"));
    obj.label199:setParent(obj.flowLayout4);
    obj.label199:setLeft(0);
    obj.label199:setTop(0);
    obj.label199:setAlign("left");
    obj.label199:setText("custo ");
    obj.label199:setMargins({top=20});
    obj.label199:setAutoSize(true);
    obj.label199:setWidth(20);
    obj.label199:setField("custoDesvant8");
    obj.label199:setName("label199");

    obj.flowLineBreak39 = GUI.fromHandle(_obj_newObject("flowLineBreak"));
    obj.flowLineBreak39:setParent(obj.flowLayout4);
    obj.flowLineBreak39:setName("flowLineBreak39");

    obj.label200 = GUI.fromHandle(_obj_newObject("label"));
    obj.label200:setParent(obj.flowLayout4);
    obj.label200:setLeft(0);
    obj.label200:setTop(0);
    obj.label200:setAlign("left");
    obj.label200:setText("Desvantagem:");
    obj.label200:setMargins({top=20});
    obj.label200:setAutoSize(true);
    obj.label200:setName("label200");

    obj.comboBox29 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox29:setParent(obj.flowLayout4);
    obj.comboBox29:setAlign("client");
    obj.comboBox29:setLeft(20);
    obj.comboBox29:setTop(20);
    obj.comboBox29:setWidth(250);
    obj.comboBox29:setMargins({top=20; right=10});
    obj.comboBox29:setItems({'N/A','Alergia', 'Alcoólotra','Andrógino', 'Aparência Trocada', 'Azarado', 'Casto','Cleptomaníaco',
                         'Código dos Cavalheiros', 'Código de Combate', 'Código do Caçador', 'Código dos Herois',
                         'Compulsão','Complexo de Culpa','Complexo de Inferioridade', 'Coração Mole',
                          'Coração de Gado','Covarde', 'Crédulo', 'Curioso','Deficiente Físico 1',
                           'Deficiente Físico 2', 'Deficiente Físico 3', 'Dificuldade de Fala','Distração',
                           'Dupla Personalidade','Estigma Social','Esquizofrênico', 'Família ou Mentor Desonrado',
                           'Fanático', 'Fanfarrão','Fobia 1', 'Fobia 2', 'Fúria','Ganância', 'Gula', 
                           'Hábitos Detestáveis', 'Hipocondria', 'Inimigo', 'Intolerância', 'Má Fama 1', 'Má Fama 2',
                            'Má Fama 3', 'Maldição 1', 'Maldição 2', 'Maldição 3', 'Mania', 'Maníaco Depressivo',
                             'Marca do Predador', 'Megalomaníaco', 'Mentiroso Compulsivo', 'Monstruoso', 'Pacifista 1',
                              'Pacifista 2', 'Pacifista 3', 'Paranoia 1', 'Paranoia 2','Perda Terrível', 'Pesadelos',
                              'Protegido Indefeso', 'Sanguinário', 'Sarcasmo','Sono Pesado', 'Supersticioso', 
                               'Suspeito 1', 'Suspeito 2', 'Teimosia', 'Timidez', 'Traumatizado', 'Viciado em Jogos',
                                'Visão Monocromática','Vontade Fraca'});
    obj.comboBox29:setField("nomeDesvant9");
    obj.comboBox29:setName("comboBox29");

    obj.label201 = GUI.fromHandle(_obj_newObject("label"));
    obj.label201:setParent(obj.flowLayout4);
    obj.label201:setLeft(0);
    obj.label201:setTop(0);
    obj.label201:setAlign("left");
    obj.label201:setText("Descrição: ");
    obj.label201:setMargins({left=10;top=20});
    obj.label201:setWidth(100);
    obj.label201:setAutoSize(true);
    obj.label201:setName("label201");

    obj.label202 = GUI.fromHandle(_obj_newObject("label"));
    obj.label202:setParent(obj.flowLayout4);
    obj.label202:setLeft(0);
    obj.label202:setTop(0);
    obj.label202:setAlign("left");
    obj.label202:setText("descricao ");
    obj.label202:setMargins({top=20});
    obj.label202:setAutoSize(true);
    obj.label202:setWidth(500);
    obj.label202:setField("descricaoDesvant9");
    obj.label202:setName("label202");

    obj.label203 = GUI.fromHandle(_obj_newObject("label"));
    obj.label203:setParent(obj.flowLayout4);
    obj.label203:setLeft(0);
    obj.label203:setTop(0);
    obj.label203:setAlign("left");
    obj.label203:setText("Custo: ");
    obj.label203:setMargins({top=20});
    obj.label203:setAutoSize(true);
    obj.label203:setWidth(50);
    obj.label203:setName("label203");

    obj.label204 = GUI.fromHandle(_obj_newObject("label"));
    obj.label204:setParent(obj.flowLayout4);
    obj.label204:setLeft(0);
    obj.label204:setTop(0);
    obj.label204:setAlign("left");
    obj.label204:setText("custo ");
    obj.label204:setMargins({top=20});
    obj.label204:setAutoSize(true);
    obj.label204:setWidth(20);
    obj.label204:setField("custoDesvant9");
    obj.label204:setName("label204");

    obj.flowLineBreak40 = GUI.fromHandle(_obj_newObject("flowLineBreak"));
    obj.flowLineBreak40:setParent(obj.flowLayout4);
    obj.flowLineBreak40:setName("flowLineBreak40");

    obj.label205 = GUI.fromHandle(_obj_newObject("label"));
    obj.label205:setParent(obj.flowLayout4);
    obj.label205:setLeft(0);
    obj.label205:setTop(0);
    obj.label205:setAlign("left");
    obj.label205:setText("Desvantagem:");
    obj.label205:setMargins({top=20});
    obj.label205:setAutoSize(true);
    obj.label205:setName("label205");

    obj.comboBox30 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox30:setParent(obj.flowLayout4);
    obj.comboBox30:setAlign("client");
    obj.comboBox30:setLeft(20);
    obj.comboBox30:setTop(20);
    obj.comboBox30:setWidth(250);
    obj.comboBox30:setMargins({top=20; right=10});
    obj.comboBox30:setItems({'N/A', 'Alergia', 'Alcoólotra','Andrógino', 'Aparência Trocada', 'Azarado', 'Casto','Cleptomaníaco',
                         'Código dos Cavalheiros', 'Código de Combate', 'Código do Caçador', 'Código dos Herois',
                         'Compulsão','Complexo de Culpa','Complexo de Inferioridade', 'Coração Mole',
                          'Coração de Gado','Covarde', 'Crédulo', 'Curioso','Deficiente Físico 1', 
                           'Deficiente Físico 2', 'Deficiente Físico 3', 'Dificuldade de Fala','Distração',
                           'Dupla Personalidade','Estigma Social','Esquizofrênico', 'Família ou Mentor Desonrado',
                           'Fanático', 'Fanfarrão','Fobia 1', 'Fobia 2', 'Fúria','Ganância', 'Gula', 
                           'Hábitos Detestáveis', 'Hipocondria', 'Inimigo', 'Intolerância', 'Má Fama 1', 'Má Fama 2',
                            'Má Fama 3', 'Maldição 1', 'Maldição 2', 'Maldição 3', 'Mania', 'Maníaco Depressivo',
                             'Marca do Predador', 'Megalomaníaco', 'Mentiroso Compulsivo', 'Monstruoso', 'Pacifista 1',
                              'Pacifista 2', 'Pacifista 3', 'Paranoia 1', 'Paranóia 2 ','Perda Terrível', 'Pesadelos',
                              'Protegido Indefeso', 'Sanguinário', 'Sarcasmo','Sono Pesado', 'Supersticioso', 
                               'Suspeito 1', 'Suspeito 2', 'Teimosia', 'Timidez', 'Traumatizado', 'Viciado em Jogos',
                                'Visão Monocromáticia','Vontade Fraca'});
    obj.comboBox30:setField("nomeDesvant10");
    obj.comboBox30:setName("comboBox30");

    obj.label206 = GUI.fromHandle(_obj_newObject("label"));
    obj.label206:setParent(obj.flowLayout4);
    obj.label206:setLeft(0);
    obj.label206:setTop(0);
    obj.label206:setAlign("left");
    obj.label206:setText("Descrição: ");
    obj.label206:setMargins({left=10;top=20});
    obj.label206:setWidth(100);
    obj.label206:setAutoSize(true);
    obj.label206:setName("label206");

    obj.label207 = GUI.fromHandle(_obj_newObject("label"));
    obj.label207:setParent(obj.flowLayout4);
    obj.label207:setLeft(0);
    obj.label207:setTop(0);
    obj.label207:setAlign("left");
    obj.label207:setText("descricao ");
    obj.label207:setMargins({top=20});
    obj.label207:setAutoSize(true);
    obj.label207:setWidth(500);
    obj.label207:setField("descricaoDesvant10");
    obj.label207:setName("label207");

    obj.label208 = GUI.fromHandle(_obj_newObject("label"));
    obj.label208:setParent(obj.flowLayout4);
    obj.label208:setLeft(0);
    obj.label208:setTop(0);
    obj.label208:setAlign("left");
    obj.label208:setText("Custo: ");
    obj.label208:setMargins({top=20});
    obj.label208:setAutoSize(true);
    obj.label208:setWidth(50);
    obj.label208:setName("label208");

    obj.label209 = GUI.fromHandle(_obj_newObject("label"));
    obj.label209:setParent(obj.flowLayout4);
    obj.label209:setLeft(0);
    obj.label209:setTop(0);
    obj.label209:setAlign("left");
    obj.label209:setText("custo ");
    obj.label209:setMargins({top=20});
    obj.label209:setAutoSize(true);
    obj.label209:setWidth(20);
    obj.label209:setField("custoDesvant10");
    obj.label209:setName("label209");

    obj.tab5 = GUI.fromHandle(_obj_newObject("tab"));
    obj.tab5:setParent(obj.tabControl1);
    obj.tab5:setTitle("Itens e Loja");
    obj.tab5:setName("tab5");

    obj.flowLayout5 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout5:setParent(obj.tab5);
    obj.flowLayout5:setLeft(20);
    obj.flowLayout5:setTop(20);
    obj.flowLayout5:setWidth(1200);
    obj.flowLayout5:setHeight(3000);
    obj.flowLayout5:setName("flowLayout5");

    obj.label210 = GUI.fromHandle(_obj_newObject("label"));
    obj.label210:setParent(obj.flowLayout5);
    obj.label210:setLeft(0);
    obj.label210:setTop(0);
    obj.label210:setAlign("left");
    obj.label210:setFontSize(20);
    obj.label210:setFontFamily("Copperplate Gothic");
    obj.label210:setText("Ítens");
    obj.label210:setMargins({left=450;bottom=10});
    obj.label210:setAutoSize(true);
    obj.label210:setName("label210");

    obj.label211 = GUI.fromHandle(_obj_newObject("label"));
    obj.label211:setParent(obj.flowLayout5);
    obj.label211:setLeft(0);
    obj.label211:setTop(0);
    obj.label211:setAlign("left");
    obj.label211:setText("Custo Total");
    obj.label211:setMargins({left=150;bottom=10});
    obj.label211:setWidth(125);
    obj.label211:setName("label211");

    obj.label212 = GUI.fromHandle(_obj_newObject("label"));
    obj.label212:setParent(obj.flowLayout5);
    obj.label212:setLeft(0);
    obj.label212:setTop(10);
    obj.label212:setAlign("left");
    obj.label212:setText("Jewel: ");
    obj.label212:setMargins({left=5;});
    obj.label212:setWidth(100);
    obj.label212:setField("Custojewel");
    obj.label212:setName("label212");

    obj.flowLineBreak41 = GUI.fromHandle(_obj_newObject("flowLineBreak"));
    obj.flowLineBreak41:setParent(obj.flowLayout5);
    obj.flowLineBreak41:setName("flowLineBreak41");

    obj.image2 = GUI.fromHandle(_obj_newObject("image"));
    obj.image2:setParent(obj.flowLayout5);
    obj.image2:setWidth(32);
    obj.image2:setHeight(32);
    obj.image2:setMargins({top=10});
    obj.image2:setAlign("left");
    obj.image2:setSRC("/imgs/pocao.png");
    obj.image2:setName("image2");

    obj.label213 = GUI.fromHandle(_obj_newObject("label"));
    obj.label213:setParent(obj.flowLayout5);
    obj.label213:setAlign("client");
    obj.label213:setText("Poção de Vida");
    obj.label213:setVertTextAlign("center");
    obj.label213:setMargins({top=20;left=5});
    obj.label213:setWidth(100);
    obj.label213:setName("label213");

    obj.label214 = GUI.fromHandle(_obj_newObject("label"));
    obj.label214:setParent(obj.flowLayout5);
    obj.label214:setLeft(0);
    obj.label214:setTop(0);
    obj.label214:setAlign("left");
    obj.label214:setText("Quantidade: ");
    obj.label214:setMargins({top=20});
    obj.label214:setWidth(75);
    obj.label214:setName("label214");

    obj.label215 = GUI.fromHandle(_obj_newObject("label"));
    obj.label215:setParent(obj.flowLayout5);
    obj.label215:setLeft(0);
    obj.label215:setTop(0);
    obj.label215:setAlign("left");
    obj.label215:setText("0");
    obj.label215:setMargins({top=20});
    obj.label215:setWidth(20);
    obj.label215:setField("qtd_HPPotion");
    obj.label215:setName("label215");

    obj.button13 = GUI.fromHandle(_obj_newObject("button"));
    obj.button13:setParent(obj.flowLayout5);
    obj.button13:setMargins({left=10});
    obj.button13:setText("+");
    obj.button13:setWidth(20);
    obj.button13:setName("button13");

    obj.button14 = GUI.fromHandle(_obj_newObject("button"));
    obj.button14:setParent(obj.flowLayout5);
    obj.button14:setMargins({left=5});
    obj.button14:setText("-");
    obj.button14:setWidth(20);
    obj.button14:setName("button14");

    obj.image3 = GUI.fromHandle(_obj_newObject("image"));
    obj.image3:setParent(obj.flowLayout5);
    obj.image3:setWidth(32);
    obj.image3:setHeight(32);
    obj.image3:setMargins({left=50;top=10});
    obj.image3:setAlign("left");
    obj.image3:setSRC("/imgs/tinypocao.png");
    obj.image3:setName("image3");

    obj.label216 = GUI.fromHandle(_obj_newObject("label"));
    obj.label216:setParent(obj.flowLayout5);
    obj.label216:setAlign("client");
    obj.label216:setText("Poção de Vida Mediana");
    obj.label216:setVertTextAlign("center");
    obj.label216:setMargins({top=20;left=5});
    obj.label216:setWidth(150);
    obj.label216:setName("label216");

    obj.label217 = GUI.fromHandle(_obj_newObject("label"));
    obj.label217:setParent(obj.flowLayout5);
    obj.label217:setLeft(0);
    obj.label217:setTop(0);
    obj.label217:setAlign("left");
    obj.label217:setText("Quantidade: ");
    obj.label217:setMargins({top=20});
    obj.label217:setWidth(75);
    obj.label217:setName("label217");

    obj.label218 = GUI.fromHandle(_obj_newObject("label"));
    obj.label218:setParent(obj.flowLayout5);
    obj.label218:setLeft(0);
    obj.label218:setTop(0);
    obj.label218:setAlign("left");
    obj.label218:setText("0");
    obj.label218:setMargins({top=20});
    obj.label218:setWidth(20);
    obj.label218:setField("qtd_HPMPotion");
    obj.label218:setName("label218");

    obj.button15 = GUI.fromHandle(_obj_newObject("button"));
    obj.button15:setParent(obj.flowLayout5);
    obj.button15:setMargins({left=10});
    obj.button15:setText("+");
    obj.button15:setWidth(20);
    obj.button15:setName("button15");

    obj.button16 = GUI.fromHandle(_obj_newObject("button"));
    obj.button16:setParent(obj.flowLayout5);
    obj.button16:setMargins({left=5});
    obj.button16:setText("-");
    obj.button16:setWidth(20);
    obj.button16:setName("button16");

    obj.image4 = GUI.fromHandle(_obj_newObject("image"));
    obj.image4:setParent(obj.flowLayout5);
    obj.image4:setHeight(32);
    obj.image4:setWidth(32);
    obj.image4:setMargins({left=50;top=10});
    obj.image4:setAlign("left");
    obj.image4:setSRC("/imgs/bigpocao.png");
    obj.image4:setName("image4");

    obj.label219 = GUI.fromHandle(_obj_newObject("label"));
    obj.label219:setParent(obj.flowLayout5);
    obj.label219:setAlign("client");
    obj.label219:setText("Poção de Vida Grande:");
    obj.label219:setVertTextAlign("center");
    obj.label219:setMargins({top=20;left=5});
    obj.label219:setWidth(150);
    obj.label219:setName("label219");

    obj.label220 = GUI.fromHandle(_obj_newObject("label"));
    obj.label220:setParent(obj.flowLayout5);
    obj.label220:setLeft(0);
    obj.label220:setTop(0);
    obj.label220:setAlign("left");
    obj.label220:setText("Quantidade: ");
    obj.label220:setMargins({top=20});
    obj.label220:setWidth(75);
    obj.label220:setName("label220");

    obj.label221 = GUI.fromHandle(_obj_newObject("label"));
    obj.label221:setParent(obj.flowLayout5);
    obj.label221:setLeft(0);
    obj.label221:setTop(0);
    obj.label221:setAlign("left");
    obj.label221:setText("0");
    obj.label221:setMargins({top=20});
    obj.label221:setWidth(20);
    obj.label221:setField("qtd_HPBPotion");
    obj.label221:setName("label221");

    obj.button17 = GUI.fromHandle(_obj_newObject("button"));
    obj.button17:setParent(obj.flowLayout5);
    obj.button17:setMargins({left=10});
    obj.button17:setText("+");
    obj.button17:setWidth(20);
    obj.button17:setName("button17");

    obj.button18 = GUI.fromHandle(_obj_newObject("button"));
    obj.button18:setParent(obj.flowLayout5);
    obj.button18:setMargins({left=5});
    obj.button18:setText("-");
    obj.button18:setWidth(20);
    obj.button18:setName("button18");

    obj.flowLineBreak42 = GUI.fromHandle(_obj_newObject("flowLineBreak"));
    obj.flowLineBreak42:setParent(obj.flowLayout5);
    obj.flowLineBreak42:setName("flowLineBreak42");

    obj.image5 = GUI.fromHandle(_obj_newObject("image"));
    obj.image5:setParent(obj.flowLayout5);
    obj.image5:setWidth(32);
    obj.image5:setHeight(32);
    obj.image5:setMargins({top=10});
    obj.image5:setAlign("left");
    obj.image5:setSRC("/imgs/pocaomana.png");
    obj.image5:setName("image5");

    obj.label222 = GUI.fromHandle(_obj_newObject("label"));
    obj.label222:setParent(obj.flowLayout5);
    obj.label222:setAlign("client");
    obj.label222:setText("Poção de Mana");
    obj.label222:setVertTextAlign("center");
    obj.label222:setMargins({top=20;left=5});
    obj.label222:setWidth(100);
    obj.label222:setName("label222");

    obj.label223 = GUI.fromHandle(_obj_newObject("label"));
    obj.label223:setParent(obj.flowLayout5);
    obj.label223:setLeft(0);
    obj.label223:setTop(0);
    obj.label223:setAlign("left");
    obj.label223:setText("Quantidade: ");
    obj.label223:setMargins({top=20});
    obj.label223:setWidth(75);
    obj.label223:setName("label223");

    obj.label224 = GUI.fromHandle(_obj_newObject("label"));
    obj.label224:setParent(obj.flowLayout5);
    obj.label224:setLeft(0);
    obj.label224:setTop(0);
    obj.label224:setAlign("left");
    obj.label224:setText("0");
    obj.label224:setMargins({top=20});
    obj.label224:setWidth(20);
    obj.label224:setField("qtd_ManaPotion");
    obj.label224:setName("label224");

    obj.button19 = GUI.fromHandle(_obj_newObject("button"));
    obj.button19:setParent(obj.flowLayout5);
    obj.button19:setMargins({left=10});
    obj.button19:setText("+");
    obj.button19:setWidth(20);
    obj.button19:setName("button19");

    obj.button20 = GUI.fromHandle(_obj_newObject("button"));
    obj.button20:setParent(obj.flowLayout5);
    obj.button20:setMargins({left=5});
    obj.button20:setText("-");
    obj.button20:setWidth(20);
    obj.button20:setName("button20");

    obj.image6 = GUI.fromHandle(_obj_newObject("image"));
    obj.image6:setParent(obj.flowLayout5);
    obj.image6:setWidth(32);
    obj.image6:setHeight(32);
    obj.image6:setMargins({left=50;top=10});
    obj.image6:setAlign("left");
    obj.image6:setSRC("/imgs/pocaomanamedia.png");
    obj.image6:setName("image6");

    obj.label225 = GUI.fromHandle(_obj_newObject("label"));
    obj.label225:setParent(obj.flowLayout5);
    obj.label225:setAlign("client");
    obj.label225:setText("Poção de Mana Mediana");
    obj.label225:setVertTextAlign("center");
    obj.label225:setMargins({top=20;left=5});
    obj.label225:setWidth(150);
    obj.label225:setName("label225");

    obj.label226 = GUI.fromHandle(_obj_newObject("label"));
    obj.label226:setParent(obj.flowLayout5);
    obj.label226:setLeft(0);
    obj.label226:setTop(0);
    obj.label226:setAlign("left");
    obj.label226:setText("Quantidade: ");
    obj.label226:setMargins({top=20});
    obj.label226:setWidth(75);
    obj.label226:setName("label226");

    obj.label227 = GUI.fromHandle(_obj_newObject("label"));
    obj.label227:setParent(obj.flowLayout5);
    obj.label227:setLeft(0);
    obj.label227:setTop(0);
    obj.label227:setAlign("left");
    obj.label227:setText("0");
    obj.label227:setMargins({top=20});
    obj.label227:setWidth(20);
    obj.label227:setField("qtd_ManaMPotion");
    obj.label227:setName("label227");

    obj.button21 = GUI.fromHandle(_obj_newObject("button"));
    obj.button21:setParent(obj.flowLayout5);
    obj.button21:setMargins({left=10});
    obj.button21:setText("+");
    obj.button21:setWidth(20);
    obj.button21:setName("button21");

    obj.button22 = GUI.fromHandle(_obj_newObject("button"));
    obj.button22:setParent(obj.flowLayout5);
    obj.button22:setMargins({left=5});
    obj.button22:setText("-");
    obj.button22:setWidth(20);
    obj.button22:setName("button22");

    obj.image7 = GUI.fromHandle(_obj_newObject("image"));
    obj.image7:setParent(obj.flowLayout5);
    obj.image7:setHeight(32);
    obj.image7:setWidth(32);
    obj.image7:setMargins({left=50;top=10});
    obj.image7:setAlign("left");
    obj.image7:setSRC("/imgs/pocaomanagde.png");
    obj.image7:setName("image7");

    obj.label228 = GUI.fromHandle(_obj_newObject("label"));
    obj.label228:setParent(obj.flowLayout5);
    obj.label228:setAlign("client");
    obj.label228:setText("Poção de Mana Grande:");
    obj.label228:setVertTextAlign("center");
    obj.label228:setMargins({top=20;left=5});
    obj.label228:setWidth(150);
    obj.label228:setName("label228");

    obj.label229 = GUI.fromHandle(_obj_newObject("label"));
    obj.label229:setParent(obj.flowLayout5);
    obj.label229:setLeft(0);
    obj.label229:setTop(0);
    obj.label229:setAlign("left");
    obj.label229:setText("Quantidade: ");
    obj.label229:setMargins({top=20});
    obj.label229:setWidth(75);
    obj.label229:setName("label229");

    obj.label230 = GUI.fromHandle(_obj_newObject("label"));
    obj.label230:setParent(obj.flowLayout5);
    obj.label230:setLeft(0);
    obj.label230:setTop(0);
    obj.label230:setAlign("left");
    obj.label230:setText("0");
    obj.label230:setMargins({top=20});
    obj.label230:setWidth(20);
    obj.label230:setField("qtd_ManaBPotion");
    obj.label230:setName("label230");

    obj.button23 = GUI.fromHandle(_obj_newObject("button"));
    obj.button23:setParent(obj.flowLayout5);
    obj.button23:setMargins({left=10});
    obj.button23:setText("+");
    obj.button23:setWidth(20);
    obj.button23:setName("button23");

    obj.button24 = GUI.fromHandle(_obj_newObject("button"));
    obj.button24:setParent(obj.flowLayout5);
    obj.button24:setMargins({left=5});
    obj.button24:setText("-");
    obj.button24:setWidth(20);
    obj.button24:setName("button24");

    obj.flowLineBreak43 = GUI.fromHandle(_obj_newObject("flowLineBreak"));
    obj.flowLineBreak43:setParent(obj.flowLayout5);
    obj.flowLineBreak43:setName("flowLineBreak43");

    obj.image8 = GUI.fromHandle(_obj_newObject("image"));
    obj.image8:setParent(obj.flowLayout5);
    obj.image8:setWidth(32);
    obj.image8:setHeight(32);
    obj.image8:setMargins({top=10});
    obj.image8:setAlign("left");
    obj.image8:setSRC("/imgs/antidoto.png");
    obj.image8:setName("image8");

    obj.label231 = GUI.fromHandle(_obj_newObject("label"));
    obj.label231:setParent(obj.flowLayout5);
    obj.label231:setAlign("client");
    obj.label231:setText("Antídoto");
    obj.label231:setVertTextAlign("center");
    obj.label231:setMargins({top=20;left=5});
    obj.label231:setWidth(100);
    obj.label231:setName("label231");

    obj.label232 = GUI.fromHandle(_obj_newObject("label"));
    obj.label232:setParent(obj.flowLayout5);
    obj.label232:setLeft(0);
    obj.label232:setTop(0);
    obj.label232:setAlign("left");
    obj.label232:setText("Quantidade: ");
    obj.label232:setMargins({top=20});
    obj.label232:setWidth(75);
    obj.label232:setName("label232");

    obj.label233 = GUI.fromHandle(_obj_newObject("label"));
    obj.label233:setParent(obj.flowLayout5);
    obj.label233:setLeft(0);
    obj.label233:setTop(0);
    obj.label233:setAlign("left");
    obj.label233:setText("0");
    obj.label233:setMargins({top=20});
    obj.label233:setWidth(20);
    obj.label233:setField("qtd_AntiPotion");
    obj.label233:setName("label233");

    obj.button25 = GUI.fromHandle(_obj_newObject("button"));
    obj.button25:setParent(obj.flowLayout5);
    obj.button25:setMargins({left=10});
    obj.button25:setText("+");
    obj.button25:setWidth(20);
    obj.button25:setName("button25");

    obj.button26 = GUI.fromHandle(_obj_newObject("button"));
    obj.button26:setParent(obj.flowLayout5);
    obj.button26:setMargins({left=5});
    obj.button26:setText("-");
    obj.button26:setWidth(20);
    obj.button26:setName("button26");

    obj.image9 = GUI.fromHandle(_obj_newObject("image"));
    obj.image9:setParent(obj.flowLayout5);
    obj.image9:setWidth(32);
    obj.image9:setHeight(32);
    obj.image9:setMargins({left=50; top=10});
    obj.image9:setAlign("left");
    obj.image9:setSRC("/imgs/pocaoParalisia.png");
    obj.image9:setName("image9");

    obj.label234 = GUI.fromHandle(_obj_newObject("label"));
    obj.label234:setParent(obj.flowLayout5);
    obj.label234:setAlign("client");
    obj.label234:setText("Poção de Paralisia");
    obj.label234:setVertTextAlign("center");
    obj.label234:setMargins({top=20;left=5});
    obj.label234:setWidth(150);
    obj.label234:setName("label234");

    obj.label235 = GUI.fromHandle(_obj_newObject("label"));
    obj.label235:setParent(obj.flowLayout5);
    obj.label235:setLeft(0);
    obj.label235:setTop(0);
    obj.label235:setAlign("left");
    obj.label235:setText("Quantidade: ");
    obj.label235:setMargins({top=20});
    obj.label235:setWidth(75);
    obj.label235:setName("label235");

    obj.label236 = GUI.fromHandle(_obj_newObject("label"));
    obj.label236:setParent(obj.flowLayout5);
    obj.label236:setLeft(0);
    obj.label236:setTop(0);
    obj.label236:setAlign("left");
    obj.label236:setText("0");
    obj.label236:setMargins({top=20});
    obj.label236:setWidth(20);
    obj.label236:setField("qtd_ParaPotion");
    obj.label236:setName("label236");

    obj.button27 = GUI.fromHandle(_obj_newObject("button"));
    obj.button27:setParent(obj.flowLayout5);
    obj.button27:setMargins({left=10});
    obj.button27:setText("+");
    obj.button27:setWidth(20);
    obj.button27:setName("button27");

    obj.button28 = GUI.fromHandle(_obj_newObject("button"));
    obj.button28:setParent(obj.flowLayout5);
    obj.button28:setMargins({left=5});
    obj.button28:setText("-");
    obj.button28:setWidth(20);
    obj.button28:setName("button28");

    obj.image10 = GUI.fromHandle(_obj_newObject("image"));
    obj.image10:setParent(obj.flowLayout5);
    obj.image10:setWidth(32);
    obj.image10:setHeight(32);
    obj.image10:setMargins({left=50;top=10});
    obj.image10:setAlign("left");
    obj.image10:setSRC("/imgs/pocaoQueimadura.png");
    obj.image10:setName("image10");

    obj.label237 = GUI.fromHandle(_obj_newObject("label"));
    obj.label237:setParent(obj.flowLayout5);
    obj.label237:setAlign("client");
    obj.label237:setText("Poção de Queimadura");
    obj.label237:setVertTextAlign("center");
    obj.label237:setMargins({top=20;left=5});
    obj.label237:setWidth(150);
    obj.label237:setName("label237");

    obj.label238 = GUI.fromHandle(_obj_newObject("label"));
    obj.label238:setParent(obj.flowLayout5);
    obj.label238:setLeft(0);
    obj.label238:setTop(0);
    obj.label238:setAlign("left");
    obj.label238:setText("Quantidade: ");
    obj.label238:setMargins({top=20});
    obj.label238:setWidth(75);
    obj.label238:setName("label238");

    obj.label239 = GUI.fromHandle(_obj_newObject("label"));
    obj.label239:setParent(obj.flowLayout5);
    obj.label239:setLeft(0);
    obj.label239:setTop(0);
    obj.label239:setAlign("left");
    obj.label239:setText("0");
    obj.label239:setMargins({top=20});
    obj.label239:setWidth(20);
    obj.label239:setField("qtd_BurnPotion");
    obj.label239:setName("label239");

    obj.button29 = GUI.fromHandle(_obj_newObject("button"));
    obj.button29:setParent(obj.flowLayout5);
    obj.button29:setMargins({left=10});
    obj.button29:setText("+");
    obj.button29:setWidth(20);
    obj.button29:setName("button29");

    obj.button30 = GUI.fromHandle(_obj_newObject("button"));
    obj.button30:setParent(obj.flowLayout5);
    obj.button30:setMargins({left=5});
    obj.button30:setText("-");
    obj.button30:setWidth(20);
    obj.button30:setName("button30");

    obj.flowLineBreak44 = GUI.fromHandle(_obj_newObject("flowLineBreak"));
    obj.flowLineBreak44:setParent(obj.flowLayout5);
    obj.flowLineBreak44:setName("flowLineBreak44");

    obj.image11 = GUI.fromHandle(_obj_newObject("image"));
    obj.image11:setParent(obj.flowLayout5);
    obj.image11:setWidth(32);
    obj.image11:setHeight(32);
    obj.image11:setMargins({top=10});
    obj.image11:setAlign("left");
    obj.image11:setSRC("/imgs/municaoPistol.png");
    obj.image11:setName("image11");

    obj.label240 = GUI.fromHandle(_obj_newObject("label"));
    obj.label240:setParent(obj.flowLayout5);
    obj.label240:setAlign("client");
    obj.label240:setText("Munição Pistola");
    obj.label240:setVertTextAlign("center");
    obj.label240:setMargins({top=20;left=5});
    obj.label240:setWidth(100);
    obj.label240:setName("label240");

    obj.label241 = GUI.fromHandle(_obj_newObject("label"));
    obj.label241:setParent(obj.flowLayout5);
    obj.label241:setLeft(0);
    obj.label241:setTop(0);
    obj.label241:setAlign("left");
    obj.label241:setText("Quantidade: ");
    obj.label241:setMargins({top=20});
    obj.label241:setWidth(75);
    obj.label241:setName("label241");

    obj.label242 = GUI.fromHandle(_obj_newObject("label"));
    obj.label242:setParent(obj.flowLayout5);
    obj.label242:setLeft(0);
    obj.label242:setTop(0);
    obj.label242:setAlign("left");
    obj.label242:setText("0");
    obj.label242:setMargins({top=20});
    obj.label242:setWidth(20);
    obj.label242:setField("qtd_munPistola");
    obj.label242:setName("label242");

    obj.button31 = GUI.fromHandle(_obj_newObject("button"));
    obj.button31:setParent(obj.flowLayout5);
    obj.button31:setMargins({left=10});
    obj.button31:setText("+");
    obj.button31:setWidth(20);
    obj.button31:setName("button31");

    obj.button32 = GUI.fromHandle(_obj_newObject("button"));
    obj.button32:setParent(obj.flowLayout5);
    obj.button32:setMargins({left=5});
    obj.button32:setText("-");
    obj.button32:setWidth(20);
    obj.button32:setName("button32");

    obj.image12 = GUI.fromHandle(_obj_newObject("image"));
    obj.image12:setParent(obj.flowLayout5);
    obj.image12:setWidth(32);
    obj.image12:setHeight(32);
    obj.image12:setMargins({left=50; top=10});
    obj.image12:setAlign("left");
    obj.image12:setSRC("/imgs/municaoMagnum.png");
    obj.image12:setName("image12");

    obj.label243 = GUI.fromHandle(_obj_newObject("label"));
    obj.label243:setParent(obj.flowLayout5);
    obj.label243:setAlign("client");
    obj.label243:setText("Munição Magnum");
    obj.label243:setVertTextAlign("center");
    obj.label243:setMargins({top=20;left=5});
    obj.label243:setWidth(150);
    obj.label243:setName("label243");

    obj.label244 = GUI.fromHandle(_obj_newObject("label"));
    obj.label244:setParent(obj.flowLayout5);
    obj.label244:setLeft(0);
    obj.label244:setTop(0);
    obj.label244:setAlign("left");
    obj.label244:setText("Quantidade: ");
    obj.label244:setMargins({top=20});
    obj.label244:setWidth(75);
    obj.label244:setName("label244");

    obj.label245 = GUI.fromHandle(_obj_newObject("label"));
    obj.label245:setParent(obj.flowLayout5);
    obj.label245:setLeft(0);
    obj.label245:setTop(0);
    obj.label245:setAlign("left");
    obj.label245:setText("0");
    obj.label245:setMargins({top=20});
    obj.label245:setWidth(20);
    obj.label245:setField("qtd_munMagnum");
    obj.label245:setName("label245");

    obj.button33 = GUI.fromHandle(_obj_newObject("button"));
    obj.button33:setParent(obj.flowLayout5);
    obj.button33:setMargins({left=10});
    obj.button33:setText("+");
    obj.button33:setWidth(20);
    obj.button33:setName("button33");

    obj.button34 = GUI.fromHandle(_obj_newObject("button"));
    obj.button34:setParent(obj.flowLayout5);
    obj.button34:setMargins({left=5});
    obj.button34:setText("-");
    obj.button34:setWidth(20);
    obj.button34:setName("button34");

    obj.image13 = GUI.fromHandle(_obj_newObject("image"));
    obj.image13:setParent(obj.flowLayout5);
    obj.image13:setWidth(32);
    obj.image13:setHeight(32);
    obj.image13:setMargins({left=50;top=10});
    obj.image13:setAlign("left");
    obj.image13:setSRC("/imgs/municaoShotgun.png");
    obj.image13:setName("image13");

    obj.label246 = GUI.fromHandle(_obj_newObject("label"));
    obj.label246:setParent(obj.flowLayout5);
    obj.label246:setAlign("client");
    obj.label246:setText("Munição de Escopeta");
    obj.label246:setVertTextAlign("center");
    obj.label246:setMargins({top=20;left=5});
    obj.label246:setWidth(150);
    obj.label246:setName("label246");

    obj.label247 = GUI.fromHandle(_obj_newObject("label"));
    obj.label247:setParent(obj.flowLayout5);
    obj.label247:setLeft(0);
    obj.label247:setTop(0);
    obj.label247:setAlign("left");
    obj.label247:setText("Quantidade: ");
    obj.label247:setMargins({top=20});
    obj.label247:setWidth(75);
    obj.label247:setName("label247");

    obj.label248 = GUI.fromHandle(_obj_newObject("label"));
    obj.label248:setParent(obj.flowLayout5);
    obj.label248:setLeft(0);
    obj.label248:setTop(0);
    obj.label248:setAlign("left");
    obj.label248:setText("0");
    obj.label248:setMargins({top=20});
    obj.label248:setWidth(20);
    obj.label248:setField("qtd_mun12");
    obj.label248:setName("label248");

    obj.button35 = GUI.fromHandle(_obj_newObject("button"));
    obj.button35:setParent(obj.flowLayout5);
    obj.button35:setMargins({left=10});
    obj.button35:setText("+");
    obj.button35:setWidth(20);
    obj.button35:setName("button35");

    obj.button36 = GUI.fromHandle(_obj_newObject("button"));
    obj.button36:setParent(obj.flowLayout5);
    obj.button36:setMargins({left=5});
    obj.button36:setText("-");
    obj.button36:setWidth(20);
    obj.button36:setName("button36");

    obj.flowLineBreak45 = GUI.fromHandle(_obj_newObject("flowLineBreak"));
    obj.flowLineBreak45:setParent(obj.flowLayout5);
    obj.flowLineBreak45:setName("flowLineBreak45");

    obj.label249 = GUI.fromHandle(_obj_newObject("label"));
    obj.label249:setParent(obj.flowLayout5);
    obj.label249:setLeft(0);
    obj.label249:setTop(0);
    obj.label249:setAlign("left");
    obj.label249:setText("Carteira: ");
    obj.label249:setMargins({left=10; top=50;});
    obj.label249:setWidth(50);
    obj.label249:setName("label249");

    obj.edit30 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit30:setParent(obj.flowLayout5);
    obj.edit30:setLeft(0);
    obj.edit30:setTop(0);
    obj.edit30:setAlign("client");
    obj.edit30:setHorzTextAlign("leading");
    obj.edit30:setMargins({left=5;top=50});
    obj.edit30:setWidth(100);
    obj.edit30:setHeight(25);
    obj.edit30:setField("addJewel");
    obj.edit30:setName("edit30");

    obj.button37 = GUI.fromHandle(_obj_newObject("button"));
    obj.button37:setParent(obj.flowLayout5);
    obj.button37:setMargins({top=50;left=20});
    obj.button37:setText("Receber");
    obj.button37:setWidth(100);
    obj.button37:setName("button37");

    obj.button38 = GUI.fromHandle(_obj_newObject("button"));
    obj.button38:setParent(obj.flowLayout5);
    obj.button38:setMargins({top=50; left=5});
    obj.button38:setText("Gastar");
    obj.button38:setWidth(100);
    obj.button38:setName("button38");

    obj.label250 = GUI.fromHandle(_obj_newObject("label"));
    obj.label250:setParent(obj.flowLayout5);
    obj.label250:setLeft(0);
    obj.label250:setTop(0);
    obj.label250:setAlign("left");
    obj.label250:setText("Deseja Comprar ?");
    obj.label250:setMargins({top=50;left=250;});
    obj.label250:setWidth(125);
    obj.label250:setName("label250");

    obj.button39 = GUI.fromHandle(_obj_newObject("button"));
    obj.button39:setParent(obj.flowLayout5);
    obj.button39:setMargins({top=50;left=5});
    obj.button39:setText("Sim");
    obj.button39:setWidth(75);
    obj.button39:setName("button39");

    obj.button40 = GUI.fromHandle(_obj_newObject("button"));
    obj.button40:setParent(obj.flowLayout5);
    obj.button40:setMargins({top=50;left=5});
    obj.button40:setText("Não");
    obj.button40:setWidth(75);
    obj.button40:setName("button40");

    obj.tab6 = GUI.fromHandle(_obj_newObject("tab"));
    obj.tab6:setParent(obj.tabControl1);
    obj.tab6:setTitle("Magias / Técnicas");
    obj.tab6:setName("tab6");

    obj.flowLayout6 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout6:setParent(obj.tab6);
    obj.flowLayout6:setLeft(10);
    obj.flowLayout6:setTop(10);
    obj.flowLayout6:setWidth(1500);
    obj.flowLayout6:setHeight(3000);
    obj.flowLayout6:setName("flowLayout6");

    obj.label251 = GUI.fromHandle(_obj_newObject("label"));
    obj.label251:setParent(obj.flowLayout6);
    obj.label251:setLeft(0);
    obj.label251:setTop(0);
    obj.label251:setAlign("left");
    obj.label251:setFontSize(14);
    obj.label251:setFontFamily("Copperplate Gothic");
    obj.label251:setText("MAGIA / TÉCNICAS");
    obj.label251:setMargins({left=500;bottom=10});
    obj.label251:setWidth(200);
    obj.label251:setHeight(20);
    obj.label251:setName("label251");

    obj.flowLineBreak46 = GUI.fromHandle(_obj_newObject("flowLineBreak"));
    obj.flowLineBreak46:setParent(obj.flowLayout6);
    obj.flowLineBreak46:setName("flowLineBreak46");

    obj.label252 = GUI.fromHandle(_obj_newObject("label"));
    obj.label252:setParent(obj.flowLayout6);
    obj.label252:setLeft(0);
    obj.label252:setTop(0);
    obj.label252:setAlign("left");
    obj.label252:setText("Nome da Técnica:");
    obj.label252:setMargins({top=20});
    obj.label252:setAutoSize(true);
    obj.label252:setName("label252");

    obj.edit31 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit31:setParent(obj.flowLayout6);
    obj.edit31:setLeft(0);
    obj.edit31:setTop(0);
    obj.edit31:setAlign("client");
    obj.edit31:setHorzTextAlign("leading");
    obj.edit31:setMargins({top=15});
    obj.edit31:setWidth(150);
    obj.edit31:setHeight(25);
    obj.edit31:setField("nometec");
    obj.edit31:setName("edit31");

    obj.label253 = GUI.fromHandle(_obj_newObject("label"));
    obj.label253:setParent(obj.flowLayout6);
    obj.label253:setLeft(0);
    obj.label253:setTop(0);
    obj.label253:setAlign("left");
    obj.label253:setText("Tipo de Efeito:");
    obj.label253:setMargins({left=10;top=20});
    obj.label253:setAutoSize(true);
    obj.label253:setName("label253");

    obj.comboBox31 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox31:setParent(obj.flowLayout6);
    obj.comboBox31:setAlign("left");
    obj.comboBox31:setLeft(0);
    obj.comboBox31:setWidth(175);
    obj.comboBox31:setTop(20);
    obj.comboBox31:setMargins({top=20; right=10});
    obj.comboBox31:setItems({'Atordoamento','Cegueira','Criação e Sustentação','Cura','Disparo Mágico','Disparo Mágico em Área', 'Golpe Marcial Elemental','Manipulação','Paralisia','Reforço Mágico','Slow','Transformação','Vampirismo'});
    obj.comboBox31:setField("tipoefeito");
    obj.comboBox31:setName("comboBox31");

    obj.label254 = GUI.fromHandle(_obj_newObject("label"));
    obj.label254:setParent(obj.flowLayout6);
    obj.label254:setLeft(0);
    obj.label254:setTop(0);
    obj.label254:setAlign("left");
    obj.label254:setText("Efeito: ");
    obj.label254:setMargins({left=10;top=20});
    obj.label254:setWidth(50);
    obj.label254:setAutoSize(true);
    obj.label254:setName("label254");

    obj.label255 = GUI.fromHandle(_obj_newObject("label"));
    obj.label255:setParent(obj.flowLayout6);
    obj.label255:setLeft(0);
    obj.label255:setTop(0);
    obj.label255:setAlign("left");
    obj.label255:setText("efeito ");
    obj.label255:setMargins({top=20});
    obj.label255:setAutoSize(true);
    obj.label255:setWidth(325);
    obj.label255:setField("effect");
    obj.label255:setName("label255");

    obj.label256 = GUI.fromHandle(_obj_newObject("label"));
    obj.label256:setParent(obj.flowLayout6);
    obj.label256:setLeft(0);
    obj.label256:setTop(0);
    obj.label256:setAlign("left");
    obj.label256:setText("Custo: ");
    obj.label256:setMargins({top=20});
    obj.label256:setAutoSize(true);
    obj.label256:setWidth(50);
    obj.label256:setName("label256");

    obj.label257 = GUI.fromHandle(_obj_newObject("label"));
    obj.label257:setParent(obj.flowLayout6);
    obj.label257:setLeft(0);
    obj.label257:setTop(0);
    obj.label257:setAlign("left");
    obj.label257:setText("custo ");
    obj.label257:setMargins({top=20});
    obj.label257:setAutoSize(true);
    obj.label257:setWidth(10);
    obj.label257:setField("customagia");
    obj.label257:setName("label257");

    obj.label258 = GUI.fromHandle(_obj_newObject("label"));
    obj.label258:setParent(obj.flowLayout6);
    obj.label258:setLeft(0);
    obj.label258:setTop(0);
    obj.label258:setAlign("left");
    obj.label258:setText("Duração: ");
    obj.label258:setMargins({left=20;top=20});
    obj.label258:setAutoSize(true);
    obj.label258:setWidth(75);
    obj.label258:setName("label258");

    obj.label259 = GUI.fromHandle(_obj_newObject("label"));
    obj.label259:setParent(obj.flowLayout6);
    obj.label259:setLeft(0);
    obj.label259:setTop(0);
    obj.label259:setAlign("left");
    obj.label259:setText("duracao ");
    obj.label259:setMargins({top=20});
    obj.label259:setAutoSize(true);
    obj.label259:setField("duracao");
    obj.label259:setWidth(50);
    obj.label259:setName("label259");

    obj.flowLineBreak47 = GUI.fromHandle(_obj_newObject("flowLineBreak"));
    obj.flowLineBreak47:setParent(obj.flowLayout6);
    obj.flowLineBreak47:setName("flowLineBreak47");

    obj.label260 = GUI.fromHandle(_obj_newObject("label"));
    obj.label260:setParent(obj.flowLayout6);
    obj.label260:setLeft(0);
    obj.label260:setTop(0);
    obj.label260:setAlign("left");
    obj.label260:setText("Nome da Técnica:");
    obj.label260:setMargins({top=15});
    obj.label260:setAutoSize(true);
    obj.label260:setName("label260");

    obj.edit32 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit32:setParent(obj.flowLayout6);
    obj.edit32:setLeft(0);
    obj.edit32:setTop(0);
    obj.edit32:setAlign("client");
    obj.edit32:setHorzTextAlign("leading");
    obj.edit32:setMargins({top=10});
    obj.edit32:setWidth(150);
    obj.edit32:setHeight(25);
    obj.edit32:setField("nometec2");
    obj.edit32:setName("edit32");

    obj.label261 = GUI.fromHandle(_obj_newObject("label"));
    obj.label261:setParent(obj.flowLayout6);
    obj.label261:setLeft(0);
    obj.label261:setTop(0);
    obj.label261:setAlign("left");
    obj.label261:setText("Tipo de Efeito:");
    obj.label261:setMargins({left=10;top=15});
    obj.label261:setAutoSize(true);
    obj.label261:setName("label261");

    obj.comboBox32 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox32:setParent(obj.flowLayout6);
    obj.comboBox32:setAlign("left");
    obj.comboBox32:setLeft(0);
    obj.comboBox32:setWidth(175);
    obj.comboBox32:setTop(20);
    obj.comboBox32:setMargins({top=15; right=10});
    obj.comboBox32:setItems({'Atordoamento','Cegueira','Criação e Sustentação','Cura','Disparo Mágico','Disparo Mágico em Área', 'Golpe Marcial Elemental','Manipulação','Paralisia','Reforço Mágico','Slow','Transformação','Vampirismo'});
    obj.comboBox32:setField("tipoefeito2");
    obj.comboBox32:setName("comboBox32");

    obj.label262 = GUI.fromHandle(_obj_newObject("label"));
    obj.label262:setParent(obj.flowLayout6);
    obj.label262:setLeft(0);
    obj.label262:setTop(0);
    obj.label262:setAlign("left");
    obj.label262:setText("Efeito: ");
    obj.label262:setMargins({left=10;top=15});
    obj.label262:setWidth(50);
    obj.label262:setAutoSize(true);
    obj.label262:setName("label262");

    obj.label263 = GUI.fromHandle(_obj_newObject("label"));
    obj.label263:setParent(obj.flowLayout6);
    obj.label263:setLeft(0);
    obj.label263:setTop(0);
    obj.label263:setAlign("left");
    obj.label263:setText("efeito ");
    obj.label263:setMargins({top=15});
    obj.label263:setAutoSize(true);
    obj.label263:setWidth(325);
    obj.label263:setField("effect2");
    obj.label263:setName("label263");

    obj.label264 = GUI.fromHandle(_obj_newObject("label"));
    obj.label264:setParent(obj.flowLayout6);
    obj.label264:setLeft(0);
    obj.label264:setTop(0);
    obj.label264:setAlign("left");
    obj.label264:setText("Custo: ");
    obj.label264:setMargins({top=15});
    obj.label264:setAutoSize(true);
    obj.label264:setWidth(50);
    obj.label264:setName("label264");

    obj.label265 = GUI.fromHandle(_obj_newObject("label"));
    obj.label265:setParent(obj.flowLayout6);
    obj.label265:setLeft(0);
    obj.label265:setTop(0);
    obj.label265:setAlign("left");
    obj.label265:setText("custo ");
    obj.label265:setMargins({top=15});
    obj.label265:setAutoSize(true);
    obj.label265:setWidth(10);
    obj.label265:setField("customagia");
    obj.label265:setName("label265");

    obj.label266 = GUI.fromHandle(_obj_newObject("label"));
    obj.label266:setParent(obj.flowLayout6);
    obj.label266:setLeft(0);
    obj.label266:setTop(0);
    obj.label266:setAlign("left");
    obj.label266:setText("Duração: ");
    obj.label266:setMargins({left=20;top=15});
    obj.label266:setAutoSize(true);
    obj.label266:setWidth(75);
    obj.label266:setName("label266");

    obj.label267 = GUI.fromHandle(_obj_newObject("label"));
    obj.label267:setParent(obj.flowLayout6);
    obj.label267:setLeft(0);
    obj.label267:setTop(0);
    obj.label267:setAlign("left");
    obj.label267:setText("duracao ");
    obj.label267:setMargins({top=15});
    obj.label267:setAutoSize(true);
    obj.label267:setField("duracao2");
    obj.label267:setWidth(50);
    obj.label267:setName("label267");

    obj.flowLineBreak48 = GUI.fromHandle(_obj_newObject("flowLineBreak"));
    obj.flowLineBreak48:setParent(obj.flowLayout6);
    obj.flowLineBreak48:setName("flowLineBreak48");

    obj.label268 = GUI.fromHandle(_obj_newObject("label"));
    obj.label268:setParent(obj.flowLayout6);
    obj.label268:setLeft(0);
    obj.label268:setTop(0);
    obj.label268:setAlign("left");
    obj.label268:setText("Nome da Técnica:");
    obj.label268:setMargins({top=15});
    obj.label268:setAutoSize(true);
    obj.label268:setName("label268");

    obj.edit33 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit33:setParent(obj.flowLayout6);
    obj.edit33:setLeft(0);
    obj.edit33:setTop(0);
    obj.edit33:setAlign("client");
    obj.edit33:setHorzTextAlign("leading");
    obj.edit33:setMargins({top=10});
    obj.edit33:setWidth(150);
    obj.edit33:setHeight(25);
    obj.edit33:setField("nometec3");
    obj.edit33:setName("edit33");

    obj.label269 = GUI.fromHandle(_obj_newObject("label"));
    obj.label269:setParent(obj.flowLayout6);
    obj.label269:setLeft(0);
    obj.label269:setTop(0);
    obj.label269:setAlign("left");
    obj.label269:setText("Tipo de Efeito:");
    obj.label269:setMargins({left=10;top=15});
    obj.label269:setAutoSize(true);
    obj.label269:setName("label269");

    obj.comboBox33 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox33:setParent(obj.flowLayout6);
    obj.comboBox33:setAlign("left");
    obj.comboBox33:setLeft(0);
    obj.comboBox33:setWidth(175);
    obj.comboBox33:setTop(20);
    obj.comboBox33:setMargins({top=15; right=10});
    obj.comboBox33:setItems({'Atordoamento','Cegueira','Criação e Sustentação','Cura','Disparo Mágico','Disparo Mágico em Área', 'Golpe Marcial Elemental','Manipulação','Paralisia','Reforço Mágico','Slow','Transformação','Vampirismo'});
    obj.comboBox33:setField("tipoefeito3");
    obj.comboBox33:setName("comboBox33");

    obj.label270 = GUI.fromHandle(_obj_newObject("label"));
    obj.label270:setParent(obj.flowLayout6);
    obj.label270:setLeft(0);
    obj.label270:setTop(0);
    obj.label270:setAlign("left");
    obj.label270:setText("Efeito: ");
    obj.label270:setMargins({left=10;top=15});
    obj.label270:setWidth(50);
    obj.label270:setAutoSize(true);
    obj.label270:setName("label270");

    obj.label271 = GUI.fromHandle(_obj_newObject("label"));
    obj.label271:setParent(obj.flowLayout6);
    obj.label271:setLeft(0);
    obj.label271:setTop(0);
    obj.label271:setAlign("left");
    obj.label271:setText("efeito ");
    obj.label271:setMargins({top=15});
    obj.label271:setAutoSize(true);
    obj.label271:setWidth(325);
    obj.label271:setField("effect3");
    obj.label271:setName("label271");

    obj.label272 = GUI.fromHandle(_obj_newObject("label"));
    obj.label272:setParent(obj.flowLayout6);
    obj.label272:setLeft(0);
    obj.label272:setTop(0);
    obj.label272:setAlign("left");
    obj.label272:setText("Custo: ");
    obj.label272:setMargins({top=15});
    obj.label272:setAutoSize(true);
    obj.label272:setWidth(50);
    obj.label272:setName("label272");

    obj.label273 = GUI.fromHandle(_obj_newObject("label"));
    obj.label273:setParent(obj.flowLayout6);
    obj.label273:setLeft(0);
    obj.label273:setTop(0);
    obj.label273:setAlign("left");
    obj.label273:setText("custo ");
    obj.label273:setMargins({top=15});
    obj.label273:setAutoSize(true);
    obj.label273:setWidth(10);
    obj.label273:setField("customagia");
    obj.label273:setName("label273");

    obj.label274 = GUI.fromHandle(_obj_newObject("label"));
    obj.label274:setParent(obj.flowLayout6);
    obj.label274:setLeft(0);
    obj.label274:setTop(0);
    obj.label274:setAlign("left");
    obj.label274:setText("Duração: ");
    obj.label274:setMargins({left=20;top=15});
    obj.label274:setAutoSize(true);
    obj.label274:setWidth(75);
    obj.label274:setName("label274");

    obj.label275 = GUI.fromHandle(_obj_newObject("label"));
    obj.label275:setParent(obj.flowLayout6);
    obj.label275:setLeft(0);
    obj.label275:setTop(0);
    obj.label275:setAlign("left");
    obj.label275:setText("duracao ");
    obj.label275:setMargins({top=15});
    obj.label275:setAutoSize(true);
    obj.label275:setField("duracao3");
    obj.label275:setWidth(50);
    obj.label275:setName("label275");

    obj.flowLineBreak49 = GUI.fromHandle(_obj_newObject("flowLineBreak"));
    obj.flowLineBreak49:setParent(obj.flowLayout6);
    obj.flowLineBreak49:setName("flowLineBreak49");

    obj.label276 = GUI.fromHandle(_obj_newObject("label"));
    obj.label276:setParent(obj.flowLayout6);
    obj.label276:setLeft(0);
    obj.label276:setTop(0);
    obj.label276:setAlign("left");
    obj.label276:setText("Nome da Técnica:");
    obj.label276:setMargins({top=15});
    obj.label276:setAutoSize(true);
    obj.label276:setName("label276");

    obj.edit34 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit34:setParent(obj.flowLayout6);
    obj.edit34:setLeft(0);
    obj.edit34:setTop(0);
    obj.edit34:setAlign("client");
    obj.edit34:setHorzTextAlign("leading");
    obj.edit34:setMargins({top=10});
    obj.edit34:setWidth(150);
    obj.edit34:setHeight(25);
    obj.edit34:setField("nometec4");
    obj.edit34:setName("edit34");

    obj.label277 = GUI.fromHandle(_obj_newObject("label"));
    obj.label277:setParent(obj.flowLayout6);
    obj.label277:setLeft(0);
    obj.label277:setTop(0);
    obj.label277:setAlign("left");
    obj.label277:setText("Tipo de Efeito:");
    obj.label277:setMargins({left=10;top=15});
    obj.label277:setAutoSize(true);
    obj.label277:setName("label277");

    obj.comboBox34 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox34:setParent(obj.flowLayout6);
    obj.comboBox34:setAlign("left");
    obj.comboBox34:setLeft(0);
    obj.comboBox34:setWidth(175);
    obj.comboBox34:setTop(20);
    obj.comboBox34:setMargins({top=15; right=10});
    obj.comboBox34:setItems({'Atordoamento','Cegueira','Criação e Sustentação','Cura','Disparo Mágico','Disparo Mágico em Área', 'Golpe Marcial Elemental','Manipulação','Paralisia','Reforço Mágico','Slow','Transformação','Vampirismo'});
    obj.comboBox34:setField("tipoefeito4");
    obj.comboBox34:setName("comboBox34");

    obj.label278 = GUI.fromHandle(_obj_newObject("label"));
    obj.label278:setParent(obj.flowLayout6);
    obj.label278:setLeft(0);
    obj.label278:setTop(0);
    obj.label278:setAlign("left");
    obj.label278:setText("Efeito: ");
    obj.label278:setMargins({left=10;top=15});
    obj.label278:setWidth(50);
    obj.label278:setAutoSize(true);
    obj.label278:setName("label278");

    obj.label279 = GUI.fromHandle(_obj_newObject("label"));
    obj.label279:setParent(obj.flowLayout6);
    obj.label279:setLeft(0);
    obj.label279:setTop(0);
    obj.label279:setAlign("left");
    obj.label279:setText("efeito ");
    obj.label279:setMargins({top=15});
    obj.label279:setAutoSize(true);
    obj.label279:setWidth(325);
    obj.label279:setField("effect4");
    obj.label279:setName("label279");

    obj.label280 = GUI.fromHandle(_obj_newObject("label"));
    obj.label280:setParent(obj.flowLayout6);
    obj.label280:setLeft(0);
    obj.label280:setTop(0);
    obj.label280:setAlign("left");
    obj.label280:setText("Custo: ");
    obj.label280:setMargins({top=15});
    obj.label280:setAutoSize(true);
    obj.label280:setWidth(50);
    obj.label280:setName("label280");

    obj.label281 = GUI.fromHandle(_obj_newObject("label"));
    obj.label281:setParent(obj.flowLayout6);
    obj.label281:setLeft(0);
    obj.label281:setTop(0);
    obj.label281:setAlign("left");
    obj.label281:setText("custo ");
    obj.label281:setMargins({top=15});
    obj.label281:setAutoSize(true);
    obj.label281:setWidth(10);
    obj.label281:setField("customagia");
    obj.label281:setName("label281");

    obj.label282 = GUI.fromHandle(_obj_newObject("label"));
    obj.label282:setParent(obj.flowLayout6);
    obj.label282:setLeft(0);
    obj.label282:setTop(0);
    obj.label282:setAlign("left");
    obj.label282:setText("Duração: ");
    obj.label282:setMargins({left=20;top=15});
    obj.label282:setAutoSize(true);
    obj.label282:setWidth(75);
    obj.label282:setName("label282");

    obj.label283 = GUI.fromHandle(_obj_newObject("label"));
    obj.label283:setParent(obj.flowLayout6);
    obj.label283:setLeft(0);
    obj.label283:setTop(0);
    obj.label283:setAlign("left");
    obj.label283:setText("duracao ");
    obj.label283:setMargins({top=15});
    obj.label283:setAutoSize(true);
    obj.label283:setField("duracao4");
    obj.label283:setWidth(50);
    obj.label283:setName("label283");

    obj.flowLineBreak50 = GUI.fromHandle(_obj_newObject("flowLineBreak"));
    obj.flowLineBreak50:setParent(obj.flowLayout6);
    obj.flowLineBreak50:setName("flowLineBreak50");

    obj.label284 = GUI.fromHandle(_obj_newObject("label"));
    obj.label284:setParent(obj.flowLayout6);
    obj.label284:setLeft(0);
    obj.label284:setTop(0);
    obj.label284:setAlign("left");
    obj.label284:setText("Nome da Técnica:");
    obj.label284:setMargins({top=15});
    obj.label284:setAutoSize(true);
    obj.label284:setName("label284");

    obj.edit35 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit35:setParent(obj.flowLayout6);
    obj.edit35:setLeft(0);
    obj.edit35:setTop(0);
    obj.edit35:setAlign("client");
    obj.edit35:setHorzTextAlign("leading");
    obj.edit35:setMargins({top=10});
    obj.edit35:setWidth(150);
    obj.edit35:setHeight(25);
    obj.edit35:setField("nometec5");
    obj.edit35:setName("edit35");

    obj.label285 = GUI.fromHandle(_obj_newObject("label"));
    obj.label285:setParent(obj.flowLayout6);
    obj.label285:setLeft(0);
    obj.label285:setTop(0);
    obj.label285:setAlign("left");
    obj.label285:setText("Tipo de Efeito:");
    obj.label285:setMargins({left=10;top=15});
    obj.label285:setAutoSize(true);
    obj.label285:setName("label285");

    obj.comboBox35 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox35:setParent(obj.flowLayout6);
    obj.comboBox35:setAlign("left");
    obj.comboBox35:setLeft(0);
    obj.comboBox35:setWidth(175);
    obj.comboBox35:setTop(20);
    obj.comboBox35:setMargins({top=20; right=10});
    obj.comboBox35:setItems({'Atordoamento','Cegueira','Criação e Sustentação','Cura','Disparo Mágico','Disparo Mágico em Área', 'Golpe Marcial Elemental','Manipulação','Paralisia','Reforço Mágico','Slow','Transformação','Vampirismo'});
    obj.comboBox35:setField("tipoefeito5");
    obj.comboBox35:setName("comboBox35");

    obj.label286 = GUI.fromHandle(_obj_newObject("label"));
    obj.label286:setParent(obj.flowLayout6);
    obj.label286:setLeft(0);
    obj.label286:setTop(0);
    obj.label286:setAlign("left");
    obj.label286:setText("Efeito: ");
    obj.label286:setMargins({left=10;top=15});
    obj.label286:setWidth(50);
    obj.label286:setAutoSize(true);
    obj.label286:setName("label286");

    obj.label287 = GUI.fromHandle(_obj_newObject("label"));
    obj.label287:setParent(obj.flowLayout6);
    obj.label287:setLeft(0);
    obj.label287:setTop(0);
    obj.label287:setAlign("left");
    obj.label287:setText("efeito ");
    obj.label287:setMargins({top=15});
    obj.label287:setAutoSize(true);
    obj.label287:setWidth(325);
    obj.label287:setField("effect5");
    obj.label287:setName("label287");

    obj.label288 = GUI.fromHandle(_obj_newObject("label"));
    obj.label288:setParent(obj.flowLayout6);
    obj.label288:setLeft(0);
    obj.label288:setTop(0);
    obj.label288:setAlign("left");
    obj.label288:setText("Custo: ");
    obj.label288:setMargins({top=15});
    obj.label288:setAutoSize(true);
    obj.label288:setWidth(50);
    obj.label288:setName("label288");

    obj.label289 = GUI.fromHandle(_obj_newObject("label"));
    obj.label289:setParent(obj.flowLayout6);
    obj.label289:setLeft(0);
    obj.label289:setTop(0);
    obj.label289:setAlign("left");
    obj.label289:setText("custo ");
    obj.label289:setMargins({top=15});
    obj.label289:setAutoSize(true);
    obj.label289:setWidth(10);
    obj.label289:setField("customagia");
    obj.label289:setName("label289");

    obj.label290 = GUI.fromHandle(_obj_newObject("label"));
    obj.label290:setParent(obj.flowLayout6);
    obj.label290:setLeft(0);
    obj.label290:setTop(0);
    obj.label290:setAlign("left");
    obj.label290:setText("Duração: ");
    obj.label290:setMargins({left=20;top=15});
    obj.label290:setAutoSize(true);
    obj.label290:setWidth(75);
    obj.label290:setName("label290");

    obj.label291 = GUI.fromHandle(_obj_newObject("label"));
    obj.label291:setParent(obj.flowLayout6);
    obj.label291:setLeft(0);
    obj.label291:setTop(0);
    obj.label291:setAlign("left");
    obj.label291:setText("duracao ");
    obj.label291:setMargins({top=15});
    obj.label291:setAutoSize(true);
    obj.label291:setField("duracao5");
    obj.label291:setWidth(50);
    obj.label291:setName("label291");

    obj.flowLineBreak51 = GUI.fromHandle(_obj_newObject("flowLineBreak"));
    obj.flowLineBreak51:setParent(obj.flowLayout6);
    obj.flowLineBreak51:setName("flowLineBreak51");

    obj.label292 = GUI.fromHandle(_obj_newObject("label"));
    obj.label292:setParent(obj.flowLayout6);
    obj.label292:setLeft(0);
    obj.label292:setTop(0);
    obj.label292:setAlign("left");
    obj.label292:setText("Nome da Técnica:");
    obj.label292:setMargins({top=15});
    obj.label292:setAutoSize(true);
    obj.label292:setName("label292");

    obj.edit36 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit36:setParent(obj.flowLayout6);
    obj.edit36:setLeft(0);
    obj.edit36:setTop(0);
    obj.edit36:setAlign("client");
    obj.edit36:setHorzTextAlign("leading");
    obj.edit36:setMargins({top=10});
    obj.edit36:setWidth(150);
    obj.edit36:setHeight(25);
    obj.edit36:setField("nometec6");
    obj.edit36:setName("edit36");

    obj.label293 = GUI.fromHandle(_obj_newObject("label"));
    obj.label293:setParent(obj.flowLayout6);
    obj.label293:setLeft(0);
    obj.label293:setTop(0);
    obj.label293:setAlign("left");
    obj.label293:setText("Tipo de Efeito:");
    obj.label293:setMargins({left=10;top=15});
    obj.label293:setAutoSize(true);
    obj.label293:setName("label293");

    obj.comboBox36 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox36:setParent(obj.flowLayout6);
    obj.comboBox36:setAlign("left");
    obj.comboBox36:setLeft(0);
    obj.comboBox36:setWidth(175);
    obj.comboBox36:setTop(20);
    obj.comboBox36:setMargins({top=15; right=10});
    obj.comboBox36:setItems({'Atordoamento','Cegueira','Criação e Sustentação','Cura','Disparo Mágico','Disparo Mágico em Área', 'Golpe Marcial Elemental','Manipulação','Paralisia','Reforço Mágico','Slow','Transformação','Vampirismo'});
    obj.comboBox36:setField("tipoefeito6");
    obj.comboBox36:setName("comboBox36");

    obj.label294 = GUI.fromHandle(_obj_newObject("label"));
    obj.label294:setParent(obj.flowLayout6);
    obj.label294:setLeft(0);
    obj.label294:setTop(0);
    obj.label294:setAlign("left");
    obj.label294:setText("Efeito: ");
    obj.label294:setMargins({left=10;top=15});
    obj.label294:setWidth(50);
    obj.label294:setAutoSize(true);
    obj.label294:setName("label294");

    obj.label295 = GUI.fromHandle(_obj_newObject("label"));
    obj.label295:setParent(obj.flowLayout6);
    obj.label295:setLeft(0);
    obj.label295:setTop(0);
    obj.label295:setAlign("left");
    obj.label295:setText("efeito ");
    obj.label295:setMargins({top=15});
    obj.label295:setAutoSize(true);
    obj.label295:setWidth(325);
    obj.label295:setField("effect6");
    obj.label295:setName("label295");

    obj.label296 = GUI.fromHandle(_obj_newObject("label"));
    obj.label296:setParent(obj.flowLayout6);
    obj.label296:setLeft(0);
    obj.label296:setTop(0);
    obj.label296:setAlign("left");
    obj.label296:setText("Custo: ");
    obj.label296:setMargins({top=15});
    obj.label296:setAutoSize(true);
    obj.label296:setWidth(50);
    obj.label296:setName("label296");

    obj.label297 = GUI.fromHandle(_obj_newObject("label"));
    obj.label297:setParent(obj.flowLayout6);
    obj.label297:setLeft(0);
    obj.label297:setTop(0);
    obj.label297:setAlign("left");
    obj.label297:setText("custo ");
    obj.label297:setMargins({top=15});
    obj.label297:setAutoSize(true);
    obj.label297:setWidth(10);
    obj.label297:setField("customagia");
    obj.label297:setName("label297");

    obj.label298 = GUI.fromHandle(_obj_newObject("label"));
    obj.label298:setParent(obj.flowLayout6);
    obj.label298:setLeft(0);
    obj.label298:setTop(0);
    obj.label298:setAlign("left");
    obj.label298:setText("Duração: ");
    obj.label298:setMargins({left=20;top=15});
    obj.label298:setAutoSize(true);
    obj.label298:setWidth(75);
    obj.label298:setName("label298");

    obj.label299 = GUI.fromHandle(_obj_newObject("label"));
    obj.label299:setParent(obj.flowLayout6);
    obj.label299:setLeft(0);
    obj.label299:setTop(0);
    obj.label299:setAlign("left");
    obj.label299:setText("duracao ");
    obj.label299:setMargins({top=15});
    obj.label299:setAutoSize(true);
    obj.label299:setField("duracao6");
    obj.label299:setWidth(50);
    obj.label299:setName("label299");

    obj.flowLineBreak52 = GUI.fromHandle(_obj_newObject("flowLineBreak"));
    obj.flowLineBreak52:setParent(obj.flowLayout6);
    obj.flowLineBreak52:setName("flowLineBreak52");

    obj.label300 = GUI.fromHandle(_obj_newObject("label"));
    obj.label300:setParent(obj.flowLayout6);
    obj.label300:setLeft(0);
    obj.label300:setTop(0);
    obj.label300:setAlign("left");
    obj.label300:setText("Nome da Técnica:");
    obj.label300:setMargins({top=15});
    obj.label300:setAutoSize(true);
    obj.label300:setName("label300");

    obj.edit37 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit37:setParent(obj.flowLayout6);
    obj.edit37:setLeft(0);
    obj.edit37:setTop(0);
    obj.edit37:setAlign("client");
    obj.edit37:setHorzTextAlign("leading");
    obj.edit37:setMargins({top=10});
    obj.edit37:setWidth(150);
    obj.edit37:setHeight(25);
    obj.edit37:setField("nometec7");
    obj.edit37:setName("edit37");

    obj.label301 = GUI.fromHandle(_obj_newObject("label"));
    obj.label301:setParent(obj.flowLayout6);
    obj.label301:setLeft(0);
    obj.label301:setTop(0);
    obj.label301:setAlign("left");
    obj.label301:setText("Tipo de Efeito:");
    obj.label301:setMargins({left=10;top=15});
    obj.label301:setAutoSize(true);
    obj.label301:setName("label301");

    obj.comboBox37 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox37:setParent(obj.flowLayout6);
    obj.comboBox37:setAlign("left");
    obj.comboBox37:setLeft(0);
    obj.comboBox37:setWidth(175);
    obj.comboBox37:setTop(20);
    obj.comboBox37:setMargins({top=15; right=10});
    obj.comboBox37:setItems({'Atordoamento','Cegueira','Criação e Sustentação','Cura','Disparo Mágico','Disparo Mágico em Área', 'Golpe Marcial Elemental','Manipulação','Paralisia','Reforço Mágico','Slow','Transformação','Vampirismo'});
    obj.comboBox37:setField("tipoefeito7");
    obj.comboBox37:setName("comboBox37");

    obj.label302 = GUI.fromHandle(_obj_newObject("label"));
    obj.label302:setParent(obj.flowLayout6);
    obj.label302:setLeft(0);
    obj.label302:setTop(0);
    obj.label302:setAlign("left");
    obj.label302:setText("Efeito: ");
    obj.label302:setMargins({left=10;top=15});
    obj.label302:setWidth(50);
    obj.label302:setAutoSize(true);
    obj.label302:setName("label302");

    obj.label303 = GUI.fromHandle(_obj_newObject("label"));
    obj.label303:setParent(obj.flowLayout6);
    obj.label303:setLeft(0);
    obj.label303:setTop(0);
    obj.label303:setAlign("left");
    obj.label303:setText("efeito ");
    obj.label303:setMargins({top=15});
    obj.label303:setAutoSize(true);
    obj.label303:setWidth(325);
    obj.label303:setField("effect7");
    obj.label303:setName("label303");

    obj.label304 = GUI.fromHandle(_obj_newObject("label"));
    obj.label304:setParent(obj.flowLayout6);
    obj.label304:setLeft(0);
    obj.label304:setTop(0);
    obj.label304:setAlign("left");
    obj.label304:setText("Custo: ");
    obj.label304:setMargins({top=15});
    obj.label304:setAutoSize(true);
    obj.label304:setWidth(50);
    obj.label304:setName("label304");

    obj.label305 = GUI.fromHandle(_obj_newObject("label"));
    obj.label305:setParent(obj.flowLayout6);
    obj.label305:setLeft(0);
    obj.label305:setTop(0);
    obj.label305:setAlign("left");
    obj.label305:setText("custo ");
    obj.label305:setMargins({top=15});
    obj.label305:setAutoSize(true);
    obj.label305:setWidth(10);
    obj.label305:setField("customagia");
    obj.label305:setName("label305");

    obj.label306 = GUI.fromHandle(_obj_newObject("label"));
    obj.label306:setParent(obj.flowLayout6);
    obj.label306:setLeft(0);
    obj.label306:setTop(0);
    obj.label306:setAlign("left");
    obj.label306:setText("Duração: ");
    obj.label306:setMargins({left=20;top=15});
    obj.label306:setAutoSize(true);
    obj.label306:setWidth(75);
    obj.label306:setName("label306");

    obj.label307 = GUI.fromHandle(_obj_newObject("label"));
    obj.label307:setParent(obj.flowLayout6);
    obj.label307:setLeft(0);
    obj.label307:setTop(0);
    obj.label307:setAlign("left");
    obj.label307:setText("duracao ");
    obj.label307:setMargins({top=15});
    obj.label307:setAutoSize(true);
    obj.label307:setField("duracao7");
    obj.label307:setWidth(50);
    obj.label307:setName("label307");

    obj.flowLineBreak53 = GUI.fromHandle(_obj_newObject("flowLineBreak"));
    obj.flowLineBreak53:setParent(obj.flowLayout6);
    obj.flowLineBreak53:setName("flowLineBreak53");

    obj.label308 = GUI.fromHandle(_obj_newObject("label"));
    obj.label308:setParent(obj.flowLayout6);
    obj.label308:setLeft(0);
    obj.label308:setTop(0);
    obj.label308:setAlign("left");
    obj.label308:setText("Nome da Técnica:");
    obj.label308:setMargins({top=15});
    obj.label308:setAutoSize(true);
    obj.label308:setName("label308");

    obj.edit38 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit38:setParent(obj.flowLayout6);
    obj.edit38:setLeft(0);
    obj.edit38:setTop(0);
    obj.edit38:setAlign("client");
    obj.edit38:setHorzTextAlign("leading");
    obj.edit38:setMargins({top=10});
    obj.edit38:setWidth(150);
    obj.edit38:setHeight(25);
    obj.edit38:setField("nometec8");
    obj.edit38:setName("edit38");

    obj.label309 = GUI.fromHandle(_obj_newObject("label"));
    obj.label309:setParent(obj.flowLayout6);
    obj.label309:setLeft(0);
    obj.label309:setTop(0);
    obj.label309:setAlign("left");
    obj.label309:setText("Tipo de Efeito:");
    obj.label309:setMargins({left=10;top=15});
    obj.label309:setAutoSize(true);
    obj.label309:setName("label309");

    obj.comboBox38 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox38:setParent(obj.flowLayout6);
    obj.comboBox38:setAlign("left");
    obj.comboBox38:setLeft(0);
    obj.comboBox38:setWidth(175);
    obj.comboBox38:setTop(20);
    obj.comboBox38:setMargins({top=15; right=10});
    obj.comboBox38:setItems({'Atordoamento','Cegueira','Criação e Sustentação','Cura','Disparo Mágico','Disparo Mágico em Área', 'Golpe Marcial Elemental','Manipulação','Paralisia','Reforço Mágico','Slow','Transformação','Vampirismo'});
    obj.comboBox38:setField("tipoefeito8");
    obj.comboBox38:setName("comboBox38");

    obj.label310 = GUI.fromHandle(_obj_newObject("label"));
    obj.label310:setParent(obj.flowLayout6);
    obj.label310:setLeft(0);
    obj.label310:setTop(0);
    obj.label310:setAlign("left");
    obj.label310:setText("Efeito: ");
    obj.label310:setMargins({left=10;top=15});
    obj.label310:setWidth(50);
    obj.label310:setAutoSize(true);
    obj.label310:setName("label310");

    obj.label311 = GUI.fromHandle(_obj_newObject("label"));
    obj.label311:setParent(obj.flowLayout6);
    obj.label311:setLeft(0);
    obj.label311:setTop(0);
    obj.label311:setAlign("left");
    obj.label311:setText("efeito ");
    obj.label311:setMargins({top=15});
    obj.label311:setAutoSize(true);
    obj.label311:setWidth(325);
    obj.label311:setField("effect8");
    obj.label311:setName("label311");

    obj.label312 = GUI.fromHandle(_obj_newObject("label"));
    obj.label312:setParent(obj.flowLayout6);
    obj.label312:setLeft(0);
    obj.label312:setTop(0);
    obj.label312:setAlign("left");
    obj.label312:setText("Custo: ");
    obj.label312:setMargins({top=15});
    obj.label312:setAutoSize(true);
    obj.label312:setWidth(50);
    obj.label312:setName("label312");

    obj.label313 = GUI.fromHandle(_obj_newObject("label"));
    obj.label313:setParent(obj.flowLayout6);
    obj.label313:setLeft(0);
    obj.label313:setTop(0);
    obj.label313:setAlign("left");
    obj.label313:setText("custo ");
    obj.label313:setMargins({top=15});
    obj.label313:setAutoSize(true);
    obj.label313:setWidth(10);
    obj.label313:setField("customagia");
    obj.label313:setName("label313");

    obj.label314 = GUI.fromHandle(_obj_newObject("label"));
    obj.label314:setParent(obj.flowLayout6);
    obj.label314:setLeft(0);
    obj.label314:setTop(0);
    obj.label314:setAlign("left");
    obj.label314:setText("Duração: ");
    obj.label314:setMargins({left=20;top=15});
    obj.label314:setAutoSize(true);
    obj.label314:setWidth(75);
    obj.label314:setName("label314");

    obj.label315 = GUI.fromHandle(_obj_newObject("label"));
    obj.label315:setParent(obj.flowLayout6);
    obj.label315:setLeft(0);
    obj.label315:setTop(0);
    obj.label315:setAlign("left");
    obj.label315:setText("duracao ");
    obj.label315:setMargins({top=15});
    obj.label315:setAutoSize(true);
    obj.label315:setField("duracao8");
    obj.label315:setWidth(50);
    obj.label315:setName("label315");

    obj.flowLineBreak54 = GUI.fromHandle(_obj_newObject("flowLineBreak"));
    obj.flowLineBreak54:setParent(obj.flowLayout6);
    obj.flowLineBreak54:setName("flowLineBreak54");

    obj.label316 = GUI.fromHandle(_obj_newObject("label"));
    obj.label316:setParent(obj.flowLayout6);
    obj.label316:setLeft(0);
    obj.label316:setTop(0);
    obj.label316:setAlign("left");
    obj.label316:setText("Nome da Técnica:");
    obj.label316:setMargins({top=15});
    obj.label316:setAutoSize(true);
    obj.label316:setName("label316");

    obj.edit39 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit39:setParent(obj.flowLayout6);
    obj.edit39:setLeft(0);
    obj.edit39:setTop(0);
    obj.edit39:setAlign("client");
    obj.edit39:setHorzTextAlign("leading");
    obj.edit39:setMargins({top=10});
    obj.edit39:setWidth(150);
    obj.edit39:setHeight(25);
    obj.edit39:setField("nometec9");
    obj.edit39:setName("edit39");

    obj.label317 = GUI.fromHandle(_obj_newObject("label"));
    obj.label317:setParent(obj.flowLayout6);
    obj.label317:setLeft(0);
    obj.label317:setTop(0);
    obj.label317:setAlign("left");
    obj.label317:setText("Tipo de Efeito:");
    obj.label317:setMargins({left=10;top=15});
    obj.label317:setAutoSize(true);
    obj.label317:setName("label317");

    obj.comboBox39 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox39:setParent(obj.flowLayout6);
    obj.comboBox39:setAlign("left");
    obj.comboBox39:setLeft(0);
    obj.comboBox39:setWidth(175);
    obj.comboBox39:setTop(20);
    obj.comboBox39:setMargins({top=15; right=10});
    obj.comboBox39:setItems({'Atordoamento','Cegueira','Criação e Sustentação','Cura','Disparo Mágico','Disparo Mágico em Área', 'Golpe Marcial Elemental','Manipulação','Paralisia','Reforço Mágico','Slow','Transformação','Vampirismo'});
    obj.comboBox39:setField("tipoefeito9");
    obj.comboBox39:setName("comboBox39");

    obj.label318 = GUI.fromHandle(_obj_newObject("label"));
    obj.label318:setParent(obj.flowLayout6);
    obj.label318:setLeft(0);
    obj.label318:setTop(0);
    obj.label318:setAlign("left");
    obj.label318:setText("Efeito: ");
    obj.label318:setMargins({left=10;top=15});
    obj.label318:setWidth(50);
    obj.label318:setAutoSize(true);
    obj.label318:setName("label318");

    obj.label319 = GUI.fromHandle(_obj_newObject("label"));
    obj.label319:setParent(obj.flowLayout6);
    obj.label319:setLeft(0);
    obj.label319:setTop(0);
    obj.label319:setAlign("left");
    obj.label319:setText("efeito ");
    obj.label319:setMargins({top=15});
    obj.label319:setAutoSize(true);
    obj.label319:setWidth(325);
    obj.label319:setField("effect9");
    obj.label319:setName("label319");

    obj.label320 = GUI.fromHandle(_obj_newObject("label"));
    obj.label320:setParent(obj.flowLayout6);
    obj.label320:setLeft(0);
    obj.label320:setTop(0);
    obj.label320:setAlign("left");
    obj.label320:setText("Custo: ");
    obj.label320:setMargins({top=15});
    obj.label320:setAutoSize(true);
    obj.label320:setWidth(50);
    obj.label320:setName("label320");

    obj.label321 = GUI.fromHandle(_obj_newObject("label"));
    obj.label321:setParent(obj.flowLayout6);
    obj.label321:setLeft(0);
    obj.label321:setTop(0);
    obj.label321:setAlign("left");
    obj.label321:setText("custo ");
    obj.label321:setMargins({top=15});
    obj.label321:setAutoSize(true);
    obj.label321:setWidth(10);
    obj.label321:setField("customagia");
    obj.label321:setName("label321");

    obj.label322 = GUI.fromHandle(_obj_newObject("label"));
    obj.label322:setParent(obj.flowLayout6);
    obj.label322:setLeft(0);
    obj.label322:setTop(0);
    obj.label322:setAlign("left");
    obj.label322:setText("Duração: ");
    obj.label322:setMargins({left=20;top=15});
    obj.label322:setAutoSize(true);
    obj.label322:setWidth(75);
    obj.label322:setName("label322");

    obj.label323 = GUI.fromHandle(_obj_newObject("label"));
    obj.label323:setParent(obj.flowLayout6);
    obj.label323:setLeft(0);
    obj.label323:setTop(0);
    obj.label323:setAlign("left");
    obj.label323:setText("duracao ");
    obj.label323:setMargins({top=15});
    obj.label323:setAutoSize(true);
    obj.label323:setField("duracao9");
    obj.label323:setWidth(50);
    obj.label323:setName("label323");

    obj.flowLineBreak55 = GUI.fromHandle(_obj_newObject("flowLineBreak"));
    obj.flowLineBreak55:setParent(obj.flowLayout6);
    obj.flowLineBreak55:setName("flowLineBreak55");

    obj.label324 = GUI.fromHandle(_obj_newObject("label"));
    obj.label324:setParent(obj.flowLayout6);
    obj.label324:setLeft(0);
    obj.label324:setTop(0);
    obj.label324:setAlign("left");
    obj.label324:setText("Nome da Técnica:");
    obj.label324:setMargins({top=15});
    obj.label324:setAutoSize(true);
    obj.label324:setName("label324");

    obj.edit40 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit40:setParent(obj.flowLayout6);
    obj.edit40:setLeft(0);
    obj.edit40:setTop(0);
    obj.edit40:setAlign("client");
    obj.edit40:setHorzTextAlign("leading");
    obj.edit40:setMargins({top=10});
    obj.edit40:setWidth(150);
    obj.edit40:setHeight(25);
    obj.edit40:setField("nometec10");
    obj.edit40:setName("edit40");

    obj.label325 = GUI.fromHandle(_obj_newObject("label"));
    obj.label325:setParent(obj.flowLayout6);
    obj.label325:setLeft(0);
    obj.label325:setTop(0);
    obj.label325:setAlign("left");
    obj.label325:setText("Tipo de Efeito:");
    obj.label325:setMargins({left=10;top=15});
    obj.label325:setAutoSize(true);
    obj.label325:setName("label325");

    obj.comboBox40 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox40:setParent(obj.flowLayout6);
    obj.comboBox40:setAlign("left");
    obj.comboBox40:setLeft(0);
    obj.comboBox40:setWidth(175);
    obj.comboBox40:setTop(20);
    obj.comboBox40:setMargins({top=15; right=10});
    obj.comboBox40:setItems({'Atordoamento','Cegueira','Criação e Sustentação','Cura','Disparo Mágico','Disparo Mágico em Área', 'Golpe Marcial Elemental','Manipulação','Paralisia','Reforço Mágico','Slow','Transformação','Vampirismo'});
    obj.comboBox40:setField("tipoefeito10");
    obj.comboBox40:setName("comboBox40");

    obj.label326 = GUI.fromHandle(_obj_newObject("label"));
    obj.label326:setParent(obj.flowLayout6);
    obj.label326:setLeft(0);
    obj.label326:setTop(0);
    obj.label326:setAlign("left");
    obj.label326:setText("Efeito: ");
    obj.label326:setMargins({left=10;top=15});
    obj.label326:setWidth(50);
    obj.label326:setAutoSize(true);
    obj.label326:setName("label326");

    obj.label327 = GUI.fromHandle(_obj_newObject("label"));
    obj.label327:setParent(obj.flowLayout6);
    obj.label327:setLeft(0);
    obj.label327:setTop(0);
    obj.label327:setAlign("left");
    obj.label327:setText("efeito ");
    obj.label327:setMargins({top=15});
    obj.label327:setAutoSize(true);
    obj.label327:setWidth(325);
    obj.label327:setField("effect10");
    obj.label327:setName("label327");

    obj.label328 = GUI.fromHandle(_obj_newObject("label"));
    obj.label328:setParent(obj.flowLayout6);
    obj.label328:setLeft(0);
    obj.label328:setTop(0);
    obj.label328:setAlign("left");
    obj.label328:setText("Custo: ");
    obj.label328:setMargins({top=15});
    obj.label328:setAutoSize(true);
    obj.label328:setWidth(50);
    obj.label328:setName("label328");

    obj.label329 = GUI.fromHandle(_obj_newObject("label"));
    obj.label329:setParent(obj.flowLayout6);
    obj.label329:setLeft(0);
    obj.label329:setTop(0);
    obj.label329:setAlign("left");
    obj.label329:setText("custo ");
    obj.label329:setMargins({top=15});
    obj.label329:setAutoSize(true);
    obj.label329:setWidth(10);
    obj.label329:setField("customagia");
    obj.label329:setName("label329");

    obj.label330 = GUI.fromHandle(_obj_newObject("label"));
    obj.label330:setParent(obj.flowLayout6);
    obj.label330:setLeft(0);
    obj.label330:setTop(0);
    obj.label330:setAlign("left");
    obj.label330:setText("Duração: ");
    obj.label330:setMargins({left=20;top=15});
    obj.label330:setAutoSize(true);
    obj.label330:setWidth(75);
    obj.label330:setName("label330");

    obj.label331 = GUI.fromHandle(_obj_newObject("label"));
    obj.label331:setParent(obj.flowLayout6);
    obj.label331:setLeft(0);
    obj.label331:setTop(0);
    obj.label331:setAlign("left");
    obj.label331:setText("duracao ");
    obj.label331:setMargins({top=15});
    obj.label331:setAutoSize(true);
    obj.label331:setField("duracao10");
    obj.label331:setWidth(50);
    obj.label331:setName("label331");

    obj.flowLineBreak56 = GUI.fromHandle(_obj_newObject("flowLineBreak"));
    obj.flowLineBreak56:setParent(obj.flowLayout6);
    obj.flowLineBreak56:setName("flowLineBreak56");

    obj.label332 = GUI.fromHandle(_obj_newObject("label"));
    obj.label332:setParent(obj.flowLayout6);
    obj.label332:setLeft(0);
    obj.label332:setTop(0);
    obj.label332:setAlign("left");
    obj.label332:setText("Nome da Técnica:");
    obj.label332:setMargins({top=15});
    obj.label332:setAutoSize(true);
    obj.label332:setName("label332");

    obj.edit41 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit41:setParent(obj.flowLayout6);
    obj.edit41:setLeft(0);
    obj.edit41:setTop(0);
    obj.edit41:setAlign("client");
    obj.edit41:setHorzTextAlign("leading");
    obj.edit41:setMargins({top=10});
    obj.edit41:setWidth(150);
    obj.edit41:setHeight(25);
    obj.edit41:setField("nometec11");
    obj.edit41:setName("edit41");

    obj.label333 = GUI.fromHandle(_obj_newObject("label"));
    obj.label333:setParent(obj.flowLayout6);
    obj.label333:setLeft(0);
    obj.label333:setTop(0);
    obj.label333:setAlign("left");
    obj.label333:setText("Tipo de Efeito:");
    obj.label333:setMargins({left=10;top=15});
    obj.label333:setAutoSize(true);
    obj.label333:setName("label333");

    obj.comboBox41 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox41:setParent(obj.flowLayout6);
    obj.comboBox41:setAlign("left");
    obj.comboBox41:setLeft(0);
    obj.comboBox41:setWidth(175);
    obj.comboBox41:setTop(20);
    obj.comboBox41:setMargins({top=15; right=10});
    obj.comboBox41:setItems({'Atordoamento','Cegueira','Criação e Sustentação','Cura','Disparo Mágico','Disparo Mágico em Área', 'Golpe Marcial Elemental','Manipulação','Paralisia','Reforço Mágico','Slow','Transformação','Vampirismo'});
    obj.comboBox41:setField("tipoefeito11");
    obj.comboBox41:setName("comboBox41");

    obj.label334 = GUI.fromHandle(_obj_newObject("label"));
    obj.label334:setParent(obj.flowLayout6);
    obj.label334:setLeft(0);
    obj.label334:setTop(0);
    obj.label334:setAlign("left");
    obj.label334:setText("Efeito: ");
    obj.label334:setMargins({left=10;top=15});
    obj.label334:setWidth(50);
    obj.label334:setAutoSize(true);
    obj.label334:setName("label334");

    obj.label335 = GUI.fromHandle(_obj_newObject("label"));
    obj.label335:setParent(obj.flowLayout6);
    obj.label335:setLeft(0);
    obj.label335:setTop(0);
    obj.label335:setAlign("left");
    obj.label335:setText("efeito ");
    obj.label335:setMargins({top=15});
    obj.label335:setAutoSize(true);
    obj.label335:setWidth(325);
    obj.label335:setField("effect11");
    obj.label335:setName("label335");

    obj.label336 = GUI.fromHandle(_obj_newObject("label"));
    obj.label336:setParent(obj.flowLayout6);
    obj.label336:setLeft(0);
    obj.label336:setTop(0);
    obj.label336:setAlign("left");
    obj.label336:setText("Custo: ");
    obj.label336:setMargins({top=15});
    obj.label336:setAutoSize(true);
    obj.label336:setWidth(50);
    obj.label336:setName("label336");

    obj.label337 = GUI.fromHandle(_obj_newObject("label"));
    obj.label337:setParent(obj.flowLayout6);
    obj.label337:setLeft(0);
    obj.label337:setTop(0);
    obj.label337:setAlign("left");
    obj.label337:setText("custo ");
    obj.label337:setMargins({top=15});
    obj.label337:setAutoSize(true);
    obj.label337:setWidth(10);
    obj.label337:setField("customagia");
    obj.label337:setName("label337");

    obj.label338 = GUI.fromHandle(_obj_newObject("label"));
    obj.label338:setParent(obj.flowLayout6);
    obj.label338:setLeft(0);
    obj.label338:setTop(0);
    obj.label338:setAlign("left");
    obj.label338:setText("Duração: ");
    obj.label338:setMargins({left=20;top=15});
    obj.label338:setAutoSize(true);
    obj.label338:setWidth(75);
    obj.label338:setName("label338");

    obj.label339 = GUI.fromHandle(_obj_newObject("label"));
    obj.label339:setParent(obj.flowLayout6);
    obj.label339:setLeft(0);
    obj.label339:setTop(0);
    obj.label339:setAlign("left");
    obj.label339:setText("duracao ");
    obj.label339:setMargins({top=15});
    obj.label339:setAutoSize(true);
    obj.label339:setField("duracao11");
    obj.label339:setWidth(50);
    obj.label339:setName("label339");

    obj.flowLineBreak57 = GUI.fromHandle(_obj_newObject("flowLineBreak"));
    obj.flowLineBreak57:setParent(obj.flowLayout6);
    obj.flowLineBreak57:setName("flowLineBreak57");

    obj.label340 = GUI.fromHandle(_obj_newObject("label"));
    obj.label340:setParent(obj.flowLayout6);
    obj.label340:setLeft(0);
    obj.label340:setTop(0);
    obj.label340:setAlign("left");
    obj.label340:setText("Nome da Técnica:");
    obj.label340:setMargins({top=15});
    obj.label340:setAutoSize(true);
    obj.label340:setName("label340");

    obj.edit42 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit42:setParent(obj.flowLayout6);
    obj.edit42:setLeft(0);
    obj.edit42:setTop(0);
    obj.edit42:setAlign("client");
    obj.edit42:setHorzTextAlign("leading");
    obj.edit42:setMargins({top=10});
    obj.edit42:setWidth(150);
    obj.edit42:setHeight(25);
    obj.edit42:setField("nometec12");
    obj.edit42:setName("edit42");

    obj.label341 = GUI.fromHandle(_obj_newObject("label"));
    obj.label341:setParent(obj.flowLayout6);
    obj.label341:setLeft(0);
    obj.label341:setTop(0);
    obj.label341:setAlign("left");
    obj.label341:setText("Tipo de Efeito:");
    obj.label341:setMargins({left=10;top=15});
    obj.label341:setAutoSize(true);
    obj.label341:setName("label341");

    obj.comboBox42 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox42:setParent(obj.flowLayout6);
    obj.comboBox42:setAlign("left");
    obj.comboBox42:setLeft(0);
    obj.comboBox42:setWidth(175);
    obj.comboBox42:setTop(20);
    obj.comboBox42:setMargins({top=15; right=10});
    obj.comboBox42:setItems({'Atordoamento','Cegueira','Criação e Sustentação','Cura','Disparo Mágico','Disparo Mágico em Área', 'Golpe Marcial Elemental','Manipulação','Paralisia','Reforço Mágico','Slow','Transformação','Vampirismo'});
    obj.comboBox42:setField("tipoefeito12");
    obj.comboBox42:setName("comboBox42");

    obj.label342 = GUI.fromHandle(_obj_newObject("label"));
    obj.label342:setParent(obj.flowLayout6);
    obj.label342:setLeft(0);
    obj.label342:setTop(0);
    obj.label342:setAlign("left");
    obj.label342:setText("Efeito: ");
    obj.label342:setMargins({left=10;top=15});
    obj.label342:setWidth(50);
    obj.label342:setAutoSize(true);
    obj.label342:setName("label342");

    obj.label343 = GUI.fromHandle(_obj_newObject("label"));
    obj.label343:setParent(obj.flowLayout6);
    obj.label343:setLeft(0);
    obj.label343:setTop(0);
    obj.label343:setAlign("left");
    obj.label343:setText("efeito ");
    obj.label343:setMargins({top=15});
    obj.label343:setAutoSize(true);
    obj.label343:setWidth(325);
    obj.label343:setField("effect12");
    obj.label343:setName("label343");

    obj.label344 = GUI.fromHandle(_obj_newObject("label"));
    obj.label344:setParent(obj.flowLayout6);
    obj.label344:setLeft(0);
    obj.label344:setTop(0);
    obj.label344:setAlign("left");
    obj.label344:setText("Custo: ");
    obj.label344:setMargins({top=15});
    obj.label344:setAutoSize(true);
    obj.label344:setWidth(50);
    obj.label344:setName("label344");

    obj.label345 = GUI.fromHandle(_obj_newObject("label"));
    obj.label345:setParent(obj.flowLayout6);
    obj.label345:setLeft(0);
    obj.label345:setTop(0);
    obj.label345:setAlign("left");
    obj.label345:setText("custo ");
    obj.label345:setMargins({top=15});
    obj.label345:setAutoSize(true);
    obj.label345:setWidth(10);
    obj.label345:setField("customagia");
    obj.label345:setName("label345");

    obj.label346 = GUI.fromHandle(_obj_newObject("label"));
    obj.label346:setParent(obj.flowLayout6);
    obj.label346:setLeft(0);
    obj.label346:setTop(0);
    obj.label346:setAlign("left");
    obj.label346:setText("Duração: ");
    obj.label346:setMargins({left=20;top=15});
    obj.label346:setAutoSize(true);
    obj.label346:setWidth(75);
    obj.label346:setName("label346");

    obj.label347 = GUI.fromHandle(_obj_newObject("label"));
    obj.label347:setParent(obj.flowLayout6);
    obj.label347:setLeft(0);
    obj.label347:setTop(0);
    obj.label347:setAlign("left");
    obj.label347:setText("duracao ");
    obj.label347:setMargins({top=15});
    obj.label347:setAutoSize(true);
    obj.label347:setField("duracao12");
    obj.label347:setWidth(50);
    obj.label347:setName("label347");

    obj.flowLineBreak58 = GUI.fromHandle(_obj_newObject("flowLineBreak"));
    obj.flowLineBreak58:setParent(obj.flowLayout6);
    obj.flowLineBreak58:setName("flowLineBreak58");

    obj.label348 = GUI.fromHandle(_obj_newObject("label"));
    obj.label348:setParent(obj.flowLayout6);
    obj.label348:setLeft(0);
    obj.label348:setTop(0);
    obj.label348:setAlign("left");
    obj.label348:setText("Nome da Técnica:");
    obj.label348:setMargins({top=15});
    obj.label348:setAutoSize(true);
    obj.label348:setName("label348");

    obj.edit43 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit43:setParent(obj.flowLayout6);
    obj.edit43:setLeft(0);
    obj.edit43:setTop(0);
    obj.edit43:setAlign("client");
    obj.edit43:setHorzTextAlign("leading");
    obj.edit43:setMargins({top=10});
    obj.edit43:setWidth(150);
    obj.edit43:setHeight(25);
    obj.edit43:setField("nometec13");
    obj.edit43:setName("edit43");

    obj.label349 = GUI.fromHandle(_obj_newObject("label"));
    obj.label349:setParent(obj.flowLayout6);
    obj.label349:setLeft(0);
    obj.label349:setTop(0);
    obj.label349:setAlign("left");
    obj.label349:setText("Tipo de Efeito:");
    obj.label349:setMargins({left=10;top=15});
    obj.label349:setAutoSize(true);
    obj.label349:setName("label349");

    obj.comboBox43 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox43:setParent(obj.flowLayout6);
    obj.comboBox43:setAlign("left");
    obj.comboBox43:setLeft(0);
    obj.comboBox43:setWidth(175);
    obj.comboBox43:setTop(20);
    obj.comboBox43:setMargins({top=15; right=10});
    obj.comboBox43:setItems({'Atordoamento','Cegueira','Criação e Sustentação','Cura','Disparo Mágico','Disparo Mágico em Área', 'Golpe Marcial Elemental','Manipulação','Paralisia','Reforço Mágico','Slow','Transformação','Vampirismo'});
    obj.comboBox43:setField("tipoefeito13");
    obj.comboBox43:setName("comboBox43");

    obj.label350 = GUI.fromHandle(_obj_newObject("label"));
    obj.label350:setParent(obj.flowLayout6);
    obj.label350:setLeft(0);
    obj.label350:setTop(0);
    obj.label350:setAlign("left");
    obj.label350:setText("Efeito: ");
    obj.label350:setMargins({left=10;top=15});
    obj.label350:setWidth(50);
    obj.label350:setAutoSize(true);
    obj.label350:setName("label350");

    obj.label351 = GUI.fromHandle(_obj_newObject("label"));
    obj.label351:setParent(obj.flowLayout6);
    obj.label351:setLeft(0);
    obj.label351:setTop(0);
    obj.label351:setAlign("left");
    obj.label351:setText("efeito ");
    obj.label351:setMargins({top=15});
    obj.label351:setAutoSize(true);
    obj.label351:setWidth(325);
    obj.label351:setField("effect13");
    obj.label351:setName("label351");

    obj.label352 = GUI.fromHandle(_obj_newObject("label"));
    obj.label352:setParent(obj.flowLayout6);
    obj.label352:setLeft(0);
    obj.label352:setTop(0);
    obj.label352:setAlign("left");
    obj.label352:setText("Custo: ");
    obj.label352:setMargins({top=15});
    obj.label352:setAutoSize(true);
    obj.label352:setWidth(50);
    obj.label352:setName("label352");

    obj.label353 = GUI.fromHandle(_obj_newObject("label"));
    obj.label353:setParent(obj.flowLayout6);
    obj.label353:setLeft(0);
    obj.label353:setTop(0);
    obj.label353:setAlign("left");
    obj.label353:setText("custo ");
    obj.label353:setMargins({top=15});
    obj.label353:setAutoSize(true);
    obj.label353:setWidth(10);
    obj.label353:setField("customagia");
    obj.label353:setName("label353");

    obj.label354 = GUI.fromHandle(_obj_newObject("label"));
    obj.label354:setParent(obj.flowLayout6);
    obj.label354:setLeft(0);
    obj.label354:setTop(0);
    obj.label354:setAlign("left");
    obj.label354:setText("Duração: ");
    obj.label354:setMargins({left=20;top=15});
    obj.label354:setAutoSize(true);
    obj.label354:setWidth(75);
    obj.label354:setName("label354");

    obj.label355 = GUI.fromHandle(_obj_newObject("label"));
    obj.label355:setParent(obj.flowLayout6);
    obj.label355:setLeft(0);
    obj.label355:setTop(0);
    obj.label355:setAlign("left");
    obj.label355:setText("duracao ");
    obj.label355:setMargins({top=15});
    obj.label355:setAutoSize(true);
    obj.label355:setField("duracao13");
    obj.label355:setWidth(50);
    obj.label355:setName("label355");

    obj.flowLineBreak59 = GUI.fromHandle(_obj_newObject("flowLineBreak"));
    obj.flowLineBreak59:setParent(obj.flowLayout6);
    obj.flowLineBreak59:setName("flowLineBreak59");

    obj.label356 = GUI.fromHandle(_obj_newObject("label"));
    obj.label356:setParent(obj.flowLayout6);
    obj.label356:setLeft(0);
    obj.label356:setTop(0);
    obj.label356:setAlign("left");
    obj.label356:setText("Nome da Técnica:");
    obj.label356:setMargins({top=15});
    obj.label356:setAutoSize(true);
    obj.label356:setName("label356");

    obj.edit44 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit44:setParent(obj.flowLayout6);
    obj.edit44:setLeft(0);
    obj.edit44:setTop(0);
    obj.edit44:setAlign("client");
    obj.edit44:setHorzTextAlign("leading");
    obj.edit44:setMargins({top=10});
    obj.edit44:setWidth(150);
    obj.edit44:setHeight(25);
    obj.edit44:setField("nometec14");
    obj.edit44:setName("edit44");

    obj.label357 = GUI.fromHandle(_obj_newObject("label"));
    obj.label357:setParent(obj.flowLayout6);
    obj.label357:setLeft(0);
    obj.label357:setTop(0);
    obj.label357:setAlign("left");
    obj.label357:setText("Tipo de Efeito:");
    obj.label357:setMargins({left=10;top=15});
    obj.label357:setAutoSize(true);
    obj.label357:setName("label357");

    obj.comboBox44 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox44:setParent(obj.flowLayout6);
    obj.comboBox44:setAlign("left");
    obj.comboBox44:setLeft(0);
    obj.comboBox44:setWidth(175);
    obj.comboBox44:setTop(20);
    obj.comboBox44:setMargins({top=15; right=10});
    obj.comboBox44:setItems({'Atordoamento','Cegueira','Criação e Sustentação','Cura','Disparo Mágico','Disparo Mágico em Área', 'Golpe Marcial Elemental','Manipulação','Paralisia','Reforço Mágico','Slow','Transformação','Vampirismo'});
    obj.comboBox44:setField("tipoefeito14");
    obj.comboBox44:setName("comboBox44");

    obj.label358 = GUI.fromHandle(_obj_newObject("label"));
    obj.label358:setParent(obj.flowLayout6);
    obj.label358:setLeft(0);
    obj.label358:setTop(0);
    obj.label358:setAlign("left");
    obj.label358:setText("Efeito: ");
    obj.label358:setMargins({left=10;top=15});
    obj.label358:setWidth(50);
    obj.label358:setAutoSize(true);
    obj.label358:setName("label358");

    obj.label359 = GUI.fromHandle(_obj_newObject("label"));
    obj.label359:setParent(obj.flowLayout6);
    obj.label359:setLeft(0);
    obj.label359:setTop(0);
    obj.label359:setAlign("left");
    obj.label359:setText("efeito ");
    obj.label359:setMargins({top=15;});
    obj.label359:setAutoSize(true);
    obj.label359:setWidth(325);
    obj.label359:setField("effect14");
    obj.label359:setName("label359");

    obj.label360 = GUI.fromHandle(_obj_newObject("label"));
    obj.label360:setParent(obj.flowLayout6);
    obj.label360:setLeft(0);
    obj.label360:setTop(0);
    obj.label360:setAlign("left");
    obj.label360:setText("Custo: ");
    obj.label360:setMargins({top=15});
    obj.label360:setAutoSize(true);
    obj.label360:setWidth(50);
    obj.label360:setName("label360");

    obj.label361 = GUI.fromHandle(_obj_newObject("label"));
    obj.label361:setParent(obj.flowLayout6);
    obj.label361:setLeft(0);
    obj.label361:setTop(0);
    obj.label361:setAlign("left");
    obj.label361:setText("custo ");
    obj.label361:setMargins({top=15});
    obj.label361:setAutoSize(true);
    obj.label361:setWidth(10);
    obj.label361:setField("customagia");
    obj.label361:setName("label361");

    obj.label362 = GUI.fromHandle(_obj_newObject("label"));
    obj.label362:setParent(obj.flowLayout6);
    obj.label362:setLeft(0);
    obj.label362:setTop(0);
    obj.label362:setAlign("left");
    obj.label362:setText("Duração: ");
    obj.label362:setMargins({left=20;top=15});
    obj.label362:setAutoSize(true);
    obj.label362:setWidth(75);
    obj.label362:setName("label362");

    obj.label363 = GUI.fromHandle(_obj_newObject("label"));
    obj.label363:setParent(obj.flowLayout6);
    obj.label363:setLeft(0);
    obj.label363:setTop(0);
    obj.label363:setAlign("left");
    obj.label363:setText("duracao ");
    obj.label363:setMargins({top=15});
    obj.label363:setAutoSize(true);
    obj.label363:setField("duracao14");
    obj.label363:setWidth(50);
    obj.label363:setName("label363");

    obj.flowLineBreak60 = GUI.fromHandle(_obj_newObject("flowLineBreak"));
    obj.flowLineBreak60:setParent(obj.flowLayout6);
    obj.flowLineBreak60:setName("flowLineBreak60");

    obj.tab7 = GUI.fromHandle(_obj_newObject("tab"));
    obj.tab7:setParent(obj.tabControl1);
    obj.tab7:setTitle("Background");
    obj.tab7:setName("tab7");

    obj.flowLayout7 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout7:setParent(obj.tab7);
    obj.flowLayout7:setLeft(30);
    obj.flowLayout7:setTop(0);
    obj.flowLayout7:setWidth(1200);
    obj.flowLayout7:setHeight(3000);
    obj.flowLayout7:setName("flowLayout7");

    obj.label364 = GUI.fromHandle(_obj_newObject("label"));
    obj.label364:setParent(obj.flowLayout7);
    obj.label364:setLeft(0);
    obj.label364:setTop(0);
    obj.label364:setAlign("left");
    obj.label364:setFontSize(20);
    obj.label364:setFontFamily("Copperplate Gothic");
    obj.label364:setText("Background");
    obj.label364:setMargins({left=500;bottom=10});
    obj.label364:setWidth(200);
    obj.label364:setHeight(30);
    obj.label364:setAutoSize(true);
    obj.label364:setName("label364");

    obj.flowLineBreak61 = GUI.fromHandle(_obj_newObject("flowLineBreak"));
    obj.flowLineBreak61:setParent(obj.flowLayout7);
    obj.flowLineBreak61:setName("flowLineBreak61");

    obj.label365 = GUI.fromHandle(_obj_newObject("label"));
    obj.label365:setParent(obj.flowLayout7);
    obj.label365:setText("Por favor, peço que sua background NÃO contenha imagens, use a aba do Espaço Livre. Obrigado.");
    obj.label365:setMargins({left=300;});
    obj.label365:setAlign("client");
    obj.label365:setWidth(700);
    obj.label365:setName("label365");

    obj.flowLineBreak62 = GUI.fromHandle(_obj_newObject("flowLineBreak"));
    obj.flowLineBreak62:setParent(obj.flowLayout7);
    obj.flowLineBreak62:setName("flowLineBreak62");

    obj.richEdit1 = GUI.fromHandle(_obj_newObject("richEdit"));
    obj.richEdit1:setParent(obj.flowLayout7);
    obj.richEdit1:setAlign("client");
    obj.richEdit1:setWidth(1100);
    obj.richEdit1:setHeight(550);
    lfm_setPropAsString(obj.richEdit1, "backgroundColor",  "Black");
    lfm_setPropAsString(obj.richEdit1, "defaultFontColor",  "white");
    obj.richEdit1:setField("bg");
    obj.richEdit1:setName("richEdit1");

    obj.tab8 = GUI.fromHandle(_obj_newObject("tab"));
    obj.tab8:setParent(obj.tabControl1);
    obj.tab8:setTitle("Espaço Livre");
    obj.tab8:setName("tab8");

    obj.flowLayout8 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout8:setParent(obj.tab8);
    obj.flowLayout8:setLeft(30);
    obj.flowLayout8:setTop(0);
    obj.flowLayout8:setWidth(1200);
    obj.flowLayout8:setHeight(3000);
    obj.flowLayout8:setName("flowLayout8");

    obj.label366 = GUI.fromHandle(_obj_newObject("label"));
    obj.label366:setParent(obj.flowLayout8);
    obj.label366:setLeft(0);
    obj.label366:setTop(0);
    obj.label366:setAlign("left");
    obj.label366:setFontSize(20);
    obj.label366:setFontFamily("Copperplate Gothic");
    obj.label366:setText("Espaço Livre");
    obj.label366:setMargins({left=500;});
    obj.label366:setWidth(200);
    obj.label366:setHeight(30);
    obj.label366:setName("label366");

    obj.flowLineBreak63 = GUI.fromHandle(_obj_newObject("flowLineBreak"));
    obj.flowLineBreak63:setParent(obj.flowLayout8);
    obj.flowLineBreak63:setName("flowLineBreak63");

    obj.richEdit2 = GUI.fromHandle(_obj_newObject("richEdit"));
    obj.richEdit2:setParent(obj.flowLayout8);
    obj.richEdit2:setAlign("client");
    obj.richEdit2:setWidth(1100);
    obj.richEdit2:setHeight(550);
    lfm_setPropAsString(obj.richEdit2, "backgroundColor",  "Black");
    lfm_setPropAsString(obj.richEdit2, "defaultFontColor",  "white");
    obj.richEdit2:setField("espacoLivre");
    obj.richEdit2:setName("richEdit2");

    obj.tab9 = GUI.fromHandle(_obj_newObject("tab"));
    obj.tab9:setParent(obj.tabControl1);
    obj.tab9:setTitle("Créditos e Versão");
    obj.tab9:setName("tab9");

    obj.flowLayout9 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout9:setParent(obj.tab9);
    obj.flowLayout9:setLeft(20);
    obj.flowLayout9:setTop(0);
    obj.flowLayout9:setWidth(1200);
    obj.flowLayout9:setHeight(3000);
    obj.flowLayout9:setName("flowLayout9");

    obj.image14 = GUI.fromHandle(_obj_newObject("image"));
    obj.image14:setParent(obj.flowLayout9);
    obj.image14:setLeft(20);
    obj.image14:setTop(20);
    obj.image14:setMargins({left=20});
    obj.image14:setWidth(350);
    obj.image14:setHeight(350);
    obj.image14:setSRC("/imgs/tyger.png");
    obj.image14:setName("image14");

    obj.flowLineBreak64 = GUI.fromHandle(_obj_newObject("flowLineBreak"));
    obj.flowLineBreak64:setParent(obj.flowLayout9);
    obj.flowLineBreak64:setName("flowLineBreak64");

    obj.label367 = GUI.fromHandle(_obj_newObject("label"));
    obj.label367:setParent(obj.flowLayout9);
    obj.label367:setLeft(0);
    obj.label367:setTop(0);
    obj.label367:setAlign("left");
    obj.label367:setFontFamily("Bauhaus 93");
    obj.label367:setFontSize(40);
    obj.label367:setText("Créditos");
    obj.label367:setMargins({left=500;});
    obj.label367:setWidth(300);
    obj.label367:setHeight(45);
    obj.label367:setName("label367");

    obj.flowLineBreak65 = GUI.fromHandle(_obj_newObject("flowLineBreak"));
    obj.flowLineBreak65:setParent(obj.flowLayout9);
    obj.flowLineBreak65:setName("flowLineBreak65");

    obj.label368 = GUI.fromHandle(_obj_newObject("label"));
    obj.label368:setParent(obj.flowLayout9);
    obj.label368:setLeft(0);
    obj.label368:setTop(0);
    obj.label368:setAlign("left");
    obj.label368:setFontFamily("Bauhaus 93");
    obj.label368:setText("Ficha: Fairy Tail - The World is Yours");
    obj.label368:setMargins({top=10;left=470});
    obj.label368:setWidth(300);
    obj.label368:setName("label368");

    obj.flowLineBreak66 = GUI.fromHandle(_obj_newObject("flowLineBreak"));
    obj.flowLineBreak66:setParent(obj.flowLayout9);
    obj.flowLineBreak66:setName("flowLineBreak66");

    obj.label369 = GUI.fromHandle(_obj_newObject("label"));
    obj.label369:setParent(obj.flowLayout9);
    obj.label369:setLeft(0);
    obj.label369:setTop(0);
    obj.label369:setAlign("left");
    obj.label369:setFontFamily("Bauhaus 93");
    obj.label369:setText("Versão: 1.0");
    obj.label369:setMargins({top=10;left=470});
    obj.label369:setWidth(300);
    obj.label369:setName("label369");

    obj.flowLineBreak67 = GUI.fromHandle(_obj_newObject("flowLineBreak"));
    obj.flowLineBreak67:setParent(obj.flowLayout9);
    obj.flowLineBreak67:setName("flowLineBreak67");

    obj.label370 = GUI.fromHandle(_obj_newObject("label"));
    obj.label370:setParent(obj.flowLayout9);
    obj.label370:setLeft(0);
    obj.label370:setTop(0);
    obj.label370:setAlign("left");
    obj.label370:setFontFamily("Bauhaus 93");
    obj.label370:setText("Criador: WhiteTiger");
    obj.label370:setMargins({top=10;left=470});
    obj.label370:setWidth(300);
    obj.label370:setName("label370");

    obj.flowLineBreak68 = GUI.fromHandle(_obj_newObject("flowLineBreak"));
    obj.flowLineBreak68:setParent(obj.flowLayout9);
    obj.flowLineBreak68:setName("flowLineBreak68");

    obj.label371 = GUI.fromHandle(_obj_newObject("label"));
    obj.label371:setParent(obj.flowLayout9);
    obj.label371:setLeft(0);
    obj.label371:setTop(0);
    obj.label371:setAlign("left");
    obj.label371:setFontFamily("Bauhaus 93");
    obj.label371:setText("Contato: whitetigerdevs@gmail.com");
    obj.label371:setMargins({top=10;left=470});
    obj.label371:setWidth(300);
    obj.label371:setName("label371");

    obj.dataLink1 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink1:setParent(obj);
    obj.dataLink1:setFields({'bonusRF','bonusDES','bonusRM','bonusINT','bonusFF','bonusFM','raca'});
    obj.dataLink1:setName("dataLink1");

    obj.dataLink2 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink2:setParent(obj);
    obj.dataLink2:setFields({'resfisica', 'bonusRF', 'destreza','bonusDES','resmagica','bonusRM','inteligencia','bonusINT','forcafisica','bonusFF','forcamagica','bonusFM',
	'OBRF','OBDES','OBINT','OBRM','OBFF','OBFM','totalRF','totalDES','totalINT','totalRM','totalFF','totalFM'});
    obj.dataLink2:setName("dataLink2");

    obj.dataLink3 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink3:setParent(obj);
    obj.dataLink3:setFields({'totalIniciativa','bonusIniciativa','totalDES','totalINT'});
    obj.dataLink3:setName("dataLink3");

    obj.dataLink4 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink4:setParent(obj);
    obj.dataLink4:setFields({'totalAcerto','bonusAcerto','totalDES'});
    obj.dataLink4:setName("dataLink4");

    obj.dataLink5 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink5:setParent(obj);
    obj.dataLink5:setFields({'bonusAtkFisico','totalAtkFisico','totalFF'});
    obj.dataLink5:setName("dataLink5");

    obj.dataLink6 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink6:setParent(obj);
    obj.dataLink6:setFields({'bonusAtkMagico','totalAtkMagico','totalFM'});
    obj.dataLink6:setName("dataLink6");

    obj.dataLink7 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink7:setParent(obj);
    obj.dataLink7:setFields({'resfisica', 'bonusRF', 'destreza','bonusDES'});
    obj.dataLink7:setName("dataLink7");

    obj.dataLink8 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink8:setParent(obj);
    obj.dataLink8:setFields({'resmagica', 'bonusRM', 'inteligencia','bonusINT'});
    obj.dataLink8:setName("dataLink8");

    obj.dataLink9 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink9:setParent(obj);
    obj.dataLink9:setFields({'caf','bonusCAF','totalCAF'});
    obj.dataLink9:setName("dataLink9");

    obj.dataLink10 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink10:setParent(obj);
    obj.dataLink10:setFields({'cam','bonusCAM','totalCAM'});
    obj.dataLink10:setName("dataLink10");

    obj.dataLink11 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink11:setParent(obj);
    obj.dataLink11:setFields({'resfisica','bonusRF'});
    obj.dataLink11:setName("dataLink11");

    obj.dataLink12 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink12:setParent(obj);
    obj.dataLink12:setFields({'resmagica','bonusRM'});
    obj.dataLink12:setName("dataLink12");

    obj.dataLink13 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink13:setParent(obj);
    obj.dataLink13:setFields({'nomeVant','nomeVant2','nomeVant3','nomeVant4','nomeVant5','nomeVant6','nomeVant7',
    'nomeVant8','nomeVant9','nomeVant10','descricaoVant','descricaoVant2','descricaoVant3','descricaoVant4',
    'descricaoVant5','descricaoVant6','descricaoVant7','descricaoVant8','descricaoVant9','descricaoVant10'});
    obj.dataLink13:setName("dataLink13");

    obj.dataLink14 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink14:setParent(obj);
    obj.dataLink14:setFields({'nomeVant','nomeVant2','nomeVant3','nomeVant4','nomeVant5','nomeVant6','nomeVant7',
    'nomeVant8','nomeVant9','nomeVant10','custoVant','custoVant2','custoVant3','custoVant4','custoVant5','custoVant6',
    'custoVant7','custoVant8','custoVant9','custoVant10'});
    obj.dataLink14:setName("dataLink14");

    obj.dataLink15 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink15:setParent(obj);
    obj.dataLink15:setFields({'custoVant','custoVant2','custoVant3','custoVant4','custoVant5','custoVant6',
    'custoVant7','custoVant8','custoVant9','custoVant10','TotalVant'});
    obj.dataLink15:setName("dataLink15");

    obj.dataLink16 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink16:setParent(obj);
    obj.dataLink16:setFields({'nomeDesvant','nomeDesvant2','nomeDesvant3','nomeDesvant4','nomeDesvant5','nomeDesvant6','nomeDesvant7',
    'nomeDesvant8','nomeDesvant9','nomeDesvant10','descricaoDesvant','descricaoDesvant2','descricaoDesvant3',
    'descricaoDesvant4','descricaoDesvant5','descricaoDesvant6','descricaoDesvant7','descricaoDesvant8','descricaoDesvant9','descricaoDesvant10'});
    obj.dataLink16:setName("dataLink16");

    obj.dataLink17 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink17:setParent(obj);
    obj.dataLink17:setFields({'nomeDesvant','nomeDesvant2','nomeDesvant3','nomeDesvant4','nomeDesvant5','nomeDesvant6','nomeDesvant7',
    'nomeDesvant8','nomeDesvant9','nomeDesvant10','custoDesvant','custoDesvant2','custoDesvant3','custoDesvant4',
    'custoDesvant5','custoDesvant6','custoDesvant7','custoDesvant8','custoDesvant9','custoDesvant10'});
    obj.dataLink17:setName("dataLink17");

    obj.dataLink18 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink18:setParent(obj);
    obj.dataLink18:setFields({'custoDesvant','custoDesvant2','custoDesvant3','custoDesvant4','custoDesvant5','custoDesvant6',
    'custoDesvant7','custoDesvant8','custoDesvant9','custoDesvant10','TotalDesvant'});
    obj.dataLink18:setName("dataLink18");

    obj.dataLink19 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink19:setParent(obj);
    obj.dataLink19:setFields({'level','resfisica','resmagica','destreza','forcafisica','forcamagica','inteligencia','TotalVant', 'TotalDesvant'});
    obj.dataLink19:setName("dataLink19");

    obj.dataLink20 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink20:setParent(obj);
    obj.dataLink20:setFields({});
    obj.dataLink20:setName("dataLink20");

    obj.dataLink21 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink21:setParent(obj);
    obj.dataLink21:setFields({'effect','effect2','effect3','effect4','effect5','effect6','effect7','effect8','effect9','effect10',
    'effect11','effect12','effect13','effect14','tipoefeito','tipoefeito2','tipoefeito3','tipoefeito4','tipoefeito5',
    'tipoefeito6','tipoefeito7','tipoefeito8','tipoefeito9','tipoefeito10','tipoefeito11','tipoefeito12','tipoefeito13',
    'tipoefeito14','resfisica','resmagica','destreza','forcafisica','forcamagica','inteligencia','level','bonusRM',
    'bonusINT','bonusRF','bonusDES','bonusFM','bonusFF'});
    obj.dataLink21:setName("dataLink21");

    obj.dataLink22 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink22:setParent(obj);
    obj.dataLink22:setFields({'customagia','inteligencia','forcamagica','resmagica','bonusRM','bonusINT','bonusFM'});
    obj.dataLink22:setName("dataLink22");

    obj.dataLink23 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink23:setParent(obj);
    obj.dataLink23:setFields({'tipoefeito','tipoefeito2','tipoefeito3','tipoefeito4','tipoefeito5','tipoefeito6','tipoefeito7',
    'tipoefeito8','tipoefeito9','tipoefeito10','tipoefeito11','tipoefeito12','tipoefeito13','tipoefeito14','resfisica',
    'resmagica','destreza','forcafisica','forcamagica','inteligencia','level','bonusRM','bonusINT','bonusRF','bonusDES',
    'bonusFM','bonusFF','duracao','duracao2','duracao3','duracao4','duracao5','duracao6','duracao7',
    'duracao8','duracao9','duracao10','duracao11','duracao12','duracao13','duracao14'});
    obj.dataLink23:setName("dataLink23");

    obj._e_event0 = obj.button1:addEventListener("onClick",
        function (_)
            local dificuldade = sheet.dificuldadeFF
                                    		if dificuldade == 'Fácil' then
                                    			dificuldade = 10
                                    		elseif dificuldade == 'Médio' then
                                    			dificuldade = 15
                                    		elseif dificuldade == 'Difícil' then
                                    			dificuldade = 20
                                    		elseif dificuldade == 'Muito Difícil' then
                                    			dificuldade = 25
                                    		elseif dificuldade == 'Heroico' then
                                    			dificuldade = 30
                                    		else
                                    			dificuldade = 0
                                    		end
                                    		
                                    		rolagem = rrpg.interpretarRolagem("1d20"):concatenar(sheet.totalFF);
                                    		local mesaDoPersonagem = rrpg.getMesaDe(sheet);
                                    		mesaDoPersonagem.chat:rolarDados(rolagem, "Teste Força Física",
                                    		function (rolado)
                                                                                  
            
                                                    if rolado.resultado >= dificuldade then
                                                            mesaDoPersonagem.chat:enviarMensagem(" SUCESSO!  Eu tirei " .. rolado.resultado);
                                                    else
                                                            mesaDoPersonagem.chat:enviarMensagem("...falhei... tirei " .. rolado.resultado);
                                                    end;                                        
            
                                            end);
        end, obj);

    obj._e_event1 = obj.button2:addEventListener("onClick",
        function (_)
            local dificuldade = sheet.dificuldadeFM
                                    		if dificuldade == 'Fácil' then
                                    			dificuldade = 10
                                    		elseif dificuldade == 'Médio' then
                                    			dificuldade = 15
                                    		elseif dificuldade == 'Difícil' then
                                    			dificuldade = 20
                                    		elseif dificuldade == 'Muito Difícil' then
                                    			dificuldade = 25
                                    		elseif dificuldade == 'Heroico' then
                                    			dificuldade = 30
                                    		else
                                    			dificuldade = 0
                                    		end
                                    		
                                    		rolagem = rrpg.interpretarRolagem("1d20"):concatenar(sheet.totalFM);
                                    		local mesaDoPersonagem = rrpg.getMesaDe(sheet);
                                    		mesaDoPersonagem.chat:rolarDados(rolagem, "Teste Força Mágica",
                                    		function (rolado)
                                                                                  
            
                                                    if rolado.resultado >= dificuldade then
                                                            mesaDoPersonagem.chat:enviarMensagem(" SUCESSO!  Eu tirei " .. rolado.resultado);
                                                    else
                                                            mesaDoPersonagem.chat:enviarMensagem("...falhei... tirei " .. rolado.resultado);
                                                    end;                                        
            
                                            end);
        end, obj);

    obj._e_event2 = obj.button3:addEventListener("onClick",
        function (_)
            local dificuldade = sheet.dificuldadeDES
                                    		if dificuldade == 'Fácil' then
                                    			dificuldade = 10
                                    		elseif dificuldade == 'Médio' then
                                    			dificuldade = 15
                                    		elseif dificuldade == 'Difícil' then
                                    			dificuldade = 20
                                    		elseif dificuldade == 'Muito Difícil' then
                                    			dificuldade = 25
                                    		elseif dificuldade == 'Heroico' then
                                    			dificuldade = 30
                                    		else
                                    			dificuldade = 0
                                    		end
                                    		
                                    		rolagem = rrpg.interpretarRolagem("1d20"):concatenar(sheet.totalDES);
                                    		local mesaDoPersonagem = rrpg.getMesaDe(sheet);
                                    		mesaDoPersonagem.chat:rolarDados(rolagem, "Teste Destreza",
                                    		function (rolado)
                                                                                  
            
                                                    if rolado.resultado >= dificuldade then
                                                            mesaDoPersonagem.chat:enviarMensagem(" SUCESSO!  Eu tirei " .. rolado.resultado);
                                                    else
                                                            mesaDoPersonagem.chat:enviarMensagem("...falhei... tirei " .. rolado.resultado);
                                                    end;                                        
            
                                            end);
        end, obj);

    obj._e_event3 = obj.button4:addEventListener("onClick",
        function (_)
            local dificuldade = sheet.dificuldadeINT
                                    		if dificuldade == 'Fácil' then
                                    			dificuldade = 10
                                    		elseif dificuldade == 'Médio' then
                                    			dificuldade = 15
                                    		elseif dificuldade == 'Difícil' then
                                    			dificuldade = 20
                                    		elseif dificuldade == 'Muito Difícil' then
                                    			dificuldade = 25
                                    		elseif dificuldade == 'Heroico' then
                                    			dificuldade = 30
                                    		else
                                    			dificuldade = 0
                                    		end
                                    		
                                    		rolagem = rrpg.interpretarRolagem("1d20"):concatenar(sheet.totalINT);
                                    		local mesaDoPersonagem = rrpg.getMesaDe(sheet);
                                    		mesaDoPersonagem.chat:rolarDados(rolagem, "Teste Inteligência",
                                    		function (rolado)
                                                                                  
            
                                                    if rolado.resultado >= dificuldade then
                                                            mesaDoPersonagem.chat:enviarMensagem(" SUCESSO!  Eu tirei " .. rolado.resultado);
                                                    else
                                                            mesaDoPersonagem.chat:enviarMensagem("...falhei... tirei " .. rolado.resultado);
                                                    end;                                        
            
                                            end);
        end, obj);

    obj._e_event4 = obj.button5:addEventListener("onClick",
        function (_)
            local dificuldade = sheet.dificuldadeRF
                                    		if dificuldade == 'Fácil' then
                                    			dificuldade = 10
                                    		elseif dificuldade == 'Médio' then
                                    			dificuldade = 15
                                    		elseif dificuldade == 'Difícil' then
                                    			dificuldade = 20
                                    		elseif dificuldade == 'Muito Difícil' then
                                    			dificuldade = 25
                                    		elseif dificuldade == 'Heroico' then
                                    			dificuldade = 30
                                    		else
                                    			dificuldade = 0
                                    		end
                                    		
                                    		rolagem = rrpg.interpretarRolagem("1d20"):concatenar(sheet.totalRF);
                                    		local mesaDoPersonagem = rrpg.getMesaDe(sheet);
                                    		mesaDoPersonagem.chat:rolarDados(rolagem, "Teste Resistência Física",
                                    		function (rolado)
                                                                                  
            
                                                    if rolado.resultado >= dificuldade then
                                                            mesaDoPersonagem.chat:enviarMensagem(" SUCESSO!  Eu tirei " .. rolado.resultado);
                                                    else
                                                            mesaDoPersonagem.chat:enviarMensagem("...falhei... tirei " .. rolado.resultado);
                                                    end;                                        
            
                                            end);
        end, obj);

    obj._e_event5 = obj.button6:addEventListener("onClick",
        function (_)
            local dificuldade = sheet.dificuldadeRM
                                    		if dificuldade == 'Fácil' then
                                    			dificuldade = 10
                                    		elseif dificuldade == 'Médio' then
                                    			dificuldade = 15
                                    		elseif dificuldade == 'Difícil' then
                                    			dificuldade = 20
                                    		elseif dificuldade == 'Muito Difícil' then
                                    			dificuldade = 25
                                    		elseif dificuldade == 'Heroico' then
                                    			dificuldade = 30
                                    		else
                                    			dificuldade = 0
                                    		end
                                    		
                                    		rolagem = rrpg.interpretarRolagem("1d20"):concatenar(sheet.totalRM);
                                    		local mesaDoPersonagem = rrpg.getMesaDe(sheet);
                                    		mesaDoPersonagem.chat:rolarDados(rolagem, "Teste Resistência Mágica",
                                    		function (rolado)
                                                                                  
            
                                                    if rolado.resultado >= dificuldade then
                                                            mesaDoPersonagem.chat:enviarMensagem(" SUCESSO!  Eu tirei " .. rolado.resultado);
                                                    else
                                                            mesaDoPersonagem.chat:enviarMensagem("...falhei... tirei " .. rolado.resultado);
                                                    end;                                        
            
                                            end);
        end, obj);

    obj._e_event6 = obj.button7:addEventListener("onClick",
        function (_)
            rolagem = rrpg.interpretarRolagem("1d20"):concatenar(sheet.totalIniciativa);
                                        
                                            local mesaDoPersonagem = rrpg.getMesaDe(sheet);
                                            mesaDoPersonagem.chat:rolarDados(rolagem, "Iniciativa");
        end, obj);

    obj._e_event7 = obj.button8:addEventListener("onClick",
        function (_)
            rolagem = rrpg.interpretarRolagem("1d20"):concatenar(sheet.totalAcerto);
                                        
                                            local mesaDoPersonagem = rrpg.getMesaDe(sheet);
                                            mesaDoPersonagem.chat:rolarDados(rolagem, "Acerto");
        end, obj);

    obj._e_event8 = obj.button9:addEventListener("onClick",
        function (_)
            sheet.result1 = (tonumber(sheet.Calc1) or 0) + (tonumber(sheet.Calc2) or 0)
        end, obj);

    obj._e_event9 = obj.button10:addEventListener("onClick",
        function (_)
            rolagem = rrpg.interpretarRolagem("1d20"):concatenar(sheet.totalAtkFisico);
                                        
                                            local mesaDoPersonagem = rrpg.getMesaDe(sheet);
                                            mesaDoPersonagem.chat:rolarDados(rolagem, "Dano Ataque Fisico");
        end, obj);

    obj._e_event10 = obj.button11:addEventListener("onClick",
        function (_)
            sheet.result2 = (tonumber(sheet.Calc3) or 0) - (tonumber(sheet.Calc4) or 0)
        end, obj);

    obj._e_event11 = obj.button12:addEventListener("onClick",
        function (_)
            rolagem = rrpg.interpretarRolagem("1d20"):concatenar(sheet.totalAtkMagico);
                                        
                                            local mesaDoPersonagem = rrpg.getMesaDe(sheet);
                                            mesaDoPersonagem.chat:rolarDados(rolagem, "Dano Ataque Magico");
        end, obj);

    obj._e_event12 = obj.button13:addEventListener("onClick",
        function (_)
            local qtd_HPPotion = (tonumber(sheet.qtd_HPPotion) or 0) + 1
                                        	sheet.qtd_HPPotion = qtd_HPPotion 
                                        	sheet.Custojewel = (tonumber(sheet.Custojewel) or 0) + 350
        end, obj);

    obj._e_event13 = obj.button14:addEventListener("onClick",
        function (_)
            local qtd_HPPotion = (tonumber(sheet.qtd_HPPotion) or 0) - 1
                                        	if  qtd_HPPotion > 0 then
                                        		sheet.qtd_HPPotion = qtd_HPPotion
                                        	else
                                        		sheet.qtd_HPPotion = 0 
                                        	end
        end, obj);

    obj._e_event14 = obj.button15:addEventListener("onClick",
        function (_)
            local qtd_HPPotion = (tonumber(sheet.qtd_HPMPotion) or 0) + 1
                                        	sheet.qtd_HPMPotion = qtd_HPPotion
                                        	sheet.Custojewel = (tonumber(sheet.Custojewel) or 0) + 1750
        end, obj);

    obj._e_event15 = obj.button16:addEventListener("onClick",
        function (_)
            local qtd_HPPotion = (tonumber(sheet.qtd_HPMPotion) or 0) - 1
                                        	if  qtd_HPPotion > 0 then
                                        		sheet.qtd_HPMPotion = qtd_HPPotion
                                        	else
                                        		sheet.qtd_HPMPotion = 0 
                                        	end
        end, obj);

    obj._e_event16 = obj.button17:addEventListener("onClick",
        function (_)
            local qtd_HPPotion = (tonumber(sheet.qtd_HPBPotion) or 0) + 1
                                        	sheet.qtd_HPBPotion = qtd_HPPotion 
                                        	sheet.Custojewel = (tonumber(sheet.Custojewel) or 0) + 3500
        end, obj);

    obj._e_event17 = obj.button18:addEventListener("onClick",
        function (_)
            local qtd_HPPotion = (tonumber(sheet.qtd_HPBPotion) or 0) - 1
                                        	if  qtd_HPPotion > 0 then
                                        		sheet.qtd_HPBPotion = qtd_HPPotion
                                        	else
                                        		sheet.qtd_HPBPotion = 0 
                                        	end
        end, obj);

    obj._e_event18 = obj.button19:addEventListener("onClick",
        function (_)
            local qtd_ManaPotion = (tonumber(sheet.qtd_ManaPotion) or 0) + 1
                                        	sheet.qtd_ManaPotion = qtd_ManaPotion 
                                        	sheet.Custojewel = (tonumber(sheet.Custojewel) or 0) + 350
        end, obj);

    obj._e_event19 = obj.button20:addEventListener("onClick",
        function (_)
            local qtd_ManaPotion = (tonumber(sheet.qtd_ManaPotion) or 0) - 1
                                        	if  qtd_ManaPotion > 0 then
                                        		sheet.qtd_ManaPotion = qtd_ManaPotion
                                        	else
                                        		sheet.qtd_ManaPotion = 0 
                                        	end
        end, obj);

    obj._e_event20 = obj.button21:addEventListener("onClick",
        function (_)
            local qtd_ManaPotion = (tonumber(sheet.qtd_ManaMPotion) or 0) + 1
                                        	sheet.qtd_ManaMPotion = qtd_ManaPotion 
                                        	sheet.Custojewel = (tonumber(sheet.Custojewel) or 0) + 1750
        end, obj);

    obj._e_event21 = obj.button22:addEventListener("onClick",
        function (_)
            local qtd_ManaPotion = (tonumber(sheet.qtd_ManaMPotion) or 0) - 1
                                        	if  qtd_ManaPotion > 0 then
                                        		sheet.qtd_ManaMPotion = qtd_ManaPotion
                                        	else
                                        		sheet.qtd_ManaMPotion = 0 
                                        	end
        end, obj);

    obj._e_event22 = obj.button23:addEventListener("onClick",
        function (_)
            local qtd_ManaPotion = (tonumber(sheet.qtd_ManaBPotion) or 0) + 1
                                        	sheet.qtd_ManaBPotion = qtd_ManaPotion 
                                        	sheet.jewel = (tonumber(sheet.jewel) or 0) + 3500
        end, obj);

    obj._e_event23 = obj.button24:addEventListener("onClick",
        function (_)
            local qtd_ManaPotion = (tonumber(sheet.qtd_ManaBPotion) or 0) - 1
                                        	if  qtd_ManaPotion > 0 then
                                        		sheet.qtd_ManaBPotion = qtd_ManaPotion
                                        	else
                                        		sheet.qtd_ManaBPotion = 0 
                                        	end
        end, obj);

    obj._e_event24 = obj.button25:addEventListener("onClick",
        function (_)
            local qtd_AntiPotion = (tonumber(sheet.qtd_AntiPotion) or 0) + 1
                                        	sheet.qtd_AntiPotion = qtd_AntiPotion 
                                        	sheet.Custojewel = (tonumber(sheet.Custojewel) or 0) + 750
        end, obj);

    obj._e_event25 = obj.button26:addEventListener("onClick",
        function (_)
            local qtd_AntiPotion = (tonumber(sheet.qtd_AntiPotion) or 0) - 1
                                        	if  qtd_AntiPotion > 0 then
                                        		sheet.qtd_AntiPotion = qtd_AntiPotion
                                        	else
                                        		sheet.qtd_AntiPotion = 0 
                                        	end
        end, obj);

    obj._e_event26 = obj.button27:addEventListener("onClick",
        function (_)
            local qtd_ParaPotion = (tonumber(sheet.qtd_ParaPotion) or 0) + 1
                                        	sheet.qtd_ParaPotion = qtd_ParaPotion 
                                        	sheet.Custojewel = (tonumber(sheet.Custojewel) or 0) + 750
        end, obj);

    obj._e_event27 = obj.button28:addEventListener("onClick",
        function (_)
            local qtd_ParaPotion = (tonumber(sheet.qtd_ParaPotion) or 0) - 1
                                        	if  qtd_ParaPotion > 0 then
                                        		sheet.qtd_ParaPotion = qtd_ParaPotion
                                        	else
                                        		sheet.qtd_ParaPotion = 0 
                                        	end
        end, obj);

    obj._e_event28 = obj.button29:addEventListener("onClick",
        function (_)
            local qtd_BurnPotion = (tonumber(sheet.qtd_BurnPotion) or 0) + 1
                                        	sheet.qtd_BurnPotion = qtd_BurnPotion 
                                        	sheet.Custojewel = (tonumber(sheet.Custojewel) or 0) + 750
        end, obj);

    obj._e_event29 = obj.button30:addEventListener("onClick",
        function (_)
            local qtd_BurnPotion = (tonumber(sheet.qtd_BurnPotion) or 0) - 1
                                        	if  qtd_BurnPotion > 0 then
                                        		sheet.qtd_BurnPotion = qtd_BurnPotion
                                        	else
                                        		sheet.qtd_BurnPotion = 0 
                                        	end
        end, obj);

    obj._e_event30 = obj.button31:addEventListener("onClick",
        function (_)
            local qtd_munPistola = (tonumber(sheet.qtd_qtd_munPistola) or 0) + 6
                                        	sheet.qtd_munPistola = qtd_munPistola 
                                        	sheet.Custojewel = (tonumber(sheet.Custojewel) or 0) + 350
        end, obj);

    obj._e_event31 = obj.button32:addEventListener("onClick",
        function (_)
            local qtd_munPistola = (tonumber(sheet.qtd_munPistola) or 0) - 1
                                        	if  qtd_munPistola > 0 then
                                        		sheet.qtd_munPistola = qtd_munPistola
                                        	else
                                        		sheet.qtd_munPistola = 0 
                                        	end
        end, obj);

    obj._e_event32 = obj.button33:addEventListener("onClick",
        function (_)
            local qtd_munMagnum = (tonumber(sheet.qtd_munMagnum) or 0) + 6
                                        	sheet.qtd_munMagnum = qtd_munMagnum 
                                        	sheet.Custojewel = (tonumber(sheet.Custojewel) or 0) + 700
        end, obj);

    obj._e_event33 = obj.button34:addEventListener("onClick",
        function (_)
            local qtd_munMagnum = (tonumber(sheet.qtd_munMagnum) or 0) - 1
                                        	if  qtd_munMagnum > 0 then
                                        		sheet.qtd_munMagnum = qtd_munMagnum
                                        	else
                                        		sheet.qtd_munMagnum = 0 
                                        	end
        end, obj);

    obj._e_event34 = obj.button35:addEventListener("onClick",
        function (_)
            local qtd_mun12 = (tonumber(sheet.qtd_mun12) or 0) + 8
                                        	sheet.qtd_mun12 = qtd_mun12 
                                        	sheet.Custojewel = (tonumber(sheet.Custojewel) or 0) + 1050
        end, obj);

    obj._e_event35 = obj.button36:addEventListener("onClick",
        function (_)
            local qtd_mun12 = (tonumber(sheet.qtd_mun12) or 0) - 1
                                        	if  qtd_mun12 > 0 then
                                        		sheet.qtd_mun12 = qtd_mun12
                                        	else
                                        		sheet.qtd_mun12 = 0 
                                        	end
        end, obj);

    obj._e_event36 = obj.button37:addEventListener("onClick",
        function (_)
            require("dialogs.lua"); 
                                        	Dialogs.confirmOkCancel("Deseja Adicionar ?",
                    							function (confirmado)
                            					if confirmado then
                                    				-- usuario escolheu OK
                                    				local ganho = (tonumber(sheet.addJewel) or 0)
                                    				local add = (tonumber(sheet.jewel) or 0) + (tonumber(sheet.addJewel) or 0) 
                                    				local minhaMesa = rrpg.getMesaDe(sheet);
                                    				local chat = minhaMesa.chat;                       
                                    				chat:enviarMensagem("[§K23] AEHOO :hue: :hue: :hue: Ganhei [§K9][§B]"..ganho.."[§B][§K23] Jewels !");
                                    				sheet.jewel = add
                                    			else
                                    				-- usuário escolheu CANCEL
                                    				showMessage("Okie Dokie")
                                    			end;
                    							end);
        end, obj);

    obj._e_event37 = obj.button38:addEventListener("onClick",
        function (_)
            require("dialogs.lua"); 
                                        	Dialogs.confirmOkCancel("TEM REALMENTE CERTEZA ?",
                                        	function (confirmado)
                            					if confirmado then
                                        			Dialogs.confirmOkCancel("TEM MESMO ?",
                    									function (confirmado)
                            								if confirmado then
                                    							-- usuario escolheu OK
                                    							local perda = (tonumber(sheet.addJewel) or 0)
                                    							local remove = (tonumber(sheet.jewel) or 0) - perda 
                                    							local minhaMesa = rrpg.getMesaDe(sheet);
                                    							local chat = minhaMesa.chat;                       
                                    							chat:enviarMensagem("[§K4] :okay: Perdi [§K1][§B]"..perda.."[§B][§K23] Jewels !");
                                    							sheet.jewel = remove
                                    							
                                    						else
                                    							-- usuário escolheu CANCEL
                                    							showMessage("Okie Dokie")
                                    						end;
                                    					end);
                                    			else
                                    				-- usuário escolheu CANCEL
                                    				showMessage("Okie Dokie")
                                    			end;	
                                				end);
        end, obj);

    obj._e_event38 = obj.button39:addEventListener("onClick",
        function (_)
            require("dialogs.lua"); 
                                        	Dialogs.confirmOkCancel("Tem certeza de fazer a compra ?",
                    							function (confirmado)
                            					if confirmado then
                                    				-- usuario escolheu OK
                                    				jewel = (tonumber(sheet.jewel) or 0) - (tonumber(sheet.Custojewel) or 0)
                                    				if jewel >= 0 then
                                    					sheet.jewel = jewel
                                    					local minhaMesa = rrpg.getMesaDe(sheet);
                                    					local chat = minhaMesa.chat;                       
                                    					chat:enviarMensagem("[§K9]Comprei Na Loja ! :like: Gastei [§B][§K1]"..sheet.Custojewel.."[§B] Jewels");
                                    					sheet.Custojewel = 0
                                    				else
                                    					showMessage("Dinheiro Insuficiente")
                                    					local minhaMesa = rrpg.getMesaDe(sheet);
                                    					local chat = minhaMesa.chat;                       
                                    					chat:enviarMensagem("[§K4] Estou na Loja ! Tenho grana insuficiente :poop: ");
                                    					                        					
                                    				end;
            
                            					else
                                    				-- usuário escolheu CANCEL
                                    				showMessage("Okie Dokie")
                                    			end;
                    							end);
        end, obj);

    obj._e_event39 = obj.button40:addEventListener("onClick",
        function (_)
            require("dialogs.lua"); 
                                        	Dialogs.confirmOkCancel("Deseja Zerar a Dívida ?",
                    							function (confirmado)
                            					if confirmado then
                                    				-- usuario escolheu OK
                                    				sheet.Custojewel = 0
                                    				local minhaMesa = rrpg.getMesaDe(sheet);
                                    				local chat = minhaMesa.chat;                       
                                    				chat:enviarMensagem("Estou na Loja ! [§B]Zerei[§B] a parcela");
                                    			else
                                    				-- usuário escolheu CANCEL
                                    				showMessage("Okie Dokie")
                                    			end;
                    							end);
        end, obj);

    obj._e_event40 = obj.dataLink1:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local bonusRACA = sheet.raca
                           if bonusRACA == 'Humanos' then
                           		sheet.bonusRF = 0
                           		sheet.bonusDES = 0
                           		sheet.bonusRM = 1
                           		sheet.bonusINT = 1
                           		sheet.bonusFF = 0
                           		sheet.bonusFM = 0
                           elseif bonusRACA == 'Demônios' then
                           		sheet.bonusRF = 0
                           		sheet.bonusDES = 0
                           		sheet.bonusRM = 1
                           		sheet.bonusINT = 0
                           		sheet.bonusFF = 0
                           		sheet.bonusFM = 1
                           	elseif bonusRACA == 'Exceeds' then	
                          		sheet.bonusRF = 0
                           		sheet.bonusDES = 1
                           		sheet.bonusRM = 0
                           		sheet.bonusINT = 1
                           		sheet.bonusFF = 0
                           		sheet.bonusFM = 0
                           	elseif bonusRACA == 'Outros' then
                           		sheet.bonusRF = 0
                           		sheet.bonusDES = 0
                           		sheet.bonusRM = 0
                           		sheet.bonusINT = 1
                           		sheet.bonusFF = 0
                           		sheet.bonusFM = 1		
                           else
                           		sheet.bonusRF = 0
                           		sheet.bonusDES = 0
                           		sheet.bonusRM = 0
                           		sheet.bonusINT = 0
                           		sheet.bonusFF = 0
                           		sheet.bonusFM = 0
                           end
        end, obj);

    obj._e_event41 = obj.dataLink2:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            sheet.totalRF = (tonumber(sheet.resfisica) or 0) + (tonumber(sheet.bonusRF) or 0) + (tonumber(sheet.OBRF) or 0)
            	        	sheet.totalDES = (tonumber(sheet.destreza) or 0) + (tonumber(sheet.bonusDES) or 0) + (tonumber(sheet.OBDES) or 0)
            	        	sheet.totalINT = (tonumber(sheet.inteligencia) or 0) + (tonumber(sheet.bonusINT) or 0) + (tonumber(sheet.OBINT) or 0)
            	        	sheet.totalRM = (tonumber(sheet.resmagica) or 0) + (tonumber(sheet.bonusRM) or 0) + (tonumber(sheet.OBRM) or 0)
            	        	sheet.totalFF = (tonumber(sheet.forcafisica) or 0) + (tonumber(sheet.bonusFF) or 0) + (tonumber(sheet.OBFF) or 0)
            				sheet.totalFM = (tonumber(sheet.forcamagica) or 0) + (tonumber(sheet.bonusFM) or 0) + (tonumber(sheet.OBFM) or 0)
        end, obj);

    obj._e_event42 = obj.dataLink3:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            sheet.totalIniciativa = (tonumber(sheet.bonusIniciativa) or 0) + (tonumber(sheet.totalDES) or 0) + (tonumber(sheet.totalINT) or 0)
        end, obj);

    obj._e_event43 = obj.dataLink4:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            sheet.totalAcerto = (tonumber(sheet.bonusAcerto) or 0) + (tonumber(sheet.totalDES) or 0)
        end, obj);

    obj._e_event44 = obj.dataLink5:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            sheet.totalAtkFisico = (tonumber(sheet.bonusAtkFisico) or 0) + (tonumber(sheet.totalFF) or 0)
        end, obj);

    obj._e_event45 = obj.dataLink6:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            sheet.totalAtkMagico = (tonumber(sheet.bonusAtkMagico) or 0) + (tonumber(sheet.totalFM) or 0)
        end, obj);

    obj._e_event46 = obj.dataLink7:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            sheet.caf = (((tonumber(sheet.resfisica) or 0) + 
                                          (tonumber(sheet.bonusRF) or 0) + 
                                          (tonumber(sheet.destreza) or 0)+
                                        (tonumber(sheet.bonusDES) or 0))/2)+
                                        10;
                           x = sheet.caf
                           sheet.caf = math.floor(x)
        end, obj);

    obj._e_event47 = obj.dataLink8:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            sheet.cam = (((tonumber(sheet.resmagica) or 0) + 
                                          (tonumber(sheet.bonusRM) or 0) + 
                                          (tonumber(sheet.inteligencia) or 0)+
                                        (tonumber(sheet.bonusINT) or 0))/2)+
                                        10;
                           x = sheet.cam
                           sheet.cam = math.floor(x)
        end, obj);

    obj._e_event48 = obj.dataLink9:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            sheet.totalCAF = (tonumber(sheet.bonusCAF) or 0) + (tonumber(sheet.caf) or 0)
        end, obj);

    obj._e_event49 = obj.dataLink10:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            sheet.totalCAM = (tonumber(sheet.bonusCAM) or 0) + (tonumber(sheet.cam) or 0)
        end, obj);

    obj._e_event50 = obj.dataLink11:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            sheet.hp = ((tonumber(sheet.resfisica) or 0) +
                           				(tonumber(sheet.bonusRF) or 0)) * 10
        end, obj);

    obj._e_event51 = obj.dataLink12:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            sheet.mana = ((tonumber(sheet.resmagica) or 0)+(tonumber(sheet.bonusRM) or 0)) * 10
        end, obj);

    obj._e_event52 = obj.dataLink13:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local VI = sheet.nomeVant
                    local VII = sheet.nomeVant2
                    local VIII = sheet.nomeVant3
                    local VIV = sheet.nomeVant4
                    local VV = sheet.nomeVant5
                    local VVI = sheet.nomeVant6
                    local VVII = sheet.nomeVant7
                    local VVIII = sheet.nomeVant8
                    local VIX = sheet.nomeVant9
                    local VX = sheet.nomeVant10
            
            
                    function gerarDescricao(x) 
                        if x == 'Acerto' then
                            y = 'Você consegue acertar de uma maneira mais precisa para causar mais dano em combate corpo a corpo'
                            return y
                        elseif x == 'Alma Gêmea' then
                            y = 'O personagem possui uma ligação de outra encarnação com outra pessoa desse mundo, só que não sabe.' 
                            return y
                        elseif x == 'Ambidestria' then
                            y = 'O personagem pode manusear armas e instrumentos tanto com a mão direita quanto com a esquerda, com igual eficiência.' 
                            return y
                        elseif  x == 'Ambiente Favorável 1' then   
                            y = 'O mago se torna mais poderoso durante um período raro ou situação rara em particular'
                            return y
                        elseif  x == 'Ambiente Favorável 2' then   
                            y = 'O mago se torna mais poderoso durante um período ou situação incomum em particular'
                            return y
                        elseif  x == 'Ambiente Favorável 3' then   
                            y = 'O mago se torna mais poderoso durante um período ou situação comum em particular'
                            return y
                        elseif  x == 'Amor Polígamo' then   
                            y = 'Você está envolvido em um relacionamento que envolve mais de uma pessoa, tendo harém ou fazendo parte de um.'
                            return y
                        elseif  x == 'Amor Verdadeiro' then   
                            y = 'Você ama alguém do fundo do seu coração, e não importa o que ou quem tente interferir neste relacionamento, nada abalará o amor mútuo entre vocês.'
                            return y 
                        elseif  x == 'Aparência Inofensiva' then   
                            y = 'Por algum motivo você não parece perigoso. Talvez pareça muito pequeno, muito fraco, uma menininha segurando um pirulito...'
                            return y
                        elseif  x == 'Arma de Fogo 1' then   
                            y = 'O Personagem possui revólveres ou pistolas, rifle ou arma semi-automática dentro do limite da lei.'
                            return y   
                        elseif  x == 'Arma de Fogo 2' then   
                            y = 'O Personagem possui submetralhadoras, carabinas calibre 12, armas automáticas ou reservadas.'
                            return y
                        elseif  x == 'Arma de Fogo 3' then   
                            y = 'O Personagem possui metralhadoras pesadas, outras armas militares, armas pesadas.'
                            return y    
                        elseif  x == 'Bom Senso' then   
                            y = 'Todas as vezes que um Personagem que tenha bom senso for fazer alguma coisa obviamente estúpida, o Mestre pode dizer a ele que o que ele     pretende fazer é uma burrice.'
                            return y
                        elseif x == 'Conhecimentos Arcanos' then   
                            y = 'Seja por estudo, experiência ou por trabalho seu personagem tem um vasto conhecimento sobre magias, feitiços e outros similares.'
                            return y    
                        elseif x == 'Contatos e Aliados 1' then   
                            y = 'O Personagem tem um aliado importante.'
                            return y    
                        elseif x == 'Contatos e Aliados 2' then
                            y = 'O Personagem tem dois aliados importantes.'
                            return y     
                        elseif x == 'Contatos e Aliados 3' then
                            y = 'O Personagem tem três aliados importantes.'
                            return y
                        elseif x == 'Contatos e Aliados 4' then
                            y = 'O Personagem tem quatro aliados importantes.'
                            return y
                        elseif x == 'Coração de Pedra' then
                            y = 'Você é frio e calculista e consegue manter sua mente equilibrada, dificilmente sendo dominado ou convencido a fazer algo.'
                            return y
                        elseif x == 'Detectar Magia 1' then
                            y = 'O personagem é capaz de detectar resíduos místicos em objetos, descobrindo se tais materiais, locais ou criaturas são ou não naturais.'
                            return y 
                        elseif x == 'Detectar Magia 2' then
                            y = 'Além do Detectar Magia 1, pode identificar claramente a direção, distância e intensidade do poder mágico detectado.'
                            return y 
                        elseif x == 'Dívida de Gratidão 1' then
                            y ='Alguém lhe deve alguns favores menores e os atenderá somente se isto não vier a prejudicá-lo sob circunstância nenhuma.'
                            return y
                        elseif x == 'Dívida de Gratidão 2' then
                            y ='A dívida lhe vale favores maiores e a pessoa que lhe deve irá ajudar mesmo que isso possa vir a colocá-la em situações perigosas.'
                            return y
                        elseif x == 'Dívida de Gratidão 3' then
                            y =' Alguém lhe deve a vida, e fará tudo que estiver a seu alcance para ajudá lo, não importam as conseqüências.'
                            return y
                        elseif x == 'Empatia com Animais' then
                            y = 'Os animais não vêem ameaça algum no personagem, chegando até a verem-no como um semelhante.'
                            return y
                        elseif x == 'Fama 1' then
                            y = 'Você é reconhecido em um bairro'
                            return y
                        elseif x == 'Fama 2' then
                            y = 'Você é reconhecido em alguns bairros ou em uma pequena cidade ou vila.'
                            return y
                        elseif x == 'Fama 3' then
                            y = 'Você é reconhecido em algumas cidades ou uma Metrópole.'
                            return y
                        elseif x == 'Fama 4' then
                            y = 'Você é reconhecido em algumas metrópoles ou um Reino inteiro.'
                            return y
                        elseif x == 'Família ou Mentor Honrado' then
                            y = 'O nome de sua família é famoso, sendo conhecido e considerado importante pela população, ou então seu mentor é um antigo herói cuja reputação  e nobreza são admiradas.'
                            return y
                        elseif x == 'Identidade Secreta' then
                            y = 'O Personagem possui uma identidade totalmente falsa.'
                            return y
                        elseif x == 'Improvisador 1' then
                            y = 'Você é capaz arquitetar pequenas coisas e ficar ciente dos resultados que elas podem causar.'
                            return y
                        elseif x == 'Improvisador 2' then
                            y = 'O Personagem pode resolver problemas que exijam algum material específico que ele não possui, utilizando em seu lugar que ele adaptou'
                            return y
                        elseif x == 'Influência Política/Burocrática 1' then
                            y = 'O personagem influencia um bairro, sindicato ou estação local.'
                            return y
                        elseif x == 'Influência Política/Burocrática 2' then
                            y = 'O personagem influencia alguns bairros, uma cidade pequena.'
                            return y
                        elseif x == 'Influência Política/Burocrática 3' then
                            y = 'O personagem influencia algumas cidades pequenas, uma metrópole.'
                            return y
                        elseif x == 'Influência Política/Burocrática 4' then
                            y = 'O personagem influencia algumas metrópoles, um estado.'
                            return y
                        elseif x == 'Influência Política/Burocrática 5' then
                            y = 'O personagem influencia dois ou três estados, um pequeno pais.'
                            return y
                        elseif x == 'Influência Jurisprudente 1' then
                            y = 'O personagem influencia um bairro, sindicato ou estação local.'
                            return y
                        elseif x == 'Influência Jurisprudente 2' then
                            y = 'O personagem influencia alguns bairros, uma cidade pequena.'
                            return y
                        elseif x == 'Influência Jurisprudente 3' then
                            y = 'O personagem influencia algumas cidades pequenas, uma metrópole.'
                            return y
                        elseif x == 'Influência Jurisprudente 4' then
                            y = 'O personagem influencia algumas metrópoles, um estado.'
                            return y
                        elseif x == 'Influência Jurisprudente 5' then
                            y = 'O personagem influencia dois ou três estados, um pequeno pais.'
                            return y    
                        elseif x == 'Influência Eclesiástica 1' then
                            y = 'O personagem influencia um bairro, sindicato ou estação local.'
                            return y
                        elseif x == 'Influência Eclesiástica 2' then
                            y = 'O personagem influencia alguns bairros, uma cidade pequena.'
                            return y
                        elseif x == 'Influência Eclesiástica 3' then
                            y = 'O personagem influencia algumas cidades pequenas, uma metrópole.'
                            return y
                        elseif x == 'Influência Eclesiástica 4' then
                            y = 'O personagem influencia algumas metrópoles, um estado.'
                            return y
                        elseif x == 'Influência Eclesiástica 5' then
                            y = 'O personagem influencia dois ou três estados, um pequeno pais.'
                            return y
                        elseif x == 'Influência Econômica 1' then
                            y = 'O personagem influencia um bairro, sindicato ou estação local.'
                            return y
                        elseif x == 'Influência Econômica 2' then
                            y = 'O personagem influencia alguns bairros, uma cidade pequena.'
                            return y
                        elseif x == 'Influência Econômica 3' then
                            y = 'O personagem influencia algumas cidades pequenas, uma metrópole.'
                            return y
                        elseif x == 'Influência Econômica 4' then
                            y = 'O personagem influencia algumas metrópoles, um estado.'
                            return y
                        elseif x == 'Influência Econômica 5' then
                            y = 'O personagem influencia dois ou três estados, um pequeno pais.'
                            return y    
                        elseif x == 'Influência Midiática 1' then
                            y = 'O personagem influencia um bairro, sindicato ou estação local.'
                            return y
                        elseif x == 'Influência Midiática 2' then
                            y = 'O personagem influencia alguns bairros, uma cidade pequena.'
                            return y
                        elseif x == 'Influência Midiática 3' then
                            y = 'O personagem influencia algumas cidades pequenas, uma metrópole.'
                            return y
                        elseif x == 'Influência Midiática 4' then
                            y = 'O personagem influencia algumas metrópoles, um estado.'
                            return y
                        elseif x == 'Influência Midiática 5' then
                            y = 'O personagem influencia dois ou três estados, um pequeno pais.'
                            return y
                        elseif x == 'Infravisão' then
                            y = ' O personagem possui uma visão especial, além da visão normal. Esta é a habilidade de enxergar no escuro através do calor dos corpos.'
                            return y
                        elseif x == 'Iniciativa Aprimorada' then
                            y = 'Você não pode ser surpreendido sempre tendo direito a rolar a iniciativa ou esquiva caso seja atado numa situação em que outros estariam      desprevenidos.'
                            return y
                        elseif x == 'Medicina' then
                            y = 'Você é um conhecedor do corpo de algumas raças, sabendo exatamente como fazer um curativo ou melhorar a eficácia de uma cura'
                            return y
                        elseif x == 'Patrono' then
                            y = 'Um patrono é alguém ou uma organização para qual o Personagem trabalha.'
                            return y
                        elseif x == 'Pechincheiro' then
                            y = 'Você é o cara que consegue obter descontos nos mercadores, sendo chato ou carismático. Você consegue pagar mais barato do que realmente vale.'
                            return y
                        elseif x == 'Pontos de HP Extras' then
                            y = ' Você tem Pontos de Vida adicionais, além daqueles já oferecidos por sua Resistência Física. Cada vez que compra esta vantagem, você recebe  mais 10 de HP.'
                            return y
                        elseif x == 'Pontos de Mana Extras' then
                            y = ' Você tem Pontos de Mana adicionais, além dqueles já oferecidos por sua Resistência Mágica. Cada vez que compra esta vantagem, você recebe    mais 10 de Mana.'
                            return y
                        elseif x == 'Precognição' then
                            y = 'Você possui uma percepção de eventos antes que eles, de fato, aconteçam, mas não é algo assimilado logicamente. É mais como um pressentimento, intuição.'
                            return y
                        elseif x == 'Resistência a Dor' then
                            y = 'O personagem possui alta resistência à dor, não importa quanto dano físico sofra, ele não sentirá os ferimentos com a mesma intensidade que as demais pessoas sentem'
                            return y
                        elseif x == 'Sentidos Aguçados (Visão)' then
                            y = 'O Personagem possui sentidos mais aguçados do que os outros Personagens.'
                            return y
                        elseif x == 'Sentidos Aguçados (Tato)' then
                            y = 'O Personagem possui sentidos mais aguçados do que os outros Personagens.'
                            return y
                        elseif x == 'Sentidos Aguçados (Olfato)' then
                            y = 'O Personagem possui sentidos mais aguçados do que os outros Personagens.'
                            return y
                        elseif x == 'Sentidos Aguçados (Paladar)' then
                            y = 'O Personagem possui sentidos mais aguçados do que os outros Personagens.'
                            return y
                        elseif x == 'Sentidos Aguçados (Audição)' then
                            y = 'O Personagem possui sentidos mais aguçados do que os outros Personagens.'
                            return y
                        elseif x == 'Sortudo 1' then 
                            y = 'Este Personagem é portador de uma sorte incrível. Uma vez por sessão de jogo, o Jogador pode Rolar novamente um dado caso tenha falhado em um  Teste'
                            return y
                        elseif x == 'Sortudo 2' then
                            y = 'Você tem o direito de declarar que um rolamento teve acerto critico, uma vez por sessão de jogo.'
                            return y
                        elseif x == 'Torcida' then
                            y = 'Você tem fãs, e eles inspiram suas lutas!'
                            return y 
                        elseif x == 'Visão Noturna' then
                            y = 'Tanto a noite quanto em ambientes fechados, o personagem pode ver normalmente sem sofrer qualquer penalidade devido ao escuro do ambiente.'
                            return y
                        else
                            y = 'N/A'
                            return y
                        end
                    end
                    
                    sheet.descricaoVant = gerarDescricao(VI)
                    sheet.descricaoVant2 = gerarDescricao(VII)
                    sheet.descricaoVant3 = gerarDescricao(VIII)
                    sheet.descricaoVant4 = gerarDescricao(VIV)
                    sheet.descricaoVant5 = gerarDescricao(VV)
                    sheet.descricaoVant6 = gerarDescricao(VVI)
                    sheet.descricaoVant7 = gerarDescricao(VVII)
                    sheet.descricaoVant8 = gerarDescricao(VVIII)
                    sheet.descricaoVant9 = gerarDescricao(VIX)
                    sheet.descricaoVant10 = gerarDescricao(VX)
        end, obj);

    obj._e_event53 = obj.dataLink14:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            function gerarCustoVant(x)
                        if x == 'Acerto' then
                            y = 1
                            return y
                        elseif x == 'Alma Gêmea' then
                            y = 3
                            return y
                        elseif x == 'Ambidestria' then
                            y = 2 
                            return y
                        elseif  x == 'Ambiente Favorável 1' then   
                            y = 1
                            return y
                        elseif  x == 'Ambiente Favorável 2' then   
                            y = 2
                            return y
                        elseif  x == 'Ambiente Favorável 3' then   
                            y = 3
                            return y 
                        elseif  x == 'Amor Polígamo' then   
                            y = 3
                            return y
                        elseif  x == 'Amor Verdadeiro' then   
                            y = 1
                            return y
                        elseif  x == 'Aparência Inofensiva' then   
                            y = 1
                            return y
                        elseif  x == 'Arma de Fogo 1' then   
                            y = 1
                            return y   
                        elseif  x == 'Arma de Fogo 2' then   
                            y = 2
                            return y
                        elseif  x == 'Arma de Fogo 3' then   
                            y = 3
                            return y    
                        elseif  x == 'Bom Senso' then   
                            y = 1
                            return y
                        elseif  x == 'Conhecimentos Arcanos' then   
                            y = 2
                            return y    
                        elseif x == 'Contatos e Aliados 1' then   
                            y = 1
                            return y    
                        elseif x == 'Contatos e Aliados 2' then
                            y = 2
                            return y     
                        elseif x == 'Contatos e Aliados 3' then
                            y = 3
                            return y
                        elseif x == 'Contatos e Aliados 4' then
                            y = 4
                            return y
                        elseif x == 'Coração de Pedra' then 
                            y = 1
                            return y
                        elseif x == 'Detectar Magia 1' then
                            y = 2
                            return y 
                        elseif x == 'Detectar Magia 2' then
                            y = 3
                            return y 
                        elseif x == 'Dívida de Gratidão 1' then
                            y = 1
                            return y
                        elseif x == 'Dívida de Gratidão 2' then
                            y = 2
                            return y
                        elseif x == 'Dívida de Gratidão 3' then
                            y = 3
                            return y
                        elseif x == 'Empatia com Animais' then
                            y = 1
                            return y
                        elseif x == 'Fama 1' then
                            y = 1
                            return y
                        elseif x == 'Fama 2' then
                            y = 2
                            return y
                        elseif x == 'Fama 3' then
                            y = 3
                            return y
                        elseif x == 'Fama 4' then
                            y = 4
                            return y
                        elseif x == 'Família ou Mentor Honrado' then
                            y = 1
                            return y
                        elseif x == 'Identidade Secreta' then
                            y = 1
                            return y
                        elseif x == 'Improvisador 1' then
                            y = 1
                            return y
                        elseif x == 'Improvisador 2' then
                            y = 2
                            return y
                        elseif x == 'Influência Política/Burocrática 1' then
                            y = 1
                            return y
                        elseif x == 'Influência Política/Burocrática 2' then
                            y = 2
                            return y
                        elseif x == 'Influência Política/Burocrática 3' then
                            y = 3
                            return y
                        elseif x == 'Influência Política/Burocrática 4' then
                            y = 4
                            return y
                        elseif x == 'Influência Política/Burocrática 5' then
                            y = 5
                            return y
                        elseif x == 'Influência Jurisprudente 1' then
                            y = 1
                            return y
                        elseif x == 'Influência Jurisprudente 2' then
                            y = 2
                            return y
                        elseif x == 'Influência Jurisprudente 3' then
                            y = 3
                            return y
                        elseif x == 'Influência Jurisprudente 4' then
                            y = 4
                            return y
                        elseif x == 'Influência Jurisprudente 5' then
                            y = 5
                            return y    
                        elseif x == 'Influência Eclesiástica 1' then
                            y = 1
                            return y
                        elseif x == 'Influência Eclesiástica 2' then
                            y = 2
                            return y
                        elseif x == 'Influência Eclesiástica 3' then
                            y = 3
                            return y
                        elseif x == 'Influência Eclesiástica 4' then
                            y = 4
                            return y
                        elseif x == 'Influência Eclesiástica 5' then
                            y = 5
                            return y
                        elseif x == 'Influência Econômica 1' then
                            y = 1
                            return y
                        elseif x == 'Influência Econômica 2' then
                            y = 2
                            return y
                        elseif x == 'Influência Econômica 3' then
                            y = 3
                            return y
                        elseif x == 'Influência Econômica 4' then
                            y = 4
                            return y
                        elseif x == 'Influência Econômica 5' then
                            y = 5
                            return y    
                        elseif x == 'Influência Midiática 1' then
                            y = 1
                            return y
                        elseif x == 'Influência Midiática 2' then
                            y = 2
                            return y
                        elseif x == 'Influência Midiática 3' then
                            y = 3
                            return y
                        elseif x == 'Influência Midiática 4' then
                            y = 4
                            return y
                        elseif x == 'Influência Midiática 5' then
                            y = 5
                            return y
                        elseif x == 'Infravisão' then
                            y = 1
                            return y
                        elseif x == 'Iniciativa Aprimorada' then
                            y = 1
                            return y
                        elseif x == 'Medicina' then
                            y = 2
                            return y
                        elseif x == 'Patrono' then
                            y = 2
                            return y
                        elseif x == 'Pechincheiro' then
                            y = 2
                            return y
                        elseif x == 'Pontos de HP Extras' then
                            y = 1
                            return y
                        elseif x == 'Pontos de Mana Extras' then
                            y = 1
                            return y
                        elseif x == 'Precognição' then
                            y = 2
                            return y
                        elseif x == 'Resistência a Dor' then
                            y = 3 
                            return y
                        elseif x == 'Sentidos Aguçados (Visão)' then
                            y = 1
                            return y
                        elseif x == 'Sentidos Aguçados (Tato)' then
                            y = 1
                            return y
                        elseif x == 'Sentidos Aguçados (Olfato)' then
                            y = 1
                            return y
                        elseif x == 'Sentidos Aguçados (Paladar)' then
                            y = 1
                            return y
                        elseif x == 'Sentidos Aguçados (Audição)' then
                            y = 1
                            return y
                        elseif x == 'Sortudo 1' then
                            y = 2
                            return y
                        elseif x == 'Sortudo 2' then
                            y = 3
                            return y
                        elseif x == 'Torcida' then
                            y = 1
                            return y
                        elseif x == 'Visão Noturna' then
                            y = 2
                            return y
                        elseif x == 'N/A' then
                            y = 0
                            return 0    
                        end
                    end
            
                    sheet.custoVant = gerarCustoVant(sheet.nomeVant)
                    sheet.custoVant2 = gerarCustoVant(sheet.nomeVant2)    
                    sheet.custoVant3 = gerarCustoVant(sheet.nomeVant3)
                    sheet.custoVant4 = gerarCustoVant(sheet.nomeVant4)
                    sheet.custoVant5 = gerarCustoVant(sheet.nomeVant5)
                    sheet.custoVant6 = gerarCustoVant(sheet.nomeVant6)
                    sheet.custoVant7 = gerarCustoVant(sheet.nomeVant7)
                    sheet.custoVant8 = gerarCustoVant(sheet.nomeVant8)
                    sheet.custoVant9 = gerarCustoVant(sheet.nomeVant9)
                    sheet.custoVant10 = gerarCustoVant(sheet.nomeVant10)
        end, obj);

    obj._e_event54 = obj.dataLink15:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local CI = (tonumber(sheet.custoVant) or 0)
                    local CII = (tonumber(sheet.custoVant2) or 0)
                    local CIII = (tonumber(sheet.custoVant3) or 0)
                    local CIV = (tonumber(sheet.custoVant4) or 0)
                    local CV = (tonumber(sheet.custoVant5) or 0)
                    local CVI = (tonumber(sheet.custoVant6) or 0)
                    local CVII = (tonumber(sheet.custoVant7) or 0)
                    local CVIII = (tonumber(sheet.custoVant8) or 0)
                    local CIX = (tonumber(sheet.custoVant9) or 0)
                    local CX = (tonumber(sheet.custoVant9) or 0)
            
                    TotalVant = CI+CII+CIII+CIV+CV+CVI+CVII+CVIII+CIX+CX
                    if TotalVant > 6 then
                        sheet.TotalVant = TotalVant - 6
                    else
                        sheet.TotalVant = 0
                    end
        end, obj);

    obj._e_event55 = obj.dataLink16:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local DI = sheet.nomeDesvant
                    local DII = sheet.nomeDesvant2
                    local DIII = sheet.nomeDesvant3
                    local DIV = sheet.nomeDesvant4
                    local DV = sheet.nomeDesvant5
                    local DVI = sheet.nomeDesvant6
                    local DVII = sheet.nomeDesvant7
                    local DVIII = sheet.nomeDesvant8
                    local DIX = sheet.nomeDesvant9
                    local DX = sheet.nomeDesvant10
                    
                    function gerarDescricaoDesvant(x) 
                        if x == 'Alergia' then
                            y = 'O Personagem é alérgico a alguma coisa (poeira, pêlo de animais, certos perfumes).'
                            return y
                        elseif x == 'Alcoólotra' then
                            y = 'O personagem é viciado em álcool, ou uma bebida especifica.' 
                            return y
                        elseif x == 'Andrógino' then
                            y = 'O Personagem tem a aparência física trocada, seu corpo tem os traços do sexo oposto, o que faz com que ele seja facilmente confundido com uma  mulher (se o personagem for um homem) ou com um homem (se for uma mulher).' 
                            return y
                        elseif  x == 'Aparência Trocada' then   
                            y = ' o Personagem é incrivelmente idêntico a uma outra pessoa. Ambos são fisicamente iguais, mas possuem personalidades e comportamento muito    diferentes.'
                            return y
                        elseif  x == 'Azarado' then   
                            y = 'Em dado momento durante a seção de jogo, o Mestre declara que seu personagem teve uma falha critica em um Teste.' 
                            return y
                        elseif  x == 'Casto' then   
                            y = 'O Personagem fez um voto de castidade, negando a si mesmo os prazeres carnais.'
                            return y
                        elseif  x == 'Cleptomaníaco' then   
                            y = 'Seu personagem PRECISA roubar alguma coisa de todos os lugares que visita.'
                            return y
                        elseif  x == 'Código dos Cavalheiros' then   
                            y = 'Impede o personagem de atacar, sob qualquer circunstâncias, mulheres ou fêmeas de qualquer espécie.'
                            return y 
                        elseif  x == 'Código de Combate' then   
                            y = 'Faz o personagem nunca usar armas superiores ao do seu adversário, nem atacar oponentes caídos ou em desvantagem numérica.'
                            return y
                        elseif  x == 'Código do Caçador' then   
                            y = 'Faz o personagemnunca abandonar uma caça abatida ou matar filhotes ou fêmeas grávidas de qualquer espécie, no máximo combater e capturá-los.'
                            return y   
                        elseif  x == 'Código dos Herois' then   
                            y = 'O personagem sempre cumprirá sua palavra, sempre protegerá qualquer pessoa ou criatura mais fraca que você, jamais recusará um pedido de       ajuda.'
                            return y
                        elseif  x == 'Compulsão' then   
                            y = 'O personagem sente uma necessidade incontrolável de fazer uma certa tarefa.'
                            return y    
                        elseif  x == 'Complexo de Culpa' then   
                            y = 'Você se sente terrivelmente culpado por alguma coisa que fez no passado e julga-se responsável por todas as conseqüências disto.'
                            return y
                        elseif x == 'Complexo de Inferioridade' then   
                            y = 'O Personagem se sente inferior aos outros, não importa o quão forte ou hábil ele seja, até mesmo a pessoa mais fraca parece ser superior a    ele.'
                            return y    
                        elseif x == 'Coração Mole' then   
                            y = 'O seu Personagem é muito sentimental e não é capaz de ver ninguém sofrer. Ele acredita que todos, sem distinção, merecem a clemência, o perdão e uma segunda chance.'
                            return y    
                        elseif x == 'Coração de Gado' then
                            y = 'O seu personagem é um escravoceta/ escravopinto.'
                            return y     
                        elseif x == 'Covarde' then
                            y = 'Seu personagem tem um senso de sobrevivência muito aguçado, muito além da compreensão de seus companheiros. Isso o leva a tomar atitudes      extremas para se manter vivo, tais como fugir ou se esconder ao menor sinal de perigo.'
                            return y
                        elseif x == 'Crédulo' then
                            y = 'O personagem é uma pessoa extremamente crédula e ingênua, inocente ao ponto de acreditar em qualquer coisa que digam a ele.'
                            return y
                        elseif x == 'Curioso' then
                            y = 'Sua curiosidade é muito maior que o seu juízo, e toda vez que algo lhe chamar a atenção, o Personagem ficará compelido a investigá-lo o mais   depressa possível. '
                            return y
                        elseif x == 'Deficiente Físico 1' then
                            y = 'Você possui uma deficiência pequena, como ser cego de um olho, não ter uma mão ou até ser quase surdo.'
                            return y 
                        elseif x == 'Deficiente Físico 2' then
                            y = 'Sua deficiência é um pouco mais grave, podendo ser completamente cego, não ter um braço, ser surdo ou não sentir cheiros.'
                            return y 
                        elseif x == 'Deficiente Físico 3' then
                            y ='Sua deficiência é grave e prejudica muito sua vida. Você pode ser um paraplégico, ser surdo-mudo ou não ter ambos os braços.'
                            return y
                        elseif x == 'Dificuldade de Fala' then
                            y ='O personagem é gago, tem a língua preza, ou qualquer outro problemas de dicção que dificulta o entendimento do que ele fala pelas outras    pessoas.'
                            return y
                        elseif x == 'Distração' then
                            y = 'O personagem não consegue se concentrar em nada, vivendo no mundo das nuvens.'
                            return y
                        elseif x == 'Dupla Personalidade' then
                            y = 'O Personagem possui duas ou mais personalidades diferentes habitando o mesmo corpo.'
                            return y
                        elseif x == 'Estigma Social' then
                            y = 'Por algum motivo o personagem é considerado um pária da sociedade.'
                            return y
                        elseif x == 'Esquizofrênico' then
                            y = 'O personagem vive em um mundo só seu. Pode ser perseguido por eles, ser o único que sabe a verdade, ter delírios de grandeza, achar que é uma figura histórica reencarnada.'
                            return y
                        elseif x == 'Família ou Mentor Desonrado' then
                            y = 'Seus descendentes ou seu mestre cometeram crimes terríveis no passado, e hoje você paga por isso, sendo descriminado e condenado como culpado também.'
                            return y
                        elseif x == 'Fanático' then
                            y = 'Sua vida é devotada a algum objetivo específico. O Personagem persegue incessantemente esse objetivo, e todos seus atos são guiados por ele.'
                            return y
                        elseif x == 'Fanfarrão' then
                            y = ' O personagem é um trovador. Sempre está contando vantagem de si mesmo.'
                            return y
                        elseif x == 'Fobia 1' then
                            y = 'Você teme algo (lugares fechados ou altos, aranhas, espinhos, mortos, cobras, fogo, demônios), e quando se vê próximo ao objeto de seu temor, o pânico toma a sua mente.'
                            return y
                        elseif x == 'Fobia 2' then
                            y = 'Idêntico ao anterior, mas aqui você sente um pavor indescritível por algo.'
                            return y
                        elseif x == 'Fúria' then
                            y = ' Nesse estado, o Personagem perde a noção dos seus atos, atacando inconscientemente TODOS que estiverem em seu caminho, sejam aliados ou inimigos. '
                            return y
                        elseif x == 'Ganância' then
                            y = 'A fraqueza dos homens. O personagem possui vontade de ter tudo do mais caro, quer fazer de tudo para poder ter mais.'
                            return y
                        elseif x == 'Gula' then
                            y = 'O apetite do personagem é algo fora dos padrões normais, ele come o dobro ou o triplo do que uma pessoa comum.'
                            return y
                        elseif x == 'Hábitos Detestáveis' then
                            y = 'Você possui alguns atos involuntários que chocam e enojam as pessoas, tais como: cuspir o tempo todo, coçar as partes intimas, não tomar banho com regularidade, entre outros.'
                            return y
                        elseif x == 'Hipocondria' then
                            y = 'O personagem acredita fervorosamente que está doente, ou que irá pegar uma doença em breve.'
                            return y
                        elseif x == 'Inimigo' then
                            y = 'O personagem representa perigo para alguém, ou alguém o quer morto por algum motivo.'
                            return y
                        elseif x == 'Intolerância' then
                            y = 'existe algo que você não tolera, seja uma situação (ver alguém batendo numa mulher, reprimir-lhe apontando o dedo indicador, garotos pixando as paredes, fumantes), um animal, ou alguma coisa. '
                            return y
                        elseif x == 'Má Fama 1' then
                            y = 'Os crimes do personagem são lembrados em alguns bairros, uma cidade pequena..'
                            return y
                        elseif x == 'Má Fama 2' then
                            y = 'Os crimes do personagem são lembrados em algumas cidades pequenas, uma metrópole.'
                            return y
                        elseif x == 'Má Fama 3' then
                            y = 'Os crimes do personagem são lembrados em algumas metrópoles, um estado '
                            return y
                        elseif x == 'Maldição 1' then
                            y = 'Um pequeno infortúnio atrapalhada a vida do personagem em alguns momentos, mas de maneira nenhuma lhe inflige algum problema aos seus companheiros.'
                            return y
                        elseif x == 'Maldição 2' then
                            y = 'Uma maldição afeta constantemente a vida do personagem e costuma prejudicar também aos seus aliados.'
                            return y
                        elseif x == 'Maldição 3' then
                            y = 'O Personagem recebeu uma punição severa, talvez até de causa divina, cujos efeitos, ao se manifestarem são devastadores.'
                            return y
                        elseif x == 'Mania' then
                            y = 'O personagem tem algum tipo de mania, é um hábito, um modus operandi.'
                            return y
                        elseif x == 'Maníaco Depressivo' then
                            y = 'O personagem sofre mudanças drásticas de humor, indo do entusiasmo flamejante ao desejo de morrer e viceversa. '
                            return y    
                        elseif x == 'Marca do Predador' then
                            y = 'Os animais reconhecem o personagem como uma ameaça, fugindo quando o sentem sua aproximação.'
                            return y
                        elseif x == 'Megalomaníaco' then
                            y = 'Você não se considera mais uma pessoa, e sim um deus! Sua motivação é poder e sua ambição é o poder total.'
                            return y
                        elseif x == 'Mentiroso Compulsivo' then
                            y = 'Dizem que o pior mentiroso é aquele que acredita nas próprias mentiras. E o personagem é um deles. Ele mente por prazer e compulsão.'
                            return y
                        elseif x == 'Monstruoso' then
                            y = 'A aparência física do Personagem é hedionda. Qualquer um que o veja, hesita em aproximar-se ou até olhar para você.'
                            return y
                        elseif x == 'Pacifista 1' then
                            y = 'O personagem é misericordioso com seus oponentes, permitindo que vivam depois de derrota-los.'
                            return y
                        elseif x == 'Pacifista 2' then
                            y = 'O personagem só irá lutar se for a última saída, preferindo sempre encontrar um meio de fugir ou contornar a situação.'
                            return y
                        elseif x == 'Pacifista 3' then
                            y = 'O personagem jamais luta. Pode defender-se dos golpes dos oponentes, mas em hipótese alguma irá atacar.'
                            return y
                        elseif x == 'Paranoia 1' then
                            y = 'O Personagem acredita fervorosamente que eles estão atrás dele, que está sempre sendo vigiado ou perseguido onde quer que ele vá.'
                            return y
                        elseif x == 'Paranoia 2' then
                            y = 'Igual ao anterior, mas nesse caso ele realmente está sendo perseguido por alguém (embora não tenha certeza absoluta disso).'
                            return y
                        elseif x == 'Perda Terrível' then
                            y = 'O personagem perdeu alguém que amava muito, como seus pais, um cônjuge, um filho ou mesmo toda a família Ele presenciou sua morte, ou foi o   primeiro a encontrar seus corpos.'
                            return y
                        elseif x == 'Protegido Indefeso' then
                            y = 'Quando é alguém indefeso a quem o Personagem jurou defender. É dever do Personagem protegê-lo acima de tudo. Zelando pela integridade e bem   estar do protegido.'
                            return y
                        elseif x == 'Pesadelos' then
                            y = 'O sono do Personagem é freqüentemente afetado por pesadelos indescritíveis. Situações de horror total consomem os sonhos do personagem e     começam agora a incomodá-lo quando está acordado também.'
                            return y
                        elseif x == 'Sanguinário' then
                            y = 'Quando o personagem entra em uma batalha, esta será até o fim. Não existe misericórdia ou rendição: um dos dois lados deve perder         obrigatoriamente.'
                            return y
                        elseif x == 'Sarcasmo' then
                            y = 'O personagem é extremamente sarcástico (irônico), não perdendo a oportunidade de zombar ou fazer observações maldosas a respeito dos outros o  tempo todo.'
                            return y
                        elseif x == 'Sono Pesado' then
                            y = 'O personagem dorme como uma pedra, ficando completamente fora de prontidão.'
                            return y
                        elseif x == 'Supersticioso' then
                            y = 'Acredita em todo tipo de superstição. Carrega trevos-de-quatro-folhas, pés-de-coelho e outros talismãs.'
                            return y
                        elseif x == 'Suspeito 1' then
                            y = 'Tudo o que acontece as pessoas acham que o responsável foi você.'
                            return y
                        elseif x == 'Suspeito 2' then
                            y = 'O personagem realmente inspira medo nas pessoas. Elas não confiam em você.'
                            return y
                        elseif x == 'Teimosia' then
                            y = 'Você é teimoso como uma mula. Não importa o que os outros digam, o personagem acredita ferreamente que ele, e somente ele, está certo.'
                            return y
                        elseif x == 'Timidez' then 
                            y = 'O Personagem é extremamente tímido, receando falar e até se aproximar das outras pessoas.'
                            return y
                        elseif x == 'Traumatizado' then
                            y = 'Este personagem sofreu um severo trauma durante a infância, algo que nenhuma criança, nem a maioria dos adultos, está preparada para          enfrentar.'
                            return y
                        elseif x == 'Viciado em Jogos' then
                            y = 'Seu personagem perde muito dinheiro em jogos de azar.'
                            return y 
                        elseif x == 'Visão Monocromática' then
                            y = 'Seu personagem enxerga apenas em preto, branco e tons de cinza.'
                            return y
                        elseif x == 'Vontade Fraca' then
                            y = 'O Personagem é extremamente suscetível à desistência e passividade. Sempre que uma tarefa parecer muito difícil, ele logo a abandonará.'
                            return y
                        else
                            y = 'N/A'
                            return y
                        end
                    end
                    
                    sheet.descricaoDesvant = gerarDescricaoDesvant(DI)
                    sheet.descricaoDesvant2 = gerarDescricaoDesvant(DII)
                    sheet.descricaoDesvant3 = gerarDescricaoDesvant(DIII)
                    sheet.descricaoDesvant4 = gerarDescricaoDesvant(DIV)
                    sheet.descricaoDesvant5 = gerarDescricaoDesvant(DV)
                    sheet.descricaoDesvant6 = gerarDescricaoDesvant(DVI)
                    sheet.descricaoDesvant7 = gerarDescricaoDesvant(DVII)
                    sheet.descricaoDesvant8 = gerarDescricaoDesvant(DVIII)
                    sheet.descricaoDesvant9 = gerarDescricaoDesvant(DIX)
                    sheet.descricaoDesvant10 = gerarDescricaoDesvant(DX)
        end, obj);

    obj._e_event56 = obj.dataLink17:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            function gerarCustoDesvant(x) 
                        if x == 'Alergia' then
                            y = -1
                            return y
                        elseif x == 'Alcoólotra' then
                            y = -1 
                            return y
                        elseif x == 'Andrógino' then
                            y = -1 
                            return y
                        elseif  x == 'Aparência Trocada' then   
                            y = -1
                            return y
                        elseif  x == 'Azarado' then   
                            y = -1 
                            return y
                        elseif  x == 'Casto' then   
                            y = -1
                            return y
                        elseif  x == 'Cleptomaníaco' then   
                            y = -2
                            return y
                        elseif  x == 'Código dos Cavalheiros' then   
                            y = -1
                            return y 
                        elseif  x == 'Código de Combate' then   
                            y = -1
                            return y
                        elseif  x == 'Código do Caçador' then   
                            y = -1
                            return y   
                        elseif  x == 'Código dos Herois' then   
                            y = -1
                            return y
                        elseif  x == 'Compulsão' then   
                            y = -1
                            return y    
                        elseif  x == 'Complexo de Culpa' then   
                            y = -1
                            return y
                        elseif x == 'Complexo de Inferioridade' then   
                            y = -1
                            return y    
                        elseif x == 'Coração Mole' then   
                            y = -1
                            return y    
                        elseif x == 'Coração de Gado' then
                            y = -1
                            return y     
                        elseif x == 'Covarde' then
                            y = -1
                            return y
                        elseif x == 'Crédulo' then
                            y = -1
                            return y
                        elseif x == 'Curioso' then
                            y = -1
                            return y
                        elseif x == 'Deficiente Físico 1' then
                            y = -1
                            return y 
                        elseif x == 'Deficiente Físico 2' then
                            y = -2
                            return y 
                        elseif x == 'Deficiente Físico 3' then
                            y = -3
                            return y
                        elseif x == 'Dificuldade de Fala' then
                            y = -1
                            return y
                        elseif x == 'Distração' then
                            y = -2
                            return y
                        elseif x == 'Dupla Personalidade' then
                            y = -3
                            return y
                        elseif x == 'Estigma Social' then
                            y = -1
                            return y
                        elseif x == 'Esquizofrênico' then
                            y = -2
                            return y
                        elseif x == 'Família ou Mentor Desonrado' then
                            y = -1 
                            return y
                        elseif x == 'Fanático' then
                            y = -2
                            return y
                        elseif x == 'Fanfarrão' then
                            y = -1
                            return y
                        elseif x == 'Fobia 1' then
                            y = -1
                            return y
                        elseif x == 'Fobia 2' then
                            y = -2
                            return y
                        elseif x == 'Fúria' then
                            y = -2
                            return y
                        elseif x == 'Ganância' then
                            y = -3
                            return y
                        elseif x == 'Gula' then
                            y = -1
                            return y
                        elseif x == 'Hábitos Detestáveis' then
                            y = -1
                            return y
                        elseif x == 'Hipocondria' then
                            y = -1
                            return y
                        elseif x == 'Inimigo' then
                            y = -1
                            return y
                        elseif x == 'Intolerância' then
                            y = -1
                            return y
                        elseif x == 'Má Fama 1' then
                            y = -1
                            return y
                        elseif x == 'Má Fama 2' then
                            y = -2
                            return y
                        elseif x == 'Má Fama 3' then
                            y = -3
                            return y
                        elseif x == 'Maldição 1' then
                            y = -1
                            return y
                        elseif x == 'Maldição 2' then
                            y = -2
                            return y
                        elseif x == 'Maldição 3' then
                            y = -3
                            return y
                        elseif x == 'Mania' then
                            y = -1
                            return y
                        elseif x == 'Maníaco Depressivo' then
                            y = -3
                            return y    
                        elseif x == 'Marca do Predador' then
                            y = -1
                            return y
                        elseif x == 'Megalomaníaco' then
                            y = -1
                            return y
                        elseif x == 'Mentiroso Compulsivo' then
                            y = -2
                            return y
                        elseif x == 'Monstruoso' then
                            y = -1
                            return y
                        elseif x == 'Pacifista 1' then
                            y = -1
                            return y
                        elseif x == 'Pacifista 2' then
                            y = -2
                            return y
                        elseif x == 'Pacifista 3' then
                            y = -3
                            return y
                        elseif x == 'Paranoia 1' then
                            y = -1
                            return y
                        elseif x == 'Paranoia 2' then
                            y = -2
                            return y
                        elseif x == 'Perda Terrível' then
                            y = -1
                            return y
                        elseif x == 'Protegido Indefeso' then
                            y = -1
                            return y
                        elseif x == 'Pesadelos' then
                            y =-1
                            return y
                        elseif x == 'Sanguinário' then
                            y = -2
                            return y
                        elseif x == 'Sarcasmo' then
                            y = -1
                            return y
                        elseif x == 'Sono Pesado' then
                            y = -1
                            return y
                        elseif x == 'Supersticioso' then
                            y = -1
                            return y
                        elseif x == 'Suspeito 1' then
                            y = -1
                            return y
                        elseif x == 'Suspeito 2' then
                            y = -2
                            return y
                        elseif x == 'Teimosia' then
                            y = -1
                            return y
                        elseif x == 'Timidez' then 
                            y = -1
                            return y
                        elseif x == 'Traumatizado' then
                            y = -2
                            return y
                        elseif x == 'Viciado em Jogos' then
                            y = -1
                            return y 
                        elseif x == 'Visão Monocromática' then
                            y = -1
                            return y
                        elseif x == 'Vontade Fraca' then
                            y = -1
                            return y
                        else
                            y = '0'
                            return y
                        end
                    end
            
                    sheet.custoDesvant = gerarCustoDesvant(sheet.nomeDesvant)
                    sheet.custoDesvant2 = gerarCustoDesvant(sheet.nomeDesvant2)    
                    sheet.custoDesvant3 = gerarCustoDesvant(sheet.nomeDesvant3)
                    sheet.custoDesvant4 = gerarCustoDesvant(sheet.nomeDesvant4)
                    sheet.custoDesvant5 = gerarCustoDesvant(sheet.nomeDesvant5)
                    sheet.custoDesvant6 = gerarCustoDesvant(sheet.nomeDesvant6)
                    sheet.custoDesvant7 = gerarCustoDesvant(sheet.nomeDesvant7)
                    sheet.custoDesvant8 = gerarCustoDesvant(sheet.nomeDesvant8)
                    sheet.custoDesvant9 = gerarCustoDesvant(sheet.nomeDesvant9)
                    sheet.custoDesvant10 = gerarCustoDesvant(sheet.nomeDesvant10)
        end, obj);

    obj._e_event57 = obj.dataLink18:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local CDI = (tonumber(sheet.custoDesvant) or 0)
                    local CDII = (tonumber(sheet.custoDesvant2) or 0)
                    local CDIII = (tonumber(sheet.custoDesvant3) or 0)
                    local CDIV = (tonumber(sheet.custoDesvant4) or 0)
                    local CDV = (tonumber(sheet.custoDesvant5) or 0)
                    local CDVI = (tonumber(sheet.custoDesvant6) or 0)
                    local CDVII = (tonumber(sheet.custoDesvant7) or 0)
                    local CDVIII = (tonumber(sheet.custoDesvant8) or 0)
                    local CDIX = (tonumber(sheet.custoDesvant9) or 0)
                    local CDX = (tonumber(sheet.custoDesvant9) or 0)
            
                    TotalDesvant = (-1)*(CDI+CDII+CDIII+CDIV+CDV+CDVI+CDVII+CDVIII+CDIX+CDX)
                    if TotalDesvant >= 4  then
                        sheet.TotalDesvant = 4
                    else
                        sheet.TotalDesvant = TotalDesvant
                    end
        end, obj);

    obj._e_event58 = obj.dataLink19:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            LVL = (tonumber(sheet.level) or 0)	
                           RF = (tonumber(sheet.resfisica) or 0)
                           RM = (tonumber(sheet.resmagica) or 0)
                           DES = (tonumber(sheet.destreza) or 0)
                           FF = (tonumber(sheet.forcafisica) or 0)
                           FM = (tonumber(sheet.forcamagica) or 0)
                           INT = (tonumber(sheet.inteligencia) or 0)
                           VANT = (tonumber(sheet.TotalVant) or 0)
                           DESVANT = (tonumber(sheet.TotalDesvant) or 0)
                           funcao = function(x,y)
                           		Z = (tonumber(x) or 0)
                           		W = (tonumber(y) or 0)
                           		if 6>Z then
                           			return W
                           		elseif 11 > Z then
                           			Z = Z +(W-5)
                    				return Z
                    			elseif 16 > Z then
                    				Z = Z + ((2*(W-5))-5)
                    				return Z
                    			elseif 21 > Z then
                    				Z = Z + ((3*(W-5))-15)
                    				return Z
                    			elseif Z>=21 then
                    				Z = Z + ((4*(W-5))-30)
                    				return Z
                    			end		
                    		end
                    			
                    	   RF = funcao((tonumber(sheet.resfisica) or 0),(tonumber(sheet.resfisica) or 0))
                    	   RM = funcao((tonumber(sheet.resmagica) or 0),(tonumber(sheet.resmagica) or 0))
                    	   DES = funcao((tonumber(sheet.destreza) or 0),(tonumber(sheet.destreza) or 0))
                    	   FF = funcao((tonumber(sheet.forcafisica) or 0),(tonumber(sheet.forcafisica) or 0))
                    	   FM = funcao((tonumber(sheet.forcamagica) or 0),(tonumber(sheet.forcamagica) or 0))
                    	   INT = funcao((tonumber(sheet.inteligencia) or 0),(tonumber(sheet.inteligencia) or 0)) 	
                           local PTOS = 18 + (LVL-1) - RF - RM - DES - FF - FM - INT - VANT + DESVANT
                           if 0 > PTOS then
                           		sheet.ptos = 'Irregular'
                           else
                               sheet.ptos = PTOS 
                           end
        end, obj);

    obj._e_event59 = obj.dataLink20:addEventListener("onChange",
        function (_, field, oldValue, newValue)
        end, obj);

    obj._e_event60 = obj.dataLink21:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            TI = sheet.tipoefeito 
                            TII = sheet.tipoefeito2
                            TIII = sheet.tipoefeito3
                            TIV = sheet.tipoefeito4
                            TV = sheet.tipoefeito5
                            TVI =sheet.tipoefeito6
                            TVII = sheet.tipoefeito7
                            TVIII = sheet.tipoefeito8
                            TIX = sheet.tipoefeito9
                            TX = sheet.tipoefeito10
                            TXI = sheet.tipoefeito11
                            TXII = sheet.tipoefeito12
                            TXIII = sheet.tipoefeito13
                            TXIV = sheet.tipoefeito14
            
                            
                          local RF = (tonumber(sheet.resfisica) or 0) + (tonumber(sheet.bonusRF) or 0)
                          local RM = (tonumber(sheet.resmagica) or 0) + (tonumber(sheet.bonusRM) or 0)
                          local DES = (tonumber(sheet.destreza) or 0) + (tonumber(sheet.bonusDES) or 0)
                          local FF = (tonumber(sheet.forcafisica) or 0) + (tonumber(sheet.bonusFF) or 0)
                          local FM = (tonumber(sheet.forcamagica) or 0) + (tonumber(sheet.bonusFM) or 0)
                          local INT = (tonumber(sheet.inteligencia) or 0) + (tonumber(sheet.bonusINT) or 0)
            
            				 local disparoMagico = math.floor(FM + INT)
            				 local manipulacao = math.floor(FM + INT)
            				 local golpeMarcialMagico = math.floor(FF + FM)
            				 local reforcoMagico = math.floor(INT + RM)
            				 local criacao = math.floor(INT + FM)
            				 local slow = math.floor(FM + INT + 10)
            				 local atordoamento = math.floor(INT + FM + 10) 
            				 local paralisia = math.floor(INT + FM +10)
            				 local transform = math.floor((RF+RM+DES+FF+FM+INT)/6)
                             local vampirismo = math.floor(FM + INT)
            	             local cura = math.floor(FM + INT)
            	             local dispmagArea = math.floor(FM + INT)
                             local cegueira = math.floor((FM + INT)/2)
            				
            
                            function GerarEfeito(x)
                                if x == 'Atordoamento' then
                                    y = string.format('Terá dificuldade '..atordoamento..' no teste de resistência física do alvo.')
                                    return y
                                elseif x == 'Cegueira' then
                                    y = string.format('Causa cegueira no alvo, gerando -'..cegueira..' em todos os testes.')
                                    return y
                                elseif x == 'Criação e Sustentação' then
                                    y = string.format('Toda criação causará +'..criacao..' no teste de atk e/ou def.')
                                    return y
                                elseif x == 'Cura' then
                                    y = string.format('Curará '..cura..' de HP no alvo.')
                                    return y
                                elseif x == 'Disparo Mágico' then
                                    y = string.format('Adicionará +'..disparoMagico..' no teste de Dano no alvo.')
                                    return y
                                elseif x == 'Disparo Mágico em Área' then
                                    y = string.format('Adicionará +'..dispmagArea..' no teste de Dano em todos os alvos.')
                                    return y
                                elseif x == 'Golpe Marcial Elemental' then
                                    y = string.format('Adicionará +'..golpeMarcialMagico..' no teste de Dano.')
                                    return y
                                elseif x == 'Manipulação' then
                                    y = string.format('Será adicionado ou removido '..manipulacao..' em dificuldade nos rolls. ')
                                    return y 
                                elseif x == 'Paralisia' then
                                    y = string.format('Terá dificuldade '..paralisia..' no teste de RM.')
                                    return y    
                                 elseif x == 'Reforço Mágico' then
                                    y = string.format('Adicionará +'..reforcoMagico..' na CAM e/ ou CAF.')
                                    return y
                                elseif x == 'Slow' then
                                    y = string.format(slow..' de dificuldade no roll de RF, caso falhe, -'..FM+INT..' nos testes')
                                    return y
                                elseif x == 'Transformação' then
                                    y = string.format('+'..transform..' em qualquer teste de acordo com o mestre')
                                    return y            
                                elseif x == 'Vampirismo' then
                                    y = string.format('Adicionará +'..vampirismo..' no teste de Dano no alvo.')
                                    return y
                                end    
                            end
                            sheet.effect = GerarEfeito(TI)
                            sheet.effect2 = GerarEfeito(TII)
                            sheet.effect3 = 'Disponível apenas no Level 3'
                            sheet.effect4 = 'Disponível apenas no Level 6'
                            sheet.effect5 = 'Disponível apenas no Level 9' 
                            sheet.effect6 = 'Disponível apenas no Level 12'
                            sheet.effect7 = 'Disponível apenas no Level 15'
                            sheet.effect8 = 'Disponível apenas no Level 18'
                            sheet.effect9 = 'Disponível apenas no Level 21'
                            sheet.effect10 = 'Disponível apenas no Level 24'
                            sheet.effect11 = 'Disponível apenas no Level 27'
                            sheet.effect12 = 'Disponível apenas no Level 30'
                            sheet.effect13 = 'Disponível apenas no Level 33'
                            sheet.effect14 = 'Disponível apenas no Level 36'
                            if (tonumber(sheet.level) or 0) >= 3 then
                                sheet.effect3 = GerarEfeito(TIII)
                                if (tonumber(sheet.level) or 0) >= 6 then
                                    sheet.effect4 = GerarEfeito(TIV)
                                    if (tonumber(sheet.level) or 0) >= 9 then
                                        sheet.effect5 = GerarEfeito(TV)
                                        if (tonumber(sheet.level) or 0) >= 12 then
                                            sheet.effect6 = GerarEfeito(TVI)
                                            if (tonumber(sheet.level) or 0) >= 15 then
                                                sheet.effect7 = GerarEfeito(TVII)
                                                if (tonumber(sheet.level) or 0) >= 18 then
                                                    sheet.effect8 = GerarEfeito(TVIII)
                                                    if (tonumber(sheet.level) or 0) >= 21 then
                                                        sheet.effect9 = GerarEfeito(TIX)
                                                        if (tonumber(sheet.level) or 0) >= 24 then
                                                            sheet.effect10 = GerarEfeito(TX)
                                                            if (tonumber(sheet.level) or 0) >= 27 then
                                                                sheet.effect11 = GerarEfeito(TXI)
                                                                if (tonumber(sheet.level) or 0) >= 30 then
                                                                    sheet.effect12 = GerarEfeito(TXII)
                                                                    if (tonumber(sheet.level) or 0) >= 33 then
                                                                        sheet.effect13 = GerarEfeito(TXIII)
                                                                        if (tonumber(sheet.level) or 0) >= 36 then
                                                                            sheet.effect14 = GerarEfeito(TXIV)
                                                                        end    
                                                                    end    
                                                                end        
                                                            end    
                                                        end    
                                                    end        
                                                end        
                                            end
                                        end
                                    end
                                end        
                            end
        end, obj);

    obj._e_event61 = obj.dataLink22:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local int = (tonumber(sheet.inteligencia) or 0) + (tonumber(sheet.bonusINT) or 0)
                         local fm = (tonumber(sheet.forcamagica) or 0) + (tonumber(sheet.bonusFM) or 0)
                         local rm = (tonumber(sheet.resmagica) or 0)  + (tonumber(sheet.bonusRM) or 0)
                         local mana = rm*10
                         local custoMagia = (mana-int)/((mana+fm)/10)
                         sheet.customagia = math.floor(custoMagia)
        end, obj);

    obj._e_event62 = obj.dataLink23:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local TI = sheet.tipoefeito 
                           local TII = sheet.tipoefeito2
                           local TIII = sheet.tipoefeito3
                           local TIV = sheet.tipoefeito4
                           local TV = sheet.tipoefeito5
                           local TVI =sheet.tipoefeito6
                           local TVII = sheet.tipoefeito7
                           local TVIII = sheet.tipoefeito8
                           local TIX = sheet.tipoefeito9
                           local TX = sheet.tipoefeito10
                           local TXI = sheet.tipoefeito11
                           local TXII = sheet.tipoefeito12
                           local TXIII = sheet.tipoefeito13
                           local TXIV = sheet.tipoefeito14
            
                           local A = 'Atordoamento'
                           local CEGO = 'Cegueira'
                           local CS = 'Criação e Sustentação'
                           local CURA = 'Cura'
                           local DM = 'Disparo Mágico'
                           local DMA = 'Disparo Mágico em Área'
                           local GME = 'Golpe Marcial Elemental'
                           local M = 'Manipulação'
                           local P = 'Paralisia'
                           local REF = 'Reforço Mágico'
                           local S = 'Slow'
                           local T = 'Transformação'
                           local VAMP = 'Vampirismo'
                           
                           local RF = (tonumber(sheet.resfisica) or 0) + (tonumber(sheet.bonusRF) or 0)
                           local RM = (tonumber(sheet.resmagica) or 0) + (tonumber(sheet.bonusRM) or 0)
                           local DES = (tonumber(sheet.destreza) or 0) + (tonumber(sheet.bonusDES) or 0)
                           local FF = (tonumber(sheet.forcafisica) or 0) + (tonumber(sheet.bonusFF) or 0)
                           local FM = (tonumber(sheet.forcamagica) or 0) + (tonumber(sheet.bonusFM) or 0)
                           local INT = (tonumber(sheet.inteligencia) or 0) + (tonumber(sheet.bonusINT) or 0)
            
                           function GerarDuracao(x)
                                if x == DM then 
                                    local y = 'Inst.'
                                    return y
                                elseif x == DMA then
                                    local y = 'Inst.'
                                    return y
                                elseif x == VAMP then
                                    local y = 'Inst.'
                                    return y
                                elseif x == GME then 
                                    local y = 'Inst.'
                                    return y
                                elseif x == CURA then  
                                    local y = 'P/ turno'
                                    return y
                                elseif x == REF then 
                                    y = 'P/ Turno'
                                    return y
                                elseif x == CS then 
                                    y = 'P/ turno'
                                    return y
                                elseif x == P then
                                    y = string.format(math.floor((INT + FM)/2)..' turnos')
                                    return y
                                elseif x == A then
                                    y = string.format(math.floor((INT + FM)/2)..' turnos')
                                    return y
                                elseif x == S then 
                                    y = string.format(math.floor((INT + FM)/2)..' turnos')
                                    return y
                                elseif x == CEGO then
                                    y = string.format(math.floor((INT + FM)/2)..' turnos')
                                    return y    
                                elseif x == T then
                                    y = string.format(math.floor((INT + FM + RF + RM + DES + FF)/2)..' turnos')
                                    return y
                                elseif x == M then
                                    y = string.format(math.floor((INT + FM)/2)..' turnos')
                                    return y
                                 end
                            end
                            sheet.duracao = GerarDuracao(TI)
                            sheet.duracao2 = GerarDuracao(TII)
                            sheet.duracao3= 'N/A'
                            sheet.duracao4 = 'N/A'
                            sheet.duracao5 = 'N/A' 
                            sheet.duracao6 = 'N/A'
                            sheet.duracao7 = 'N/A'
                            sheet.duracao8 = 'N/A'
                            sheet.duracao9 = 'N/A'
                            sheet.duracao10 = 'N/A'
                            sheet.duracao11 = 'N/A'
                            sheet.duracao12 = 'N/A'
                            sheet.duracao13 = 'N/A'
                            sheet.duracao14 = 'N/A'
                            if (tonumber(sheet.level) or 0) >= 3 then
                                sheet.duracao3 = GerarDuracao(TIII)
                                if (tonumber(sheet.level) or 0) >= 6 then
                                    sheet.duracao4 = GerarDuracao(TIV)
                                    if (tonumber(sheet.level) or 0) >= 9 then
                                        sheet.duracao5 = GerarDuracao(TV)
                                        if (tonumber(sheet.level) or 0) >= 12 then
                                            sheet.duracao6 = GerarDuracao(TVI)
                                            if (tonumber(sheet.level) or 0) >= 15 then
                                                sheet.duracao7 = GerarDuracao(TVII)
                                                if (tonumber(sheet.level) or 0) >= 18 then
                                                    sheet.duracao8 = GerarDuracao(TVIII)
                                                    if (tonumber(sheet.level) or 0) >= 21 then
                                                        sheet.duracao9 = GerarDuracao(TIX)
                                                        if (tonumber(sheet.level) or 0) >= 24 then
                                                            sheet.duracao10 = GerarDuracao(TX)
                                                            if (tonumber(sheet.level) or 0) >= 27 then
                                                                sheet.duracao11 = GerarDuracao(TXI)
                                                                if (tonumber(sheet.level) or 0) >= 30 then
                                                                    sheet.duracao12 = GerarDuracao(TXII)
                                                                    if (tonumber(sheet.level) or 0) >= 24 then
                                                                        sheet.duracao13 = GerarDuracao(TXIII)
                                                                        if (tonumber(sheet.level) or 0) >= 24 then
                                                                            sheet.duracao14 = GerarDuracao(TXIV)
                                                                        end    
                                                                    end    
                                                                end        
                                                            end    
                                                        end    
                                                    end        
                                                end        
                                            end
                                        end
                                    end
                                end        
                            end
        end, obj);

    function obj:_releaseEvents()
        __o_rrpgObjs.removeEventListenerById(self._e_event62);
        __o_rrpgObjs.removeEventListenerById(self._e_event61);
        __o_rrpgObjs.removeEventListenerById(self._e_event60);
        __o_rrpgObjs.removeEventListenerById(self._e_event59);
        __o_rrpgObjs.removeEventListenerById(self._e_event58);
        __o_rrpgObjs.removeEventListenerById(self._e_event57);
        __o_rrpgObjs.removeEventListenerById(self._e_event56);
        __o_rrpgObjs.removeEventListenerById(self._e_event55);
        __o_rrpgObjs.removeEventListenerById(self._e_event54);
        __o_rrpgObjs.removeEventListenerById(self._e_event53);
        __o_rrpgObjs.removeEventListenerById(self._e_event52);
        __o_rrpgObjs.removeEventListenerById(self._e_event51);
        __o_rrpgObjs.removeEventListenerById(self._e_event50);
        __o_rrpgObjs.removeEventListenerById(self._e_event49);
        __o_rrpgObjs.removeEventListenerById(self._e_event48);
        __o_rrpgObjs.removeEventListenerById(self._e_event47);
        __o_rrpgObjs.removeEventListenerById(self._e_event46);
        __o_rrpgObjs.removeEventListenerById(self._e_event45);
        __o_rrpgObjs.removeEventListenerById(self._e_event44);
        __o_rrpgObjs.removeEventListenerById(self._e_event43);
        __o_rrpgObjs.removeEventListenerById(self._e_event42);
        __o_rrpgObjs.removeEventListenerById(self._e_event41);
        __o_rrpgObjs.removeEventListenerById(self._e_event40);
        __o_rrpgObjs.removeEventListenerById(self._e_event39);
        __o_rrpgObjs.removeEventListenerById(self._e_event38);
        __o_rrpgObjs.removeEventListenerById(self._e_event37);
        __o_rrpgObjs.removeEventListenerById(self._e_event36);
        __o_rrpgObjs.removeEventListenerById(self._e_event35);
        __o_rrpgObjs.removeEventListenerById(self._e_event34);
        __o_rrpgObjs.removeEventListenerById(self._e_event33);
        __o_rrpgObjs.removeEventListenerById(self._e_event32);
        __o_rrpgObjs.removeEventListenerById(self._e_event31);
        __o_rrpgObjs.removeEventListenerById(self._e_event30);
        __o_rrpgObjs.removeEventListenerById(self._e_event29);
        __o_rrpgObjs.removeEventListenerById(self._e_event28);
        __o_rrpgObjs.removeEventListenerById(self._e_event27);
        __o_rrpgObjs.removeEventListenerById(self._e_event26);
        __o_rrpgObjs.removeEventListenerById(self._e_event25);
        __o_rrpgObjs.removeEventListenerById(self._e_event24);
        __o_rrpgObjs.removeEventListenerById(self._e_event23);
        __o_rrpgObjs.removeEventListenerById(self._e_event22);
        __o_rrpgObjs.removeEventListenerById(self._e_event21);
        __o_rrpgObjs.removeEventListenerById(self._e_event20);
        __o_rrpgObjs.removeEventListenerById(self._e_event19);
        __o_rrpgObjs.removeEventListenerById(self._e_event18);
        __o_rrpgObjs.removeEventListenerById(self._e_event17);
        __o_rrpgObjs.removeEventListenerById(self._e_event16);
        __o_rrpgObjs.removeEventListenerById(self._e_event15);
        __o_rrpgObjs.removeEventListenerById(self._e_event14);
        __o_rrpgObjs.removeEventListenerById(self._e_event13);
        __o_rrpgObjs.removeEventListenerById(self._e_event12);
        __o_rrpgObjs.removeEventListenerById(self._e_event11);
        __o_rrpgObjs.removeEventListenerById(self._e_event10);
        __o_rrpgObjs.removeEventListenerById(self._e_event9);
        __o_rrpgObjs.removeEventListenerById(self._e_event8);
        __o_rrpgObjs.removeEventListenerById(self._e_event7);
        __o_rrpgObjs.removeEventListenerById(self._e_event6);
        __o_rrpgObjs.removeEventListenerById(self._e_event5);
        __o_rrpgObjs.removeEventListenerById(self._e_event4);
        __o_rrpgObjs.removeEventListenerById(self._e_event3);
        __o_rrpgObjs.removeEventListenerById(self._e_event2);
        __o_rrpgObjs.removeEventListenerById(self._e_event1);
        __o_rrpgObjs.removeEventListenerById(self._e_event0);
    end;

    obj._oldLFMDestroy = obj.destroy;

    function obj:destroy() 
        self:_releaseEvents();

        if (self.handle ~= 0) and (self.setNodeDatabase ~= nil) then
          self:setNodeDatabase(nil);
        end;

        if self.label329 ~= nil then self.label329:destroy(); self.label329 = nil; end;
        if self.label14 ~= nil then self.label14:destroy(); self.label14 = nil; end;
        if self.label256 ~= nil then self.label256:destroy(); self.label256 = nil; end;
        if self.label119 ~= nil then self.label119:destroy(); self.label119 = nil; end;
        if self.label327 ~= nil then self.label327:destroy(); self.label327 = nil; end;
        if self.button15 ~= nil then self.button15:destroy(); self.button15 = nil; end;
        if self.flowLineBreak57 ~= nil then self.flowLineBreak57:destroy(); self.flowLineBreak57 = nil; end;
        if self.edit41 ~= nil then self.edit41:destroy(); self.edit41 = nil; end;
        if self.label338 ~= nil then self.label338:destroy(); self.label338 = nil; end;
        if self.label299 ~= nil then self.label299:destroy(); self.label299 = nil; end;
        if self.edit36 ~= nil then self.edit36:destroy(); self.edit36 = nil; end;
        if self.edit9 ~= nil then self.edit9:destroy(); self.edit9 = nil; end;
        if self.label43 ~= nil then self.label43:destroy(); self.label43 = nil; end;
        if self.label97 ~= nil then self.label97:destroy(); self.label97 = nil; end;
        if self.flowLineBreak48 ~= nil then self.flowLineBreak48:destroy(); self.flowLineBreak48 = nil; end;
        if self.edit33 ~= nil then self.edit33:destroy(); self.edit33 = nil; end;
        if self.label77 ~= nil then self.label77:destroy(); self.label77 = nil; end;
        if self.flowLineBreak19 ~= nil then self.flowLineBreak19:destroy(); self.flowLineBreak19 = nil; end;
        if self.edit29 ~= nil then self.edit29:destroy(); self.edit29 = nil; end;
        if self.label128 ~= nil then self.label128:destroy(); self.label128 = nil; end;
        if self.label350 ~= nil then self.label350:destroy(); self.label350 = nil; end;
        if self.flowLineBreak63 ~= nil then self.flowLineBreak63:destroy(); self.flowLineBreak63 = nil; end;
        if self.label45 ~= nil then self.label45:destroy(); self.label45 = nil; end;
        if self.label96 ~= nil then self.label96:destroy(); self.label96 = nil; end;
        if self.label92 ~= nil then self.label92:destroy(); self.label92 = nil; end;
        if self.flowLayout1 ~= nil then self.flowLayout1:destroy(); self.flowLayout1 = nil; end;
        if self.comboBox20 ~= nil then self.comboBox20:destroy(); self.comboBox20 = nil; end;
        if self.label148 ~= nil then self.label148:destroy(); self.label148 = nil; end;
        if self.label75 ~= nil then self.label75:destroy(); self.label75 = nil; end;
        if self.button16 ~= nil then self.button16:destroy(); self.button16 = nil; end;
        if self.label158 ~= nil then self.label158:destroy(); self.label158 = nil; end;
        if self.label63 ~= nil then self.label63:destroy(); self.label63 = nil; end;
        if self.flowLineBreak41 ~= nil then self.flowLineBreak41:destroy(); self.flowLineBreak41 = nil; end;
        if self.label70 ~= nil then self.label70:destroy(); self.label70 = nil; end;
        if self.flowLineBreak68 ~= nil then self.flowLineBreak68:destroy(); self.flowLineBreak68 = nil; end;
        if self.dataLink18 ~= nil then self.dataLink18:destroy(); self.dataLink18 = nil; end;
        if self.label143 ~= nil then self.label143:destroy(); self.label143 = nil; end;
        if self.label35 ~= nil then self.label35:destroy(); self.label35 = nil; end;
        if self.label331 ~= nil then self.label331:destroy(); self.label331 = nil; end;
        if self.comboBox22 ~= nil then self.comboBox22:destroy(); self.comboBox22 = nil; end;
        if self.label192 ~= nil then self.label192:destroy(); self.label192 = nil; end;
        if self.label293 ~= nil then self.label293:destroy(); self.label293 = nil; end;
        if self.label164 ~= nil then self.label164:destroy(); self.label164 = nil; end;
        if self.label122 ~= nil then self.label122:destroy(); self.label122 = nil; end;
        if self.label328 ~= nil then self.label328:destroy(); self.label328 = nil; end;
        if self.label351 ~= nil then self.label351:destroy(); self.label351 = nil; end;
        if self.button35 ~= nil then self.button35:destroy(); self.button35 = nil; end;
        if self.flowLineBreak18 ~= nil then self.flowLineBreak18:destroy(); self.flowLineBreak18 = nil; end;
        if self.label186 ~= nil then self.label186:destroy(); self.label186 = nil; end;
        if self.label8 ~= nil then self.label8:destroy(); self.label8 = nil; end;
        if self.label125 ~= nil then self.label125:destroy(); self.label125 = nil; end;
        if self.label146 ~= nil then self.label146:destroy(); self.label146 = nil; end;
        if self.label367 ~= nil then self.label367:destroy(); self.label367 = nil; end;
        if self.edit11 ~= nil then self.edit11:destroy(); self.edit11 = nil; end;
        if self.image1 ~= nil then self.image1:destroy(); self.image1 = nil; end;
        if self.button40 ~= nil then self.button40:destroy(); self.button40 = nil; end;
        if self.label319 ~= nil then self.label319:destroy(); self.label319 = nil; end;
        if self.label15 ~= nil then self.label15:destroy(); self.label15 = nil; end;
        if self.comboBox28 ~= nil then self.comboBox28:destroy(); self.comboBox28 = nil; end;
        if self.label99 ~= nil then self.label99:destroy(); self.label99 = nil; end;
        if self.label107 ~= nil then self.label107:destroy(); self.label107 = nil; end;
        if self.label161 ~= nil then self.label161:destroy(); self.label161 = nil; end;
        if self.label359 ~= nil then self.label359:destroy(); self.label359 = nil; end;
        if self.label49 ~= nil then self.label49:destroy(); self.label49 = nil; end;
        if self.comboBox10 ~= nil then self.comboBox10:destroy(); self.comboBox10 = nil; end;
        if self.label163 ~= nil then self.label163:destroy(); self.label163 = nil; end;
        if self.flowLineBreak44 ~= nil then self.flowLineBreak44:destroy(); self.flowLineBreak44 = nil; end;
        if self.comboBox36 ~= nil then self.comboBox36:destroy(); self.comboBox36 = nil; end;
        if self.label195 ~= nil then self.label195:destroy(); self.label195 = nil; end;
        if self.label364 ~= nil then self.label364:destroy(); self.label364 = nil; end;
        if self.flowLineBreak6 ~= nil then self.flowLineBreak6:destroy(); self.flowLineBreak6 = nil; end;
        if self.label82 ~= nil then self.label82:destroy(); self.label82 = nil; end;
        if self.image11 ~= nil then self.image11:destroy(); self.image11 = nil; end;
        if self.label162 ~= nil then self.label162:destroy(); self.label162 = nil; end;
        if self.button36 ~= nil then self.button36:destroy(); self.button36 = nil; end;
        if self.label220 ~= nil then self.label220:destroy(); self.label220 = nil; end;
        if self.button37 ~= nil then self.button37:destroy(); self.button37 = nil; end;
        if self.label227 ~= nil then self.label227:destroy(); self.label227 = nil; end;
        if self.flowLineBreak66 ~= nil then self.flowLineBreak66:destroy(); self.flowLineBreak66 = nil; end;
        if self.dataLink9 ~= nil then self.dataLink9:destroy(); self.dataLink9 = nil; end;
        if self.label348 ~= nil then self.label348:destroy(); self.label348 = nil; end;
        if self.label52 ~= nil then self.label52:destroy(); self.label52 = nil; end;
        if self.button21 ~= nil then self.button21:destroy(); self.button21 = nil; end;
        if self.flowLineBreak27 ~= nil then self.flowLineBreak27:destroy(); self.flowLineBreak27 = nil; end;
        if self.label287 ~= nil then self.label287:destroy(); self.label287 = nil; end;
        if self.label288 ~= nil then self.label288:destroy(); self.label288 = nil; end;
        if self.edit16 ~= nil then self.edit16:destroy(); self.edit16 = nil; end;
        if self.label47 ~= nil then self.label47:destroy(); self.label47 = nil; end;
        if self.label236 ~= nil then self.label236:destroy(); self.label236 = nil; end;
        if self.label302 ~= nil then self.label302:destroy(); self.label302 = nil; end;
        if self.label48 ~= nil then self.label48:destroy(); self.label48 = nil; end;
        if self.comboBox2 ~= nil then self.comboBox2:destroy(); self.comboBox2 = nil; end;
        if self.comboBox11 ~= nil then self.comboBox11:destroy(); self.comboBox11 = nil; end;
        if self.label76 ~= nil then self.label76:destroy(); self.label76 = nil; end;
        if self.label230 ~= nil then self.label230:destroy(); self.label230 = nil; end;
        if self.button26 ~= nil then self.button26:destroy(); self.button26 = nil; end;
        if self.button4 ~= nil then self.button4:destroy(); self.button4 = nil; end;
        if self.label258 ~= nil then self.label258:destroy(); self.label258 = nil; end;
        if self.flowLineBreak40 ~= nil then self.flowLineBreak40:destroy(); self.flowLineBreak40 = nil; end;
        if self.label242 ~= nil then self.label242:destroy(); self.label242 = nil; end;
        if self.label1 ~= nil then self.label1:destroy(); self.label1 = nil; end;
        if self.label176 ~= nil then self.label176:destroy(); self.label176 = nil; end;
        if self.comboBox35 ~= nil then self.comboBox35:destroy(); self.comboBox35 = nil; end;
        if self.image9 ~= nil then self.image9:destroy(); self.image9 = nil; end;
        if self.label307 ~= nil then self.label307:destroy(); self.label307 = nil; end;
        if self.button7 ~= nil then self.button7:destroy(); self.button7 = nil; end;
        if self.comboBox38 ~= nil then self.comboBox38:destroy(); self.comboBox38 = nil; end;
        if self.label340 ~= nil then self.label340:destroy(); self.label340 = nil; end;
        if self.flowLineBreak5 ~= nil then self.flowLineBreak5:destroy(); self.flowLineBreak5 = nil; end;
        if self.label106 ~= nil then self.label106:destroy(); self.label106 = nil; end;
        if self.label109 ~= nil then self.label109:destroy(); self.label109 = nil; end;
        if self.label103 ~= nil then self.label103:destroy(); self.label103 = nil; end;
        if self.flowLineBreak37 ~= nil then self.flowLineBreak37:destroy(); self.flowLineBreak37 = nil; end;
        if self.label321 ~= nil then self.label321:destroy(); self.label321 = nil; end;
        if self.dataLink20 ~= nil then self.dataLink20:destroy(); self.dataLink20 = nil; end;
        if self.flowLineBreak35 ~= nil then self.flowLineBreak35:destroy(); self.flowLineBreak35 = nil; end;
        if self.flowLineBreak60 ~= nil then self.flowLineBreak60:destroy(); self.flowLineBreak60 = nil; end;
        if self.label94 ~= nil then self.label94:destroy(); self.label94 = nil; end;
        if self.label212 ~= nil then self.label212:destroy(); self.label212 = nil; end;
        if self.flowLineBreak54 ~= nil then self.flowLineBreak54:destroy(); self.flowLineBreak54 = nil; end;
        if self.dataLink3 ~= nil then self.dataLink3:destroy(); self.dataLink3 = nil; end;
        if self.label366 ~= nil then self.label366:destroy(); self.label366 = nil; end;
        if self.label29 ~= nil then self.label29:destroy(); self.label29 = nil; end;
        if self.label261 ~= nil then self.label261:destroy(); self.label261 = nil; end;
        if self.dataLink7 ~= nil then self.dataLink7:destroy(); self.dataLink7 = nil; end;
        if self.label111 ~= nil then self.label111:destroy(); self.label111 = nil; end;
        if self.label91 ~= nil then self.label91:destroy(); self.label91 = nil; end;
        if self.label30 ~= nil then self.label30:destroy(); self.label30 = nil; end;
        if self.tabControl1 ~= nil then self.tabControl1:destroy(); self.tabControl1 = nil; end;
        if self.image10 ~= nil then self.image10:destroy(); self.image10 = nil; end;
        if self.label51 ~= nil then self.label51:destroy(); self.label51 = nil; end;
        if self.label284 ~= nil then self.label284:destroy(); self.label284 = nil; end;
        if self.dataLink6 ~= nil then self.dataLink6:destroy(); self.dataLink6 = nil; end;
        if self.label19 ~= nil then self.label19:destroy(); self.label19 = nil; end;
        if self.label116 ~= nil then self.label116:destroy(); self.label116 = nil; end;
        if self.label268 ~= nil then self.label268:destroy(); self.label268 = nil; end;
        if self.label139 ~= nil then self.label139:destroy(); self.label139 = nil; end;
        if self.label324 ~= nil then self.label324:destroy(); self.label324 = nil; end;
        if self.label332 ~= nil then self.label332:destroy(); self.label332 = nil; end;
        if self.label225 ~= nil then self.label225:destroy(); self.label225 = nil; end;
        if self.flowLineBreak51 ~= nil then self.flowLineBreak51:destroy(); self.flowLineBreak51 = nil; end;
        if self.label278 ~= nil then self.label278:destroy(); self.label278 = nil; end;
        if self.label334 ~= nil then self.label334:destroy(); self.label334 = nil; end;
        if self.label147 ~= nil then self.label147:destroy(); self.label147 = nil; end;
        if self.label269 ~= nil then self.label269:destroy(); self.label269 = nil; end;
        if self.label335 ~= nil then self.label335:destroy(); self.label335 = nil; end;
        if self.label228 ~= nil then self.label228:destroy(); self.label228 = nil; end;
        if self.label184 ~= nil then self.label184:destroy(); self.label184 = nil; end;
        if self.label2 ~= nil then self.label2:destroy(); self.label2 = nil; end;
        if self.label263 ~= nil then self.label263:destroy(); self.label263 = nil; end;
        if self.flowLineBreak55 ~= nil then self.flowLineBreak55:destroy(); self.flowLineBreak55 = nil; end;
        if self.label89 ~= nil then self.label89:destroy(); self.label89 = nil; end;
        if self.label38 ~= nil then self.label38:destroy(); self.label38 = nil; end;
        if self.button33 ~= nil then self.button33:destroy(); self.button33 = nil; end;
        if self.comboBox15 ~= nil then self.comboBox15:destroy(); self.comboBox15 = nil; end;
        if self.edit27 ~= nil then self.edit27:destroy(); self.edit27 = nil; end;
        if self.label115 ~= nil then self.label115:destroy(); self.label115 = nil; end;
        if self.label271 ~= nil then self.label271:destroy(); self.label271 = nil; end;
        if self.label159 ~= nil then self.label159:destroy(); self.label159 = nil; end;
        if self.flowLineBreak49 ~= nil then self.flowLineBreak49:destroy(); self.flowLineBreak49 = nil; end;
        if self.label323 ~= nil then self.label323:destroy(); self.label323 = nil; end;
        if self.richEdit2 ~= nil then self.richEdit2:destroy(); self.richEdit2 = nil; end;
        if self.flowLineBreak2 ~= nil then self.flowLineBreak2:destroy(); self.flowLineBreak2 = nil; end;
        if self.label305 ~= nil then self.label305:destroy(); self.label305 = nil; end;
        if self.label315 ~= nil then self.label315:destroy(); self.label315 = nil; end;
        if self.label185 ~= nil then self.label185:destroy(); self.label185 = nil; end;
        if self.label127 ~= nil then self.label127:destroy(); self.label127 = nil; end;
        if self.label206 ~= nil then self.label206:destroy(); self.label206 = nil; end;
        if self.label170 ~= nil then self.label170:destroy(); self.label170 = nil; end;
        if self.label194 ~= nil then self.label194:destroy(); self.label194 = nil; end;
        if self.flowLayout8 ~= nil then self.flowLayout8:destroy(); self.flowLayout8 = nil; end;
        if self.label142 ~= nil then self.label142:destroy(); self.label142 = nil; end;
        if self.tab3 ~= nil then self.tab3:destroy(); self.tab3 = nil; end;
        if self.label200 ~= nil then self.label200:destroy(); self.label200 = nil; end;
        if self.label246 ~= nil then self.label246:destroy(); self.label246 = nil; end;
        if self.label306 ~= nil then self.label306:destroy(); self.label306 = nil; end;
        if self.label347 ~= nil then self.label347:destroy(); self.label347 = nil; end;
        if self.flowLineBreak50 ~= nil then self.flowLineBreak50:destroy(); self.flowLineBreak50 = nil; end;
        if self.button28 ~= nil then self.button28:destroy(); self.button28 = nil; end;
        if self.label198 ~= nil then self.label198:destroy(); self.label198 = nil; end;
        if self.label313 ~= nil then self.label313:destroy(); self.label313 = nil; end;
        if self.label73 ~= nil then self.label73:destroy(); self.label73 = nil; end;
        if self.label358 ~= nil then self.label358:destroy(); self.label358 = nil; end;
        if self.label254 ~= nil then self.label254:destroy(); self.label254 = nil; end;
        if self.label235 ~= nil then self.label235:destroy(); self.label235 = nil; end;
        if self.label355 ~= nil then self.label355:destroy(); self.label355 = nil; end;
        if self.label224 ~= nil then self.label224:destroy(); self.label224 = nil; end;
        if self.label23 ~= nil then self.label23:destroy(); self.label23 = nil; end;
        if self.label32 ~= nil then self.label32:destroy(); self.label32 = nil; end;
        if self.label90 ~= nil then self.label90:destroy(); self.label90 = nil; end;
        if self.label223 ~= nil then self.label223:destroy(); self.label223 = nil; end;
        if self.comboBox6 ~= nil then self.comboBox6:destroy(); self.comboBox6 = nil; end;
        if self.label24 ~= nil then self.label24:destroy(); self.label24 = nil; end;
        if self.button39 ~= nil then self.button39:destroy(); self.button39 = nil; end;
        if self.comboBox31 ~= nil then self.comboBox31:destroy(); self.comboBox31 = nil; end;
        if self.label61 ~= nil then self.label61:destroy(); self.label61 = nil; end;
        if self.label279 ~= nil then self.label279:destroy(); self.label279 = nil; end;
        if self.dataLink5 ~= nil then self.dataLink5:destroy(); self.dataLink5 = nil; end;
        if self.tab2 ~= nil then self.tab2:destroy(); self.tab2 = nil; end;
        if self.button30 ~= nil then self.button30:destroy(); self.button30 = nil; end;
        if self.label248 ~= nil then self.label248:destroy(); self.label248 = nil; end;
        if self.dataLink10 ~= nil then self.dataLink10:destroy(); self.dataLink10 = nil; end;
        if self.label93 ~= nil then self.label93:destroy(); self.label93 = nil; end;
        if self.edit24 ~= nil then self.edit24:destroy(); self.edit24 = nil; end;
        if self.label325 ~= nil then self.label325:destroy(); self.label325 = nil; end;
        if self.edit14 ~= nil then self.edit14:destroy(); self.edit14 = nil; end;
        if self.label273 ~= nil then self.label273:destroy(); self.label273 = nil; end;
        if self.label216 ~= nil then self.label216:destroy(); self.label216 = nil; end;
        if self.edit4 ~= nil then self.edit4:destroy(); self.edit4 = nil; end;
        if self.label295 ~= nil then self.label295:destroy(); self.label295 = nil; end;
        if self.flowLineBreak20 ~= nil then self.flowLineBreak20:destroy(); self.flowLineBreak20 = nil; end;
        if self.dataLink8 ~= nil then self.dataLink8:destroy(); self.dataLink8 = nil; end;
        if self.label6 ~= nil then self.label6:destroy(); self.label6 = nil; end;
        if self.label361 ~= nil then self.label361:destroy(); self.label361 = nil; end;
        if self.label129 ~= nil then self.label129:destroy(); self.label129 = nil; end;
        if self.button13 ~= nil then self.button13:destroy(); self.button13 = nil; end;
        if self.image12 ~= nil then self.image12:destroy(); self.image12 = nil; end;
        if self.flowLineBreak64 ~= nil then self.flowLineBreak64:destroy(); self.flowLineBreak64 = nil; end;
        if self.flowLineBreak38 ~= nil then self.flowLineBreak38:destroy(); self.flowLineBreak38 = nil; end;
        if self.label37 ~= nil then self.label37:destroy(); self.label37 = nil; end;
        if self.label214 ~= nil then self.label214:destroy(); self.label214 = nil; end;
        if self.label215 ~= nil then self.label215:destroy(); self.label215 = nil; end;
        if self.flowLineBreak47 ~= nil then self.flowLineBreak47:destroy(); self.flowLineBreak47 = nil; end;
        if self.edit8 ~= nil then self.edit8:destroy(); self.edit8 = nil; end;
        if self.label196 ~= nil then self.label196:destroy(); self.label196 = nil; end;
        if self.label330 ~= nil then self.label330:destroy(); self.label330 = nil; end;
        if self.flowLineBreak16 ~= nil then self.flowLineBreak16:destroy(); self.flowLineBreak16 = nil; end;
        if self.label339 ~= nil then self.label339:destroy(); self.label339 = nil; end;
        if self.button32 ~= nil then self.button32:destroy(); self.button32 = nil; end;
        if self.flowLineBreak25 ~= nil then self.flowLineBreak25:destroy(); self.flowLineBreak25 = nil; end;
        if self.flowLayout7 ~= nil then self.flowLayout7:destroy(); self.flowLayout7 = nil; end;
        if self.label336 ~= nil then self.label336:destroy(); self.label336 = nil; end;
        if self.label86 ~= nil then self.label86:destroy(); self.label86 = nil; end;
        if self.flowLineBreak58 ~= nil then self.flowLineBreak58:destroy(); self.flowLineBreak58 = nil; end;
        if self.edit2 ~= nil then self.edit2:destroy(); self.edit2 = nil; end;
        if self.label360 ~= nil then self.label360:destroy(); self.label360 = nil; end;
        if self.label53 ~= nil then self.label53:destroy(); self.label53 = nil; end;
        if self.comboBox7 ~= nil then self.comboBox7:destroy(); self.comboBox7 = nil; end;
        if self.button27 ~= nil then self.button27:destroy(); self.button27 = nil; end;
        if self.flowLineBreak13 ~= nil then self.flowLineBreak13:destroy(); self.flowLineBreak13 = nil; end;
        if self.label317 ~= nil then self.label317:destroy(); self.label317 = nil; end;
        if self.flowLineBreak14 ~= nil then self.flowLineBreak14:destroy(); self.flowLineBreak14 = nil; end;
        if self.label133 ~= nil then self.label133:destroy(); self.label133 = nil; end;
        if self.label201 ~= nil then self.label201:destroy(); self.label201 = nil; end;
        if self.edit21 ~= nil then self.edit21:destroy(); self.edit21 = nil; end;
        if self.button24 ~= nil then self.button24:destroy(); self.button24 = nil; end;
        if self.comboBox39 ~= nil then self.comboBox39:destroy(); self.comboBox39 = nil; end;
        if self.button3 ~= nil then self.button3:destroy(); self.button3 = nil; end;
        if self.label42 ~= nil then self.label42:destroy(); self.label42 = nil; end;
        if self.comboBox21 ~= nil then self.comboBox21:destroy(); self.comboBox21 = nil; end;
        if self.label333 ~= nil then self.label333:destroy(); self.label333 = nil; end;
        if self.flowLineBreak33 ~= nil then self.flowLineBreak33:destroy(); self.flowLineBreak33 = nil; end;
        if self.label102 ~= nil then self.label102:destroy(); self.label102 = nil; end;
        if self.flowLayout4 ~= nil then self.flowLayout4:destroy(); self.flowLayout4 = nil; end;
        if self.label342 ~= nil then self.label342:destroy(); self.label342 = nil; end;
        if self.edit13 ~= nil then self.edit13:destroy(); self.edit13 = nil; end;
        if self.label132 ~= nil then self.label132:destroy(); self.label132 = nil; end;
        if self.flowLineBreak36 ~= nil then self.flowLineBreak36:destroy(); self.flowLineBreak36 = nil; end;
        if self.label181 ~= nil then self.label181:destroy(); self.label181 = nil; end;
        if self.button11 ~= nil then self.button11:destroy(); self.button11 = nil; end;
        if self.label81 ~= nil then self.label81:destroy(); self.label81 = nil; end;
        if self.label166 ~= nil then self.label166:destroy(); self.label166 = nil; end;
        if self.dataLink22 ~= nil then self.dataLink22:destroy(); self.dataLink22 = nil; end;
        if self.label371 ~= nil then self.label371:destroy(); self.label371 = nil; end;
        if self.button6 ~= nil then self.button6:destroy(); self.button6 = nil; end;
        if self.label199 ~= nil then self.label199:destroy(); self.label199 = nil; end;
        if self.label341 ~= nil then self.label341:destroy(); self.label341 = nil; end;
        if self.button5 ~= nil then self.button5:destroy(); self.button5 = nil; end;
        if self.edit37 ~= nil then self.edit37:destroy(); self.edit37 = nil; end;
        if self.flowLayout2 ~= nil then self.flowLayout2:destroy(); self.flowLayout2 = nil; end;
        if self.label10 ~= nil then self.label10:destroy(); self.label10 = nil; end;
        if self.edit17 ~= nil then self.edit17:destroy(); self.edit17 = nil; end;
        if self.button10 ~= nil then self.button10:destroy(); self.button10 = nil; end;
        if self.label175 ~= nil then self.label175:destroy(); self.label175 = nil; end;
        if self.label304 ~= nil then self.label304:destroy(); self.label304 = nil; end;
        if self.label39 ~= nil then self.label39:destroy(); self.label39 = nil; end;
        if self.label79 ~= nil then self.label79:destroy(); self.label79 = nil; end;
        if self.label280 ~= nil then self.label280:destroy(); self.label280 = nil; end;
        if self.label11 ~= nil then self.label11:destroy(); self.label11 = nil; end;
        if self.edit15 ~= nil then self.edit15:destroy(); self.edit15 = nil; end;
        if self.label3 ~= nil then self.label3:destroy(); self.label3 = nil; end;
        if self.label20 ~= nil then self.label20:destroy(); self.label20 = nil; end;
        if self.flowLineBreak30 ~= nil then self.flowLineBreak30:destroy(); self.flowLineBreak30 = nil; end;
        if self.label285 ~= nil then self.label285:destroy(); self.label285 = nil; end;
        if self.label240 ~= nil then self.label240:destroy(); self.label240 = nil; end;
        if self.label309 ~= nil then self.label309:destroy(); self.label309 = nil; end;
        if self.label108 ~= nil then self.label108:destroy(); self.label108 = nil; end;
        if self.label357 ~= nil then self.label357:destroy(); self.label357 = nil; end;
        if self.button31 ~= nil then self.button31:destroy(); self.button31 = nil; end;
        if self.flowLineBreak43 ~= nil then self.flowLineBreak43:destroy(); self.flowLineBreak43 = nil; end;
        if self.label292 ~= nil then self.label292:destroy(); self.label292 = nil; end;
        if self.label7 ~= nil then self.label7:destroy(); self.label7 = nil; end;
        if self.label50 ~= nil then self.label50:destroy(); self.label50 = nil; end;
        if self.button8 ~= nil then self.button8:destroy(); self.button8 = nil; end;
        if self.button18 ~= nil then self.button18:destroy(); self.button18 = nil; end;
        if self.flowLineBreak67 ~= nil then self.flowLineBreak67:destroy(); self.flowLineBreak67 = nil; end;
        if self.comboBox27 ~= nil then self.comboBox27:destroy(); self.comboBox27 = nil; end;
        if self.label298 ~= nil then self.label298:destroy(); self.label298 = nil; end;
        if self.edit42 ~= nil then self.edit42:destroy(); self.edit42 = nil; end;
        if self.label281 ~= nil then self.label281:destroy(); self.label281 = nil; end;
        if self.label312 ~= nil then self.label312:destroy(); self.label312 = nil; end;
        if self.label365 ~= nil then self.label365:destroy(); self.label365 = nil; end;
        if self.label310 ~= nil then self.label310:destroy(); self.label310 = nil; end;
        if self.label297 ~= nil then self.label297:destroy(); self.label297 = nil; end;
        if self.label124 ~= nil then self.label124:destroy(); self.label124 = nil; end;
        if self.label84 ~= nil then self.label84:destroy(); self.label84 = nil; end;
        if self.image4 ~= nil then self.image4:destroy(); self.image4 = nil; end;
        if self.label264 ~= nil then self.label264:destroy(); self.label264 = nil; end;
        if self.image13 ~= nil then self.image13:destroy(); self.image13 = nil; end;
        if self.tab1 ~= nil then self.tab1:destroy(); self.tab1 = nil; end;
        if self.label207 ~= nil then self.label207:destroy(); self.label207 = nil; end;
        if self.edit32 ~= nil then self.edit32:destroy(); self.edit32 = nil; end;
        if self.label209 ~= nil then self.label209:destroy(); self.label209 = nil; end;
        if self.label262 ~= nil then self.label262:destroy(); self.label262 = nil; end;
        if self.dataLink12 ~= nil then self.dataLink12:destroy(); self.dataLink12 = nil; end;
        if self.comboBox24 ~= nil then self.comboBox24:destroy(); self.comboBox24 = nil; end;
        if self.label110 ~= nil then self.label110:destroy(); self.label110 = nil; end;
        if self.label326 ~= nil then self.label326:destroy(); self.label326 = nil; end;
        if self.comboBox44 ~= nil then self.comboBox44:destroy(); self.comboBox44 = nil; end;
        if self.comboBox17 ~= nil then self.comboBox17:destroy(); self.comboBox17 = nil; end;
        if self.label151 ~= nil then self.label151:destroy(); self.label151 = nil; end;
        if self.flowLineBreak23 ~= nil then self.flowLineBreak23:destroy(); self.flowLineBreak23 = nil; end;
        if self.label138 ~= nil then self.label138:destroy(); self.label138 = nil; end;
        if self.label40 ~= nil then self.label40:destroy(); self.label40 = nil; end;
        if self.dataLink4 ~= nil then self.dataLink4:destroy(); self.dataLink4 = nil; end;
        if self.comboBox13 ~= nil then self.comboBox13:destroy(); self.comboBox13 = nil; end;
        if self.image5 ~= nil then self.image5:destroy(); self.image5 = nil; end;
        if self.image7 ~= nil then self.image7:destroy(); self.image7 = nil; end;
        if self.edit28 ~= nil then self.edit28:destroy(); self.edit28 = nil; end;
        if self.label57 ~= nil then self.label57:destroy(); self.label57 = nil; end;
        if self.flowLineBreak22 ~= nil then self.flowLineBreak22:destroy(); self.flowLineBreak22 = nil; end;
        if self.label188 ~= nil then self.label188:destroy(); self.label188 = nil; end;
        if self.label343 ~= nil then self.label343:destroy(); self.label343 = nil; end;
        if self.label71 ~= nil then self.label71:destroy(); self.label71 = nil; end;
        if self.flowLineBreak62 ~= nil then self.flowLineBreak62:destroy(); self.flowLineBreak62 = nil; end;
        if self.label160 ~= nil then self.label160:destroy(); self.label160 = nil; end;
        if self.flowLineBreak7 ~= nil then self.flowLineBreak7:destroy(); self.flowLineBreak7 = nil; end;
        if self.label193 ~= nil then self.label193:destroy(); self.label193 = nil; end;
        if self.label22 ~= nil then self.label22:destroy(); self.label22 = nil; end;
        if self.button2 ~= nil then self.button2:destroy(); self.button2 = nil; end;
        if self.label177 ~= nil then self.label177:destroy(); self.label177 = nil; end;
        if self.flowLayout5 ~= nil then self.flowLayout5:destroy(); self.flowLayout5 = nil; end;
        if self.dataLink21 ~= nil then self.dataLink21:destroy(); self.dataLink21 = nil; end;
        if self.label144 ~= nil then self.label144:destroy(); self.label144 = nil; end;
        if self.label13 ~= nil then self.label13:destroy(); self.label13 = nil; end;
        if self.label27 ~= nil then self.label27:destroy(); self.label27 = nil; end;
        if self.label59 ~= nil then self.label59:destroy(); self.label59 = nil; end;
        if self.label68 ~= nil then self.label68:destroy(); self.label68 = nil; end;
        if self.button20 ~= nil then self.button20:destroy(); self.button20 = nil; end;
        if self.button38 ~= nil then self.button38:destroy(); self.button38 = nil; end;
        if self.dataLink23 ~= nil then self.dataLink23:destroy(); self.dataLink23 = nil; end;
        if self.label67 ~= nil then self.label67:destroy(); self.label67 = nil; end;
        if self.label270 ~= nil then self.label270:destroy(); self.label270 = nil; end;
        if self.label247 ~= nil then self.label247:destroy(); self.label247 = nil; end;
        if self.label275 ~= nil then self.label275:destroy(); self.label275 = nil; end;
        if self.label362 ~= nil then self.label362:destroy(); self.label362 = nil; end;
        if self.button1 ~= nil then self.button1:destroy(); self.button1 = nil; end;
        if self.comboBox3 ~= nil then self.comboBox3:destroy(); self.comboBox3 = nil; end;
        if self.label140 ~= nil then self.label140:destroy(); self.label140 = nil; end;
        if self.label257 ~= nil then self.label257:destroy(); self.label257 = nil; end;
        if self.edit26 ~= nil then self.edit26:destroy(); self.edit26 = nil; end;
        if self.label69 ~= nil then self.label69:destroy(); self.label69 = nil; end;
        if self.comboBox37 ~= nil then self.comboBox37:destroy(); self.comboBox37 = nil; end;
        if self.edit34 ~= nil then self.edit34:destroy(); self.edit34 = nil; end;
        if self.label31 ~= nil then self.label31:destroy(); self.label31 = nil; end;
        if self.edit19 ~= nil then self.edit19:destroy(); self.edit19 = nil; end;
        if self.label352 ~= nil then self.label352:destroy(); self.label352 = nil; end;
        if self.label105 ~= nil then self.label105:destroy(); self.label105 = nil; end;
        if self.tab8 ~= nil then self.tab8:destroy(); self.tab8 = nil; end;
        if self.label154 ~= nil then self.label154:destroy(); self.label154 = nil; end;
        if self.label34 ~= nil then self.label34:destroy(); self.label34 = nil; end;
        if self.edit5 ~= nil then self.edit5:destroy(); self.edit5 = nil; end;
        if self.label126 ~= nil then self.label126:destroy(); self.label126 = nil; end;
        if self.comboBox12 ~= nil then self.comboBox12:destroy(); self.comboBox12 = nil; end;
        if self.label203 ~= nil then self.label203:destroy(); self.label203 = nil; end;
        if self.label234 ~= nil then self.label234:destroy(); self.label234 = nil; end;
        if self.label301 ~= nil then self.label301:destroy(); self.label301 = nil; end;
        if self.label41 ~= nil then self.label41:destroy(); self.label41 = nil; end;
        if self.label145 ~= nil then self.label145:destroy(); self.label145 = nil; end;
        if self.label72 ~= nil then self.label72:destroy(); self.label72 = nil; end;
        if self.label88 ~= nil then self.label88:destroy(); self.label88 = nil; end;
        if self.tab5 ~= nil then self.tab5:destroy(); self.tab5 = nil; end;
        if self.label12 ~= nil then self.label12:destroy(); self.label12 = nil; end;
        if self.label190 ~= nil then self.label190:destroy(); self.label190 = nil; end;
        if self.flowLineBreak29 ~= nil then self.flowLineBreak29:destroy(); self.flowLineBreak29 = nil; end;
        if self.label131 ~= nil then self.label131:destroy(); self.label131 = nil; end;
        if self.label16 ~= nil then self.label16:destroy(); self.label16 = nil; end;
        if self.label253 ~= nil then self.label253:destroy(); self.label253 = nil; end;
        if self.button29 ~= nil then self.button29:destroy(); self.button29 = nil; end;
        if self.edit10 ~= nil then self.edit10:destroy(); self.edit10 = nil; end;
        if self.flowLineBreak17 ~= nil then self.flowLineBreak17:destroy(); self.flowLineBreak17 = nil; end;
        if self.edit31 ~= nil then self.edit31:destroy(); self.edit31 = nil; end;
        if self.edit1 ~= nil then self.edit1:destroy(); self.edit1 = nil; end;
        if self.label289 ~= nil then self.label289:destroy(); self.label289 = nil; end;
        if self.comboBox14 ~= nil then self.comboBox14:destroy(); self.comboBox14 = nil; end;
        if self.label78 ~= nil then self.label78:destroy(); self.label78 = nil; end;
        if self.label222 ~= nil then self.label222:destroy(); self.label222 = nil; end;
        if self.label101 ~= nil then self.label101:destroy(); self.label101 = nil; end;
        if self.label211 ~= nil then self.label211:destroy(); self.label211 = nil; end;
        if self.dataLink16 ~= nil then self.dataLink16:destroy(); self.dataLink16 = nil; end;
        if self.label167 ~= nil then self.label167:destroy(); self.label167 = nil; end;
        if self.flowLineBreak42 ~= nil then self.flowLineBreak42:destroy(); self.flowLineBreak42 = nil; end;
        if self.image3 ~= nil then self.image3:destroy(); self.image3 = nil; end;
        if self.image8 ~= nil then self.image8:destroy(); self.image8 = nil; end;
        if self.label58 ~= nil then self.label58:destroy(); self.label58 = nil; end;
        if self.comboBox1 ~= nil then self.comboBox1:destroy(); self.comboBox1 = nil; end;
        if self.label114 ~= nil then self.label114:destroy(); self.label114 = nil; end;
        if self.comboBox18 ~= nil then self.comboBox18:destroy(); self.comboBox18 = nil; end;
        if self.label197 ~= nil then self.label197:destroy(); self.label197 = nil; end;
        if self.label259 ~= nil then self.label259:destroy(); self.label259 = nil; end;
        if self.label135 ~= nil then self.label135:destroy(); self.label135 = nil; end;
        if self.edit23 ~= nil then self.edit23:destroy(); self.edit23 = nil; end;
        if self.flowLineBreak28 ~= nil then self.flowLineBreak28:destroy(); self.flowLineBreak28 = nil; end;
        if self.label155 ~= nil then self.label155:destroy(); self.label155 = nil; end;
        if self.flowLineBreak32 ~= nil then self.flowLineBreak32:destroy(); self.flowLineBreak32 = nil; end;
        if self.label221 ~= nil then self.label221:destroy(); self.label221 = nil; end;
        if self.tab7 ~= nil then self.tab7:destroy(); self.tab7 = nil; end;
        if self.tab9 ~= nil then self.tab9:destroy(); self.tab9 = nil; end;
        if self.label56 ~= nil then self.label56:destroy(); self.label56 = nil; end;
        if self.comboBox29 ~= nil then self.comboBox29:destroy(); self.comboBox29 = nil; end;
        if self.label237 ~= nil then self.label237:destroy(); self.label237 = nil; end;
        if self.flowLineBreak15 ~= nil then self.flowLineBreak15:destroy(); self.flowLineBreak15 = nil; end;
        if self.label267 ~= nil then self.label267:destroy(); self.label267 = nil; end;
        if self.label283 ~= nil then self.label283:destroy(); self.label283 = nil; end;
        if self.label21 ~= nil then self.label21:destroy(); self.label21 = nil; end;
        if self.label120 ~= nil then self.label120:destroy(); self.label120 = nil; end;
        if self.label349 ~= nil then self.label349:destroy(); self.label349 = nil; end;
        if self.edit40 ~= nil then self.edit40:destroy(); self.edit40 = nil; end;
        if self.label245 ~= nil then self.label245:destroy(); self.label245 = nil; end;
        if self.dataLink2 ~= nil then self.dataLink2:destroy(); self.dataLink2 = nil; end;
        if self.flowLineBreak26 ~= nil then self.flowLineBreak26:destroy(); self.flowLineBreak26 = nil; end;
        if self.label370 ~= nil then self.label370:destroy(); self.label370 = nil; end;
        if self.flowLineBreak11 ~= nil then self.flowLineBreak11:destroy(); self.flowLineBreak11 = nil; end;
        if self.edit38 ~= nil then self.edit38:destroy(); self.edit38 = nil; end;
        if self.dataLink15 ~= nil then self.dataLink15:destroy(); self.dataLink15 = nil; end;
        if self.label130 ~= nil then self.label130:destroy(); self.label130 = nil; end;
        if self.flowLineBreak24 ~= nil then self.flowLineBreak24:destroy(); self.flowLineBreak24 = nil; end;
        if self.richEdit1 ~= nil then self.richEdit1:destroy(); self.richEdit1 = nil; end;
        if self.label54 ~= nil then self.label54:destroy(); self.label54 = nil; end;
        if self.comboBox42 ~= nil then self.comboBox42:destroy(); self.comboBox42 = nil; end;
        if self.label191 ~= nil then self.label191:destroy(); self.label191 = nil; end;
        if self.label369 ~= nil then self.label369:destroy(); self.label369 = nil; end;
        if self.comboBox41 ~= nil then self.comboBox41:destroy(); self.comboBox41 = nil; end;
        if self.flowLayout6 ~= nil then self.flowLayout6:destroy(); self.flowLayout6 = nil; end;
        if self.label345 ~= nil then self.label345:destroy(); self.label345 = nil; end;
        if self.label152 ~= nil then self.label152:destroy(); self.label152 = nil; end;
        if self.button9 ~= nil then self.button9:destroy(); self.button9 = nil; end;
        if self.label182 ~= nil then self.label182:destroy(); self.label182 = nil; end;
        if self.comboBox30 ~= nil then self.comboBox30:destroy(); self.comboBox30 = nil; end;
        if self.label202 ~= nil then self.label202:destroy(); self.label202 = nil; end;
        if self.edit6 ~= nil then self.edit6:destroy(); self.edit6 = nil; end;
        if self.flowLineBreak12 ~= nil then self.flowLineBreak12:destroy(); self.flowLineBreak12 = nil; end;
        if self.label205 ~= nil then self.label205:destroy(); self.label205 = nil; end;
        if self.flowLineBreak53 ~= nil then self.flowLineBreak53:destroy(); self.flowLineBreak53 = nil; end;
        if self.label318 ~= nil then self.label318:destroy(); self.label318 = nil; end;
        if self.label18 ~= nil then self.label18:destroy(); self.label18 = nil; end;
        if self.edit3 ~= nil then self.edit3:destroy(); self.edit3 = nil; end;
        if self.label255 ~= nil then self.label255:destroy(); self.label255 = nil; end;
        if self.label252 ~= nil then self.label252:destroy(); self.label252 = nil; end;
        if self.comboBox23 ~= nil then self.comboBox23:destroy(); self.comboBox23 = nil; end;
        if self.label62 ~= nil then self.label62:destroy(); self.label62 = nil; end;
        if self.label337 ~= nil then self.label337:destroy(); self.label337 = nil; end;
        if self.label117 ~= nil then self.label117:destroy(); self.label117 = nil; end;
        if self.label238 ~= nil then self.label238:destroy(); self.label238 = nil; end;
        if self.label303 ~= nil then self.label303:destroy(); self.label303 = nil; end;
        if self.label210 ~= nil then self.label210:destroy(); self.label210 = nil; end;
        if self.label229 ~= nil then self.label229:destroy(); self.label229 = nil; end;
        if self.edit18 ~= nil then self.edit18:destroy(); self.edit18 = nil; end;
        if self.edit25 ~= nil then self.edit25:destroy(); self.edit25 = nil; end;
        if self.flowLineBreak61 ~= nil then self.flowLineBreak61:destroy(); self.flowLineBreak61 = nil; end;
        if self.label346 ~= nil then self.label346:destroy(); self.label346 = nil; end;
        if self.comboBox43 ~= nil then self.comboBox43:destroy(); self.comboBox43 = nil; end;
        if self.label171 ~= nil then self.label171:destroy(); self.label171 = nil; end;
        if self.label33 ~= nil then self.label33:destroy(); self.label33 = nil; end;
        if self.tab6 ~= nil then self.tab6:destroy(); self.tab6 = nil; end;
        if self.label123 ~= nil then self.label123:destroy(); self.label123 = nil; end;
        if self.label178 ~= nil then self.label178:destroy(); self.label178 = nil; end;
        if self.label44 ~= nil then self.label44:destroy(); self.label44 = nil; end;
        if self.comboBox26 ~= nil then self.comboBox26:destroy(); self.comboBox26 = nil; end;
        if self.label272 ~= nil then self.label272:destroy(); self.label272 = nil; end;
        if self.label95 ~= nil then self.label95:destroy(); self.label95 = nil; end;
        if self.flowLineBreak9 ~= nil then self.flowLineBreak9:destroy(); self.flowLineBreak9 = nil; end;
        if self.label179 ~= nil then self.label179:destroy(); self.label179 = nil; end;
        if self.label244 ~= nil then self.label244:destroy(); self.label244 = nil; end;
        if self.label316 ~= nil then self.label316:destroy(); self.label316 = nil; end;
        if self.label233 ~= nil then self.label233:destroy(); self.label233 = nil; end;
        if self.label83 ~= nil then self.label83:destroy(); self.label83 = nil; end;
        if self.label344 ~= nil then self.label344:destroy(); self.label344 = nil; end;
        if self.label354 ~= nil then self.label354:destroy(); self.label354 = nil; end;
        if self.label165 ~= nil then self.label165:destroy(); self.label165 = nil; end;
        if self.label174 ~= nil then self.label174:destroy(); self.label174 = nil; end;
        if self.label98 ~= nil then self.label98:destroy(); self.label98 = nil; end;
        if self.flowLayout3 ~= nil then self.flowLayout3:destroy(); self.flowLayout3 = nil; end;
        if self.label113 ~= nil then self.label113:destroy(); self.label113 = nil; end;
        if self.flowLineBreak46 ~= nil then self.flowLineBreak46:destroy(); self.flowLineBreak46 = nil; end;
        if self.label274 ~= nil then self.label274:destroy(); self.label274 = nil; end;
        if self.edit7 ~= nil then self.edit7:destroy(); self.edit7 = nil; end;
        if self.label55 ~= nil then self.label55:destroy(); self.label55 = nil; end;
        if self.edit12 ~= nil then self.edit12:destroy(); self.edit12 = nil; end;
        if self.label66 ~= nil then self.label66:destroy(); self.label66 = nil; end;
        if self.flowLineBreak31 ~= nil then self.flowLineBreak31:destroy(); self.flowLineBreak31 = nil; end;
        if self.edit35 ~= nil then self.edit35:destroy(); self.edit35 = nil; end;
        if self.label26 ~= nil then self.label26:destroy(); self.label26 = nil; end;
        if self.label353 ~= nil then self.label353:destroy(); self.label353 = nil; end;
        if self.comboBox4 ~= nil then self.comboBox4:destroy(); self.comboBox4 = nil; end;
        if self.image14 ~= nil then self.image14:destroy(); self.image14 = nil; end;
        if self.dataLink13 ~= nil then self.dataLink13:destroy(); self.dataLink13 = nil; end;
        if self.label112 ~= nil then self.label112:destroy(); self.label112 = nil; end;
        if self.label121 ~= nil then self.label121:destroy(); self.label121 = nil; end;
        if self.label169 ~= nil then self.label169:destroy(); self.label169 = nil; end;
        if self.label65 ~= nil then self.label65:destroy(); self.label65 = nil; end;
        if self.image2 ~= nil then self.image2:destroy(); self.image2 = nil; end;
        if self.label213 ~= nil then self.label213:destroy(); self.label213 = nil; end;
        if self.label239 ~= nil then self.label239:destroy(); self.label239 = nil; end;
        if self.label300 ~= nil then self.label300:destroy(); self.label300 = nil; end;
        if self.image6 ~= nil then self.image6:destroy(); self.image6 = nil; end;
        if self.flowLineBreak21 ~= nil then self.flowLineBreak21:destroy(); self.flowLineBreak21 = nil; end;
        if self.label60 ~= nil then self.label60:destroy(); self.label60 = nil; end;
        if self.label64 ~= nil then self.label64:destroy(); self.label64 = nil; end;
        if self.label286 ~= nil then self.label286:destroy(); self.label286 = nil; end;
        if self.flowLineBreak65 ~= nil then self.flowLineBreak65:destroy(); self.flowLineBreak65 = nil; end;
        if self.label311 ~= nil then self.label311:destroy(); self.label311 = nil; end;
        if self.label150 ~= nil then self.label150:destroy(); self.label150 = nil; end;
        if self.label173 ~= nil then self.label173:destroy(); self.label173 = nil; end;
        if self.label356 ~= nil then self.label356:destroy(); self.label356 = nil; end;
        if self.label217 ~= nil then self.label217:destroy(); self.label217 = nil; end;
        if self.label231 ~= nil then self.label231:destroy(); self.label231 = nil; end;
        if self.label320 ~= nil then self.label320:destroy(); self.label320 = nil; end;
        if self.flowLineBreak59 ~= nil then self.flowLineBreak59:destroy(); self.flowLineBreak59 = nil; end;
        if self.label4 ~= nil then self.label4:destroy(); self.label4 = nil; end;
        if self.button34 ~= nil then self.button34:destroy(); self.button34 = nil; end;
        if self.edit44 ~= nil then self.edit44:destroy(); self.edit44 = nil; end;
        if self.dataLink14 ~= nil then self.dataLink14:destroy(); self.dataLink14 = nil; end;
        if self.label136 ~= nil then self.label136:destroy(); self.label136 = nil; end;
        if self.label290 ~= nil then self.label290:destroy(); self.label290 = nil; end;
        if self.label74 ~= nil then self.label74:destroy(); self.label74 = nil; end;
        if self.label189 ~= nil then self.label189:destroy(); self.label189 = nil; end;
        if self.label265 ~= nil then self.label265:destroy(); self.label265 = nil; end;
        if self.label149 ~= nil then self.label149:destroy(); self.label149 = nil; end;
        if self.dataLink19 ~= nil then self.dataLink19:destroy(); self.dataLink19 = nil; end;
        if self.label180 ~= nil then self.label180:destroy(); self.label180 = nil; end;
        if self.label251 ~= nil then self.label251:destroy(); self.label251 = nil; end;
        if self.label172 ~= nil then self.label172:destroy(); self.label172 = nil; end;
        if self.button22 ~= nil then self.button22:destroy(); self.button22 = nil; end;
        if self.label249 ~= nil then self.label249:destroy(); self.label249 = nil; end;
        if self.comboBox16 ~= nil then self.comboBox16:destroy(); self.comboBox16 = nil; end;
        if self.flowLayout9 ~= nil then self.flowLayout9:destroy(); self.flowLayout9 = nil; end;
        if self.dataLink17 ~= nil then self.dataLink17:destroy(); self.dataLink17 = nil; end;
        if self.label9 ~= nil then self.label9:destroy(); self.label9 = nil; end;
        if self.label28 ~= nil then self.label28:destroy(); self.label28 = nil; end;
        if self.label157 ~= nil then self.label157:destroy(); self.label157 = nil; end;
        if self.flowLineBreak1 ~= nil then self.flowLineBreak1:destroy(); self.flowLineBreak1 = nil; end;
        if self.label219 ~= nil then self.label219:destroy(); self.label219 = nil; end;
        if self.label208 ~= nil then self.label208:destroy(); self.label208 = nil; end;
        if self.label308 ~= nil then self.label308:destroy(); self.label308 = nil; end;
        if self.edit30 ~= nil then self.edit30:destroy(); self.edit30 = nil; end;
        if self.tab4 ~= nil then self.tab4:destroy(); self.tab4 = nil; end;
        if self.label137 ~= nil then self.label137:destroy(); self.label137 = nil; end;
        if self.label80 ~= nil then self.label80:destroy(); self.label80 = nil; end;
        if self.comboBox33 ~= nil then self.comboBox33:destroy(); self.comboBox33 = nil; end;
        if self.comboBox25 ~= nil then self.comboBox25:destroy(); self.comboBox25 = nil; end;
        if self.label232 ~= nil then self.label232:destroy(); self.label232 = nil; end;
        if self.comboBox5 ~= nil then self.comboBox5:destroy(); self.comboBox5 = nil; end;
        if self.comboBox19 ~= nil then self.comboBox19:destroy(); self.comboBox19 = nil; end;
        if self.label118 ~= nil then self.label118:destroy(); self.label118 = nil; end;
        if self.flowLineBreak3 ~= nil then self.flowLineBreak3:destroy(); self.flowLineBreak3 = nil; end;
        if self.label314 ~= nil then self.label314:destroy(); self.label314 = nil; end;
        if self.edit43 ~= nil then self.edit43:destroy(); self.edit43 = nil; end;
        if self.label17 ~= nil then self.label17:destroy(); self.label17 = nil; end;
        if self.label100 ~= nil then self.label100:destroy(); self.label100 = nil; end;
        if self.label156 ~= nil then self.label156:destroy(); self.label156 = nil; end;
        if self.flowLineBreak45 ~= nil then self.flowLineBreak45:destroy(); self.flowLineBreak45 = nil; end;
        if self.label250 ~= nil then self.label250:destroy(); self.label250 = nil; end;
        if self.button23 ~= nil then self.button23:destroy(); self.button23 = nil; end;
        if self.edit39 ~= nil then self.edit39:destroy(); self.edit39 = nil; end;
        if self.label168 ~= nil then self.label168:destroy(); self.label168 = nil; end;
        if self.label204 ~= nil then self.label204:destroy(); self.label204 = nil; end;
        if self.label266 ~= nil then self.label266:destroy(); self.label266 = nil; end;
        if self.label282 ~= nil then self.label282:destroy(); self.label282 = nil; end;
        if self.dataLink1 ~= nil then self.dataLink1:destroy(); self.dataLink1 = nil; end;
        if self.label187 ~= nil then self.label187:destroy(); self.label187 = nil; end;
        if self.button12 ~= nil then self.button12:destroy(); self.button12 = nil; end;
        if self.label241 ~= nil then self.label241:destroy(); self.label241 = nil; end;
        if self.label36 ~= nil then self.label36:destroy(); self.label36 = nil; end;
        if self.comboBox9 ~= nil then self.comboBox9:destroy(); self.comboBox9 = nil; end;
        if self.flowLineBreak52 ~= nil then self.flowLineBreak52:destroy(); self.flowLineBreak52 = nil; end;
        if self.label291 ~= nil then self.label291:destroy(); self.label291 = nil; end;
        if self.label294 ~= nil then self.label294:destroy(); self.label294 = nil; end;
        if self.comboBox8 ~= nil then self.comboBox8:destroy(); self.comboBox8 = nil; end;
        if self.label226 ~= nil then self.label226:destroy(); self.label226 = nil; end;
        if self.label218 ~= nil then self.label218:destroy(); self.label218 = nil; end;
        if self.button17 ~= nil then self.button17:destroy(); self.button17 = nil; end;
        if self.flowLineBreak10 ~= nil then self.flowLineBreak10:destroy(); self.flowLineBreak10 = nil; end;
        if self.label85 ~= nil then self.label85:destroy(); self.label85 = nil; end;
        if self.label46 ~= nil then self.label46:destroy(); self.label46 = nil; end;
        if self.button25 ~= nil then self.button25:destroy(); self.button25 = nil; end;
        if self.flowLineBreak8 ~= nil then self.flowLineBreak8:destroy(); self.flowLineBreak8 = nil; end;
        if self.label322 ~= nil then self.label322:destroy(); self.label322 = nil; end;
        if self.label183 ~= nil then self.label183:destroy(); self.label183 = nil; end;
        if self.label153 ~= nil then self.label153:destroy(); self.label153 = nil; end;
        if self.label87 ~= nil then self.label87:destroy(); self.label87 = nil; end;
        if self.label104 ~= nil then self.label104:destroy(); self.label104 = nil; end;
        if self.comboBox32 ~= nil then self.comboBox32:destroy(); self.comboBox32 = nil; end;
        if self.label363 ~= nil then self.label363:destroy(); self.label363 = nil; end;
        if self.label25 ~= nil then self.label25:destroy(); self.label25 = nil; end;
        if self.comboBox40 ~= nil then self.comboBox40:destroy(); self.comboBox40 = nil; end;
        if self.flowLineBreak39 ~= nil then self.flowLineBreak39:destroy(); self.flowLineBreak39 = nil; end;
        if self.comboBox34 ~= nil then self.comboBox34:destroy(); self.comboBox34 = nil; end;
        if self.edit22 ~= nil then self.edit22:destroy(); self.edit22 = nil; end;
        if self.label5 ~= nil then self.label5:destroy(); self.label5 = nil; end;
        if self.flowLineBreak34 ~= nil then self.flowLineBreak34:destroy(); self.flowLineBreak34 = nil; end;
        if self.label296 ~= nil then self.label296:destroy(); self.label296 = nil; end;
        if self.label141 ~= nil then self.label141:destroy(); self.label141 = nil; end;
        if self.dataLink11 ~= nil then self.dataLink11:destroy(); self.dataLink11 = nil; end;
        if self.label277 ~= nil then self.label277:destroy(); self.label277 = nil; end;
        if self.button19 ~= nil then self.button19:destroy(); self.button19 = nil; end;
        if self.button14 ~= nil then self.button14:destroy(); self.button14 = nil; end;
        if self.flowLineBreak4 ~= nil then self.flowLineBreak4:destroy(); self.flowLineBreak4 = nil; end;
        if self.flowLineBreak56 ~= nil then self.flowLineBreak56:destroy(); self.flowLineBreak56 = nil; end;
        if self.label134 ~= nil then self.label134:destroy(); self.label134 = nil; end;
        if self.label243 ~= nil then self.label243:destroy(); self.label243 = nil; end;
        if self.label260 ~= nil then self.label260:destroy(); self.label260 = nil; end;
        if self.label276 ~= nil then self.label276:destroy(); self.label276 = nil; end;
        if self.label368 ~= nil then self.label368:destroy(); self.label368 = nil; end;
        if self.edit20 ~= nil then self.edit20:destroy(); self.edit20 = nil; end;
        self:_oldLFMDestroy();
    end;

    obj:endUpdate();

    return obj;
end;

function newfrmFTTWY()
    local retObj = nil;
    __o_rrpgObjs.beginObjectsLoading();

    __o_Utils.tryFinally(
      function()
        retObj = constructNew_frmFTTWY();
      end,
      function()
        __o_rrpgObjs.endObjectsLoading();
      end);

    assert(retObj ~= nil);
    return retObj;
end;

local _frmFTTWY = {
    newEditor = newfrmFTTWY, 
    new = newfrmFTTWY, 
    name = "frmFTTWY", 
    dataType = "br.com.rrpg.FairyTailTheWorldIsYours", 
    formType = "sheetTemplate", 
    formComponentName = "form", 
    title = "FairyTail - The World Is Yours/D20", 
    description=""};

frmFTTWY = _frmFTTWY;
Firecast.registrarForm(_frmFTTWY);
Firecast.registrarDataType(_frmFTTWY);

return _frmFTTWY;
