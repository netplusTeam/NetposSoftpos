.class public Lcom/itextpdf/kernel/colors/WebColors;
.super Ljava/util/HashMap;
.source "WebColors.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "[I>;"
    }
.end annotation


# static fields
.field public static final NAMES:Lcom/itextpdf/kernel/colors/WebColors;

.field private static final RGB_MAX_VAL:D = 255.0

.field private static final serialVersionUID:J = 0x312991fdb898ade0L


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 64
    new-instance v0, Lcom/itextpdf/kernel/colors/WebColors;

    invoke-direct {v0}, Lcom/itextpdf/kernel/colors/WebColors;-><init>()V

    sput-object v0, Lcom/itextpdf/kernel/colors/WebColors;->NAMES:Lcom/itextpdf/kernel/colors/WebColors;

    .line 69
    const/4 v1, 0x4

    new-array v2, v1, [I

    fill-array-data v2, :array_0

    const-string v3, "aliceblue"

    invoke-virtual {v0, v3, v2}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    new-array v2, v1, [I

    fill-array-data v2, :array_1

    const-string v3, "antiquewhite"

    invoke-virtual {v0, v3, v2}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    new-array v2, v1, [I

    fill-array-data v2, :array_2

    const-string v3, "aqua"

    invoke-virtual {v0, v3, v2}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    new-array v2, v1, [I

    fill-array-data v2, :array_3

    const-string v3, "aquamarine"

    invoke-virtual {v0, v3, v2}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    new-array v2, v1, [I

    fill-array-data v2, :array_4

    const-string v3, "azure"

    invoke-virtual {v0, v3, v2}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    new-array v2, v1, [I

    fill-array-data v2, :array_5

    const-string v3, "beige"

    invoke-virtual {v0, v3, v2}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    new-array v2, v1, [I

    fill-array-data v2, :array_6

    const-string v3, "bisque"

    invoke-virtual {v0, v3, v2}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    new-array v2, v1, [I

    fill-array-data v2, :array_7

    const-string v3, "black"

    invoke-virtual {v0, v3, v2}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    new-array v2, v1, [I

    fill-array-data v2, :array_8

    const-string v3, "blanchedalmond"

    invoke-virtual {v0, v3, v2}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    new-array v2, v1, [I

    fill-array-data v2, :array_9

    const-string v3, "blue"

    invoke-virtual {v0, v3, v2}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    new-array v2, v1, [I

    fill-array-data v2, :array_a

    const-string v3, "blueviolet"

    invoke-virtual {v0, v3, v2}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    new-array v2, v1, [I

    fill-array-data v2, :array_b

    const-string v3, "brown"

    invoke-virtual {v0, v3, v2}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    new-array v2, v1, [I

    fill-array-data v2, :array_c

    const-string v3, "burlywood"

    invoke-virtual {v0, v3, v2}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    new-array v2, v1, [I

    fill-array-data v2, :array_d

    const-string v3, "cadetblue"

    invoke-virtual {v0, v3, v2}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    new-array v2, v1, [I

    fill-array-data v2, :array_e

    const-string v3, "chartreuse"

    invoke-virtual {v0, v3, v2}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    new-array v2, v1, [I

    fill-array-data v2, :array_f

    const-string v3, "chocolate"

    invoke-virtual {v0, v3, v2}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    new-array v2, v1, [I

    fill-array-data v2, :array_10

    const-string v3, "coral"

    invoke-virtual {v0, v3, v2}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    new-array v2, v1, [I

    fill-array-data v2, :array_11

    const-string v3, "cornflowerblue"

    invoke-virtual {v0, v3, v2}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    new-array v2, v1, [I

    fill-array-data v2, :array_12

    const-string v3, "cornsilk"

    invoke-virtual {v0, v3, v2}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    new-array v2, v1, [I

    fill-array-data v2, :array_13

    const-string v3, "crimson"

    invoke-virtual {v0, v3, v2}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    new-array v2, v1, [I

    fill-array-data v2, :array_14

    const-string v3, "cyan"

    invoke-virtual {v0, v3, v2}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    new-array v2, v1, [I

    fill-array-data v2, :array_15

    const-string v3, "darkblue"

    invoke-virtual {v0, v3, v2}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    new-array v2, v1, [I

    fill-array-data v2, :array_16

    const-string v3, "darkcyan"

    invoke-virtual {v0, v3, v2}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    new-array v2, v1, [I

    fill-array-data v2, :array_17

    const-string v3, "darkgoldenrod"

    invoke-virtual {v0, v3, v2}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    new-array v2, v1, [I

    fill-array-data v2, :array_18

    const-string v3, "darkgray"

    invoke-virtual {v0, v3, v2}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    new-array v2, v1, [I

    fill-array-data v2, :array_19

    const-string v3, "darkgrey"

    invoke-virtual {v0, v3, v2}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    new-array v2, v1, [I

    fill-array-data v2, :array_1a

    const-string v3, "darkgreen"

    invoke-virtual {v0, v3, v2}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    new-array v2, v1, [I

    fill-array-data v2, :array_1b

    const-string v3, "darkkhaki"

    invoke-virtual {v0, v3, v2}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    new-array v2, v1, [I

    fill-array-data v2, :array_1c

    const-string v3, "darkmagenta"

    invoke-virtual {v0, v3, v2}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    new-array v2, v1, [I

    fill-array-data v2, :array_1d

    const-string v3, "darkolivegreen"

    invoke-virtual {v0, v3, v2}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    new-array v2, v1, [I

    fill-array-data v2, :array_1e

    const-string v3, "darkorange"

    invoke-virtual {v0, v3, v2}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    new-array v2, v1, [I

    fill-array-data v2, :array_1f

    const-string v3, "darkorchid"

    invoke-virtual {v0, v3, v2}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    new-array v2, v1, [I

    fill-array-data v2, :array_20

    const-string v3, "darkred"

    invoke-virtual {v0, v3, v2}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    new-array v2, v1, [I

    fill-array-data v2, :array_21

    const-string v3, "darksalmon"

    invoke-virtual {v0, v3, v2}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    new-array v2, v1, [I

    fill-array-data v2, :array_22

    const-string v3, "darkseagreen"

    invoke-virtual {v0, v3, v2}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    new-array v2, v1, [I

    fill-array-data v2, :array_23

    const-string v3, "darkslateblue"

    invoke-virtual {v0, v3, v2}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    new-array v2, v1, [I

    fill-array-data v2, :array_24

    const-string v3, "darkslategray"

    invoke-virtual {v0, v3, v2}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    new-array v2, v1, [I

    fill-array-data v2, :array_25

    const-string v3, "darkslategrey"

    invoke-virtual {v0, v3, v2}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    new-array v2, v1, [I

    fill-array-data v2, :array_26

    const-string v3, "darkturquoise"

    invoke-virtual {v0, v3, v2}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    new-array v2, v1, [I

    fill-array-data v2, :array_27

    const-string v3, "darkviolet"

    invoke-virtual {v0, v3, v2}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    new-array v2, v1, [I

    fill-array-data v2, :array_28

    const-string v3, "deeppink"

    invoke-virtual {v0, v3, v2}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    new-array v2, v1, [I

    fill-array-data v2, :array_29

    const-string v3, "deepskyblue"

    invoke-virtual {v0, v3, v2}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    new-array v2, v1, [I

    fill-array-data v2, :array_2a

    const-string v3, "dimgray"

    invoke-virtual {v0, v3, v2}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    new-array v2, v1, [I

    fill-array-data v2, :array_2b

    const-string v3, "dimgrey"

    invoke-virtual {v0, v3, v2}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    new-array v2, v1, [I

    fill-array-data v2, :array_2c

    const-string v3, "dodgerblue"

    invoke-virtual {v0, v3, v2}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    new-array v2, v1, [I

    fill-array-data v2, :array_2d

    const-string v3, "firebrick"

    invoke-virtual {v0, v3, v2}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    new-array v2, v1, [I

    fill-array-data v2, :array_2e

    const-string v3, "floralwhite"

    invoke-virtual {v0, v3, v2}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    new-array v2, v1, [I

    fill-array-data v2, :array_2f

    const-string v3, "forestgreen"

    invoke-virtual {v0, v3, v2}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    new-array v2, v1, [I

    fill-array-data v2, :array_30

    const-string v3, "fuchsia"

    invoke-virtual {v0, v3, v2}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    new-array v2, v1, [I

    fill-array-data v2, :array_31

    const-string v3, "gainsboro"

    invoke-virtual {v0, v3, v2}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    new-array v2, v1, [I

    fill-array-data v2, :array_32

    const-string v3, "ghostwhite"

    invoke-virtual {v0, v3, v2}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    new-array v2, v1, [I

    fill-array-data v2, :array_33

    const-string v3, "gold"

    invoke-virtual {v0, v3, v2}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    new-array v2, v1, [I

    fill-array-data v2, :array_34

    const-string v3, "goldenrod"

    invoke-virtual {v0, v3, v2}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    new-array v2, v1, [I

    fill-array-data v2, :array_35

    const-string v3, "gray"

    invoke-virtual {v0, v3, v2}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    new-array v2, v1, [I

    fill-array-data v2, :array_36

    const-string v3, "grey"

    invoke-virtual {v0, v3, v2}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    new-array v2, v1, [I

    fill-array-data v2, :array_37

    const-string v3, "green"

    invoke-virtual {v0, v3, v2}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    new-array v2, v1, [I

    fill-array-data v2, :array_38

    const-string v3, "greenyellow"

    invoke-virtual {v0, v3, v2}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    new-array v2, v1, [I

    fill-array-data v2, :array_39

    const-string v3, "honeydew"

    invoke-virtual {v0, v3, v2}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    new-array v2, v1, [I

    fill-array-data v2, :array_3a

    const-string v3, "hotpink"

    invoke-virtual {v0, v3, v2}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    new-array v2, v1, [I

    fill-array-data v2, :array_3b

    const-string v3, "indianred"

    invoke-virtual {v0, v3, v2}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    new-array v2, v1, [I

    fill-array-data v2, :array_3c

    const-string v3, "indigo"

    invoke-virtual {v0, v3, v2}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    new-array v2, v1, [I

    fill-array-data v2, :array_3d

    const-string v3, "ivory"

    invoke-virtual {v0, v3, v2}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    new-array v2, v1, [I

    fill-array-data v2, :array_3e

    const-string v3, "khaki"

    invoke-virtual {v0, v3, v2}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    new-array v2, v1, [I

    fill-array-data v2, :array_3f

    const-string v3, "lavender"

    invoke-virtual {v0, v3, v2}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    new-array v2, v1, [I

    fill-array-data v2, :array_40

    const-string v3, "lavenderblush"

    invoke-virtual {v0, v3, v2}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    new-array v2, v1, [I

    fill-array-data v2, :array_41

    const-string v3, "lawngreen"

    invoke-virtual {v0, v3, v2}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    new-array v2, v1, [I

    fill-array-data v2, :array_42

    const-string v3, "lemonchiffon"

    invoke-virtual {v0, v3, v2}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    new-array v2, v1, [I

    fill-array-data v2, :array_43

    const-string v3, "lightblue"

    invoke-virtual {v0, v3, v2}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    new-array v2, v1, [I

    fill-array-data v2, :array_44

    const-string v3, "lightcoral"

    invoke-virtual {v0, v3, v2}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    new-array v2, v1, [I

    fill-array-data v2, :array_45

    const-string v3, "lightcyan"

    invoke-virtual {v0, v3, v2}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    new-array v2, v1, [I

    fill-array-data v2, :array_46

    const-string v3, "lightgoldenrodyellow"

    invoke-virtual {v0, v3, v2}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    new-array v2, v1, [I

    fill-array-data v2, :array_47

    const-string v3, "lightgreen"

    invoke-virtual {v0, v3, v2}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    new-array v2, v1, [I

    fill-array-data v2, :array_48

    const-string v3, "lightgray"

    invoke-virtual {v0, v3, v2}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    new-array v2, v1, [I

    fill-array-data v2, :array_49

    const-string v3, "lightgrey"

    invoke-virtual {v0, v3, v2}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    new-array v2, v1, [I

    fill-array-data v2, :array_4a

    const-string v3, "lightpink"

    invoke-virtual {v0, v3, v2}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    new-array v2, v1, [I

    fill-array-data v2, :array_4b

    const-string v3, "lightsalmon"

    invoke-virtual {v0, v3, v2}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    new-array v2, v1, [I

    fill-array-data v2, :array_4c

    const-string v3, "lightseagreen"

    invoke-virtual {v0, v3, v2}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    new-array v2, v1, [I

    fill-array-data v2, :array_4d

    const-string v3, "lightskyblue"

    invoke-virtual {v0, v3, v2}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    new-array v2, v1, [I

    fill-array-data v2, :array_4e

    const-string v3, "lightslategray"

    invoke-virtual {v0, v3, v2}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    new-array v2, v1, [I

    fill-array-data v2, :array_4f

    const-string v3, "lightslategrey"

    invoke-virtual {v0, v3, v2}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    new-array v2, v1, [I

    fill-array-data v2, :array_50

    const-string v3, "lightsteelblue"

    invoke-virtual {v0, v3, v2}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    new-array v2, v1, [I

    fill-array-data v2, :array_51

    const-string v3, "lightyellow"

    invoke-virtual {v0, v3, v2}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    new-array v2, v1, [I

    fill-array-data v2, :array_52

    const-string v3, "lime"

    invoke-virtual {v0, v3, v2}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    new-array v2, v1, [I

    fill-array-data v2, :array_53

    const-string v3, "limegreen"

    invoke-virtual {v0, v3, v2}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    new-array v2, v1, [I

    fill-array-data v2, :array_54

    const-string v3, "linen"

    invoke-virtual {v0, v3, v2}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    new-array v2, v1, [I

    fill-array-data v2, :array_55

    const-string v3, "magenta"

    invoke-virtual {v0, v3, v2}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    new-array v2, v1, [I

    fill-array-data v2, :array_56

    const-string v3, "maroon"

    invoke-virtual {v0, v3, v2}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    new-array v2, v1, [I

    fill-array-data v2, :array_57

    const-string v3, "mediumaquamarine"

    invoke-virtual {v0, v3, v2}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    new-array v2, v1, [I

    fill-array-data v2, :array_58

    const-string v3, "mediumblue"

    invoke-virtual {v0, v3, v2}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    new-array v2, v1, [I

    fill-array-data v2, :array_59

    const-string v3, "mediumorchid"

    invoke-virtual {v0, v3, v2}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    new-array v2, v1, [I

    fill-array-data v2, :array_5a

    const-string v3, "mediumpurple"

    invoke-virtual {v0, v3, v2}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    new-array v2, v1, [I

    fill-array-data v2, :array_5b

    const-string v3, "mediumseagreen"

    invoke-virtual {v0, v3, v2}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    new-array v2, v1, [I

    fill-array-data v2, :array_5c

    const-string v3, "mediumslateblue"

    invoke-virtual {v0, v3, v2}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    new-array v2, v1, [I

    fill-array-data v2, :array_5d

    const-string v3, "mediumspringgreen"

    invoke-virtual {v0, v3, v2}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    new-array v2, v1, [I

    fill-array-data v2, :array_5e

    const-string v3, "mediumturquoise"

    invoke-virtual {v0, v3, v2}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    new-array v2, v1, [I

    fill-array-data v2, :array_5f

    const-string v3, "mediumvioletred"

    invoke-virtual {v0, v3, v2}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    new-array v2, v1, [I

    fill-array-data v2, :array_60

    const-string v3, "midnightblue"

    invoke-virtual {v0, v3, v2}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    new-array v2, v1, [I

    fill-array-data v2, :array_61

    const-string v3, "mintcream"

    invoke-virtual {v0, v3, v2}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    new-array v2, v1, [I

    fill-array-data v2, :array_62

    const-string v3, "mistyrose"

    invoke-virtual {v0, v3, v2}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    new-array v2, v1, [I

    fill-array-data v2, :array_63

    const-string v3, "moccasin"

    invoke-virtual {v0, v3, v2}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    new-array v2, v1, [I

    fill-array-data v2, :array_64

    const-string v3, "navajowhite"

    invoke-virtual {v0, v3, v2}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    new-array v2, v1, [I

    fill-array-data v2, :array_65

    const-string v3, "navy"

    invoke-virtual {v0, v3, v2}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    new-array v2, v1, [I

    fill-array-data v2, :array_66

    const-string v3, "oldlace"

    invoke-virtual {v0, v3, v2}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    new-array v2, v1, [I

    fill-array-data v2, :array_67

    const-string v3, "olive"

    invoke-virtual {v0, v3, v2}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    new-array v2, v1, [I

    fill-array-data v2, :array_68

    const-string v3, "olivedrab"

    invoke-virtual {v0, v3, v2}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    new-array v2, v1, [I

    fill-array-data v2, :array_69

    const-string v3, "orange"

    invoke-virtual {v0, v3, v2}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    new-array v2, v1, [I

    fill-array-data v2, :array_6a

    const-string v3, "orangered"

    invoke-virtual {v0, v3, v2}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    new-array v2, v1, [I

    fill-array-data v2, :array_6b

    const-string v3, "orchid"

    invoke-virtual {v0, v3, v2}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    new-array v2, v1, [I

    fill-array-data v2, :array_6c

    const-string v3, "palegoldenrod"

    invoke-virtual {v0, v3, v2}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    new-array v2, v1, [I

    fill-array-data v2, :array_6d

    const-string v3, "palegreen"

    invoke-virtual {v0, v3, v2}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    new-array v2, v1, [I

    fill-array-data v2, :array_6e

    const-string v3, "paleturquoise"

    invoke-virtual {v0, v3, v2}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    new-array v2, v1, [I

    fill-array-data v2, :array_6f

    const-string v3, "palevioletred"

    invoke-virtual {v0, v3, v2}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    new-array v2, v1, [I

    fill-array-data v2, :array_70

    const-string v3, "papayawhip"

    invoke-virtual {v0, v3, v2}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    new-array v2, v1, [I

    fill-array-data v2, :array_71

    const-string v3, "peachpuff"

    invoke-virtual {v0, v3, v2}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    new-array v2, v1, [I

    fill-array-data v2, :array_72

    const-string v3, "peru"

    invoke-virtual {v0, v3, v2}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    new-array v2, v1, [I

    fill-array-data v2, :array_73

    const-string v3, "pink"

    invoke-virtual {v0, v3, v2}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    new-array v2, v1, [I

    fill-array-data v2, :array_74

    const-string v3, "plum"

    invoke-virtual {v0, v3, v2}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    new-array v2, v1, [I

    fill-array-data v2, :array_75

    const-string v3, "powderblue"

    invoke-virtual {v0, v3, v2}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    new-array v2, v1, [I

    fill-array-data v2, :array_76

    const-string/jumbo v3, "purple"

    invoke-virtual {v0, v3, v2}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    new-array v2, v1, [I

    fill-array-data v2, :array_77

    const-string/jumbo v3, "red"

    invoke-virtual {v0, v3, v2}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    new-array v2, v1, [I

    fill-array-data v2, :array_78

    const-string/jumbo v3, "rosybrown"

    invoke-virtual {v0, v3, v2}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    new-array v2, v1, [I

    fill-array-data v2, :array_79

    const-string/jumbo v3, "royalblue"

    invoke-virtual {v0, v3, v2}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    new-array v2, v1, [I

    fill-array-data v2, :array_7a

    const-string/jumbo v3, "saddlebrown"

    invoke-virtual {v0, v3, v2}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    new-array v2, v1, [I

    fill-array-data v2, :array_7b

    const-string/jumbo v3, "salmon"

    invoke-virtual {v0, v3, v2}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    new-array v2, v1, [I

    fill-array-data v2, :array_7c

    const-string/jumbo v3, "sandybrown"

    invoke-virtual {v0, v3, v2}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    new-array v2, v1, [I

    fill-array-data v2, :array_7d

    const-string/jumbo v3, "seagreen"

    invoke-virtual {v0, v3, v2}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    new-array v2, v1, [I

    fill-array-data v2, :array_7e

    const-string/jumbo v3, "seashell"

    invoke-virtual {v0, v3, v2}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    new-array v2, v1, [I

    fill-array-data v2, :array_7f

    const-string/jumbo v3, "sienna"

    invoke-virtual {v0, v3, v2}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    new-array v2, v1, [I

    fill-array-data v2, :array_80

    const-string/jumbo v3, "silver"

    invoke-virtual {v0, v3, v2}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    new-array v2, v1, [I

    fill-array-data v2, :array_81

    const-string/jumbo v3, "skyblue"

    invoke-virtual {v0, v3, v2}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    new-array v2, v1, [I

    fill-array-data v2, :array_82

    const-string/jumbo v3, "slateblue"

    invoke-virtual {v0, v3, v2}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    new-array v2, v1, [I

    fill-array-data v2, :array_83

    const-string/jumbo v3, "slategray"

    invoke-virtual {v0, v3, v2}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    new-array v2, v1, [I

    fill-array-data v2, :array_84

    const-string/jumbo v3, "slategrey"

    invoke-virtual {v0, v3, v2}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    new-array v2, v1, [I

    fill-array-data v2, :array_85

    const-string/jumbo v3, "snow"

    invoke-virtual {v0, v3, v2}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    new-array v2, v1, [I

    fill-array-data v2, :array_86

    const-string/jumbo v3, "springgreen"

    invoke-virtual {v0, v3, v2}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    new-array v2, v1, [I

    fill-array-data v2, :array_87

    const-string/jumbo v3, "steelblue"

    invoke-virtual {v0, v3, v2}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    new-array v2, v1, [I

    fill-array-data v2, :array_88

    const-string/jumbo v3, "tan"

    invoke-virtual {v0, v3, v2}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    new-array v2, v1, [I

    fill-array-data v2, :array_89

    const-string/jumbo v3, "teal"

    invoke-virtual {v0, v3, v2}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    new-array v2, v1, [I

    fill-array-data v2, :array_8a

    const-string/jumbo v3, "thistle"

    invoke-virtual {v0, v3, v2}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    new-array v2, v1, [I

    fill-array-data v2, :array_8b

    const-string/jumbo v3, "tomato"

    invoke-virtual {v0, v3, v2}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    new-array v2, v1, [I

    fill-array-data v2, :array_8c

    const-string/jumbo v3, "transparent"

    invoke-virtual {v0, v3, v2}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    new-array v2, v1, [I

    fill-array-data v2, :array_8d

    const-string/jumbo v3, "turquoise"

    invoke-virtual {v0, v3, v2}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    new-array v2, v1, [I

    fill-array-data v2, :array_8e

    const-string/jumbo v3, "violet"

    invoke-virtual {v0, v3, v2}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    new-array v2, v1, [I

    fill-array-data v2, :array_8f

    const-string/jumbo v3, "wheat"

    invoke-virtual {v0, v3, v2}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    new-array v2, v1, [I

    fill-array-data v2, :array_90

    const-string/jumbo v3, "white"

    invoke-virtual {v0, v3, v2}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    new-array v2, v1, [I

    fill-array-data v2, :array_91

    const-string/jumbo v3, "whitesmoke"

    invoke-virtual {v0, v3, v2}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    new-array v2, v1, [I

    fill-array-data v2, :array_92

    const-string/jumbo v3, "yellow"

    invoke-virtual {v0, v3, v2}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    new-array v1, v1, [I

    fill-array-data v1, :array_93

    const-string/jumbo v2, "yellowgreen"

    invoke-virtual {v0, v2, v1}, Lcom/itextpdf/kernel/colors/WebColors;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    return-void

    nop

    :array_0
    .array-data 4
        0xf0
        0xf8
        0xff
        0xff
    .end array-data

    :array_1
    .array-data 4
        0xfa
        0xeb
        0xd7
        0xff
    .end array-data

    :array_2
    .array-data 4
        0x0
        0xff
        0xff
        0xff
    .end array-data

    :array_3
    .array-data 4
        0x7f
        0xff
        0xd4
        0xff
    .end array-data

    :array_4
    .array-data 4
        0xf0
        0xff
        0xff
        0xff
    .end array-data

    :array_5
    .array-data 4
        0xf5
        0xf5
        0xdc
        0xff
    .end array-data

    :array_6
    .array-data 4
        0xff
        0xe4
        0xc4
        0xff
    .end array-data

    :array_7
    .array-data 4
        0x0
        0x0
        0x0
        0xff
    .end array-data

    :array_8
    .array-data 4
        0xff
        0xeb
        0xcd
        0xff
    .end array-data

    :array_9
    .array-data 4
        0x0
        0x0
        0xff
        0xff
    .end array-data

    :array_a
    .array-data 4
        0x8a
        0x2b
        0xe2
        0xff
    .end array-data

    :array_b
    .array-data 4
        0xa5
        0x2a
        0x2a
        0xff
    .end array-data

    :array_c
    .array-data 4
        0xde
        0xb8
        0x87
        0xff
    .end array-data

    :array_d
    .array-data 4
        0x5f
        0x9e
        0xa0
        0xff
    .end array-data

    :array_e
    .array-data 4
        0x7f
        0xff
        0x0
        0xff
    .end array-data

    :array_f
    .array-data 4
        0xd2
        0x69
        0x1e
        0xff
    .end array-data

    :array_10
    .array-data 4
        0xff
        0x7f
        0x50
        0xff
    .end array-data

    :array_11
    .array-data 4
        0x64
        0x95
        0xed
        0xff
    .end array-data

    :array_12
    .array-data 4
        0xff
        0xf8
        0xdc
        0xff
    .end array-data

    :array_13
    .array-data 4
        0xdc
        0x14
        0x3c
        0xff
    .end array-data

    :array_14
    .array-data 4
        0x0
        0xff
        0xff
        0xff
    .end array-data

    :array_15
    .array-data 4
        0x0
        0x0
        0x8b
        0xff
    .end array-data

    :array_16
    .array-data 4
        0x0
        0x8b
        0x8b
        0xff
    .end array-data

    :array_17
    .array-data 4
        0xb8
        0x86
        0xb
        0xff
    .end array-data

    :array_18
    .array-data 4
        0xa9
        0xa9
        0xa9
        0xff
    .end array-data

    :array_19
    .array-data 4
        0xa9
        0xa9
        0xa9
        0xff
    .end array-data

    :array_1a
    .array-data 4
        0x0
        0x64
        0x0
        0xff
    .end array-data

    :array_1b
    .array-data 4
        0xbd
        0xb7
        0x6b
        0xff
    .end array-data

    :array_1c
    .array-data 4
        0x8b
        0x0
        0x8b
        0xff
    .end array-data

    :array_1d
    .array-data 4
        0x55
        0x6b
        0x2f
        0xff
    .end array-data

    :array_1e
    .array-data 4
        0xff
        0x8c
        0x0
        0xff
    .end array-data

    :array_1f
    .array-data 4
        0x99
        0x32
        0xcc
        0xff
    .end array-data

    :array_20
    .array-data 4
        0x8b
        0x0
        0x0
        0xff
    .end array-data

    :array_21
    .array-data 4
        0xe9
        0x96
        0x7a
        0xff
    .end array-data

    :array_22
    .array-data 4
        0x8f
        0xbc
        0x8f
        0xff
    .end array-data

    :array_23
    .array-data 4
        0x48
        0x3d
        0x8b
        0xff
    .end array-data

    :array_24
    .array-data 4
        0x2f
        0x4f
        0x4f
        0xff
    .end array-data

    :array_25
    .array-data 4
        0x2f
        0x4f
        0x4f
        0xff
    .end array-data

    :array_26
    .array-data 4
        0x0
        0xce
        0xd1
        0xff
    .end array-data

    :array_27
    .array-data 4
        0x94
        0x0
        0xd3
        0xff
    .end array-data

    :array_28
    .array-data 4
        0xff
        0x14
        0x93
        0xff
    .end array-data

    :array_29
    .array-data 4
        0x0
        0xbf
        0xff
        0xff
    .end array-data

    :array_2a
    .array-data 4
        0x69
        0x69
        0x69
        0xff
    .end array-data

    :array_2b
    .array-data 4
        0x69
        0x69
        0x69
        0xff
    .end array-data

    :array_2c
    .array-data 4
        0x1e
        0x90
        0xff
        0xff
    .end array-data

    :array_2d
    .array-data 4
        0xb2
        0x22
        0x22
        0xff
    .end array-data

    :array_2e
    .array-data 4
        0xff
        0xfa
        0xf0
        0xff
    .end array-data

    :array_2f
    .array-data 4
        0x22
        0x8b
        0x22
        0xff
    .end array-data

    :array_30
    .array-data 4
        0xff
        0x0
        0xff
        0xff
    .end array-data

    :array_31
    .array-data 4
        0xdc
        0xdc
        0xdc
        0xff
    .end array-data

    :array_32
    .array-data 4
        0xf8
        0xf8
        0xff
        0xff
    .end array-data

    :array_33
    .array-data 4
        0xff
        0xd7
        0x0
        0xff
    .end array-data

    :array_34
    .array-data 4
        0xda
        0xa5
        0x20
        0xff
    .end array-data

    :array_35
    .array-data 4
        0x80
        0x80
        0x80
        0xff
    .end array-data

    :array_36
    .array-data 4
        0x80
        0x80
        0x80
        0xff
    .end array-data

    :array_37
    .array-data 4
        0x0
        0x80
        0x0
        0xff
    .end array-data

    :array_38
    .array-data 4
        0xad
        0xff
        0x2f
        0xff
    .end array-data

    :array_39
    .array-data 4
        0xf0
        0xff
        0xf0
        0xff
    .end array-data

    :array_3a
    .array-data 4
        0xff
        0x69
        0xb4
        0xff
    .end array-data

    :array_3b
    .array-data 4
        0xcd
        0x5c
        0x5c
        0xff
    .end array-data

    :array_3c
    .array-data 4
        0x4b
        0x0
        0x82
        0xff
    .end array-data

    :array_3d
    .array-data 4
        0xff
        0xff
        0xf0
        0xff
    .end array-data

    :array_3e
    .array-data 4
        0xf0
        0xe6
        0x8c
        0xff
    .end array-data

    :array_3f
    .array-data 4
        0xe6
        0xe6
        0xfa
        0xff
    .end array-data

    :array_40
    .array-data 4
        0xff
        0xf0
        0xf5
        0xff
    .end array-data

    :array_41
    .array-data 4
        0x7c
        0xfc
        0x0
        0xff
    .end array-data

    :array_42
    .array-data 4
        0xff
        0xfa
        0xcd
        0xff
    .end array-data

    :array_43
    .array-data 4
        0xad
        0xd8
        0xe6
        0xff
    .end array-data

    :array_44
    .array-data 4
        0xf0
        0x80
        0x80
        0xff
    .end array-data

    :array_45
    .array-data 4
        0xe0
        0xff
        0xff
        0xff
    .end array-data

    :array_46
    .array-data 4
        0xfa
        0xfa
        0xd2
        0xff
    .end array-data

    :array_47
    .array-data 4
        0x90
        0xee
        0x90
        0xff
    .end array-data

    :array_48
    .array-data 4
        0xd3
        0xd3
        0xd3
        0xff
    .end array-data

    :array_49
    .array-data 4
        0xd3
        0xd3
        0xd3
        0xff
    .end array-data

    :array_4a
    .array-data 4
        0xff
        0xb6
        0xc1
        0xff
    .end array-data

    :array_4b
    .array-data 4
        0xff
        0xa0
        0x7a
        0xff
    .end array-data

    :array_4c
    .array-data 4
        0x20
        0xb2
        0xaa
        0xff
    .end array-data

    :array_4d
    .array-data 4
        0x87
        0xce
        0xfa
        0xff
    .end array-data

    :array_4e
    .array-data 4
        0x77
        0x88
        0x99
        0xff
    .end array-data

    :array_4f
    .array-data 4
        0x77
        0x88
        0x99
        0xff
    .end array-data

    :array_50
    .array-data 4
        0xb0
        0xc4
        0xde
        0xff
    .end array-data

    :array_51
    .array-data 4
        0xff
        0xff
        0xe0
        0xff
    .end array-data

    :array_52
    .array-data 4
        0x0
        0xff
        0x0
        0xff
    .end array-data

    :array_53
    .array-data 4
        0x32
        0xcd
        0x32
        0xff
    .end array-data

    :array_54
    .array-data 4
        0xfa
        0xf0
        0xe6
        0xff
    .end array-data

    :array_55
    .array-data 4
        0xff
        0x0
        0xff
        0xff
    .end array-data

    :array_56
    .array-data 4
        0x80
        0x0
        0x0
        0xff
    .end array-data

    :array_57
    .array-data 4
        0x66
        0xcd
        0xaa
        0xff
    .end array-data

    :array_58
    .array-data 4
        0x0
        0x0
        0xcd
        0xff
    .end array-data

    :array_59
    .array-data 4
        0xba
        0x55
        0xd3
        0xff
    .end array-data

    :array_5a
    .array-data 4
        0x93
        0x70
        0xdb
        0xff
    .end array-data

    :array_5b
    .array-data 4
        0x3c
        0xb3
        0x71
        0xff
    .end array-data

    :array_5c
    .array-data 4
        0x7b
        0x68
        0xee
        0xff
    .end array-data

    :array_5d
    .array-data 4
        0x0
        0xfa
        0x9a
        0xff
    .end array-data

    :array_5e
    .array-data 4
        0x48
        0xd1
        0xcc
        0xff
    .end array-data

    :array_5f
    .array-data 4
        0xc7
        0x15
        0x85
        0xff
    .end array-data

    :array_60
    .array-data 4
        0x19
        0x19
        0x70
        0xff
    .end array-data

    :array_61
    .array-data 4
        0xf5
        0xff
        0xfa
        0xff
    .end array-data

    :array_62
    .array-data 4
        0xff
        0xe4
        0xe1
        0xff
    .end array-data

    :array_63
    .array-data 4
        0xff
        0xe4
        0xb5
        0xff
    .end array-data

    :array_64
    .array-data 4
        0xff
        0xde
        0xad
        0xff
    .end array-data

    :array_65
    .array-data 4
        0x0
        0x0
        0x80
        0xff
    .end array-data

    :array_66
    .array-data 4
        0xfd
        0xf5
        0xe6
        0xff
    .end array-data

    :array_67
    .array-data 4
        0x80
        0x80
        0x0
        0xff
    .end array-data

    :array_68
    .array-data 4
        0x6b
        0x8e
        0x23
        0xff
    .end array-data

    :array_69
    .array-data 4
        0xff
        0xa5
        0x0
        0xff
    .end array-data

    :array_6a
    .array-data 4
        0xff
        0x45
        0x0
        0xff
    .end array-data

    :array_6b
    .array-data 4
        0xda
        0x70
        0xd6
        0xff
    .end array-data

    :array_6c
    .array-data 4
        0xee
        0xe8
        0xaa
        0xff
    .end array-data

    :array_6d
    .array-data 4
        0x98
        0xfb
        0x98
        0xff
    .end array-data

    :array_6e
    .array-data 4
        0xaf
        0xee
        0xee
        0xff
    .end array-data

    :array_6f
    .array-data 4
        0xdb
        0x70
        0x93
        0xff
    .end array-data

    :array_70
    .array-data 4
        0xff
        0xef
        0xd5
        0xff
    .end array-data

    :array_71
    .array-data 4
        0xff
        0xda
        0xb9
        0xff
    .end array-data

    :array_72
    .array-data 4
        0xcd
        0x85
        0x3f
        0xff
    .end array-data

    :array_73
    .array-data 4
        0xff
        0xc0
        0xcb
        0xff
    .end array-data

    :array_74
    .array-data 4
        0xdd
        0xa0
        0xdd
        0xff
    .end array-data

    :array_75
    .array-data 4
        0xb0
        0xe0
        0xe6
        0xff
    .end array-data

    :array_76
    .array-data 4
        0x80
        0x0
        0x80
        0xff
    .end array-data

    :array_77
    .array-data 4
        0xff
        0x0
        0x0
        0xff
    .end array-data

    :array_78
    .array-data 4
        0xbc
        0x8f
        0x8f
        0xff
    .end array-data

    :array_79
    .array-data 4
        0x41
        0x69
        0xe1
        0xff
    .end array-data

    :array_7a
    .array-data 4
        0x8b
        0x45
        0x13
        0xff
    .end array-data

    :array_7b
    .array-data 4
        0xfa
        0x80
        0x72
        0xff
    .end array-data

    :array_7c
    .array-data 4
        0xf4
        0xa4
        0x60
        0xff
    .end array-data

    :array_7d
    .array-data 4
        0x2e
        0x8b
        0x57
        0xff
    .end array-data

    :array_7e
    .array-data 4
        0xff
        0xf5
        0xee
        0xff
    .end array-data

    :array_7f
    .array-data 4
        0xa0
        0x52
        0x2d
        0xff
    .end array-data

    :array_80
    .array-data 4
        0xc0
        0xc0
        0xc0
        0xff
    .end array-data

    :array_81
    .array-data 4
        0x87
        0xce
        0xeb
        0xff
    .end array-data

    :array_82
    .array-data 4
        0x6a
        0x5a
        0xcd
        0xff
    .end array-data

    :array_83
    .array-data 4
        0x70
        0x80
        0x90
        0xff
    .end array-data

    :array_84
    .array-data 4
        0x70
        0x80
        0x90
        0xff
    .end array-data

    :array_85
    .array-data 4
        0xff
        0xfa
        0xfa
        0xff
    .end array-data

    :array_86
    .array-data 4
        0x0
        0xff
        0x7f
        0xff
    .end array-data

    :array_87
    .array-data 4
        0x46
        0x82
        0xb4
        0xff
    .end array-data

    :array_88
    .array-data 4
        0xd2
        0xb4
        0x8c
        0xff
    .end array-data

    :array_89
    .array-data 4
        0x0
        0x80
        0x80
        0xff
    .end array-data

    :array_8a
    .array-data 4
        0xd8
        0xbf
        0xd8
        0xff
    .end array-data

    :array_8b
    .array-data 4
        0xff
        0x63
        0x47
        0xff
    .end array-data

    :array_8c
    .array-data 4
        0xff
        0xff
        0xff
        0x0
    .end array-data

    :array_8d
    .array-data 4
        0x40
        0xe0
        0xd0
        0xff
    .end array-data

    :array_8e
    .array-data 4
        0xee
        0x82
        0xee
        0xff
    .end array-data

    :array_8f
    .array-data 4
        0xf5
        0xde
        0xb3
        0xff
    .end array-data

    :array_90
    .array-data 4
        0xff
        0xff
        0xff
        0xff
    .end array-data

    :array_91
    .array-data 4
        0xf5
        0xf5
        0xf5
        0xff
    .end array-data

    :array_92
    .array-data 4
        0xff
        0xff
        0x0
        0xff
    .end array-data

    :array_93
    .array-data 4
        0x9a
        0xcd
        0x32
        0xff
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-void
.end method

.method private static getAlphaChannelValue(Ljava/lang/String;)F
    .locals 2
    .param p0, "rgbChannel"    # Ljava/lang/String;

    .line 336
    const-string v0, "%"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 337
    invoke-static {p0}, Lcom/itextpdf/kernel/colors/WebColors;->parsePercentValue(Ljava/lang/String;)F

    move-result v0

    .local v0, "alpha":F
    goto :goto_0

    .line 339
    .end local v0    # "alpha":F
    :cond_0
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 341
    .restart local v0    # "alpha":F
    :goto_0
    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 342
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 343
    return v0
.end method

.method public static getRGBAColor(Ljava/lang/String;)[F
    .locals 15
    .param p0, "name"    # Ljava/lang/String;

    .line 242
    const-string/jumbo v0, "rgba(), \t\r\n\u000c"

    const-string/jumbo v1, "rgb(), \t\r\n\u000c"

    const/4 v2, 0x0

    .line 244
    .local v2, "color":[F
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 245
    .local v3, "colorName":Ljava/lang/String;
    invoke-static {v3}, Lcom/itextpdf/kernel/colors/WebColors;->missingHashColorFormat(Ljava/lang/String;)Z

    move-result v4

    .line 246
    .local v4, "colorStrWithoutHash":Z
    const-string v5, "#"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x4

    const/4 v8, 0x3

    const-wide v9, 0x406fe00000000000L    # 255.0

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x2

    const/4 v14, 0x0

    if-nez v5, :cond_4

    if-eqz v4, :cond_0

    goto/16 :goto_0

    .line 268
    :cond_0
    const-string/jumbo v5, "rgb("

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 269
    move-object v0, v1

    .line 270
    .local v0, "delim":Ljava/lang/String;
    new-instance v5, Ljava/util/StringTokenizer;

    invoke-direct {v5, v3, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v5

    .line 271
    .local v1, "tok":Ljava/util/StringTokenizer;
    new-array v5, v7, [F

    aput v14, v5, v11

    aput v14, v5, v12

    aput v14, v5, v13

    aput v6, v5, v8

    move-object v2, v5

    .line 272
    invoke-static {v2, v1}, Lcom/itextpdf/kernel/colors/WebColors;->parseRGBColors([FLjava/util/StringTokenizer;)V

    .line 273
    .end local v0    # "delim":Ljava/lang/String;
    .end local v1    # "tok":Ljava/util/StringTokenizer;
    goto/16 :goto_1

    :cond_1
    const-string/jumbo v1, "rgba("

    invoke-virtual {v3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 274
    move-object v1, v0

    .line 275
    .local v1, "delim":Ljava/lang/String;
    new-instance v5, Ljava/util/StringTokenizer;

    invoke-direct {v5, v3, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v5

    .line 276
    .local v0, "tok":Ljava/util/StringTokenizer;
    new-array v5, v7, [F

    aput v14, v5, v11

    aput v14, v5, v12

    aput v14, v5, v13

    aput v6, v5, v8

    move-object v2, v5

    .line 277
    invoke-static {v2, v0}, Lcom/itextpdf/kernel/colors/WebColors;->parseRGBColors([FLjava/util/StringTokenizer;)V

    .line 278
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 279
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/itextpdf/kernel/colors/WebColors;->getAlphaChannelValue(Ljava/lang/String;)F

    move-result v5

    aput v5, v2, v8

    .line 281
    .end local v0    # "tok":Ljava/util/StringTokenizer;
    .end local v1    # "delim":Ljava/lang/String;
    :cond_2
    goto/16 :goto_1

    :cond_3
    sget-object v0, Lcom/itextpdf/kernel/colors/WebColors;->NAMES:Lcom/itextpdf/kernel/colors/WebColors;

    invoke-virtual {v0, v3}, Lcom/itextpdf/kernel/colors/WebColors;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 282
    invoke-virtual {v0, v3}, Lcom/itextpdf/kernel/colors/WebColors;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 283
    .local v0, "intColor":[I
    new-array v1, v7, [F

    aput v14, v1, v11

    aput v14, v1, v12

    aput v14, v1, v13

    aput v6, v1, v8

    move-object v2, v1

    .line 284
    aget v1, v0, v11

    int-to-double v5, v1

    div-double/2addr v5, v9

    double-to-float v1, v5

    aput v1, v2, v11

    .line 285
    aget v1, v0, v12

    int-to-double v5, v1

    div-double/2addr v5, v9

    double-to-float v1, v5

    aput v1, v2, v12

    .line 286
    aget v1, v0, v13

    int-to-double v5, v1

    div-double/2addr v5, v9

    double-to-float v1, v5

    aput v1, v2, v13

    goto/16 :goto_1

    .line 247
    .end local v0    # "intColor":[I
    :cond_4
    :goto_0
    if-nez v4, :cond_5

    .line 249
    invoke-virtual {v3, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .line 251
    :cond_5
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v8, :cond_6

    .line 252
    invoke-virtual {v3, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 253
    .local v0, "red":Ljava/lang/String;
    new-array v5, v7, [F

    aput v14, v5, v11

    aput v14, v5, v12

    aput v14, v5, v13

    aput v6, v5, v8

    move-object v2, v5

    .line 254
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    int-to-double v5, v5

    div-double/2addr v5, v9

    double-to-float v5, v5

    aput v5, v2, v11

    .line 255
    invoke-virtual {v3, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 256
    .local v5, "green":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    int-to-double v6, v6

    div-double/2addr v6, v9

    double-to-float v6, v6

    aput v6, v2, v12

    .line 257
    invoke-virtual {v3, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 258
    .local v6, "blue":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    int-to-double v7, v1

    div-double/2addr v7, v9

    double-to-float v1, v7

    aput v1, v2, v13

    .line 259
    .end local v0    # "red":Ljava/lang/String;
    .end local v5    # "green":Ljava/lang/String;
    .end local v6    # "blue":Ljava/lang/String;
    goto :goto_1

    :cond_6
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v5, 0x6

    if-ne v0, v5, :cond_7

    .line 260
    new-array v0, v7, [F

    aput v14, v0, v11

    aput v14, v0, v12

    aput v14, v0, v13

    aput v6, v0, v8

    move-object v2, v0

    .line 261
    invoke-virtual {v3, v11, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    int-to-double v5, v0

    div-double/2addr v5, v9

    double-to-float v0, v5

    aput v0, v2, v11

    .line 262
    invoke-virtual {v3, v13, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    int-to-double v5, v0

    div-double/2addr v5, v9

    double-to-float v0, v5

    aput v0, v2, v12

    .line 263
    invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    int-to-double v0, v0

    div-double/2addr v0, v9

    double-to-float v0, v0

    aput v0, v2, v13

    goto :goto_1

    .line 265
    :cond_7
    const-class v0, Lcom/itextpdf/kernel/colors/WebColors;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    .line 266
    .local v0, "logger":Lorg/slf4j/Logger;
    const-string v1, "Unknown color format: must be rgb or rrggbb."

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 267
    .end local v0    # "logger":Lorg/slf4j/Logger;
    nop

    .line 291
    .end local v3    # "colorName":Ljava/lang/String;
    .end local v4    # "colorStrWithoutHash":Z
    :goto_1
    goto :goto_2

    .line 288
    :catch_0
    move-exception v0

    .line 290
    .local v0, "exc":Ljava/lang/Exception;
    const/4 v2, 0x0

    .line 293
    .end local v0    # "exc":Ljava/lang/Exception;
    :goto_2
    return-object v2
.end method

.method private static getRGBChannelValue(Ljava/lang/String;)F
    .locals 4
    .param p0, "rgbChannel"    # Ljava/lang/String;

    .line 326
    const-string v0, "%"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 327
    invoke-static {p0}, Lcom/itextpdf/kernel/colors/WebColors;->parsePercentValue(Ljava/lang/String;)F

    move-result v0

    return v0

    .line 329
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x406fe00000000000L    # 255.0

    div-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method public static getRGBColor(Ljava/lang/String;)Lcom/itextpdf/kernel/colors/DeviceRgb;
    .locals 5
    .param p0, "name"    # Ljava/lang/String;

    .line 227
    invoke-static {p0}, Lcom/itextpdf/kernel/colors/WebColors;->getRGBAColor(Ljava/lang/String;)[F

    move-result-object v0

    .line 228
    .local v0, "rgbaColor":[F
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 229
    new-instance v2, Lcom/itextpdf/kernel/colors/DeviceRgb;

    invoke-direct {v2, v1, v1, v1}, Lcom/itextpdf/kernel/colors/DeviceRgb;-><init>(III)V

    return-object v2

    .line 231
    :cond_0
    new-instance v2, Lcom/itextpdf/kernel/colors/DeviceRgb;

    aget v1, v0, v1

    const/4 v3, 0x1

    aget v3, v0, v3

    const/4 v4, 0x2

    aget v4, v0, v4

    invoke-direct {v2, v1, v3, v4}, Lcom/itextpdf/kernel/colors/DeviceRgb;-><init>(FFF)V

    return-object v2
.end method

.method private static missingHashColorFormat(Ljava/lang/String;)Z
    .locals 3
    .param p0, "colStr"    # Ljava/lang/String;

    .line 316
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 317
    .local v0, "len":I
    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 322
    :cond_0
    const/4 v1, 0x0

    return v1

    .line 319
    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[0-9a-f]{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 320
    .local v1, "match":Ljava/lang/String;
    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    return v2
.end method

.method private static parsePercentValue(Ljava/lang/String;)F
    .locals 4
    .param p0, "rgbChannel"    # Ljava/lang/String;

    .line 347
    nop

    .line 348
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 347
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    float-to-double v0, v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method private static parseRGBColors([FLjava/util/StringTokenizer;)V
    .locals 3
    .param p0, "color"    # [F
    .param p1, "tok"    # Ljava/util/StringTokenizer;

    .line 297
    const/4 v0, 0x0

    .local v0, "k":I
    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    .line 298
    invoke-virtual {p1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 299
    invoke-virtual {p1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/itextpdf/kernel/colors/WebColors;->getRGBChannelValue(Ljava/lang/String;)F

    move-result v1

    aput v1, p0, v0

    .line 300
    const/4 v1, 0x0

    aget v2, p0, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    aput v1, p0, v0

    .line 301
    const/high16 v1, 0x3f800000    # 1.0f

    aget v2, p0, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    aput v1, p0, v0

    .line 297
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 304
    .end local v0    # "k":I
    :cond_1
    return-void
.end method
