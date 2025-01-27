.class public Lcom/dspread/xpos/HdxUtil;
.super Ljava/lang/Object;
.source "HdxUtil.java"


# static fields
.field public static final CARDTYPE_IC:I = 0x1

.field public static final CARDTYPE_PSAM:I = 0x2

.field public static final SERIAL_FUNCTION_IDCARD:I = 0x1

.field public static final SERIAL_FUNCTION_KEYBOARD:I = 0x2

.field public static final SERIAL_FUNCTION_PRINTER:I = 0x0

.field private static final b:Ljava/lang/String; = "HdxUtil"


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "hdxutil"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/dspread/xpos/HdxUtil;->a:Landroid/content/Context;

    return-void
.end method

.method public static EnableBuzze(I)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/dspread/xpos/HdxUtil;->buzzerControl(I)I

    move-result p0

    return p0
.end method

.method public static native EnableKeyboard(I)I
.end method

.method public static native GetBaseDeviceID(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native GetCurrentSim()I
.end method

.method public static native GetKey138Status()I
.end method

.method public static native GetPrinterPort()Ljava/lang/String;
.end method

.method public static native PowerOffScan()I
.end method

.method public static SetCameraBacklightness(I)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/dspread/xpos/HdxUtil;->cameraBacklightControl(I)I

    move-result p0

    return p0
.end method

.method public static native SetDB9Power(I)I
.end method

.method public static native SetFingerPower(I)I
.end method

.method public static SetIDCARDPower(I)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/dspread/xpos/HdxUtil;->SetRfidPower(I)I

    move-result p0

    return p0
.end method

.method public static native SetKeyboardPower(I)I
.end method

.method public static native SetPSAMPower(I)I
.end method

.method public static native SetPrinterPower(I)I
.end method

.method public static native SetRfidPower(I)I
.end method

.method public static native SetV12Power(I)I
.end method

.method public static native SetWifiApPower(I)I
.end method

.method public static native SwitchICCard(I)I
.end method

.method public static native SwitchSerialFunction(I)I
.end method

.method public static native SwitchSimCard(I)I
.end method

.method public static native TriggerScan()I
.end method

.method public static native TriggerScan2()I
.end method

.method private static native buzzerControl(I)I
.end method

.method private static native cameraBacklightControl(I)I
.end method
