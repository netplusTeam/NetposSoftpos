.class public Lcom/alcineo/softpos/payment/api/KernelsAdministrationAPI;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Softpos"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native activationKernel(Lcom/alcineo/administrative/Kernel;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alcineo/softpos/payment/error/ExecutorException;
        }
    .end annotation
.end method

.method public static native getFirmwareVersion()[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alcineo/softpos/payment/error/ExecutorException;
        }
    .end annotation
.end method

.method public static getKernelInfoList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alcineo/administrative/commands/GetKernelInfos$KernelInfo;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/alcineo/softpos/oceailn;->enolcai()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public static native getTag(Lcom/alcineo/administrative/Kernel;[BLcom/alcineo/softpos/payment/model/SettingsSheet;B)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alcineo/softpos/payment/error/ExecutorException;
        }
    .end annotation
.end method

.method public static native setTag(Lcom/alcineo/administrative/Kernel;[B[BLcom/alcineo/softpos/payment/model/SettingsSheet;B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alcineo/softpos/payment/error/ExecutorException;
        }
    .end annotation
.end method

.method public static native uploadTerminalSettingsFile(Lcom/alcineo/administrative/FileId;Ljava/io/InputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
