.class public Lcom/alcineo/softpos/payment/jni/MPANativeInterface;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/alcineo/softpos/payment/jni/MPANativeInterface;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "AlcineoNativePayment"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    new-instance v0, Lcom/alcineo/softpos/payment/jni/MPANativeInterface;

    invoke-direct {v0}, Lcom/alcineo/softpos/payment/jni/MPANativeInterface;-><init>()V

    sput-object v0, Lcom/alcineo/softpos/payment/jni/MPANativeInterface;->INSTANCE:Lcom/alcineo/softpos/payment/jni/MPANativeInterface;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native close()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public native injectKey(I[B)I
.end method

.method public native open(Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public native receiveCommand([BII)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public native register(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public native sendCommand([BI)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
