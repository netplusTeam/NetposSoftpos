.class public interface abstract Lcom/dspread/xpos/DspFingerPrint$DspFingerPrintListener;
.super Ljava/lang/Object;
.source "DspFingerPrint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dspread/xpos/DspFingerPrint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DspFingerPrintListener"
.end annotation


# virtual methods
.method public abstract onError(Lcom/dspread/xpos/DspFingerPrint$Error;)V
.end method

.method public abstract onFingerPrintTranmis(Ljava/util/Hashtable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onLcdShowCustomDisplay(Z)V
.end method

.method public abstract onQposInfoResult(Ljava/util/Hashtable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onRequestNoQposDetected()V
.end method

.method public abstract onRequestSetAmount()V
.end method
