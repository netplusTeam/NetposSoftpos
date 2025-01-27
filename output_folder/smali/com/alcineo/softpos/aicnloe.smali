.class public Lcom/alcineo/softpos/aicnloe;
.super Lcom/alcineo/softpos/ioecanl;
.source "SourceFile"


# instance fields
.field public ocenlai:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Softpos"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/alcineo/softpos/aenciol;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alcineo/softpos/ioecanl;-><init>(Lcom/alcineo/softpos/aenciol;)V

    iput-object p2, p0, Lcom/alcineo/softpos/aicnloe;->ocenlai:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public native nacieol()Ljava/lang/String;
.end method
