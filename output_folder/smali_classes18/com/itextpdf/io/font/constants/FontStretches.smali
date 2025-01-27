.class public final Lcom/itextpdf/io/font/constants/FontStretches;
.super Ljava/lang/Object;
.source "FontStretches.java"


# static fields
.field public static final CONDENSED:Ljava/lang/String; = "Condensed"

.field public static final EXPANDED:Ljava/lang/String; = "Expanded"

.field public static final EXTRA_CONDENSED:Ljava/lang/String; = "ExtraCondensed"

.field public static final EXTRA_EXPANDED:Ljava/lang/String; = "ExtraExpanded"

.field private static final FWIDTH_CONDENSED:I = 0x3

.field private static final FWIDTH_EXPANDED:I = 0x7

.field private static final FWIDTH_EXTRA_CONDENSED:I = 0x2

.field private static final FWIDTH_EXTRA_EXPANDED:I = 0x8

.field private static final FWIDTH_NORMAL:I = 0x5

.field private static final FWIDTH_SEMI_CONDENSED:I = 0x4

.field private static final FWIDTH_SEMI_EXPANDED:I = 0x6

.field private static final FWIDTH_ULTRA_CONDENSED:I = 0x1

.field private static final FWIDTH_ULTRA_EXPANDED:I = 0x9

.field public static final NORMAL:Ljava/lang/String; = "Normal"

.field public static final SEMI_CONDENSED:Ljava/lang/String; = "SemiCondensed"

.field public static final SEMI_EXPANDED:Ljava/lang/String; = "SemiExpanded"

.field public static final ULTRA_CONDENSED:Ljava/lang/String; = "UltraCondensed"

.field public static final ULTRA_EXPANDED:Ljava/lang/String; = "UltraExpanded"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method

.method public static fromOpenTypeWidthClass(I)Ljava/lang/String;
    .locals 1
    .param p0, "fontWidth"    # I

    .line 88
    const-string v0, "Normal"

    .line 89
    .local v0, "fontWidthValue":Ljava/lang/String;
    packed-switch p0, :pswitch_data_0

    goto :goto_0

    .line 115
    :pswitch_0
    const-string v0, "UltraExpanded"

    goto :goto_0

    .line 112
    :pswitch_1
    const-string v0, "ExtraExpanded"

    .line 113
    goto :goto_0

    .line 109
    :pswitch_2
    const-string v0, "Expanded"

    .line 110
    goto :goto_0

    .line 106
    :pswitch_3
    const-string v0, "SemiExpanded"

    .line 107
    goto :goto_0

    .line 103
    :pswitch_4
    const-string v0, "Normal"

    .line 104
    goto :goto_0

    .line 100
    :pswitch_5
    const-string v0, "SemiCondensed"

    .line 101
    goto :goto_0

    .line 97
    :pswitch_6
    const-string v0, "Condensed"

    .line 98
    goto :goto_0

    .line 94
    :pswitch_7
    const-string v0, "ExtraCondensed"

    .line 95
    goto :goto_0

    .line 91
    :pswitch_8
    const-string v0, "UltraCondensed"

    .line 92
    nop

    .line 118
    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
