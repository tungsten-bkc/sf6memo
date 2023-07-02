class Technique{
  static Map nomal_technique={
    0:{'name':'LP','command':'LP'},
    1:{'name':'LP 酔いLv1','command':'LP'},
    2:{'name':'MP','command':'MP'},
    3:{'name':'HP','command':'HP'},
    4:{'name':'LK','command':'LK'},
    5:{'name':'MK','command':'MK'},
    6:{'name':'HK','command':'HK'},
    7:{'name':'2LP','command':'2LP'},
    8:{'name':'2MP','command':'2MP'},
    9:{'name':'2HP','command':'2HP'},
    10:{'name':'2LK','command':'2LK'},
    11:{'name':'2MK','command':'2MK'},
    12:{'name':'2HK','command':'2HK'},
    13:{'name':'JLP','command':'JLP'},
    14:{'name':'JMP','command':'JMP'},
    15:{'name':'JHP','command':'JHP'},
    16:{'name':'JLK','command':'JLK'},
    17:{'name':'JMK','command':'JMK'},
    18:{'name':'JHK','command':'JHK'},
  };

  static Map unique_technique={
    0:{'name':'天晴脚','command':'2KK'},
    1:{'name':'幻酔舞 2段止め','command':'2HK>HK'},
    2:{'name':'幻酔舞 出し切り','command':'2HK>HK>P'},
    3:{'name':'落星脚','command':'6MK'},
    4:{'name':'円月脚 2段止め','command':'6MK>MK'},
    5:{'name':'円月脚 出し切り','command':'6MK>MK>P'},
    6:{'name':'仙姑肘','command':'4HP'},
    7:{'name':'酩酊襲 2段止め','command':'4HP>HP'},
    8:{'name':'酩酊襲 出し切り','command':'4HP>HP>HK'},
    9:{'name':'旋影脚','command':'6HK'},
    10:{'name':'旋影脚 2段止め','command':'6HK>4HK'},
    11:{'name':'旋影脚 最速','command':'6HK>4HK>P'},
    12:{'name':'旋影脚','command':'6HK>4HK>P'},
    13:{'name':'旋影脚 遅らせ','command':'6HK>4HK>P'}
  };

  static Map special_technique={
    0:{'name':'魔身','command':'2PP'},
    1:{'name':'流酔拳/流酔脚 弱 1段目','command':'236LP'},
    2:{'name':'流酔拳 2段目','command':'236P>6P'},
    3:{'name':'流酔拳 3段目','command':'236P>6P>6P'},
    4:{'name':'酔疾歩 弱','command':'214LP'},
    5:{'name':'酔疾歩 中','command':'214MP'},
    6:{'name':'酔疾歩 強','command':'214HP'},
    7:{'name':'OD酔疾歩','command':'214PP'},
    8:{'name':'張弓腿 弱','command':'623LK'},
    9:{'name':'張弓腿 中','command':'623MK'},
    10:{'name':'張弓腿 強','command':'623HK'},
    11:{'name':'OD張弓腿','command':'623KK'}
  };

  static Map super_arts={
  0:{'name':'Lv1:戦麗禽','command':'236236K'},
  1:{'name':'Lv1:戦麗禽 飲酒','command':'236236K→2ホールド'},
  2:{'name':'Lv2:絶唱魔身','command':'214214P'},
  3:{'name':'Lv3:月牙叉炮','command':'236236P'}
};
}