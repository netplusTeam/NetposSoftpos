.class public Lcom/alcineo/softpos/oceailn;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static acileon:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alcineo/administrative/commands/GetKernelInfos$KernelInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static aoleinc:[B = null

.field public static enolcai:[B = null

.field public static noaceli:[B = null

.field public static final ocenlai:I = 0x20


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

.method public static native acileon(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alcineo/administrative/commands/GetKernelInfos$KernelInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public static native acileon([B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayStoreException;
        }
    .end annotation
.end method

.method public static native acileon()[B
.end method

.method public static native aoleinc([B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayStoreException;
        }
    .end annotation
.end method

.method public static native aoleinc()[B
.end method

.method public static native enolcai()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alcineo/administrative/commands/GetKernelInfos$KernelInfo;",
            ">;"
        }
    .end annotation
.end method

.method public static native noaceli([B)V
.end method

.method public static native noaceli()[B
.end method
