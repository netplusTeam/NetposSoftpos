.class public Lcom/alcineo/softpos/cneaoil;
.super Lcom/alcineo/softpos/alicneo;
.source "SourceFile"


# static fields
.field public static final acileon:I = 0x31


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Softpos"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const/16 v0, 0x31

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1}, Lcom/alcineo/softpos/alicneo;-><init>(ILjava/lang/Integer;[B)V

    return-void
.end method

.method public static native acileon()Lcom/alcineo/softpos/alicneo;
.end method


# virtual methods
.method public native getCommandName()Ljava/lang/String;
.end method
