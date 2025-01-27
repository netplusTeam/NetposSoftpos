.class public Lcom/alcineo/softpos/aeinclo;
.super Lcom/alcineo/softpos/iancole;
.source "SourceFile"


# instance fields
.field private acileon:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Softpos"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alcineo/softpos/iancole;-><init>()V

    return-void
.end method


# virtual methods
.method public native acileon(Ljava/lang/String;)Lcom/alcineo/softpos/alicneo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public native aoleinc()Ljava/lang/String;
.end method

.method public native enolcai()Lcom/alcineo/softpos/alicneo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public native noaceli()Lcom/alcineo/softpos/alicneo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
