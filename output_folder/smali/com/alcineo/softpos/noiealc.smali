.class public Lcom/alcineo/softpos/noiealc;
.super Lcom/alcineo/softpos/ioecanl;
.source "SourceFile"


# instance fields
.field private ocenlai:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Softpos"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/alcineo/softpos/aenciol;[B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alcineo/softpos/ioecanl;-><init>(Lcom/alcineo/softpos/aenciol;)V

    iput-object p2, p0, Lcom/alcineo/softpos/noiealc;->ocenlai:[B

    return-void
.end method


# virtual methods
.method public native nacieol()Ljava/lang/String;
.end method
